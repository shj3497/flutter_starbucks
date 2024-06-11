# openapi.api.BenefitsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**benefits**](BenefitsApi.md#benefits) | **GET** /api/benefits | 


# **benefits**
> PaginatedBenefit benefits(pageSize, page)



### Example
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **num**|  | [optional] 
 **page** | **num**|  | [optional] 

### Return type

[**PaginatedBenefit**](PaginatedBenefit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

