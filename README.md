# CSCI 4311 Final Assessment - Flutter Mobile Application Development

## Group Name: Anonymous

Welcome to the GitHub repository for the CSCI 4311 final assessment on flutter mobile application development. This document contains the detailed breakdown of contributions from each team member.

### Title: Amal Tech Repair

### Work Distribution:

| Name                            | Matric Number | Assigned Tasks                                            | Participation |
|---------------------------------|---------------|-----------------------------------------------------------|---------------|
| Wan Mohd Nazim Bin Wan Muhamad Saidin | 2114261 | logo, route, navigation bar, explore page, advertise page, me page, edit service page, database for service, CRUD for service | 100% |
| Muhammad Khairunas bin Noorizam | 2112383 | login page, register page, authentication, components, compile code, troubleshooting | 100%          |
|    Ezhad Eminuddin bin Karim    |  2218327    | chat page, home page, setting page, chat service, theme of the app | 100%          |

### Table of Contents:
- [Introduction](#introduction)
- [Objective](#objective)
- [Features and Functionalities](#features-and-functionalities)
- [Packages and Plugins](#packages-and-plugins)
- [Screen Navigation and Widgets](#screen-navigation-and-widgets)
- [Sequence Diagram](#sequence-diagram)
- [Weekly Progress Report](#weekly-progress-report)
- [References](#references)

## Introduction 
Amal Tech Repair is a versatile mobile application designed to facilitate on-demand technical repair services for a wide range of consumer electronics and gadgets. The app serves as a comprehensive platform where users can advertise services, chat with other users or service providers, and access a variety of features to streamline the repair process.

Key Features:
- Service Advertisement: Users can advertise their repair services, making it easier to connect with potential clients.
- In-App Chat: The app allows for seamless communication between users and service providers, ensuring all queries and details are addressed promptly.
- User Authentication: Secure login and registration functionalities ensure that only verified users can access the services.
- Transparent Pricing: Users can view detailed pricing information for different repair services, eliminating any hidden fees.
- Contact Information: The app provides contact details of service providers for direct communication.
- Service Details: Comprehensive information on the types of repair services offered, ensuring users know exactly what is available.
- Aesthetically Pleasing Interface: A user-friendly and visually appealing design enhances the overall user experience.

The Amal Tech Repair app aims to provide a hassle-free repair experience by offering convenient booking and scheduling, eliminating the need to visit a repair shop. Users can have their devices fixed at their convenience, without disrupting their daily routine. Available for both iOS and Android platforms, the application ensures that users can access high-quality repair services wherever they are.

## Objective
**1. Comprehensive Service Offering:**
- To enable users to advertise their repair services, enhancing visibility and connectivity within the community.
- To facilitate seamless in-app communication between users and service providers, ensuring all queries and details are addressed promptly.

**2. Convenience and Accessibility:**
- To provide users with an on-demand solution for getting their electronic devices repaired without the need to visit a physical repair shop.
- To offer professional technical repair services that are easily accessible to customers in their local area, complete with location tracking of service providers.

**3. Time and Cost Savings:**
- To save users' time by eliminating the need to travel to a repair shop and wait for service.
- To offer transparent and competitive pricing for repair services, allowing customers to view detailed cost information upfront and avoid hidden fees.

**4. Enhanced User Experience:**
- To deliver a user-friendly, visually appealing interface that enhances the overall experience, from booking an appointment to receiving the repaired device.
- To provide 24/7 customer support to address any questions or concerns throughout the repair process.

**5. Information Accessibility:**
- To allow users to access essential details such as contact information, pricing, and the types of repair services offered.
- To keep users informed about the location and status of their service providers in real time.

**6. Continuous Improvement:**
- To expand the range of devices and repair services offered through the Amal Tech Repair app, catering to the evolving needs of consumers.
- To establish Amal Tech Repair as a trusted and reliable solution for all types of electronic device repairs.

## Features and Functionalities
**1. Service Advertising and Communication:**
- Allows users to advertise their repair services within the app, enhancing visibility and networking opportunities.
- Facilitates in-app chat between users and service providers to discuss repair details, pricing, and other inquiries.
- Provides a platform for service providers to showcase their expertise and build trust with potential clients.

**2. Device Repair Services:**
- Supports a wide range of electronic devices, including smartphones, tablets, laptops, smartwatches, and various smart home devices.
- Offers a comprehensive list of repair services, such as screen replacement, battery replacement, charging port repair, software troubleshooting, and more.
- Allows users to easily select the device model and the specific repair service required.

**3. Transparent Pricing and Payment:**
- Displays upfront, transparent pricing for each repair service, with no hidden fees or charges.
- Offers multiple payment options, including credit/debit cards, mobile wallets, and in-app payment integration.
- Provides a detailed breakdown of the repair cost, including parts and labor, before the user confirms the booking.

**4. Information Accessibility:**
- Allows users to access essential details such as contact information, pricing, and the types of repair services offered.
- Provides real-time tracking of the repair technician en route to the user's location.
- Displays comprehensive information about the service provider, including their contact number and service offerings.

**5. User Authentication:**
- Supports login and registration functionalities for users to create and manage their profiles.
- Ensures secure user authentication and data privacy through industry-standard security measures.

## Packages and Plugins
**Firebase Core**
- The `firebase_core` package is the foundational Firebase library for Flutter. It is necessary for initializing Firebase services in the application, providing a base to integrate various Firebase features.

**Intl**
- The `intl` package is used for internationalization and localization. It helps in formatting dates, numbers, and messages according to different locales, ensuring the application can support multiple languages and regional formats.

**Cloud Firestore**
- The `cloud_firestore` package allows the application to interact with the Cloud Firestore database. It is a scalable, flexible database from Firebase, ideal for storing and syncing data between users in real-time.

**Provider**
- The `provider` package is a popular state management solution for Flutter applications. It offers a way to manage and propagate state changes efficiently across the widget tree.

**Firebase Authentication**
- The `firebase_auth` package enables Firebase Authentication in the application. It provides various methods for user authentication, including email/password, social media logins, and more.

**Flutter Launcher Icons Configuration**
- The `flutter_launcher_icons` package is a flexible command-line tool that simplifies updating, customizing, and optionally reverting your Flutter app's launcher icons for various platforms.

## Screen Navigation and Widgets
**1. Screen Navigation**

-1.1 advertise page
   -page for advertise user's services
   
   ![advertise page before fill in](https://github.com/nazim98/amal-tech-repair/assets/118235122/acc030ce-28ef-4744-a74f-b3cb8043b968)

-1.2 individual chat page
   - you can send & receive a message on this page
     
     ![individual chat page 1](https://github.com/nazim98/amal-tech-repair/assets/118235122/358952c2-2ff4-434c-bafb-fda98190ac0a)
     ![individual chat page 2](https://github.com/nazim98/amal-tech-repair/assets/118235122/86ef45c5-cb82-4de0-b177-860486d20d67)
     
-1.3 edit_service page
   - you can edit your service here

     ![edit service](https://github.com/nazim98/amal-tech-repair/assets/118235122/b51b4794-4123-4823-9efd-d8551cb38340)

-1.4 explore page
   - you can scroll through the services that other users offer.

     ![explore page](https://github.com/nazim98/amal-tech-repair/assets/118235122/a8c017b9-568c-4550-b691-e83df72e8de5)

   
-1.5 home chat page
   - a page that shows all users of this app
   - you can chat with the user that you want to deal.
   
   ![chat page that show all users](https://github.com/nazim98/amal-tech-repair/assets/118235122/5b80a378-2e4c-458d-bf6f-162d3ae4e53f)  

-1.6 login page
   - a default page that will be shown when you open the app
   - there are two textfields: 1. email 2. password, which will match with the existing account in the firebase authentication
   - if you do not have an account, you can click register now

     ![login page](https://github.com/nazim98/amal-tech-repair/assets/118235122/77ae8e76-c87f-4e0b-ae08-f30bfc360f9e)

-1.7 main page
   - a page that shows all important page likes:
     -1.Explore page
     -2.Advertise page
     -3.chat page
     -4.me page
     -5.settings page

   ![main page](https://github.com/nazim98/amal-tech-repair/assets/118235122/4f67b52a-e1fb-422a-b304-c4f731c09104)

-1.8 me page
   - show all your services
   - each service can be edited by clicking the pen icon
   - each service can be deleted by long pressing the service bar

   ![me](https://github.com/nazim98/amal-tech-repair/assets/118235122/efa327f5-0bcb-4274-a7e4-765744df4986)
   ![edit service](https://github.com/nazim98/amal-tech-repair/assets/118235122/2ac0eb1b-2538-4991-a529-f5e20c410f16)

-1.9 register page
   - you can register your email and password here
   - the data will be kept in a database
   - you can go to the login page if you have the account

     ![register page](https://github.com/nazim98/amal-tech-repair/assets/118235122/292e751b-bf8a-4576-a634-76785c2a4348)

-1.10 settings page
   - you can toggle mode from light to dark and vice versa.

     ![settings page light mode](https://github.com/nazim98/amal-tech-repair/assets/118235122/e74aa27b-84fc-4364-b452-6e02bbb3737f)
![settings page dark mode](https://github.com/nazim98/amal-tech-repair/assets/118235122/a45b5248-f8c8-4952-9d0b-cd1c5f615d4b)

**2. Widgets**

-1.chat bubble
   - bubble that contain chat between two user
   - the current is green while the receiver is grey
     
     ![chat bubble](https://github.com/nazim98/amal-tech-repair/assets/118235122/44e9acc8-e996-4b36-a2fa-aacc66d96f74)

-2.custom button
   - button that has been used on certain pages

     ![custom button](https://github.com/nazim98/amal-tech-repair/assets/118235122/cdf176da-f6f2-4f01-9482-03986f58ea5a)

-4. custom card
   - a container that shows user services

     ![custom card](https://github.com/nazim98/amal-tech-repair/assets/118235122/9a9cb088-4019-43eb-9aa7-03c3ef5eea50)
     
-5.my drawer
   - a drawer that can be opened by clicking the drawer icon
   - you can sign out here

     ![my drawer](https://github.com/nazim98/amal-tech-repair/assets/118235122/565e873e-4bc1-4efb-81ba-edb7f78b1185)

-6. my textfield
   - textfield widget that has been used in login and registers page

     ![my textfield](https://github.com/nazim98/amal-tech-repair/assets/118235122/9549043f-ad2d-41f9-9941-d4ec57e8315f)

-7. search bar
   - you can search for any user that meets your desire

     ![search bar](https://github.com/nazim98/amal-tech-repair/assets/118235122/0eda3a08-c1db-49c4-9a5e-05fc2b3e49b0)
     
-8. user tile
   - have container of all users's email

     ![user tile](https://github.com/nazim98/amal-tech-repair/assets/118235122/c7addd2a-b793-433f-994c-24aa2bfddbb3)

## Sequence Diagram
![image](https://github.com/nazim98/amal-tech-repair/assets/134998873/a8598bbe-6413-4ecf-9d76-a4333ce52873)

## Weekly Progress Report
   - [Weekly Progress Report](https://drive.google.com/file/d/11yvdfobv34lV1ZaJHd1kfa-LU4qGKUeJ/view)

## References

Firebase. (n.d.). Firebase documentation. Retrieved June 27, 2024, from https://firebase.google.com/docs

Flutter. (n.d.). Flutter documentation. Retrieved June 27, 2024, from https://docs.flutter.dev/

pub.dev. (n.d.). pub.dev. Retrieved June 27, 2024, from https://pub.dev/

Radar. (n.d.). Radar Flutter SDK documentation. Retrieved June 27, 2024, from https://radar.com/documentation/sdk/flutter

Material Design. (n.d.). Material 3 for Flutter. Retrieved June 27, 2024, from https://m3.material.io/develop/flutter
