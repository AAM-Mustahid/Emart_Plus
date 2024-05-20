rules_version = '2';

service cloud.firestore {
  match /databases/{database}/documents {

   
    match /users/{userId}{
      allow read: if request.auth.uid == userId;
      allow write: if request.auth.uid == userId;
    }
  }
}