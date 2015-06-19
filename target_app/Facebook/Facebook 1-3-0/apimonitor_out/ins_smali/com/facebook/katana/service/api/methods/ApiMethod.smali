.class public Lcom/facebook/katana/service/api/methods/ApiMethod;
.super Ljava/lang/Object;
.source "ApiMethod.java"
.field protected static final ALBUM_ID_PARAM:Ljava/lang/String; = "aid"
.field protected static final AMPERSAND:Ljava/lang/String; = "&"
.field public static final API_EC_PARAM_SESSION_KEY:I = 0x66
.field protected static final API_KEY_PARAM:Ljava/lang/String; = "api_key"
.field protected static final API_VERSION:Ljava/lang/String; = "1.0"
.field protected static final APPLICATION_API_KEY:Ljava/lang/String; = "882a8490361da98702bf97a021ddc14d"
.field protected static final APP_SECRET:Ljava/lang/String; = "62f8ce9f74b12f84c123cc23437a4a32"
.field protected static final BASE_HTTPS_URL:Ljava/lang/String; = "https://api.facebook.com/restserver.php"
.field protected static final BASE_HTTP_URL:Ljava/lang/String; = "http://api.facebook.com/restserver.php"
.field protected static final BODY_PARAM:Ljava/lang/String; = "body"
.field protected static final CALL_ID_PARAM:Ljava/lang/String; = "call_id"
.field protected static final CAPTION_PARAM:Ljava/lang/String; = "caption"
.field protected static final CONFIRM_PARAM:Ljava/lang/String; = "confirm"
.field protected static final DESCRIPTION_PARAM:Ljava/lang/String; = "description"
.field protected static final EID_PARAM:Ljava/lang/String; = "eid"
.field protected static final EMAIL_PARAM:Ljava/lang/String; = "email"
.field protected static final EQUALS:Ljava/lang/String; = "="
.field protected static final ERROR_CODE:Ljava/lang/String; = "error_code"
.field protected static final ERROR_MSG:Ljava/lang/String; = "error_msg"
.field public static final EXTRA_SESSION_SECRET:Ljava/lang/String; = "ApiMethod.secret"
.field public static final FACEBOOK_APP_ID:J = 0x51a67c8e50L
.field protected static final FOLDER_PARAM:Ljava/lang/String; = "folder"
.field protected static final FORMAT_PARAM:Ljava/lang/String; = "format"
.field protected static final JSON_FORMAT:Ljava/lang/String; = "JSON"
.field protected static final LIMIT_PARAM:Ljava/lang/String; = "limit"
.field protected static final LOCATION_PARAM:Ljava/lang/String; = "location"
.field protected static final MESSAGE_PARAM:Ljava/lang/String; = "message"
.field protected static final METHOD_PARAM:Ljava/lang/String; = "method"
.field protected static final NAME_PARAM:Ljava/lang/String; = "name"
.field protected static final PASSWORD_PARAM:Ljava/lang/String; = "password"
.field protected static final PHOTO_IDS_PARAM:Ljava/lang/String; = "pids"
.field protected static final PHOTO_ID_PARAM:Ljava/lang/String; = "pid"
.field protected static final POST_ID_PARAM:Ljava/lang/String; = "post_id"
.field protected static final QUERIES_PARAM:Ljava/lang/String; = "queries"
.field protected static final QUERY_PARAM:Ljava/lang/String; = "query"
.field protected static final QUESTION_MARK:Ljava/lang/String; = "?"
.field protected static final RSVP_STATUS_PARAM:Ljava/lang/String; = "rsvp_status"
.field protected static final SESSION_KEY_PARAM:Ljava/lang/String; = "session_key"
.field protected static final SIG_PARAM:Ljava/lang/String; = "sig"
.field protected static final SOURCE_IDS_PARAM:Ljava/lang/String; = "source_ids"
.field protected static final START_PARAM:Ljava/lang/String; = "start"
.field protected static final SUBJECT_PARAM:Ljava/lang/String; = "subject"
.field private static final TAG:Ljava/lang/String; = "ApiMethod"
.field protected static final TAGS_PARAM:Ljava/lang/String; = "tags"
.field protected static final THREAD_ID_PARAM:Ljava/lang/String; = "tid"
.field protected static final UIDS_PARAM:Ljava/lang/String; = "uids"
.field protected static final UID_PARAM:Ljava/lang/String; = "uid"
.field protected static final VERSION_PARAM:Ljava/lang/String; = "v"
.field protected static final VIEWER_ID_PARAM:Ljava/lang/String; = "viewer_id"
.field protected static final VISIBILITY_PARAM:Ljava/lang/String; = "visible"
.field protected static final mHandler:Landroid/os/Handler;
.field protected static final mJsonFactory:Lcom/facebook/katana/service/api/methods/FBJsonFactory;
.field protected final mBaseUrl:Ljava/lang/String;
.field protected final mFacebookMethod:Ljava/lang/String;
.field private final mHttpListener:Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
.field protected final mHttpMethod:Ljava/lang/String;
.field protected mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;
.field protected mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
.field protected final mParams:Ljava/util/Map;
.field protected final mReqIntent:Landroid/content/Intent;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
sput-object v0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHandler:Landroid/os/Handler;
new-instance v0, Lcom/facebook/katana/service/api/methods/FBJsonFactory;
invoke-direct {v0}, Lcom/facebook/katana/service/api/methods/FBJsonFactory;-><init>()V
sput-object v0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mJsonFactory:Lcom/facebook/katana/service/api/methods/FBJsonFactory;
return-void
.end method
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/TreeMap;
invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mParams:Ljava/util/Map;
new-instance v0, Lcom/facebook/katana/service/api/methods/ApiMethod$1;
invoke-direct {v0, p0}, Lcom/facebook/katana/service/api/methods/ApiMethod$1;-><init>(Lcom/facebook/katana/service/api/methods/ApiMethod;)V
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHttpListener:Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
iput-object p1, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mReqIntent:Landroid/content/Intent;
iput-object p2, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHttpMethod:Ljava/lang/String;
iput-object p3, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mFacebookMethod:Ljava/lang/String;
iput-object p4, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mBaseUrl:Ljava/lang/String;
iput-object p5, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
return-void
.end method
.method public static isSessionKeyError(ILjava/lang/Exception;)Z
.registers 5
if-eqz p1, :cond_13
instance-of v1, p1, Lcom/facebook/katana/service/api/FacebookApiException;
if-eqz v1, :cond_13
check-cast p1, Lcom/facebook/katana/service/api/FacebookApiException;
invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookApiException;->getErrorCode()I
move-result v1
const/16 v2, 0x66
if-ne v1, v2, :cond_13
const/4 v1, 0x1
move v0, v1
:goto_12
return v0
:cond_13
const/4 v1, 0x0
move v0, v1
goto :goto_12
.end method
.method protected static printJson(Ljava/lang/String;)V
.registers 1
return-void
.end method
.method protected static removeChar(Ljava/lang/String;C)Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuffer;
const/16 v2, 0x80
invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V
const/4 v0, 0x0
:goto_8
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
if-lt v0, v2, :cond_13
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
:cond_13
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v2
if-eq v2, p1, :cond_20
invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:cond_20
add-int/lit8 v0, v0, 0x1
goto :goto_8
.end method
.method protected addCommonParameters()V
.registers 4
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mParams:Ljava/util/Map;
const-string v1, "api_key"
const-string v2, "882a8490361da98702bf97a021ddc14d"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mParams:Ljava/util/Map;
const-string v1, "format"
const-string v2, "JSON"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mParams:Ljava/util/Map;
const-string v1, "method"
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mFacebookMethod:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mParams:Ljava/util/Map;
const-string v1, "v"
const-string v2, "1.0"
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method protected addSignature()V
.registers 4
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mParams:Ljava/util/Map;
const-string v1, "sig"
invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/ApiMethod;->buildSignature()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method protected buildGETUrl(Ljava/lang/String;)Ljava/lang/String;
.registers 9
const-string v6, "ApiMethod"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/ApiMethod;->buildQueryString()Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I
move-result v5
if-nez v5, :cond_3f
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
const-string v5, "ApiMethod"
if-eq v6, v0, :cond_3c
new-instance v2, Ljava/lang/StringBuffer;
const-string v5, "ApiMethod"
invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
const-string v5, "("
invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
const-string v5, ")"
invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
:goto_35
const-string v5, "We always should have something in the query (e.g., the signature)"
invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
move-object v5, p1
:goto_3b
return-object v5
:cond_3c
const-string v1, "ApiMethod"
goto :goto_35
:cond_3f
const-string v5, "?"
invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
goto :goto_3b
.end method
.method protected buildQueryString()Ljava/lang/StringBuilder;
.registers 9
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const/4 v1, 0x1
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mParams:Ljava/util/Map;
invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v5
invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_10
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-nez v6, :cond_17
return-object v3
:cond_17
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
if-eqz v1, :cond_3a
const/4 v1, 0x0
:goto_20
iget-object v6, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mParams:Ljava/util/Map;
invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
if-nez v4, :cond_40
const-string v0, ""
:goto_2c
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "="
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_10
:cond_3a
const-string v6, "&"
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_20
:cond_40
const-string v6, "UTF-8"
invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_2c
.end method
.method protected buildSignature()Ljava/lang/String;
.registers 10
invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/ApiMethod;->signatureString()Ljava/lang/String;
move-result-object v6
const-string v7, "MD5"
invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v3
invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V
const-string v7, "UTF-8"
invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v5
const/4 v7, 0x0
array-length v8, v5
invoke-virtual {v3, v5, v7, v8}, Ljava/security/MessageDigest;->update([BII)V
invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B
move-result-object v4
new-instance v0, Ljava/lang/StringBuffer;
array-length v7, v4
mul-int/lit8 v7, v7, 0x2
invoke-direct {v0, v7}, Ljava/lang/StringBuffer;-><init>(I)V
const/4 v1, 0x0
:goto_25
array-length v7, v4
if-lt v1, v7, :cond_2d
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v7
return-object v7
:cond_2d
aget-byte v7, v4, v1
and-int/lit16 v2, v7, 0xff
const/16 v7, 0x10
if-ge v2, v7, :cond_3a
const-string v7, "0"
invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_3a
invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v7
invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v1, v1, 0x1
goto :goto_25
.end method
.method public cancel()V
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;
invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/HttpOperation;->cancel()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;
:cond_c
return-void
.end method
.method protected dispatchOnOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
.registers 9
move v0, p2
move-object v1, p4
invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/ApiMethod;->simulateSessionKeyError()Z
move-result v2
if-eqz v2, :cond_11
new-instance v1, Lcom/facebook/katana/service/api/FacebookApiException;
const/16 v2, 0x66
const-string v3, "Invalid credentials"
invoke-direct {v1, v2, v3}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(ILjava/lang/String;)V
:cond_11
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
invoke-interface {v2, p1, v0, p3, v1}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
return-void
.end method
.method protected generateLogParams()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x1f4
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, ",\"method\":\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mFacebookMethod:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public getIntent()Landroid/content/Intent;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mReqIntent:Landroid/content/Intent;
return-object v0
.end method
.method protected keysInSignatureOrder(Ljava/util/Map;)Ljava/util/List;
.registers 5
new-instance v0, Ljava/util/HashSet;
invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v2
invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
return-object v1
.end method
.method protected onComplete(ILjava/lang/String;Ljava/lang/Exception;)V
.registers 6
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
invoke-interface {v0, p0, p1, p2, p3}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onProcessComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
sget-object v0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/facebook/katana/service/api/methods/ApiMethod$3;
invoke-direct {v1, p0, p1, p3, p2}, Lcom/facebook/katana/service/api/methods/ApiMethod$3;-><init>(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/Exception;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_13
return-void
.end method
.method protected onHttpComplete(ILjava/lang/String;Ljava/lang/Exception;)V
.registers 6
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
invoke-interface {v0, p0, p1, p2, p3}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onProcessComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
sget-object v0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHandler:Landroid/os/Handler;
new-instance v1, Lcom/facebook/katana/service/api/methods/ApiMethod$2;
invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/katana/service/api/methods/ApiMethod$2;-><init>(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_13
return-void
.end method
.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
.registers 2
return-void
.end method
.method protected parseResponse(Ljava/lang/String;)V
.registers 4
invoke-static {p1}, Lcom/facebook/katana/service/api/methods/ApiMethod;->printJson(Ljava/lang/String;)V
sget-object v1, Lcom/facebook/katana/service/api/methods/ApiMethod;->mJsonFactory:Lcom/facebook/katana/service/api/methods/FBJsonFactory;
invoke-virtual {v1, p1}, Lcom/facebook/katana/service/api/methods/FBJsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
move-result-object v0
invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;
invoke-virtual {p0, v0}, Lcom/facebook/katana/service/api/methods/ApiMethod;->parseJSON(Lorg/codehaus/jackson/JsonParser;)V
return-void
.end method
.method protected signatureKey()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mReqIntent:Landroid/content/Intent;
const-string v1, "ApiMethod.secret"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected signatureString()Ljava/lang/String;
.registers 6
new-instance v1, Ljava/lang/StringBuilder;
const/16 v2, 0x100
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mParams:Ljava/util/Map;
invoke-virtual {p0, v2}, Lcom/facebook/katana/service/api/methods/ApiMethod;->keysInSignatureOrder(Ljava/util/Map;)Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_11
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_23
invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/ApiMethod;->signatureKey()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
:cond_23
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, "="
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v2, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mParams:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_11
.end method
.method protected simulateSessionKeyError()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public start()V
.registers 9
:try_start_0
invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/ApiMethod;->addCommonParameters()V
invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/ApiMethod;->addSignature()V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHttpMethod:Ljava/lang/String;
const-string v1, "GET"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2e
new-instance v0, Lcom/facebook/katana/service/api/methods/HttpOperation;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHttpMethod:Ljava/lang/String;
iget-object v3, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mBaseUrl:Ljava/lang/String;
invoke-virtual {p0, v3}, Lcom/facebook/katana/service/api/methods/ApiMethod;->buildGETUrl(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/io/ByteArrayOutputStream;
const/16 v5, 0x2000
invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHttpListener:Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
invoke-direct {v0, v1, v3, v4, v5}, Lcom/facebook/katana/service/api/methods/HttpOperation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;)V
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;
:cond_28
:goto_28
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;
invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/HttpOperation;->start()V
:goto_2d
:cond_2d
return-void
:cond_2e
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHttpMethod:Ljava/lang/String;
const-string v1, "POST"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_28
invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/ApiMethod;->buildQueryString()Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
new-instance v2, Ljava/io/ByteArrayInputStream;
const-string v0, "UTF-8"
invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
new-instance v0, Lcom/facebook/katana/service/api/methods/HttpOperation;
iget-object v1, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mBaseUrl:Ljava/lang/String;
new-instance v3, Ljava/io/ByteArrayOutputStream;
const/16 v4, 0x2000
invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
const-string v4, "application/x-www-form-urlencoded"
iget-object v5, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHttpListener:Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/HttpOperation;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;)V
iput-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;
:try_end_5f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5f} :catch_60
goto :goto_28
:catch_60
move-exception v0
move-object v6, v0
invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/facebook/katana/service/api/methods/ApiMethod;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;
const/4 v1, 0x0
const/4 v3, 0x0
invoke-interface {v0, p0, v1, v3, v6}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
goto :goto_2d
.end method