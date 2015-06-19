.class public Lcom/facebook/Request;
.super Ljava/lang/Object;
.source "Request.java"
.field private static final ACCESS_TOKEN_PARAM:Ljava/lang/String; = "access_token"
.field private static final ATTACHED_FILES_PARAM:Ljava/lang/String; = "attached_files"
.field private static final ATTACHMENT_FILENAME_PREFIX:Ljava/lang/String; = "file"
.field private static final BATCH_APP_ID_PARAM:Ljava/lang/String; = "batch_app_id"
.field private static final BATCH_BODY_PARAM:Ljava/lang/String; = "body"
.field private static final BATCH_ENTRY_DEPENDS_ON_PARAM:Ljava/lang/String; = "depends_on"
.field private static final BATCH_ENTRY_NAME_PARAM:Ljava/lang/String; = "name"
.field private static final BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM:Ljava/lang/String; = "omit_response_on_success"
.field private static final BATCH_METHOD_PARAM:Ljava/lang/String; = "method"
.field private static final BATCH_PARAM:Ljava/lang/String; = "batch"
.field private static final BATCH_RELATIVE_URL_PARAM:Ljava/lang/String; = "relative_url"
.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"
.field private static final FORMAT_JSON:Ljava/lang/String; = "json"
.field private static final FORMAT_PARAM:Ljava/lang/String; = "format"
.field private static final ISO_8601_FORMAT_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"
.field public static final MAXIMUM_BATCH_SIZE:I = 0x32
.field private static final ME:Ljava/lang/String; = "me"
.field private static final MIGRATION_BUNDLE_PARAM:Ljava/lang/String; = "migration_bundle"
.field private static final MIME_BOUNDARY:Ljava/lang/String; = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
.field private static final MY_FEED:Ljava/lang/String; = "me/feed"
.field private static final MY_FRIENDS:Ljava/lang/String; = "me/friends"
.field private static final MY_PHOTOS:Ljava/lang/String; = "me/photos"
.field private static final MY_VIDEOS:Ljava/lang/String; = "me/videos"
.field private static final PICTURE_PARAM:Ljava/lang/String; = "picture"
.field private static final SDK_ANDROID:Ljava/lang/String; = "android"
.field private static final SDK_PARAM:Ljava/lang/String; = "sdk"
.field private static final SEARCH:Ljava/lang/String; = "search"
.field private static final USER_AGENT_BASE:Ljava/lang/String; = "FBAndroidSDK"
.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"
.field private static defaultBatchApplicationId:Ljava/lang/String;
.field private static volatile userAgent:Ljava/lang/String;
.field private batchEntryDependsOn:Ljava/lang/String;
.field private batchEntryName:Ljava/lang/String;
.field private batchEntryOmitResultOnSuccess:Z
.field private callback:Lcom/facebook/Request$Callback;
.field private graphObject:Lcom/facebook/model/GraphObject;
.field private graphPath:Ljava/lang/String;
.field private httpMethod:Lcom/facebook/HttpMethod;
.field private overriddenURL:Ljava/lang/String;
.field private parameters:Landroid/os/Bundle;
.field private restMethod:Ljava/lang/String;
.field private session:Lcom/facebook/Session;
.method public constructor <init>()V
.registers 7
const/4 v1, 0x0
move-object v0, p0
move-object v2, v1
move-object v3, v1
move-object v4, v1
move-object v5, v1
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
return-void
.end method
.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;)V
.registers 9
const/4 v3, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v4, v3
move-object v5, v3
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
return-void
.end method
.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
return-void
.end method
.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z
iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;
iput-object p2, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;
iput-object p5, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;
invoke-virtual {p0, p4}, Lcom/facebook/Request;->setHttpMethod(Lcom/facebook/HttpMethod;)V
if-eqz p3, :cond_2c
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
iput-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
:goto_18
iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
const-string v1, "migration_bundle"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2b
iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
const-string v1, "migration_bundle"
const-string v2, "fbsdk:20121026"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_2b
return-void
:cond_2c
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
goto :goto_18
.end method
.method constructor <init>(Lcom/facebook/Session;Ljava/net/URL;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z
iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;
invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;
sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;
invoke-virtual {p0, v0}, Lcom/facebook/Request;->setHttpMethod(Lcom/facebook/HttpMethod;)V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iput-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
return-void
.end method
.method static synthetic access$000(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
.registers 3
invoke-static {p0, p1}, Lcom/facebook/Request;->typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method static synthetic access$100(Ljava/lang/Object;)Z
.registers 2
invoke-static {p0}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method static synthetic access$200(Ljava/lang/Object;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private addCommonParameters()V
.registers 5
iget-object v1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;
if-eqz v1, :cond_2e
iget-object v1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;
invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z
move-result v1
if-nez v1, :cond_14
new-instance v1, Lcom/facebook/FacebookException;
const-string v2, "Session provided to a Request in un-opened state."
invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v1
:cond_14
iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
const-string v2, "access_token"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_2e
iget-object v1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;
invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
const-string v2, "access_token"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_2e
iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
const-string v2, "sdk"
const-string v3, "android"
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
const-string v2, "format"
const-string v3, "json"
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;
.registers 12
new-instance v5, Landroid/net/Uri$Builder;
invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V
invoke-virtual {v5, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v3
iget-object v5, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_13
:goto_13
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_5b
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
iget-object v5, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
invoke-virtual {v5, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v4
if-nez v4, :cond_29
const-string v4, ""
:cond_29
invoke-static {v4}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_3b
invoke-static {v4}, Lcom/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
goto :goto_13
:cond_3b
iget-object v5, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;
sget-object v6, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;
if-ne v5, v6, :cond_13
new-instance v5, Ljava/lang/IllegalArgumentException;
const-string v6, "Unsupported parameter type for GET request: %s"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v9
aput-object v9, v7, v8
invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_5b
invoke-virtual {v3}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;
move-result-object v5
return-object v5
.end method
.method static createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
.registers 4
invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
const-string v1, "User-Agent"
invoke-static {}, Lcom/facebook/Request;->getUserAgent()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "Content-Type"
invoke-static {}, Lcom/facebook/Request;->getMimeContentType()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V
return-object v0
.end method
.method public static executeAndWait(Lcom/facebook/Request;)Lcom/facebook/Response;
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
new-array v1, v3, [Lcom/facebook/Request;
aput-object p0, v1, v2
invoke-static {v1}, Lcom/facebook/Request;->executeBatchAndWait([Lcom/facebook/Request;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_12
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-eq v1, v3, :cond_1a
:cond_12
new-instance v1, Lcom/facebook/FacebookException;
const-string v2, "invalid state: expected a single response"
invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v1
:cond_1a
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/Response;
return-object v1
.end method
.method public static executeBatchAndWait(Lcom/facebook/RequestBatch;)Ljava/util/List;
.registers 7
const-string v3, "requests"
invoke-static {p0, v3}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V
const/4 v0, 0x0
:try_start_6
invoke-static {p0}, Lcom/facebook/Request;->toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;
:try_end_9
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_f
move-result-object v0
invoke-static {v0, p0}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
move-result-object v2
:goto_e
return-object v2
:catch_f
move-exception v1
invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getRequests()Ljava/util/List;
move-result-object v3
const/4 v4, 0x0
new-instance v5, Lcom/facebook/FacebookException;
invoke-direct {v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V
invoke-static {v3, v4, v5}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
move-result-object v2
invoke-static {p0, v2}, Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V
goto :goto_e
.end method
.method public static executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;
.registers 2
new-instance v0, Lcom/facebook/RequestBatch;
invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V
invoke-static {v0}, Lcom/facebook/Request;->executeBatchAndWait(Lcom/facebook/RequestBatch;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static varargs executeBatchAndWait([Lcom/facebook/Request;)Ljava/util/List;
.registers 2
const-string v0, "requests"
invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V
invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/facebook/Request;->executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
.registers 3
const-string v1, "requests"
invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V
new-instance v0, Lcom/facebook/RequestAsyncTask;
invoke-direct {v0, p0}, Lcom/facebook/RequestAsyncTask;-><init>(Lcom/facebook/RequestBatch;)V
invoke-virtual {v0}, Lcom/facebook/RequestAsyncTask;->executeOnSettingsExecutor()Lcom/facebook/RequestAsyncTask;
return-object v0
.end method
.method public static executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/RequestAsyncTask;
.registers 2
new-instance v0, Lcom/facebook/RequestBatch;
invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V
invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
move-result-object v0
return-object v0
.end method
.method public static varargs executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;
.registers 2
const-string v0, "requests"
invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V
invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/RequestAsyncTask;
move-result-object v0
return-object v0
.end method
.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
.registers 13
invoke-static {p0, p1}, Lcom/facebook/Response;->fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
move-result-object v3
invoke-static {p0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V
invoke-virtual {p1}, Lcom/facebook/RequestBatch;->size()I
move-result v1
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v6
if-eq v1, v6, :cond_32
new-instance v6, Lcom/facebook/FacebookException;
const-string v7, "Received %d responses while expecting %d"
const/4 v8, 0x2
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v10
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v8, v9
const/4 v9, 0x1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
aput-object v10, v8, v9
invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v6
:cond_32
invoke-static {p1, v3}, Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V
new-instance v5, Ljava/util/HashSet;
invoke-direct {v5}, Ljava/util/HashSet;-><init>()V
invoke-virtual {p1}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_3e
:cond_3e
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_54
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/facebook/Request;
iget-object v6, v2, Lcom/facebook/Request;->session:Lcom/facebook/Session;
if-eqz v6, :cond_3e
iget-object v6, v2, Lcom/facebook/Request;->session:Lcom/facebook/Session;
invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
goto :goto_3e
:cond_54
invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_58
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_68
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/facebook/Session;
invoke-virtual {v4}, Lcom/facebook/Session;->extendAccessTokenIfNeeded()V
goto :goto_58
:cond_68
return-object v3
.end method
.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Ljava/util/Collection;)Ljava/util/List;
.registers 3
new-instance v0, Lcom/facebook/RequestBatch;
invoke-direct {v0, p1}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V
invoke-static {p0, v0}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
.registers 5
const-string v1, "connection"
invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V
new-instance v0, Lcom/facebook/RequestAsyncTask;
invoke-direct {v0, p1, p2}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V
invoke-virtual {p2, p0}, Lcom/facebook/RequestBatch;->setCallbackHandler(Landroid/os/Handler;)V
invoke-virtual {v0}, Lcom/facebook/RequestAsyncTask;->executeOnSettingsExecutor()Lcom/facebook/RequestAsyncTask;
return-object v0
.end method
.method public static executeConnectionAsync(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
.registers 3
const/4 v0, 0x0
invoke-static {v0, p0, p1}, Lcom/facebook/Request;->executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
move-result-object v0
return-object v0
.end method
.method public static executeGraphPathRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
.registers 4
invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;
move-result-object v0
return-object v0
.end method
.method public static executeMeRequestAsync(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/RequestAsyncTask;
.registers 3
invoke-static {p0, p1}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;
move-result-object v0
return-object v0
.end method
.method public static executeMyFriendsRequestAsync(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/RequestAsyncTask;
.registers 3
invoke-static {p0, p1}, Lcom/facebook/Request;->newMyFriendsRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/Request;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;
move-result-object v0
return-object v0
.end method
.method public static executePlacesSearchRequestAsync(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/RequestAsyncTask;
.registers 7
invoke-static/range {p0 .. p5}, Lcom/facebook/Request;->newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;
move-result-object v0
return-object v0
.end method
.method public static executePostRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
.registers 5
invoke-static {p0, p1, p2, p3}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;
move-result-object v0
return-object v0
.end method
.method public static executeRestRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/RequestAsyncTask;
.registers 5
invoke-static {p0, p1, p2, p3}, Lcom/facebook/Request;->newRestRequest(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Request;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;
move-result-object v0
return-object v0
.end method
.method public static executeStatusUpdateRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
.registers 4
invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;
move-result-object v0
return-object v0
.end method
.method public static executeUploadPhotoRequestAsync(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
.registers 4
invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newUploadPhotoRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;
move-result-object v0
return-object v0
.end method
.method public static executeUploadPhotoRequestAsync(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
.registers 4
invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newUploadPhotoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;
move-result-object v0
return-object v0
.end method
.method private static getBatchAppId(Lcom/facebook/RequestBatch;)Ljava/lang/String;
.registers 5
invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getBatchApplicationId()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_f
invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getBatchApplicationId()Ljava/lang/String;
move-result-object v3
:goto_e
return-object v3
:cond_f
invoke-virtual {p0}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_13
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_28
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/Request;
iget-object v2, v1, Lcom/facebook/Request;->session:Lcom/facebook/Session;
if-eqz v2, :cond_13
invoke-virtual {v2}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;
move-result-object v3
goto :goto_e
:cond_28
sget-object v3, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;
goto :goto_e
.end method
.method public static final getDefaultBatchApplicationId()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;
return-object v0
.end method
.method private static getMimeContentType()Ljava/lang/String;
.registers 4
const-string v0, "multipart/form-data; boundary=%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static getUserAgent()Ljava/lang/String;
.registers 4
sget-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;
if-nez v0, :cond_19
const-string v0, "%s.%s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
const-string v3, "FBAndroidSDK"
aput-object v3, v1, v2
const/4 v2, 0x1
const-string v3, "3.0.0"
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;
:cond_19
sget-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;
return-object v0
.end method
.method private static isSupportedAttachmentType(Ljava/lang/Object;)Z
.registers 2
instance-of v0, p0, Landroid/graphics/Bitmap;
if-nez v0, :cond_c
instance-of v0, p0, [B
if-nez v0, :cond_c
instance-of v0, p0, Landroid/os/ParcelFileDescriptor;
if-eqz v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method private static isSupportedParameterType(Ljava/lang/Object;)Z
.registers 2
instance-of v0, p0, Ljava/lang/String;
if-nez v0, :cond_10
instance-of v0, p0, Ljava/lang/Boolean;
if-nez v0, :cond_10
instance-of v0, p0, Ljava/lang/Number;
if-nez v0, :cond_10
instance-of v0, p0, Ljava/util/Date;
if-eqz v0, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public static newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
.registers 9
const/4 v3, 0x0
new-instance v0, Lcom/facebook/Request;
move-object v1, p0
move-object v2, p1
move-object v4, v3
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
return-object v0
.end method
.method public static newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;
.registers 8
const/4 v3, 0x0
new-instance v5, Lcom/facebook/Request$1;
invoke-direct {v5, p1}, Lcom/facebook/Request$1;-><init>(Lcom/facebook/Request$GraphUserCallback;)V
new-instance v0, Lcom/facebook/Request;
const-string v2, "me"
move-object v1, p0
move-object v4, v3
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
return-object v0
.end method
.method public static newMyFriendsRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/Request;
.registers 8
const/4 v3, 0x0
new-instance v5, Lcom/facebook/Request$2;
invoke-direct {v5, p1}, Lcom/facebook/Request$2;-><init>(Lcom/facebook/Request$GraphUserListCallback;)V
new-instance v0, Lcom/facebook/Request;
const-string v2, "me/friends"
move-object v1, p0
move-object v4, v3
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
return-object v0
.end method
.method public static newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;
.registers 15
if-nez p1, :cond_10
invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "Either location or searchText must be specified."
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
new-instance v3, Landroid/os/Bundle;
const/4 v0, 0x5
invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V
const-string v0, "type"
const-string v1, "place"
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "limit"
invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
if-eqz p1, :cond_4f
const-string v0, "center"
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v2, "%f,%f"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const/4 v6, 0x0
invoke-static {p1}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v7
aput-object v7, v4, v6
const/4 v6, 0x1
invoke-static {p1}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v7
invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v7
aput-object v7, v4, v6
invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "distance"
invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_4f
invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_5a
const-string v0, "q"
invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_5a
new-instance v5, Lcom/facebook/Request$3;
invoke-direct {v5, p5}, Lcom/facebook/Request$3;-><init>(Lcom/facebook/Request$GraphPlaceListCallback;)V
new-instance v0, Lcom/facebook/Request;
const-string v2, "search"
sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;
move-object v1, p0
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
return-object v0
.end method
.method public static newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
.registers 10
new-instance v0, Lcom/facebook/Request;
const/4 v3, 0x0
sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;
move-object v1, p0
move-object v2, p1
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
invoke-virtual {v0, p2}, Lcom/facebook/Request;->setGraphObject(Lcom/facebook/model/GraphObject;)V
return-object v0
.end method
.method public static newRestRequest(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Request;
.registers 6
new-instance v0, Lcom/facebook/Request;
const/4 v1, 0x0
invoke-direct {v0, p0, v1, p2, p3}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
invoke-virtual {v0, p1}, Lcom/facebook/Request;->setRestMethod(Ljava/lang/String;)V
return-object v0
.end method
.method public static newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
.registers 9
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
const-string v0, "message"
invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/facebook/Request;
const-string v2, "me/feed"
sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;
move-object v1, p0
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
return-object v0
.end method
.method public static newUploadPhotoRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
.registers 9
new-instance v3, Landroid/os/Bundle;
const/4 v0, 0x1
invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V
const-string v0, "picture"
invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
new-instance v0, Lcom/facebook/Request;
const-string v2, "me/photos"
sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;
move-object v1, p0
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
return-object v0
.end method
.method public static newUploadPhotoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
.registers 10
const/high16 v0, 0x1000
invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
move-result-object v6
new-instance v3, Landroid/os/Bundle;
const/4 v0, 0x1
invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V
const-string v0, "picture"
invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
new-instance v0, Lcom/facebook/Request;
const-string v2, "me/photos"
sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;
move-object v1, p0
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
return-object v0
.end method
.method public static newUploadVideoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
.registers 10
const/high16 v0, 0x1000
invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
move-result-object v6
new-instance v3, Landroid/os/Bundle;
const/4 v0, 0x1
invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V
invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
new-instance v0, Lcom/facebook/Request;
const-string v2, "me/videos"
sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;
move-object v1, p0
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
return-object v0
.end method
.method private static parameterToString(Ljava/lang/Object;)Ljava/lang/String;
.registers 4
instance-of v1, p0, Ljava/lang/String;
if-eqz v1, :cond_7
check-cast p0, Ljava/lang/String;
:goto_6
return-object p0
:cond_7
instance-of v1, p0, Ljava/lang/Boolean;
if-nez v1, :cond_f
instance-of v1, p0, Ljava/lang/Number;
if-eqz v1, :cond_14
:cond_f
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object p0
goto :goto_6
:cond_14
instance-of v1, p0, Ljava/util/Date;
if-eqz v1, :cond_26
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
move-result-object p0
goto :goto_6
:cond_26
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Unsupported parameter type."
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method private static processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V
.registers 14
const/4 v8, 0x1
const/4 v9, 0x0
const/4 v4, 0x0
const-string v7, "me/"
invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_13
const-string v7, "/me/"
invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_28
:cond_13
const-string v7, ":"
invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
const-string v7, "?"
invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v6
const/4 v7, 0x3
if-le v0, v7, :cond_5f
const/4 v7, -0x1
if-eq v6, v7, :cond_27
if-ge v0, v6, :cond_5f
:cond_27
move v4, v8
:cond_28
:goto_28
invoke-interface {p0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;
move-result-object v7
invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_34
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-eqz v7, :cond_63
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/Map$Entry;
if-eqz v4, :cond_61
invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
const-string v10, "image"
invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v7
if-eqz v7, :cond_61
move v5, v8
:goto_51
invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v10
invoke-static {v7, v10, p2, v5}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V
goto :goto_34
:cond_5f
move v4, v9
goto :goto_28
:cond_61
move v5, v9
goto :goto_51
:cond_63
return-void
.end method
.method private static processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V
.registers 21
invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v12
const-class v13, Lcom/facebook/model/GraphObject;
invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v13
if-eqz v13, :cond_4f
check-cast p1, Lcom/facebook/model/GraphObject;
invoke-interface/range {p1 .. p1}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;
move-result-object p1
invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v12
:cond_16
:goto_16
const-class v13, Lorg/json/JSONObject;
invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v13
if-eqz v13, :cond_92
move-object/from16 v7, p1
check-cast v7, Lorg/json/JSONObject;
if-eqz p3, :cond_62
invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v8
:goto_28
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v13
if-eqz v13, :cond_79
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v10
check-cast v10, Ljava/lang/String;
const-string v13, "%s[%s]"
const/4 v14, 0x2
new-array v14, v14, [Ljava/lang/Object;
const/4 v15, 0x0
aput-object p0, v14, v15
const/4 v15, 0x1
aput-object v10, v14, v15
invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-virtual {v7, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v13
move-object/from16 v0, p2
move/from16 v1, p3
invoke-static {v11, v13, v0, v1}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V
goto :goto_28
:cond_4f
const-class v13, Lcom/facebook/model/GraphObjectList;
invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v13
if-eqz v13, :cond_16
check-cast p1, Lcom/facebook/model/GraphObjectList;
invoke-interface/range {p1 .. p1}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;
move-result-object p1
invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v12
goto :goto_16
:cond_62
const-string v13, "id"
invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v13
if-eqz v13, :cond_7a
const-string v13, "id"
invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
move-object/from16 v0, p0
move-object/from16 v1, p2
move/from16 v2, p3
invoke-static {v0, v13, v1, v2}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V
:cond_79
:goto_79
return-void
:cond_7a
const-string v13, "url"
invoke-virtual {v7, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v13
if-eqz v13, :cond_79
const-string v13, "url"
invoke-virtual {v7, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
move-object/from16 v0, p0
move-object/from16 v1, p2
move/from16 v2, p3
invoke-static {v0, v13, v1, v2}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V
goto :goto_79
:cond_92
const-class v13, Lorg/json/JSONArray;
invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v13
if-eqz v13, :cond_c6
move-object/from16 v6, p1
check-cast v6, Lorg/json/JSONArray;
invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
move-result v9
const/4 v4, 0x0
:goto_a3
if-ge v4, v9, :cond_79
const-string v13, "%s[%d]"
const/4 v14, 0x2
new-array v14, v14, [Ljava/lang/Object;
const/4 v15, 0x0
aput-object p0, v14, v15
const/4 v15, 0x1
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v16
aput-object v16, v14, v15
invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-virtual {v6, v4}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;
move-result-object v13
move-object/from16 v0, p2
move/from16 v1, p3
invoke-static {v11, v13, v0, v1}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V
add-int/lit8 v4, v4, 0x1
goto :goto_a3
:cond_c6
const-class v13, Ljava/lang/String;
invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v13
if-nez v13, :cond_de
const-class v13, Ljava/lang/Number;
invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v13
if-nez v13, :cond_de
const-class v13, Ljava/lang/Boolean;
invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v13
if-eqz v13, :cond_ea
:cond_de
invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v13
move-object/from16 v0, p2
move-object/from16 v1, p0
invoke-interface {v0, v1, v13}, Lcom/facebook/Request$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_79
:cond_ea
const-class v13, Ljava/util/Date;
invoke-virtual {v13, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v13
if-eqz v13, :cond_79
move-object/from16 v3, p1
check-cast v3, Ljava/util/Date;
new-instance v5, Ljava/text/SimpleDateFormat;
const-string v13, "yyyy-MM-dd\'T\'HH:mm:ssZ"
sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v5, v13, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v13
move-object/from16 v0, p2
move-object/from16 v1, p0
invoke-interface {v0, v1, v13}, Lcom/facebook/Request$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_79
.end method
.method static runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V
.registers 11
invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I
move-result v3
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const/4 v2, 0x0
:goto_a
if-ge v2, v3, :cond_25
invoke-virtual {p0, v2}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;
move-result-object v4
iget-object v6, v4, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;
if-eqz v6, :cond_22
new-instance v6, Landroid/util/Pair;
iget-object v7, v4, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;
invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v8
invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_22
add-int/lit8 v2, v2, 0x1
goto :goto_a
:cond_25
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v6
if-lez v6, :cond_39
new-instance v5, Lcom/facebook/Request$4;
invoke-direct {v5, v1, p0}, Lcom/facebook/Request$4;-><init>(Ljava/util/ArrayList;Lcom/facebook/RequestBatch;)V
invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;
move-result-object v0
if-nez v0, :cond_3a
invoke-interface {v5}, Ljava/lang/Runnable;->run()V
:cond_39
:goto_39
return-void
:cond_3a
invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_39
.end method
.method private static serializeAttachments(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;)V
.registers 7
invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_8
:cond_8
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_22
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
invoke-static {v3}, Lcom/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_8
invoke-virtual {p1, v1, v3}, Lcom/facebook/Request$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_8
:cond_22
return-void
.end method
.method private static serializeParameters(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;)V
.registers 7
invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_8
:cond_8
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_22
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
invoke-static {v3}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_8
invoke-virtual {p1, v1, v3}, Lcom/facebook/Request$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_8
:cond_22
return-void
.end method
.method private static serializeRequestsAsJSON(Lcom/facebook/Request$Serializer;Ljava/util/Collection;Landroid/os/Bundle;)V
.registers 8
new-instance v0, Lorg/json/JSONArray;
invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_19
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/facebook/Request;
invoke-direct {v3, v0, p2}, Lcom/facebook/Request;->serializeToBatch(Lorg/json/JSONArray;Landroid/os/Bundle;)V
goto :goto_9
:cond_19
invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v1
const-string v4, "batch"
invoke-virtual {p0, v4, v1}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private serializeToBatch(Lorg/json/JSONArray;Landroid/os/Bundle;)V
.registers 20
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;
if-eqz v13, :cond_1d
const-string v13, "name"
move-object/from16 v0, p0
iget-object v14, v0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;
invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v13, "omit_response_on_success"
move-object/from16 v0, p0
iget-boolean v14, v0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z
invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
:cond_1d
move-object/from16 v0, p0
iget-object v13, v0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;
if-eqz v13, :cond_2c
const-string v13, "depends_on"
move-object/from16 v0, p0
iget-object v14, v0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;
invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_2c
invoke-virtual/range {p0 .. p0}, Lcom/facebook/Request;->getUrlForBatchedRequest()Ljava/lang/String;
move-result-object v11
const-string v13, "relative_url"
invoke-virtual {v4, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v13, "method"
move-object/from16 v0, p0
iget-object v14, v0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;
invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;
if-eqz v13, :cond_4f
move-object/from16 v0, p0
iget-object v13, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;
invoke-virtual {v13}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V
:cond_4f
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
invoke-virtual {v13}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v8
invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_60
:goto_60
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v13
if-eqz v13, :cond_9c
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
invoke-virtual {v13, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v12
invoke-static {v12}, Lcom/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z
move-result v13
if-eqz v13, :cond_60
const-string v13, "%s%d"
const/4 v14, 0x2
new-array v14, v14, [Ljava/lang/Object;
const/4 v15, 0x0
const-string v16, "file"
aput-object v16, v14, v15
const/4 v15, 0x1
invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->size()I
move-result v16
invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v16
aput-object v16, v14, v15
invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p2
invoke-static {v0, v10, v12}, Lcom/facebook/internal/Utility;->putObjectInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_60
:cond_9c
invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
move-result v13
if-nez v13, :cond_ad
const-string v13, ","
invoke-static {v13, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v3
const-string v13, "attached_files"
invoke-virtual {v4, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_ad
move-object/from16 v0, p0
iget-object v13, v0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;
if-eqz v13, :cond_d1
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;
new-instance v14, Lcom/facebook/Request$5;
move-object/from16 v0, p0
invoke-direct {v14, v0, v9}, Lcom/facebook/Request$5;-><init>(Lcom/facebook/Request;Ljava/util/ArrayList;)V
invoke-static {v13, v11, v14}, Lcom/facebook/Request;->processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V
const-string v13, "&"
invoke-static {v13, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
move-result-object v5
const-string v13, "body"
invoke-virtual {v4, v13, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_d1
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
return-void
.end method
.method static final serializeToUrlConnection(Lcom/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
.registers 15
const/4 v3, 0x0
const/4 v10, 0x1
new-instance v4, Lcom/facebook/internal/Logger;
sget-object v11, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;
const-string v12, "Request"
invoke-direct {v4, v11, v12}, Lcom/facebook/internal/Logger;-><init>(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I
move-result v5
if-ne v5, v10, :cond_6d
invoke-virtual {p0, v3}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;
move-result-object v11
iget-object v2, v11, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;
:goto_17
invoke-virtual {v2}, Lcom/facebook/HttpMethod;->name()Ljava/lang/String;
move-result-object v11
invoke-virtual {p1, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;
move-result-object v9
const-string v11, "Request:\n"
invoke-virtual {v4, v11}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V
const-string v11, "Id"
invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getId()Ljava/lang/String;
move-result-object v12
invoke-virtual {v4, v11, v12}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
const-string v11, "URL"
invoke-virtual {v4, v11, v9}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
const-string v11, "Method"
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;
move-result-object v12
invoke-virtual {v4, v11, v12}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
const-string v11, "User-Agent"
const-string v12, "User-Agent"
invoke-virtual {p1, v12}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v4, v11, v12}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
const-string v11, "Content-Type"
const-string v12, "Content-Type"
invoke-virtual {p1, v12}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
invoke-virtual {v4, v11, v12}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getTimeout()I
move-result v11
invoke-virtual {p1, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getTimeout()I
move-result v11
invoke-virtual {p1, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
sget-object v11, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;
if-ne v2, v11, :cond_67
move v3, v10
:cond_67
if-nez v3, :cond_70
invoke-virtual {v4}, Lcom/facebook/internal/Logger;->log()V
:goto_6c
return-void
:cond_6d
sget-object v2, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;
goto :goto_17
:cond_70
invoke-virtual {p1, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
new-instance v6, Ljava/io/BufferedOutputStream;
invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v11
invoke-direct {v6, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_start_7c
new-instance v8, Lcom/facebook/Request$Serializer;
invoke-direct {v8, v6, v4}, Lcom/facebook/Request$Serializer;-><init>(Ljava/io/BufferedOutputStream;Lcom/facebook/internal/Logger;)V
if-ne v5, v10, :cond_b0
const/4 v10, 0x0
invoke-virtual {p0, v10}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;
move-result-object v7
const-string v10, "  Parameters:\n"
invoke-virtual {v4, v10}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V
iget-object v10, v7, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
invoke-static {v10, v8}, Lcom/facebook/Request;->serializeParameters(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;)V
const-string v10, "  Attachments:\n"
invoke-virtual {v4, v10}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V
iget-object v10, v7, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
invoke-static {v10, v8}, Lcom/facebook/Request;->serializeAttachments(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;)V
iget-object v10, v7, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;
if-eqz v10, :cond_a9
iget-object v10, v7, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;
invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11, v8}, Lcom/facebook/Request;->processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V
:try_end_a9
.catchall {:try_start_7c .. :try_end_a9} :catchall_c2
:goto_a9
:cond_a9
invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
invoke-virtual {v4}, Lcom/facebook/internal/Logger;->log()V
goto :goto_6c
:try_start_b0
:cond_b0
invoke-static {p0}, Lcom/facebook/Request;->getBatchAppId(Lcom/facebook/RequestBatch;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z
move-result v10
if-eqz v10, :cond_c7
new-instance v10, Lcom/facebook/FacebookException;
const-string v11, "At least one request in a batch must have an open Session, or a default app ID must be specified."
invoke-direct {v10, v11}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v10
:try_end_c2
.catchall {:try_start_b0 .. :try_end_c2} :catchall_c2
:catchall_c2
move-exception v10
invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
throw v10
:try_start_c7
:cond_c7
const-string v10, "batch_app_id"
invoke-virtual {v8, v10, v1}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-static {v8, p0, v0}, Lcom/facebook/Request;->serializeRequestsAsJSON(Lcom/facebook/Request$Serializer;Ljava/util/Collection;Landroid/os/Bundle;)V
const-string v10, "  Attachments:\n"
invoke-virtual {v4, v10}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V
invoke-static {v0, v8}, Lcom/facebook/Request;->serializeAttachments(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;)V
:try_end_dc
.catchall {:try_start_c7 .. :try_end_dc} :catchall_c2
goto :goto_a9
.end method
.method public static final setDefaultBatchApplicationId(Ljava/lang/String;)V
.registers 1
sput-object p0, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;
return-void
.end method
.method public static toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;
.registers 8
invoke-virtual {p0}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_4
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_14
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/facebook/Request;
invoke-direct {v3}, Lcom/facebook/Request;->validate()V
goto :goto_4
:cond_14
const/4 v4, 0x0
:try_start_15
invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I
move-result v5
const/4 v6, 0x1
if-ne v5, v6, :cond_32
const/4 v5, 0x0
invoke-virtual {p0, v5}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;
move-result-object v3
new-instance v4, Ljava/net/URL;
invoke-virtual {v3}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:try_start_2a
:try_end_2a
.catch Ljava/net/MalformedURLException; {:try_start_15 .. :try_end_2a} :catch_3a
:goto_2a
invoke-static {v4}, Lcom/facebook/Request;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
move-result-object v0
invoke-static {p0, v0}, Lcom/facebook/Request;->serializeToUrlConnection(Lcom/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
:try_end_31
.catch Ljava/io/IOException; {:try_start_2a .. :try_end_31} :catch_43
.catch Lorg/json/JSONException; {:try_start_2a .. :try_end_31} :catch_4c
return-object v0
:cond_32
:try_start_32
new-instance v4, Ljava/net/URL;
const-string v5, "https://graph.facebook.com"
invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:try_end_39
.catch Ljava/net/MalformedURLException; {:try_start_32 .. :try_end_39} :catch_3a
goto :goto_2a
:catch_3a
move-exception v1
new-instance v5, Lcom/facebook/FacebookException;
const-string v6, "could not construct URL for request"
invoke-direct {v5, v6, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v5
:catch_43
move-exception v1
new-instance v5, Lcom/facebook/FacebookException;
const-string v6, "could not construct request body"
invoke-direct {v5, v6, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v5
:catch_4c
move-exception v1
new-instance v5, Lcom/facebook/FacebookException;
const-string v6, "could not construct request body"
invoke-direct {v5, v6, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v5
.end method
.method public static toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;
.registers 2
const-string v0, "requests"
invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V
new-instance v0, Lcom/facebook/RequestBatch;
invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V
invoke-static {v0}, Lcom/facebook/Request;->toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;
move-result-object v0
return-object v0
.end method
.method public static varargs toHttpConnection([Lcom/facebook/Request;)Ljava/net/HttpURLConnection;
.registers 2
invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/facebook/Request;->toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;
move-result-object v0
return-object v0
.end method
.method private static typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
.registers 6
const/4 v2, 0x0
const-class v3, Lcom/facebook/model/GraphMultiResult;
invoke-virtual {p0, v3}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
move-result-object v1
check-cast v1, Lcom/facebook/model/GraphMultiResult;
if-nez v1, :cond_c
:goto_b
:cond_b
return-object v2
:cond_c
invoke-interface {v1}, Lcom/facebook/model/GraphMultiResult;->getData()Lcom/facebook/model/GraphObjectList;
move-result-object v0
if-eqz v0, :cond_b
invoke-interface {v0, p1}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
move-result-object v2
goto :goto_b
.end method
.method private validate()V
.registers 3
iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;
if-eqz v0, :cond_10
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Only one of a graph path or REST method may be specified per request."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
return-void
.end method
.method public final executeAndWait()Lcom/facebook/Response;
.registers 2
invoke-static {p0}, Lcom/facebook/Request;->executeAndWait(Lcom/facebook/Request;)Lcom/facebook/Response;
move-result-object v0
return-object v0
.end method
.method public final executeAsync()Lcom/facebook/RequestAsyncTask;
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Lcom/facebook/Request;
const/4 v1, 0x0
aput-object p0, v0, v1
invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;
move-result-object v0
return-object v0
.end method
.method public final getBatchEntryDependsOn()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;
return-object v0
.end method
.method public final getBatchEntryName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;
return-object v0
.end method
.method public final getBatchEntryOmitResultOnSuccess()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z
return v0
.end method
.method public final getCallback()Lcom/facebook/Request$Callback;
.registers 2
iget-object v0, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;
return-object v0
.end method
.method public final getGraphObject()Lcom/facebook/model/GraphObject;
.registers 2
iget-object v0, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;
return-object v0
.end method
.method public final getGraphPath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;
return-object v0
.end method
.method public final getHttpMethod()Lcom/facebook/HttpMethod;
.registers 2
iget-object v0, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;
return-object v0
.end method
.method public final getParameters()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
return-object v0
.end method
.method public final getRestMethod()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;
return-object v0
.end method
.method public final getSession()Lcom/facebook/Session;
.registers 2
iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;
return-object v0
.end method
.method final getUrlForBatchedRequest()Ljava/lang/String;
.registers 4
iget-object v1, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;
if-eqz v1, :cond_c
new-instance v1, Lcom/facebook/FacebookException;
const-string v2, "Can\'t override URL for a batch request"
invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v1
:cond_c
iget-object v1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;
if-eqz v1, :cond_2d
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "method/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_25
invoke-direct {p0}, Lcom/facebook/Request;->addCommonParameters()V
invoke-direct {p0, v0}, Lcom/facebook/Request;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
return-object v1
:cond_2d
iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;
goto :goto_25
.end method
.method final getUrlForSingleRequest()Ljava/lang/String;
.registers 4
iget-object v1, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;
if-eqz v1, :cond_7
iget-object v1, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;
:goto_6
return-object v1
:cond_7
iget-object v1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;
if-eqz v1, :cond_28
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "https://api.facebook.com/method/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_20
invoke-direct {p0}, Lcom/facebook/Request;->addCommonParameters()V
invoke-direct {p0, v0}, Lcom/facebook/Request;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
goto :goto_6
:cond_28
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "https://graph.facebook.com/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_20
.end method
.method public final setBatchEntryDependsOn(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;
return-void
.end method
.method public final setBatchEntryName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;
return-void
.end method
.method public final setBatchEntryOmitResultOnSuccess(Z)V
.registers 2
iput-boolean p1, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z
return-void
.end method
.method public final setCallback(Lcom/facebook/Request$Callback;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;
return-void
.end method
.method public final setGraphObject(Lcom/facebook/model/GraphObject;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;
return-void
.end method
.method public final setGraphPath(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;
return-void
.end method
.method public final setHttpMethod(Lcom/facebook/HttpMethod;)V
.registers 4
iget-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;
if-eqz v0, :cond_10
sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;
if-eq p1, v0, :cond_10
new-instance v0, Lcom/facebook/FacebookException;
const-string v1, "Can\'t change HTTP method on request with overridden URL."
invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
if-eqz p1, :cond_15
:goto_12
iput-object p1, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;
return-void
:cond_15
sget-object p1, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;
goto :goto_12
.end method
.method public final setParameters(Landroid/os/Bundle;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
return-void
.end method
.method public final setRestMethod(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;
return-void
.end method
.method public final setSession(Lcom/facebook/Session;)V
.registers 2
iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "{Request: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " session: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", graphPath: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", graphObject: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", restMethod: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", httpMethod: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", parameters: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method