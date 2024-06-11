# openapi
No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
- Generator version: 7.6.0
- Build package: org.openapitools.codegen.languages.DartClientCodegen

## Requirements

Dart 2.12 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  openapi:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  openapi:
    path: /path/to/openapi
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:openapi/api.dart';


final api_instance = BenefitsApi();
final pageSize = 8.14; // num | 
final page = 8.14; // num | 

try {
    final result = api_instance.benefits(pageSize, page);
    print(result);
} catch (e) {
    print('Exception when calling BenefitsApi->benefits: $e\n');
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BenefitsApi* | [**benefits**](doc//BenefitsApi.md#benefits) | **GET** /api/benefits | 
*BeveragesApi* | [**beverages**](doc//BeveragesApi.md#beverages) | **GET** /api/beverages | 
*CategoriesApi* | [**categories**](doc//CategoriesApi.md#categories) | **GET** /api/categories | 
*MenusApi* | [**menu**](doc//MenusApi.md#menu) | **GET** /api/menus/{id} | 
*MenusApi* | [**menus**](doc//MenusApi.md#menus) | **GET** /api/menus | 
*NewsApi* | [**news**](doc//NewsApi.md#news) | **GET** /api/news | 
*NewsApi* | [**newsItem**](doc//NewsApi.md#newsitem) | **GET** /api/news/{id} | 
*OptionsApi* | [**optionsControllerFindAll**](doc//OptionsApi.md#optionscontrollerfindall) | **GET** /api/options | 
*OptionsApi* | [**optionsControllerFindOne**](doc//OptionsApi.md#optionscontrollerfindone) | **GET** /api/options/{id} | 


## Documentation For Models

 - [BenefitEntity](doc//BenefitEntity.md)
 - [Beverage](doc//Beverage.md)
 - [BeverageDto](doc//BeverageDto.md)
 - [CategoryDto](doc//CategoryDto.md)
 - [CategoryType](doc//CategoryType.md)
 - [CommonMenu](doc//CommonMenu.md)
 - [MembershipBenefit](doc//MembershipBenefit.md)
 - [MenuDto](doc//MenuDto.md)
 - [MenuOption](doc//MenuOption.md)
 - [MenuType](doc//MenuType.md)
 - [NewsDto](doc//NewsDto.md)
 - [NewsEntity](doc//NewsEntity.md)
 - [OmitTypeClass](doc//OmitTypeClass.md)
 - [OptionType](doc//OptionType.md)
 - [PaginatedBenefit](doc//PaginatedBenefit.md)
 - [PaginatedBeverage](doc//PaginatedBeverage.md)
 - [PaginatedCategory](doc//PaginatedCategory.md)
 - [PaginatedMenu](doc//PaginatedMenu.md)
 - [PaginatedNews](doc//PaginatedNews.md)


## Documentation For Authorization

Endpoints do not require authorization.


## Author


