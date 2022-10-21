# ArticleApi

All URIs are relative to *http://localhost:8080*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**articlesGet**](ArticleApi.md#articlesGet) | **GET** /articles |  |
| [**searchGet**](ArticleApi.md#searchGet) | **GET** /search |  |


<a name="articlesGet"></a>
# **articlesGet**
> Articles articlesGet(count)



    Lists top English language headlines.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **count** | **Integer**| Maximum amount of articles to be returned | [optional] [default to 10] |

### Return type

[**Articles**](../Models/Articles.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="searchGet"></a>
# **searchGet**
> Articles searchGet(keyword, country, count)



    Searches articles by &#x60;keyword&#x60;.

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **keyword** | **String**| Keyword to search for in article title and description | [default to null] |
| **country** | [**Country**](../Models/.md)| ISO 3166-1 2-character country code | [optional] [default to null] [enum: AU, BR, CA, CH, CN, DE, EG, ES, FR, GB, GR, HK, IE, IL, IN, IT, JP, NL, false, PE, PH, PK, PT, RO, RU, SE, SG, TW, UA, US] |
| **count** | **Integer**| Maximum amount of articles to be returned | [optional] [default to 10] |

### Return type

[**Articles**](../Models/Articles.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

