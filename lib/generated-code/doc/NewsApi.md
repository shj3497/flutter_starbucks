# openapi.api.NewsApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**news**](NewsApi.md#news) | **GET** /api/news | 
[**newsItem**](NewsApi.md#newsitem) | **GET** /api/news/{id} | 


# **news**
> PaginatedNews news(type, isHomeList, pageSize, page)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NewsApi();
final type = []; // List<String> | Comma-separated list of news types, Default :: [\"NEWS\",\"EVENT\"]
final isHomeList = true; // bool | Default :: undefined
final pageSize = 8.14; // num | 
final page = 8.14; // num | 

try {
    final result = api_instance.news(type, isHomeList, pageSize, page);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->news: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**List<String>**](String.md)| Comma-separated list of news types, Default :: [\"NEWS\",\"EVENT\"] | [optional] [default to const []]
 **isHomeList** | **bool**| Default :: undefined | [optional] 
 **pageSize** | **num**|  | [optional] 
 **page** | **num**|  | [optional] 

### Return type

[**PaginatedNews**](PaginatedNews.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **newsItem**
> NewsDto newsItem(id)



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = NewsApi();
final id = id_example; // String | 

try {
    final result = api_instance.newsItem(id);
    print(result);
} catch (e) {
    print('Exception when calling NewsApi->newsItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**NewsDto**](NewsDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

