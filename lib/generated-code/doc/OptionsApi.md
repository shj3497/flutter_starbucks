# openapi.api.OptionsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**optionsControllerFindAll**](OptionsApi.md#optionscontrollerfindall) | **GET** /api/options | 
[**optionsControllerFindOne**](OptionsApi.md#optionscontrollerfindone) | **GET** /api/options/{id} | 


# **optionsControllerFindAll**
> optionsControllerFindAll()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = OptionsApi();

try {
    api_instance.optionsControllerFindAll();
} catch (e) {
    print('Exception when calling OptionsApi->optionsControllerFindAll: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **optionsControllerFindOne**
> optionsControllerFindOne(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = OptionsApi();
final id = id_example; // String | 

try {
    api_instance.optionsControllerFindOne(id);
} catch (e) {
    print('Exception when calling OptionsApi->optionsControllerFindOne: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

