<h1 align="center">
    Corona-Warn-App Verification IAM
</h1>

<p align="center">
    <a href="https://github.com/corona-warn-app/cwa-verification-iam/commits/" title="Last Commit"><img src="https://img.shields.io/github/last-commit/corona-warn-app/cwa-verification-iam?style=flat"></a>
    <a href="https://github.com/corona-warn-app/cwa-verification-iam/issues" title="Open Issues"><img src="https://img.shields.io/github/issues/corona-warn-app/cwa-verification-iam?style=flat"></a>
    <a href="https://github.com/corona-warn-app/cwa-verification-iam/blob/master/LICENSE" title="License"><img src="https://img.shields.io/badge/License-Apache%202.0-green.svg?style=flat"></a>
</p>

<p align="center">
  <a href="#development">Development</a> •
  <a href="#documentation">Documentation</a> •
  <a href="#support-and-feedback">Support</a> •
  <a href="#how-to-contribute">Contribute</a> •
  <a href="#contributors">Contributors</a> •
  <a href="#repositories">Repositories</a> •
  <a href="#licensing">Licensing</a>
</p>

The goal of this project is to develop the official Corona-Warn-App for Germany based on the exposure notification API from [Apple](https://www.apple.com/covid19/contacttracing/) and [Google](https://www.google.com/covid19/exposurenotifications/). The apps (for both iOS and Android) use Bluetooth technology to exchange anonymous encrypted data with other mobile phones (on which the app is also installed) in the vicinity of an app user's phone. The data is stored locally on each user's device, preventing authorities or other parties from accessing or controlling the data. This repository contains the **I**dentity and **A**ccess **M**anagement System (IAM) of the **verification portal** for the Corona-Warn-App plus some ui decorators. As the verification portal displays valid teleTANs which enable the issuer to submit his Diagnosis Keys, its interface shall be protected against unauthorized access by suitable means. Only dedicated personnel acting on behalf of the health authority is authorized to login and hence will get access.

## Status
![ci](https://github.com/corona-warn-app/cwa-verification-iam/workflows/ci/badge.svg)

## About this component

In the world of the Corona Warn App the Verification Identity and Access Management ensures that only authorized health personnel get access to the Verification Portal. The parts of the verification component cooperate in the following manner:

- The Verification Server of the Corona Warn App (repository: cwa-verification-server) helps validating whether upload requests from the mobile App are valid or not.
- The Verification Portal of the Corona Warn App (repository: cwa-verification-portal) allows hotline employees to generate teleTANs which are used by users of the mobile App to upload their diagnostic keys.
- The Verification Identity and Access of the Corona Warn App (repository: cwa-verification-iam) ensures that only authorized health personnel get access to the Verification Portal.
- The Test Result Server of the Corona Warn App (repository: cwa-testresult-server) receives the results from laboratories and delivers these results to the app via the verification-server.

 So, this repository contains a plain keycloak docker image as third party component and the project specific 'Corona-warn-app theme'.

 ## Development
 
 This repository is intended to pull and start a docker image containing a [keycloak](https://www.keycloak.org/) IAM System.
 So be sure to have [docker](https://docker.com) installed on your machine.
 
To build the IAM docker image and start the Keycloak server, execute the following commands from the root directory of the repository:

````bash
docker build --pull --rm -f "Dockerfile" -t cwa-verification-iam "."
docker run -p "8080:8080"  -p "8443:8443" -p "7443:7443" -e KEYCLOAK_USER=admin -e KEYCLOAK_PASSWORD=admin  cwa-verification-iam
 ````

After that you will have a Keykloak IAM Solution running on your machine (localhost). The landing page of the Keykloak system will provide you with further information on how to setup the system and add new users. For a detailed view on all the features please refer to the manual pages, also linked on the landing page.

**Note:** To access the **administration console**, you must use port **7443**, which only accepts HTTPS connections. Since the local installation uses a self-signed certificate, your browser will throw a warning/error (e.g., ERR_CERT_AUTHORITY_INVALID) about the risk of accepting this kind of certificates. You need to click on "continue to localhost (insecure)" or similar option shown by your browser.    

## Working Language

We are building this application for Germany. We want to be as open and transparent as possible, also to interested parties in the global developer community who do not speak German. Later on this application might also serve as a template for other projects outside of Germany. For these reasons, we decided to apply _English_ as the primary project language.  

Consequently, all content will be made available primarily in English. We also ask all interested people to use English as language to create issues, in their code (comments, documentation etc.) and when you send requests to us. The application itself, documentation and all end-user facing content will - of course - be made available in German (and probably other languages as well). We also try to make some developer documentation available in German, but please understand that focussing on the _Lingua Franca_ of the global developer community makes the development of this application as efficient as possible.

## Documentation

The full documentation for the Corona-Warn-App can be found in the [cwa-documentation](https://github.com/corona-warn-app/cwa-documentation) repository. The documentation repository contains technical documents, architecture information, and white papers related to this implementation.

## Support and Feedback
The following channels are available for discussions, feedback, and support requests:

| Type                     | Channel                                                |
| ------------------------ | ------------------------------------------------------ |
| **General Discussion**   | <a href="https://github.com/corona-warn-app/cwa-documentation/issues/new/choose" title="General Discussion"><img src="https://img.shields.io/github/issues/corona-warn-app/cwa-documentation/question.svg?style=flat-square"></a> </a>   |
| **Concept Feedback**    | <a href="https://github.com/corona-warn-app/cwa-documentation/issues/new/choose" title="Open Concept Feedback"><img src="https://img.shields.io/github/issues/corona-warn-app/cwa-documentation/architecture.svg?style=flat-square"></a>  |
| **Verification IAM Issue**    | <a href="https://github.com/corona-warn-app/cwa-verification-iam/issues" title="Open Issues"><img src="https://img.shields.io/github/issues/corona-warn-app/cwa-verification-iam?style=flat"></a>  |
| **Other Requests**    | <a href="mailto:cwa-opensource@telekom.de" title="Email CWA Team"><img src="https://img.shields.io/badge/email-CWA%20team-green?logo=mail.ru&style=flat-square&logoColor=white"></a>   |

## How to Contribute

Contribution and feedback is encouraged and always welcome. For more information about how to contribute, the project structure, as well as additional contribution information, see our [Contribution Guidelines](./CONTRIBUTING.md). By participating in this project, you agree to abide by its [Code of Conduct](./CODE_OF_CONDUCT.md) at all times.

## Contributors

The German government has asked SAP AG and Deutsche Telekom AG to develop the Corona-Warn-App for Germany as open source software. Deutsche Telekom is providing the network and mobile technology and will operate and run the backend for the app in a safe, scalable and stable manner. SAP is responsible for the app development, its framework and the underlying platform. Therefore, development teams of SAP and Deutsche Telekom are contributing to this project. At the same time our commitment to open source means that we are enabling -in fact encouraging- all interested parties to contribute and become part of its developer community.

## Repositories

A list of all public repositories from the Corona-Warn-App can be found [here](https://github.com/corona-warn-app/cwa-documentation/blob/master/README.md#repositories).

## Licensing

Copyright (c) 2020-2023 Deutsche Telekom AG.

Licensed under the **Apache License, Version 2.0** (the "License"); you may not use this file except in compliance with the License.

You may obtain a copy of the License at https://www.apache.org/licenses/LICENSE-2.0.

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the [LICENSE](./LICENSE) for the specific language governing permissions and limitations under the License.
