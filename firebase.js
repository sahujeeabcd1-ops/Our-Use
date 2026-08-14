// Firebase SDK
import { initializeApp } from "https://www.gstatic.com/firebasejs/12.1.0/firebase-app.js";
import {
  getAuth
} from "https://www.gstatic.com/firebasejs/12.1.0/firebase-auth.js";

import {
  getFirestore
} from "https://www.gstatic.com/firebasejs/12.1.0/firebase-firestore.js";

import {
  getStorage
} from "https://www.gstatic.com/firebasejs/12.1.0/firebase-storage.js";


// ================================
// Firebase Configuration
// ================================

const firebaseConfig = {

  apiKey: "AIzaSyD76Ia7c4ApufQkPJ-jFC1dcr4NBO_zCAk",

  authDomain: "your-nerest.firebaseapp.com",

  projectId: "your-nerest",

  storageBucket: "your-nerest.firebasestorage.app",

  messagingSenderId: "75716628367",

  appId: "1:75716628367:web:76339adfa0a7f45adf45fa",

  measurementId: "G-M72F83DTK0"

};


// ================================
// Initialize Firebase
// ================================

const app =
  initializeApp(firebaseConfig);


// ================================
// Firebase Authentication
// ================================

const auth =
  getAuth(app);


// ================================
// Firestore Database
// ================================

const db =
  getFirestore(app);


// ================================
// Firebase Storage
// ================================

const storage =
  getStorage(app);


// ================================
// Export
// ================================

export {
  app,
  auth,
  db,
  storage
};
