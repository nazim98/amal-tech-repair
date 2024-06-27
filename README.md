# CSCI 4311 Final Assessment - Flutter Mobile Application Development

## Group Name: Anonymous

Welcome to the GitHub repository for the CSCI 4311 final assessment on flutter mobile application development. This document contains the detailed breakdown of contributions from each team member.

### Title: Amal Tech Repair

### Work Distribution:

| Name                            | Matric Number | Assigned Tasks                                            | Participation |
|---------------------------------|---------------|-----------------------------------------------------------|---------------|
| Wan Mohd Nazim Bin Wan Muhamad Saidin | 2114261 | logo, explore page, advertise page, me page, edit service page, database for service, CRUD for service | 100% |
| Muhammad Khairunas bin Noorizam | 2112383 | ogin page, register page, authentication, components, compile code, troubleshooting | 100%          |
|    Ezhad Eminuddin bin Karim    |  2218327    | chat page, home page, setting page, chat service, theme of the app | 100%          |

### Table of Contents:
- [Introduction](#introduction)
- [Objective](#objective)
- [Features and Functionalities](#features-and-functionalities)
- [Screen Navigation and Widgets](#screen-navigation-and-widgets)
- [Sequence Diagram](#sequence-diagram)
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

## Screen Navigation and Widgets
**1. Screen Navigation**
-1.1 advertise page
   -fill in the service form
   -submit the service form
   -the form will go to explore page & me page
-1.2 chat page
   - you can send & receive a message on this page
   - 
-1.3 edit_service page
   - you can edit your service here
   - 

-1.4 explore page
   - you can scroll through the services that other users offer.
   - 
   
-1.5 home page
   - a page that shows all users of this app
   - you can chat with the user that you want to deal.
   - 

-1.6 login page
   - a default page that will be shown when you open the app
   - there are two textfields: 1. email 2. password, which will match with the existing account in the firebase authentication
   - if you do not have an account, you can click register now

-1.7 main page
   - a page that shows all important page likes:
     -1.Explore page
     -2.Advertise page
     -3.chat page
     -4.me page
     -5.settings page

-1.8 me page
   - show all your services
   - each service can be edited by clicking the pen icon
   - each service can be deleted by long pressing the service bar
   - 

-1.9 register page
   - you can register your email and password here
   - the data will be kept in a database
   - you can go to the login page if you have the account

-1.10 settings page
   - you can toggle mode from light to dark and vice versa.
   -

**2. Widgets**

-1.chat bubble
   - bubble that contain chat between two user
   - the current is green while the receiver is grey

-2.custom button
   - button that has been used on certain pages
   -

-4. custom card
   - a container that shows user services
-5.my drawer
   - a drawer that can be opened by clicking the drawer icon
   - you can sign out here

-6. my textfield
   - textfield widget that has been used in login and registers page

-7. search bar
   - you can search for any user that meets your desire
   - 
-8. user tile
   - have container of all users's email

## Sequence Diagram
![image](https://github.com/nazim98/amal-tech-repair/assets/134998873/a8598bbe-6413-4ecf-9d76-a4333ce52873)


## References

1. **Flutter Official Documentation:** Provides detailed information about Flutter, including user guides, tutorials, and technical documentation.
   - [Flutter Documentation](https://docs.flutter.dev/)

2. **Dart Official Documentation:** Provides detailed information about Dart, including user guides, tutorials, and technical documentation.
   - [Dart Documentation](https://pub.dev/)

3. **Weekly Progress Report:**
   - [Weekly Progress Report]()
