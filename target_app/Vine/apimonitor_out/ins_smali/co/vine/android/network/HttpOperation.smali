.class public Lco/vine/android/network/HttpOperation;
.super Ljava/lang/Object;
.source "HttpOperation.java"
.field private static final DEFAULT_AUTH_RETRIES:I = 0x1
.field private static final DEFAULT_READER:Lco/vine/android/network/HttpOperationReader; = null
.field public static final DEFAULT_RETRIES:I = 0x0
.field private static final EMPTY_RESULTS:[Lco/vine/android/network/HttpResult; = null
.field public static final FORM_URLENCODED_HEADER:Ljava/lang/String; = "application/x-www-form-urlencoded"
.field private static final HEADER_DATE:Ljava/lang/String; = "Date"
.field public static final HIGH_PRIORITY_RETRIES:I = 0x1
.field public static final HTTP_MULTIPLE_REDIRECT:I = 0x12c
.field public static final HTTP_OK:I = 0xc8
.field private static final LOGGABLE:Z = false
.field public static RATE_LIMIT_BYTES_PER_MS:D = 0.0
.field private static final TAG:Ljava/lang/String; = "HttpOperation"
.field public static final USER_AGENT_STRING:Ljava/lang/String; = null
.field private static final X_RATELIMIT_LIMIT:Ljava/lang/String; = "X-RateLimit-Limit"
.field private static final X_RATELIMIT_REMAINING:Ljava/lang/String; = "X-RateLimit-Remaining"
.field private static final X_RATELIMIT_RESET:Ljava/lang/String; = "X-RateLimit-Reset"
.field public static final sTimeOffset:Ljava/util/concurrent/atomic/AtomicLong;
.field public exception:Ljava/lang/Exception;
.field private final mHttpClient:Lorg/apache/http/client/HttpClient;
.field private final mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
.field private final mReader:Lco/vine/android/network/HttpOperationReader;
.field private mResults:[Lco/vine/android/network/HttpResult;
.field public statusCode:I
.field public statusPhrase:Ljava/lang/String;
.field public uploadKey:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 4
const/4 v1, 0x0
const-wide/high16 v2, -0x4010
sput-wide v2, Lco/vine/android/network/HttpOperation;->RATE_LIMIT_BYTES_PER_MS:D
const-string v0, "http.agent"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lco/vine/android/network/HttpOperation;->USER_AGENT_STRING:Ljava/lang/String;
invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z
move-result v0
if-nez v0, :cond_1c
const-string v0, "HttpOperation"
const/4 v2, 0x3
invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_34
:cond_1c
const/4 v0, 0x1
:goto_1d
sput-boolean v0, Lco/vine/android/network/HttpOperation;->LOGGABLE:Z
new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;
const-wide/16 v2, 0x0
invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V
sput-object v0, Lco/vine/android/network/HttpOperation;->sTimeOffset:Ljava/util/concurrent/atomic/AtomicLong;
new-array v0, v1, [Lco/vine/android/network/HttpResult;
sput-object v0, Lco/vine/android/network/HttpOperation;->EMPTY_RESULTS:[Lco/vine/android/network/HttpResult;
new-instance v0, Lco/vine/android/network/DefaultHttpOperationReader;
invoke-direct {v0}, Lco/vine/android/network/DefaultHttpOperationReader;-><init>()V
sput-object v0, Lco/vine/android/network/HttpOperation;->DEFAULT_READER:Lco/vine/android/network/HttpOperationReader;
return-void
:cond_34
move v0, v1
goto :goto_1d
.end method
.method public constructor <init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "Accept-Encoding"
const-string v1, "gzip"
invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "User-Agent"
sget-object v1, Lco/vine/android/network/HttpOperation;->USER_AGENT_STRING:Ljava/lang/String;
invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p4, :cond_16
invoke-virtual {p4, p2}, Lco/vine/android/client/VineAPI;->addClientHeaders(Lorg/apache/http/HttpRequest;)V
:cond_16
invoke-virtual {p1}, Lco/vine/android/network/HttpOperationClient;->getHttpClient()Lorg/apache/http/client/HttpClient;
move-result-object v0
iput-object v0, p0, Lco/vine/android/network/HttpOperation;->mHttpClient:Lorg/apache/http/client/HttpClient;
iput-object p2, p0, Lco/vine/android/network/HttpOperation;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
if-nez p3, :cond_25
sget-object v0, Lco/vine/android/network/HttpOperation;->DEFAULT_READER:Lco/vine/android/network/HttpOperationReader;
iput-object v0, p0, Lco/vine/android/network/HttpOperation;->mReader:Lco/vine/android/network/HttpOperationReader;
:goto_24
return-void
:cond_25
iput-object p3, p0, Lco/vine/android/network/HttpOperation;->mReader:Lco/vine/android/network/HttpOperationReader;
goto :goto_24
.end method
.method public static createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
.registers 7
new-instance v0, Lorg/apache/http/client/methods/HttpDelete;
invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V
new-instance v1, Lco/vine/android/network/HttpOperation;
invoke-direct {v1, p0, v0, p3, p2}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V
invoke-virtual {p2, v1}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;)V
return-object v1
.end method
.method public static createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
.registers 8
new-instance v0, Lorg/apache/http/client/methods/HttpDelete;
invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V
new-instance v1, Lco/vine/android/network/HttpOperation;
invoke-direct {v1, p0, v0, p3, p2}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V
invoke-virtual {p2, v1, p4}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;Ljava/lang/String;)V
return-object v1
.end method
.method public static createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
.registers 7
new-instance v0, Lorg/apache/http/client/methods/HttpGet;
invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
new-instance v1, Lco/vine/android/network/HttpOperation;
invoke-direct {v1, p0, v0, p3, p2}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V
invoke-virtual {p2, v1}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;)V
return-object v1
.end method
.method public static createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
.registers 8
new-instance v0, Lorg/apache/http/client/methods/HttpGet;
invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
new-instance v1, Lco/vine/android/network/HttpOperation;
invoke-direct {v1, p0, v0, p3, p2}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V
invoke-virtual {p2, v1, p4}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;Ljava/lang/String;)V
return-object v1
.end method
.method public static createBasicAuthJsonPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/HashMap;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
.registers 7
invoke-static {p0, p1, p3, p4, p2}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Ljava/util/HashMap;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
move-result-object v0
invoke-virtual {p2, v0}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;)V
const-string v1, "application/json"
invoke-virtual {p2, v0, v1}, Lco/vine/android/client/VineAPI;->addContentTypeHeader(Lco/vine/android/network/HttpOperation;Ljava/lang/String;)V
return-object v0
.end method
.method public static varargs createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;[Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
.registers 11
invoke-static {p0, p1, p3, p4, p2}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
move-result-object v4
invoke-virtual {p2, v4}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;)V
move-object v0, p5
array-length v3, v0
const/4 v2, 0x0
:goto_a
if-ge v2, v3, :cond_14
aget-object v1, v0, v2
invoke-virtual {p2, v4, v1}, Lco/vine/android/client/VineAPI;->addContentTypeHeader(Lco/vine/android/network/HttpOperation;Ljava/lang/String;)V
add-int/lit8 v2, v2, 0x1
goto :goto_a
:cond_14
return-object v4
.end method
.method public static createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
.registers 10
new-instance v3, Lorg/apache/http/client/methods/HttpPut;
invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V
if-eqz p3, :cond_15
:try_start_b
new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;
const-string v4, "UTF-8"
invoke-direct {v1, p3, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V
:try_end_15
.catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_15} :catch_1e
:cond_15
:goto_15
new-instance v2, Lco/vine/android/network/HttpOperation;
invoke-direct {v2, p0, v3, p4, p2}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V
invoke-virtual {p2, v2}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;)V
return-object v2
:catch_1e
move-exception v0
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
goto :goto_15
.end method
.method public static createGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
.registers 6
new-instance v0, Lorg/apache/http/client/methods/HttpGet;
invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
new-instance v1, Lco/vine/android/network/HttpOperation;
invoke-direct {v1, p0, v0, p2, p3}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V
return-object v1
.end method
.method public static createMediaPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/network/HttpOperationReader;Lorg/apache/http/HttpEntity;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
.registers 8
new-instance v1, Lorg/apache/http/client/methods/HttpPut;
invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V
if-eqz p3, :cond_e
invoke-virtual {v1, p3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V
:cond_e
new-instance v0, Lco/vine/android/network/HttpOperation;
invoke-direct {v0, p0, v1, p2, p4}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V
invoke-virtual {p4, v0}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;)V
return-object v0
.end method
.method private static createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/CharSequence;Ljava/util/HashMap;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
.registers 12
new-instance v4, Lorg/apache/http/client/methods/HttpPost;
invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
if-eqz p2, :cond_2c
:try_start_b
new-instance v3, Lcom/fasterxml/jackson/databind/ObjectMapper;
invoke-direct {v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V
invoke-virtual {v3, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v2
new-instance v1, Lorg/apache/http/entity/StringEntity;
invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
const-string v6, "UTF-8"
invoke-direct {v1, v5, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-string v5, "application/json"
invoke-virtual {v1, v5}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V
const-string v5, "UTF-8"
invoke-virtual {v1, v5}, Lorg/apache/http/entity/StringEntity;->setContentEncoding(Ljava/lang/String;)V
invoke-virtual {v4, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
:cond_2c
:goto_2c
:try_end_2c
.catch Ljava/io/IOException; {:try_start_b .. :try_end_2c} :catch_32
new-instance v5, Lco/vine/android/network/HttpOperation;
invoke-direct {v5, p0, v4, p3, p4}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V
return-object v5
:catch_32
move-exception v0
const-string v5, "Failed to create Post Request."
invoke-static {v5, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_2c
.end method
.method public static createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
.registers 9
new-instance v2, Lorg/apache/http/client/methods/HttpPost;
invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
if-eqz p2, :cond_15
:try_start_b
new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;
const-string v3, "UTF-8"
invoke-direct {v1, p2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
invoke-virtual {v2, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
:try_end_15
.catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_15} :catch_1b
:cond_15
:goto_15
new-instance v3, Lco/vine/android/network/HttpOperation;
invoke-direct {v3, p0, v2, p3, p4}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V
return-object v3
:catch_1b
move-exception v0
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
goto :goto_15
.end method
.method public static createResourceGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
.registers 8
new-instance v0, Lorg/apache/http/client/methods/HttpGet;
invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
new-instance v1, Lco/vine/android/network/HttpOperation;
invoke-direct {v1, p0, v0, p3, p2}, Lco/vine/android/network/HttpOperation;-><init>(Lco/vine/android/network/HttpOperationClient;Lorg/apache/http/client/methods/HttpRequestBase;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)V
invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, "https"
invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_1d
invoke-virtual {p2, v1}, Lco/vine/android/client/VineAPI;->addSessionKeyAuthHeader(Lco/vine/android/network/HttpOperation;)V
:cond_1d
return-object v1
.end method
.method public cancel()V
.registers 2
iget-object v0, p0, Lco/vine/android/network/HttpOperation;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
return-void
.end method
.method public execute()Lco/vine/android/network/HttpOperation;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lco/vine/android/network/HttpOperation;->execute(I)Lco/vine/android/network/HttpOperation;
move-result-object v0
return-object v0
.end method
.method public final execute(I)Lco/vine/android/network/HttpOperation;
.registers 54
const/4 v10, 0x1
const/16 v22, 0x0
const/16 v47, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/network/HttpOperation;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
move-object/from16 v27, v0
new-instance v42, Ljava/util/ArrayList;
const/4 v3, 0x0
move/from16 v0, p1
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v3
add-int/lit8 v3, v3, 0x1
move-object/from16 v0, v42
invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V
const-wide/16 v5, -0x1
:cond_1d
const-wide/16 v37, 0x0
const-wide/16 v33, 0x0
const-wide/16 v13, 0x0
sget-object v3, Lco/vine/android/network/HttpOperation;->sTimeOffset:Ljava/util/concurrent/atomic/AtomicLong;
invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J
move-result-wide v18
move-object/from16 v0, p0
move-wide/from16 v1, v18
invoke-virtual {v0, v1, v2}, Lco/vine/android/network/HttpOperation;->prepareRequest(J)V
sget-boolean v3, Lco/vine/android/network/HttpOperation;->LOGGABLE:Z
if-eqz v3, :cond_58
const-string v3, "HttpOperation"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual/range {v27 .. v27}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;
move-result-object v9
invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v9, " "
invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual/range {v27 .. v27}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;
move-result-object v9
invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_58
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v11
:try_start_5c
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/network/HttpOperation;->mHttpClient:Lorg/apache/http/client/HttpClient;
move-object/from16 v0, v27
invoke-interface {v3, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v40
invoke-interface/range {v40 .. v40}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v44
invoke-interface/range {v44 .. v44}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v43
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
sub-long v5, v3, v11
invoke-interface/range {v44 .. v44}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;
move-result-object v39
sget-boolean v3, Lco/vine/android/network/HttpOperation;->LOGGABLE:Z
if-eqz v3, :cond_b0
const-string v3, "HttpOperation"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
move/from16 v0, v43
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v9, "/"
invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, v39
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v9, " ["
invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual/range {v27 .. v27}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;
move-result-object v9
invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v9, "]"
invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_b0
sparse-switch v43, :sswitch_data_438
const/16 p1, 0x0
:sswitch_b5
:cond_b5
:goto_b5
invoke-interface/range {v40 .. v40}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v23
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
sub-long v33, v3, v11
if-eqz v23, :cond_178
invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpEntity;->isStreaming()Z
move-result v3
if-eqz v3, :cond_178
invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;
move-result-object v3
if-eqz v3, :cond_278
invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;
move-result-object v3
invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v15
:goto_d5
invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;
move-result-object v24
if-eqz v24, :cond_27b
invoke-interface/range {v24 .. v24}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v17
:goto_df
invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpEntity;->getContentLength()J
move-result-wide v3
long-to-int v0, v3
move/from16 v16, v0
sget-boolean v3, Lco/vine/android/network/HttpOperation;->LOGGABLE:Z
if-eqz v3, :cond_11a
const-string v3, "HttpOperation"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "read: Encoding: "
invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v9, ", type: "
invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, v17
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v9, ", length: "
invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move/from16 v0, v16
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_11a
:try_end_11a
.catchall {:try_start_5c .. :try_end_11a} :catchall_3d9
.catch Ljava/lang/Exception; {:try_start_5c .. :try_end_11a} :catch_349
const/16 v28, 0x0
:try_start_11c
new-instance v30, Lco/vine/android/util/MeasureInputStream;
invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v3
move-object/from16 v0, v30
invoke-direct {v0, v3}, Lco/vine/android/util/MeasureInputStream;-><init>(Ljava/io/InputStream;)V
move-object/from16 v28, v30
if-nez v17, :cond_27f
:goto_12b
:cond_12b
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/network/HttpOperation;->mReader:Lco/vine/android/network/HttpOperationReader;
move/from16 v0, v43
move/from16 v1, v16
move-object/from16 v2, v28
invoke-interface {v3, v0, v1, v2}, Lco/vine/android/network/HttpOperationReader;->readInput(IILjava/io/InputStream;)V
invoke-virtual/range {v30 .. v30}, Lco/vine/android/util/MeasureInputStream;->getReadTime()J
move-result-wide v37
sget-boolean v3, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v3, :cond_16b
sget-wide v3, Lco/vine/android/network/HttpOperation;->RATE_LIMIT_BYTES_PER_MS:D
const-wide/high16 v49, -0x4010
cmpl-double v3, v3, v49
if-eqz v3, :cond_16b
move/from16 v0, v16
int-to-double v3, v0
sget-wide v49, Lco/vine/android/network/HttpOperation;->RATE_LIMIT_BYTES_PER_MS:D
div-double v3, v3, v49
move-wide/from16 v0, v37
long-to-double v0, v0
move-wide/from16 v49, v0
sub-double v3, v3, v49
double-to-long v0, v3
move-wide/from16 v35, v0
const-wide/16 v3, 0x0
cmp-long v3, v35, v3
if-lez v3, :cond_16b
const-string v3, "Rate limiting: {}ms."
invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
invoke-static/range {v35 .. v36}, Ljava/lang/Thread;->sleep(J)V
:try_start_16b
:cond_16b
:try_end_16b
.catchall {:try_start_11c .. :try_end_16b} :catchall_33a
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v31
invoke-static/range {v28 .. v28}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
:try_end_175
.catchall {:try_start_16b .. :try_end_175} :catchall_3d9
.catch Ljava/lang/Exception; {:try_start_16b .. :try_end_175} :catch_349
move-result-wide v3
sub-long v13, v3, v31
:cond_178
add-long v3, v33, v37
add-long v7, v3, v13
const-wide/16 v3, -0x1
cmp-long v3, v5, v3
if-eqz v3, :cond_1d2
sget-boolean v3, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-nez v3, :cond_193
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v3
const-wide v49, 0x3fb999999999999aL
cmpl-double v3, v3, v49
if-lez v3, :cond_1d2
:cond_193
invoke-virtual/range {v27 .. v27}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;
move-result-object v48
const-string v3, "{}, {} took {} ms to open and {} total."
const/4 v4, 0x4
new-array v4, v4, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-virtual/range {v48 .. v48}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v49
aput-object v49, v4, v9
const/4 v9, 0x1
invoke-virtual/range {v48 .. v48}, Ljava/net/URI;->getPath()Ljava/lang/String;
move-result-object v49
aput-object v49, v4, v9
const/4 v9, 0x2
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v49
aput-object v49, v4, v9
const/4 v9, 0x3
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v49
aput-object v49, v4, v9
invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual/range {v48 .. v48}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v3
invoke-virtual/range {v48 .. v48}, Ljava/net/URI;->getPath()Ljava/lang/String;
move-result-object v4
invoke-virtual/range {v48 .. v48}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v9
const-string v49, "/r/videos/"
move-object/from16 v0, v49
invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v9
invoke-static/range {v3 .. v9}, Lco/vine/android/util/FlurryUtils;->trackRespondTime(Ljava/lang/String;Ljava/lang/String;JJZ)V
:cond_1d2
new-instance v41, Lco/vine/android/network/HttpResult;
move-object/from16 v0, v41
move/from16 v1, v43
move-object/from16 v2, v39
invoke-direct {v0, v1, v2}, Lco/vine/android/network/HttpResult;-><init>(ILjava/lang/String;)V
move-object/from16 v0, v22
move-object/from16 v1, v41
iput-object v0, v1, Lco/vine/android/network/HttpResult;->exception:Ljava/lang/Exception;
move-object/from16 v0, v41
iput-wide v7, v0, Lco/vine/android/network/HttpResult;->durationMs:J
move-object/from16 v0, v47
move-object/from16 v1, v41
iput-object v0, v1, Lco/vine/android/network/HttpResult;->uploadKey:Ljava/lang/String;
const/16 v3, 0xc8
move/from16 v0, v43
if-eq v0, v3, :cond_1fc
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/network/HttpOperation;->mReader:Lco/vine/android/network/HttpOperationReader;
move-object/from16 v0, v41
invoke-interface {v3, v0}, Lco/vine/android/network/HttpOperationReader;->onHandleError(Lco/vine/android/network/HttpResult;)V
:cond_1fc
move-object/from16 v0, v42
move-object/from16 v1, v41
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 p1, p1, -0x1
if-gez p1, :cond_1d
:cond_207
:goto_207
move/from16 v0, v43
move-object/from16 v1, p0
iput v0, v1, Lco/vine/android/network/HttpOperation;->statusCode:I
move-object/from16 v0, v39
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/network/HttpOperation;->statusPhrase:Ljava/lang/String;
move-object/from16 v0, v22
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/network/HttpOperation;->exception:Ljava/lang/Exception;
move-object/from16 v0, v47
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/network/HttpOperation;->uploadKey:Ljava/lang/String;
invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I
move-result v3
new-array v3, v3, [Lco/vine/android/network/HttpResult;
move-object/from16 v0, p0
iput-object v3, v0, Lco/vine/android/network/HttpOperation;->mResults:[Lco/vine/android/network/HttpResult;
move-object/from16 v0, p0
iget-object v3, v0, Lco/vine/android/network/HttpOperation;->mResults:[Lco/vine/android/network/HttpResult;
move-object/from16 v0, v42
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
return-object p0
:sswitch_233
:try_start_233
const-string v3, "X-Upload-Key"
move-object/from16 v0, v40
invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
move-result-object v26
if-eqz v26, :cond_b5
move-object/from16 v0, v26
array-length v3, v0
if-lez v3, :cond_b5
const/4 v3, 0x0
aget-object v3, v26, v3
invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v47
goto/16 :goto_b5
:sswitch_24b
const-string v3, "Date"
move-object/from16 v0, v40
invoke-interface {v0, v3}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v21
if-eqz v21, :cond_270
sget-object v3, Lco/vine/android/util/Util;->DATE_TIME_RFC1123:Ljava/text/SimpleDateFormat;
invoke-interface/range {v21 .. v21}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->getTime()J
move-result-wide v45
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v31
sget-object v3, Lco/vine/android/network/HttpOperation;->sTimeOffset:Ljava/util/concurrent/atomic/AtomicLong;
sub-long v49, v45, v31
move-wide/from16 v0, v49
invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
:cond_270
:try_end_270
.catchall {:try_start_233 .. :try_end_270} :catchall_3d9
.catch Ljava/lang/Exception; {:try_start_233 .. :try_end_270} :catch_349
if-lez v10, :cond_b5
add-int/lit8 v10, v10, -0x1
add-int/lit8 p1, p1, 0x1
goto/16 :goto_b5
:cond_278
const/4 v15, 0x0
goto/16 :goto_d5
:cond_27b
const/16 v17, 0x0
goto/16 :goto_df
:try_start_27f
:cond_27f
const-string v3, "application/octet-stream"
move-object/from16 v0, v17
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_12b
const-string v3, "video/avc"
move-object/from16 v0, v17
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_12b
const-string v3, "video/webm"
move-object/from16 v0, v17
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_12b
const-string v3, "video/mp4"
move-object/from16 v0, v17
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_12b
const-string v3, "binary/octet-stream"
move-object/from16 v0, v17
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_12b
const-string v3, "application/json"
move-object/from16 v0, v17
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_2d4
if-eqz v15, :cond_12b
const-string v3, "gzip"
invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_12b
new-instance v29, Ljava/util/zip/GZIPInputStream;
move-object/from16 v0, v29
move-object/from16 v1, v28
invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
const/16 v16, -0x1
move-object/from16 v28, v29
goto/16 :goto_12b
:cond_2d4
const-string v3, "text/html"
move-object/from16 v0, v17
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_306
const-string v3, "text/plain"
move-object/from16 v0, v17
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_306
const-string v3, "text/xml"
move-object/from16 v0, v17
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_306
const-string v3, "application/xml"
move-object/from16 v0, v17
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_306
const-string v3, "image/"
move-object/from16 v0, v17
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_31f
:cond_306
if-eqz v15, :cond_12b
const-string v3, "gzip"
invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_12b
new-instance v29, Ljava/util/zip/GZIPInputStream;
move-object/from16 v0, v29
move-object/from16 v1, v28
invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
const/16 v16, -0x1
move-object/from16 v28, v29
goto/16 :goto_12b
:cond_31f
new-instance v3, Ljava/io/IOException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Unsupported content type: "
invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, v17
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v3
:catchall_33a
:try_end_33a
.catchall {:try_start_27f .. :try_end_33a} :catchall_33a
move-exception v3
:try_start_33b
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v31
invoke-static/range {v28 .. v28}, Lco/vine/android/util/Util;->closeSilently(Ljava/io/Closeable;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v49
sub-long v13, v49, v31
throw v3
:try_end_349
.catchall {:try_start_33b .. :try_end_349} :catchall_3d9
.catch Ljava/lang/Exception; {:try_start_33b .. :try_end_349} :catch_349
:catch_349
move-exception v25
:try_start_34a
sget-boolean v3, Lco/vine/android/network/HttpOperation;->LOGGABLE:Z
if-eqz v3, :cond_372
const-string v3, "HttpOperation"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "["
invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual/range {v27 .. v27}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;
move-result-object v9
invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v9, "]"
invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
move-object/from16 v0, v25
invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_372
invoke-virtual/range {v27 .. v27}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
:try_end_375
.catchall {:try_start_34a .. :try_end_375} :catchall_3d9
const/16 v43, 0x0
const/16 v39, 0x0
move-object/from16 v22, v25
const-wide/16 v5, -0x1
add-long v3, v33, v37
add-long v7, v3, v13
const-wide/16 v3, -0x1
cmp-long v3, v5, v3
if-eqz v3, :cond_207
sget-boolean v3, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-nez v3, :cond_398
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v3
const-wide v49, 0x3fb999999999999aL
cmpl-double v3, v3, v49
if-lez v3, :cond_207
:cond_398
invoke-virtual/range {v27 .. v27}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;
move-result-object v48
const-string v3, "{}, {} took {} ms to open and {} total."
const/4 v4, 0x4
new-array v4, v4, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-virtual/range {v48 .. v48}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v49
aput-object v49, v4, v9
const/4 v9, 0x1
invoke-virtual/range {v48 .. v48}, Ljava/net/URI;->getPath()Ljava/lang/String;
move-result-object v49
aput-object v49, v4, v9
const/4 v9, 0x2
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v49
aput-object v49, v4, v9
const/4 v9, 0x3
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v49
aput-object v49, v4, v9
invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual/range {v48 .. v48}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v3
invoke-virtual/range {v48 .. v48}, Ljava/net/URI;->getPath()Ljava/lang/String;
move-result-object v4
invoke-virtual/range {v48 .. v48}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v9
const-string v49, "/r/videos/"
move-object/from16 v0, v49
invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v9
invoke-static/range {v3 .. v9}, Lco/vine/android/util/FlurryUtils;->trackRespondTime(Ljava/lang/String;Ljava/lang/String;JJZ)V
goto/16 :goto_207
:catchall_3d9
move-exception v3
move-object/from16 v49, v3
add-long v3, v33, v37
add-long v7, v3, v13
const-wide/16 v3, -0x1
cmp-long v3, v5, v3
if-eqz v3, :cond_436
sget-boolean v3, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-nez v3, :cond_3f7
invoke-static {}, Ljava/lang/Math;->random()D
move-result-wide v3
const-wide v50, 0x3fb999999999999aL
cmpl-double v3, v3, v50
if-lez v3, :cond_436
:cond_3f7
invoke-virtual/range {v27 .. v27}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;
move-result-object v48
const-string v3, "{}, {} took {} ms to open and {} total."
const/4 v4, 0x4
new-array v4, v4, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-virtual/range {v48 .. v48}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v50
aput-object v50, v4, v9
const/4 v9, 0x1
invoke-virtual/range {v48 .. v48}, Ljava/net/URI;->getPath()Ljava/lang/String;
move-result-object v50
aput-object v50, v4, v9
const/4 v9, 0x2
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v50
aput-object v50, v4, v9
const/4 v9, 0x3
invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v50
aput-object v50, v4, v9
invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual/range {v48 .. v48}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v3
invoke-virtual/range {v48 .. v48}, Ljava/net/URI;->getPath()Ljava/lang/String;
move-result-object v4
invoke-virtual/range {v48 .. v48}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v9
const-string v50, "/r/videos/"
move-object/from16 v0, v50
invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v9
invoke-static/range {v3 .. v9}, Lco/vine/android/util/FlurryUtils;->trackRespondTime(Ljava/lang/String;Ljava/lang/String;JJZ)V
:cond_436
throw v49
nop
:sswitch_data_438
.sparse-switch
0xc8 -> :sswitch_233
0x191 -> :sswitch_24b
0x1f4 -> :sswitch_b5
0x1f6 -> :sswitch_b5
0x1f7 -> :sswitch_b5
.end sparse-switch
.end method
.method public getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
.registers 2
iget-object v0, p0, Lco/vine/android/network/HttpOperation;->mHttpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
return-object v0
.end method
.method public getReader()Lco/vine/android/network/HttpOperationReader;
.registers 2
iget-object v0, p0, Lco/vine/android/network/HttpOperation;->mReader:Lco/vine/android/network/HttpOperationReader;
return-object v0
.end method
.method public getResults()[Lco/vine/android/network/HttpResult;
.registers 2
iget-object v0, p0, Lco/vine/android/network/HttpOperation;->mResults:[Lco/vine/android/network/HttpResult;
if-nez v0, :cond_7
sget-object v0, Lco/vine/android/network/HttpOperation;->EMPTY_RESULTS:[Lco/vine/android/network/HttpResult;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lco/vine/android/network/HttpOperation;->mResults:[Lco/vine/android/network/HttpResult;
goto :goto_6
.end method
.method public isOK()Z
.registers 3
iget v0, p0, Lco/vine/android/network/HttpOperation;->statusCode:I
const/16 v1, 0xc8
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isSuccessful()Z
.registers 3
iget v0, p0, Lco/vine/android/network/HttpOperation;->statusCode:I
const/16 v1, 0xc8
if-lt v0, v1, :cond_e
iget v0, p0, Lco/vine/android/network/HttpOperation;->statusCode:I
const/16 v1, 0x12c
if-ge v0, v1, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method protected prepareRequest(J)V
.registers 3
return-void
.end method