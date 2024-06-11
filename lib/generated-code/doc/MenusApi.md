# openapi.api.MenusApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**menu**](MenusApi.md#menu) | **GET** /api/menus/{id} | 
[**menus**](MenusApi.md#menus) | **GET** /api/menus | 


# **menu**
> CommonMenu menu(id, foodId, beverageId)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = MenusApi();
final id = id_example; // String | 
final foodId = 8.14; // num | 
final beverageId = 8.14; // num | 

try {
    final result = api_instance.menu(id, foodId, beverageId);
    print(result);
} catch (e) {
    print('Exception when calling MenusApi->menu: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **foodId** | **num**|  | [optional] 
 **beverageId** | **num**|  | [optional] 

### Return type

[**CommonMenu**](CommonMenu.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **menus**
> PaginatedMenu menus(pageSize, page)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = MenusApi();
final pageSize = 8.14; // num | 
final page = 8.14; // num | 

try {
    final result = api_instance.menus(pageSize, page);
    print(result);
} catch (e) {
    print('Exception when calling MenusApi->menus: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **num**|  | [optional] 
 **page** | **num**|  | [optional] 

### Return type

[**PaginatedMenu**](PaginatedMenu.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

