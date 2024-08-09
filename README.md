<h1 align="center">Document creating and editing app With Flutter Web and Appwrite</h1>

<p align="center">  
This project is a Flutter Web application showing how to create a rich text editing experience, similar to Google Docs, using <a href="https://flutter.dev/">Flutter</a>, <a href="https://appwrite.io/?utm_source=influencer&utm_medium=homepage&utm_campaign=funwithflutter">Appwrite</a>, and <a href="https://pub.dev/packages/flutter_quill">Flutter-Quill</a>. 
</br>

### Realtime Changes - Collaboration
Collaborate with other users on the same document in real-time.

  ![Screenshot (51)](https://github.com/user-attachments/assets/2b9d141a-908d-48ec-9695-efa7703268da)


### Create and Open Documents
Easily create and re-open documents. Everything is saved to your Appwrite database.


![Screenshot (52)](https://github.com/user-attachments/assets/a2836c61-c167-437a-a774-8763819b186b)


### Authentication - Sign-in and Create New Accounts
Easy authentication using Appwrite.

![Screenshot (55)](https://github.com/user-attachments/assets/d587e4dd-d560-496a-a3e3-52f81df39f51)
![Screenshot (54)](https://github.com/user-attachments/assets/1e0d095c-948c-471b-be88-56cb257fb740)

## Packages
Packages used in this project.



### Backend: Appwrite
[Appwrite](https://appwrite.io/?utm_source=influencer&utm_medium=homepage&utm_campaign=funwithflutter) is an open-source alternative to Firebase and makes it possible to easily integrate authentication and add a backend database for your application. Appwrite also makes it possible to add real-time listeners to your database quickly.

- [Appwrite Docs](https://appwrite.io/docs?utm_source=influencer&utm_medium=docs&utm_campaign=funwithflutter)
- [Appwrite Github](https://github.com/appwrite/?utm_source=influencer&utm_medium=github&utm_campaign=funwithflutter)
- [Appwrite Discord](https://discord.com/invite/GSeTUeA?utm_source=influencer&utm_medium=discord&utm_campaign=funwithflutter)



### Rich Text Editor: Flutter-Quill
[FlutterQuill](https://pub.dev/packages/flutter_quill) is a rich text editor and a [Quill](https://quilljs.com/docs/formats) component for [Flutter](https://github.com/flutter/flutter). This package makes it easy to sync incremental changes to other editors (real-time changes).


### State Management: Riverpod
[Riverpod](https://riverpod.dev/) is an excellent choice for a state management solution in Flutter application.

### Routing: Routemaster
[Routemaster](https://pub.dev/packages/routemaster) simplifies the complexity of Flutter's 2.0 Navigator. This project creates two separate route maps:
- Authenticated routes
- Not authenticated routes

Riverpod, and the authentication state from Appwrite, determine which routes to allow.

### Other Packages
[Equatable](https://pub.dev/packages/equatable): A Dart package that helps implement value-based equality without needing to explicitly override `==` and `hashCode`.
- [UUID](https://pub.dev/packages/uuid): Simple, fast generation of [RFC4122](https://www.ietf.org/rfc/rfc4122.txt) UUIDs.
- [Logging](https://pub.dev/packages/logging): Provides APIs for debugging and error logging.

