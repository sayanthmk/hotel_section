import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hotel_admin/model/hotel_model.dart';

class AdminHotelProvider with ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Hotel data
  List<HotelModel> _hotels = [];
  List<HotelModel> _approvedHotels = [];
  List<HotelModel> _nonApprovedHotels = [];

  // State management
  bool _isLoading = true;
  String _errorMessage = '';

  // Getters
  List<HotelModel> get hotels => _hotels;
  List<HotelModel> get approvedHotels => _approvedHotels;
  List<HotelModel> get nonApprovedHotels => _nonApprovedHotels;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

  // Constructor
  AdminHotelProvider() {
    fetchApprovedHotels();
    fetchNonApprovedHotels();
  }

  // Fetch all hotels
  Future<void> fetchHotels() async {
    try {
      _isLoading = true;
      notifyListeners();

      QuerySnapshot snapshot = await _firestore.collection('hotels').get();
      _hotels =
          snapshot.docs.map((doc) => HotelModel.fromFirestore(doc)).toList();

      _isLoading = false;
    } catch (e) {
      _errorMessage = e.toString();
      _isLoading = false;
    }
    notifyListeners();
  }

  // Fetch approved hotels from 'approved_hotels' collection
  Future<void> fetchApprovedHotels() async {
    try {
      _isLoading = true;
      notifyListeners();

      QuerySnapshot snapshot =
          await _firestore.collection('approved_hotels').get();
      _approvedHotels =
          snapshot.docs.map((doc) => HotelModel.fromFirestore(doc)).toList();

      _isLoading = false;
    } catch (e) {
      _errorMessage = e.toString();
      _isLoading = false;
    }

    notifyListeners();
  }

  // Fetch non-approved hotels from 'hotels' collection
  Future<void> fetchNonApprovedHotels() async {
    try {
      _isLoading = true;
      notifyListeners();

      QuerySnapshot snapshot = await _firestore.collection('hotels').get();
      _nonApprovedHotels =
          snapshot.docs.map((doc) => HotelModel.fromFirestore(doc)).toList();

      _isLoading = false;
    } catch (e) {
      _errorMessage = e.toString();
      _isLoading = false;
    }

    notifyListeners();
  }

  // // Approve hotel and move to 'approved_hotels' collection
  // Future<void> approveHotel(HotelModel hotel) async {
  //   try {
  //     FirebaseFirestore firestore = FirebaseFirestore.instance;

  //     // Fetch the rooms subcollection
  //     QuerySnapshot roomsSnapshot = await firestore
  //         .collection('hotels')
  //         .doc(hotel.hotelId)
  //         .collection('rooms')
  //         .get();

  //     WriteBatch batch = firestore.batch();

  //     // Move each room to 'approved_hotels' collection
  //     for (QueryDocumentSnapshot roomDoc in roomsSnapshot.docs) {
  //       batch.set(
  //         firestore
  //             .collection('approved_hotels')
  //             .doc(hotel.hotelId)
  //             .collection('rooms')
  //             .doc(roomDoc.id),
  //         roomDoc.data() as Map<String, dynamic>,
  //       );
  //     }

  //     // Move hotel document to 'approved_hotels' collection
  //     batch.set(
  //       firestore.collection('approved_hotels').doc(hotel.hotelId),
  //       hotel.toJson(),
  //     );

  //     // Commit the batch
  //     await batch.commit();

  //     // Delete hotel from 'hotels' collection
  //     await firestore.collection('hotels').doc(hotel.hotelId).delete();

  //     // Refresh the lists
  //     _nonApprovedHotels.remove(hotel);
  //     await fetchApprovedHotels(); // Update approved list after approval
  //     notifyListeners();

  //     print('Hotel approved and moved successfully!');
  //   } catch (e) {
  //     _errorMessage = e.toString();
  //     notifyListeners();
  //     print('Error approving hotel: $_errorMessage');
  //   }
  // }
  // Fixed approve hotel function that handles known collections
  Future<void> approveHotel(HotelModel hotel) async {
    try {
      _isLoading = true;
      notifyListeners();

      // Reference to the source hotel document
      DocumentReference sourceHotelRef =
          _firestore.collection('hotels').doc(hotel.hotelId);

      // Reference to the destination hotel document
      DocumentReference destHotelRef =
          _firestore.collection('approved_hotels').doc(hotel.hotelId);

      // Start a new batch
      WriteBatch batch = _firestore.batch();

      // List of known subcollections to move
      final List<String> knownCollections = [
        'rooms',
        // 'amenities',
        // 'reviews',
        // 'bookings',
        // Add any other collections you need to move
      ];

      // Move each known subcollection
      for (String collectionName in knownCollections) {
        // Get all documents in the subcollection
        QuerySnapshot collectionDocs =
            await sourceHotelRef.collection(collectionName).get();

        // Move each document in the subcollection
        for (QueryDocumentSnapshot doc in collectionDocs.docs) {
          // Create reference to new document location
          DocumentReference newDocRef =
              destHotelRef.collection(collectionName).doc(doc.id);

          // Add set operation to batch
          batch.set(newDocRef, doc.data() as Map<String, dynamic>);

          // Add delete operation to batch for source document
          batch.delete(doc.reference);
        }
      }

      // Move the main hotel document with additional metadata
      batch.set(destHotelRef, {
        ...hotel.toJson(),
        'approvedAt': FieldValue.serverTimestamp(),
        'status': 'approved',
        'userId': hotel.hotelId // Add collectionId metadata
      });

      // Delete the original hotel document
      batch.delete(sourceHotelRef);

      // Execute all operations in batch
      await batch.commit();

      // Update local lists
      _nonApprovedHotels.removeWhere((h) => h.hotelId == hotel.hotelId);
      await fetchApprovedHotels(); // Refresh approved hotels list

      _isLoading = false;
      notifyListeners();

      print('Hotel and all its data successfully moved to approved_hotels!');
    } catch (e) {
      _isLoading = false;
      _errorMessage = 'Error approving hotel: ${e.toString()}';
      notifyListeners();
      print('Error in approveHotel: $_errorMessage');
      rethrow; // Rethrow to handle in UI
    }
  }

  /// Drawer Index Management
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void updateSelectedIndex(int newIndex) {
    _selectedIndex = newIndex;
    notifyListeners(); // Notify listeners to rebuild the UI
  }
}
