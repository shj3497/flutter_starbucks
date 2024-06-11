# openapi.api.BeveragesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**beverages**](BeveragesApi.md#beverages) | **GET** /api/beverages | 


# **beverages**
> PaginatedBeverage beverages(pageSize, page)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = BeveragesApi();
final pageSize = 8.14; // num | 
final page = 8.14; // num | 

try {
    final result = api_instance.beverages(pageSize, page);
    print(result);
} catch (e) {
    print('Exception when calling BeveragesApi->beverages: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **num**|  | [optional] 
 **page** | **num**|  | [optional] 

### Return type

[**PaginatedBeverage**](PaginatedBeverage.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

