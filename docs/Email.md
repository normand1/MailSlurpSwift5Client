# Email

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**analysis** | [**EmailAnalysis**](EmailAnalysis.md) |  | [optional] 
**attachments** | **[String]** | List of IDs of attachments found in the email. Use these IDs with the Inbox and Email Controllers to download attachments and attachment meta data such as filesize, name, extension. | [optional] 
**bcc** | **[String]** | List of &#x60;BCC&#x60; recipients email was addressed to | [optional] 
**body** | **String** | The body of the email message | [optional] 
**cc** | **[String]** | List of &#x60;CC&#x60; recipients email was addressed to | [optional] 
**charset** | **String** | Detected character set of the email body such as UTF-8 | [optional] 
**createdAt** | **Date** | When was the email received by MailSlurp | [optional] 
**from** | **String** | Who the email was sent from | [optional] 
**headers** | **[String:String]** |  | [optional] 
**id** | **UUID** | ID of the email | [optional] 
**inboxId** | **UUID** | ID of the inbox that received the email | [optional] 
**isHTML** | **Bool** | Was HTML sent in the email body | [optional] 
**read** | **Bool** | Has the email been viewed ever | [optional] 
**subject** | **String** | The subject line of the email message | [optional] 
**to** | **[String]** | List of &#x60;To&#x60; recipients email was addressed to | [optional] 
**updatedAt** | **Date** | When was the email last updated | [optional] 
**userId** | **UUID** | ID of user that email belongs | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


