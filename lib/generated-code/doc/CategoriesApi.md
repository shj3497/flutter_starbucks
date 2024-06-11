# openapi.api.CategoriesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**categories**](CategoriesApi.md#categories) | **GET** /api/categories | 


# **categories**
> PaginatedCategory categories(major, pageSize, page)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = CategoriesApi();
final major = major_example; // String | 
final pageSize = 8.14; // num | 
final page = 8.14; // num | 

try {
    final result = api_instance.categories(major, pageSize, page);
    print(result);
} catch (e) {
    print('Exception when calling CategoriesApi->categories: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **major** | **String**|  | [optional] 
 **pageSize** | **num**|  | [optional] 
 **page** | **num**|  | [optional] 

### Return type

[**PaginatedCategory**](PaginatedCategory.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

