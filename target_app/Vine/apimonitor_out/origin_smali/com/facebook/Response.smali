.class public Lcom/facebook/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/Response$PagedResults;,
        Lcom/facebook/Response$PagingInfo;,
        Lcom/facebook/Response$PagingDirection;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final CODE_KEY:Ljava/lang/String; = "code"

.field private static final INVALID_SESSION_FACEBOOK_ERROR_CODE:I = 0xbe

.field public static final NON_JSON_RESPONSE_PROPERTY:Ljava/lang/String; = "FACEBOOK_NON_JSON_RESULT"

.field private static final RESPONSE_CACHE_TAG:Ljava/lang/String; = "ResponseCache"

.field private static final RESPONSE_LOG_TAG:Ljava/lang/String; = "Response"

.field private static responseCache:Lcom/facebook/internal/FileLruCache;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private final error:Lcom/facebook/FacebookRequestError;

.field private final graphObject:Lcom/facebook/model/GraphObject;

.field private final graphObjectList:Lcom/facebook/model/GraphObjectList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation
.end field

.field private final isFromCache:Z

.field private final request:Lcom/facebook/Request;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/Response;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/facebook/Response;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    iput-object p2, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    iput-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Response;->isFromCache:Z

    iput-object p3, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    return-void
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/model/GraphObject;Z)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    iput-object p2, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    iput-object p3, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    iput-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    iput-boolean p4, p0, Lcom/facebook/Response;->isFromCache:Z

    iput-object v0, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    return-void
.end method

.method constructor <init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/model/GraphObjectList;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Request;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    iput-object p2, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    iput-object p3, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    iput-boolean p4, p0, Lcom/facebook/Response;->isFromCache:Z

    iput-object v0, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    return-void
.end method

.method static constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/FacebookException;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_22

    new-instance v2, Lcom/facebook/Response;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/Request;

    new-instance v5, Lcom/facebook/FacebookRequestError;

    invoke-direct {v5, p1, p2}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v2, v4, p1, v5}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_22
    return-object v3
.end method

.method private static createResponseFromObject(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/facebook/Response;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    instance-of v6, p2, Lorg/json/JSONObject;

    if-eqz v6, :cond_50

    move-object v4, p2

    check-cast v4, Lorg/json/JSONObject;

    invoke-static {v4, p4, p1}, Lcom/facebook/FacebookRequestError;->checkResponseAndCreateError(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v6

    const/16 v7, 0xbe

    if-ne v6, v7, :cond_1e

    invoke-virtual {p0}, Lcom/facebook/Request;->getSession()Lcom/facebook/Session;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-virtual {v5}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    :cond_1e
    new-instance v6, Lcom/facebook/Response;

    invoke-direct {v6, p0, p1, v1}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    :goto_23
    return-object v6

    :cond_24
    const-string v6, "body"

    const-string v7, "FACEBOOK_NON_JSON_RESULT"

    invoke-static {v4, v6, v7}, Lcom/facebook/internal/Utility;->getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v6, v0, Lorg/json/JSONObject;

    if-eqz v6, :cond_3c

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v2

    new-instance v6, Lcom/facebook/Response;

    invoke-direct {v6, p0, p1, v2, p3}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/model/GraphObject;Z)V

    goto :goto_23

    :cond_3c
    instance-of v6, v0, Lorg/json/JSONArray;

    if-eqz v6, :cond_4e

    check-cast v0, Lorg/json/JSONArray;

    const-class v6, Lcom/facebook/model/GraphObject;

    invoke-static {v0, v6}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v3

    new-instance v6, Lcom/facebook/Response;

    invoke-direct {v6, p0, p1, v3, p3}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/model/GraphObjectList;Z)V

    goto :goto_23

    :cond_4e
    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_50
    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p2, v6, :cond_5e

    new-instance v7, Lcom/facebook/Response;

    const/4 v6, 0x0

    check-cast v6, Lcom/facebook/model/GraphObject;

    invoke-direct {v7, p0, p1, v6, p3}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/model/GraphObject;Z)V

    move-object v6, v7

    goto :goto_23

    :cond_5e
    new-instance v6, Lcom/facebook/FacebookException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got unexpected object type in response, class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private static createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;
        }
    .end annotation

    sget-boolean v12, Lcom/facebook/Response;->$assertionsDisabled:Z

    if-nez v12, :cond_e

    if-nez p0, :cond_e

    if-nez p3, :cond_e

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v8, p2

    const/4 v12, 0x1

    if-ne v6, v12, :cond_44

    const/4 v12, 0x0

    invoke-interface {p1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/Request;

    :try_start_23
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "body"

    move-object/from16 v0, p2

    invoke-virtual {v5, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p0, :cond_5c

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    :goto_35
    const-string v12, "code"

    invoke-virtual {v5, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_23 .. :try_end_42} :catch_5f
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_42} :catch_6e

    move-object/from16 p2, v4

    :cond_44
    :goto_44
    move-object/from16 v0, p2

    instance-of v12, v0, Lorg/json/JSONArray;

    if-eqz v12, :cond_54

    move-object/from16 v12, p2

    check-cast v12, Lorg/json/JSONArray;

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-eq v12, v6, :cond_7d

    :cond_54
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v12, "Unexpected number of results"

    invoke-direct {v2, v12}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5c
    const/16 v10, 0xc8

    goto :goto_35

    :catch_5f
    move-exception v1

    new-instance v12, Lcom/facebook/Response;

    new-instance v13, Lcom/facebook/FacebookRequestError;

    invoke-direct {v13, p0, v1}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v12, v9, p0, v13}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :catch_6e
    move-exception v1

    new-instance v12, Lcom/facebook/Response;

    new-instance v13, Lcom/facebook/FacebookRequestError;

    invoke-direct {v13, p0, v1}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v12, v9, p0, v13}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_44

    :cond_7d
    move-object/from16 v4, p2

    check-cast v4, Lorg/json/JSONArray;

    const/4 v3, 0x0

    :goto_82
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v3, v12, :cond_bc

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/Request;

    :try_start_8e
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    move/from16 v0, p3

    invoke-static {v9, p0, v7, v0, v8}, Lcom/facebook/Response;->createResponseFromObject(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Ljava/lang/Object;ZLjava/lang/Object;)Lcom/facebook/Response;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9b
    .catch Lorg/json/JSONException; {:try_start_8e .. :try_end_9b} :catch_9e
    .catch Lcom/facebook/FacebookException; {:try_start_8e .. :try_end_9b} :catch_ad

    :goto_9b
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    :catch_9e
    move-exception v1

    new-instance v12, Lcom/facebook/Response;

    new-instance v13, Lcom/facebook/FacebookRequestError;

    invoke-direct {v13, p0, v1}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v12, v9, p0, v13}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    :catch_ad
    move-exception v1

    new-instance v12, Lcom/facebook/Response;

    new-instance v13, Lcom/facebook/FacebookRequestError;

    invoke-direct {v13, p0, v1}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    invoke-direct {v12, v9, p0, v13}, Lcom/facebook/Response;-><init>(Lcom/facebook/Request;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    :cond_bc
    return-object v11
.end method

.method static createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/Utility;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/facebook/LoggingBehavior;

    const-string v2, "Response"

    const-string v3, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/Response;->createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static createResponsesFromString(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Lorg/json/JSONTokener;

    invoke-direct {v2, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, p2, v1, p3}, Lcom/facebook/Response;->createResponsesFromObject(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    sget-object v3, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v4, "Response"

    const-string v5, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/facebook/RequestBatch;->getId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    instance-of v7, p1, Lcom/facebook/internal/CacheableRequestBatch;

    if-eqz v7, :cond_53

    move-object v2, p1

    check-cast v2, Lcom/facebook/internal/CacheableRequestBatch;

    invoke-static {}, Lcom/facebook/Response;->getResponseCache()Lcom/facebook/internal/FileLruCache;

    move-result-object v0

    invoke-virtual {v2}, Lcom/facebook/internal/CacheableRequestBatch;->getCacheKeyOverride()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->size()I

    move-result v7

    if-ne v7, v9, :cond_46

    invoke-virtual {p1, v8}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v1

    :cond_28
    :goto_28
    invoke-virtual {v2}, Lcom/facebook/internal/CacheableRequestBatch;->getForceRoundTrip()Z

    move-result v7

    if-nez v7, :cond_53

    if-eqz v0, :cond_53

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_53

    :try_start_36
    invoke-virtual {v0, v1}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_50

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v6, v7, p1, v8}, Lcom/facebook/Response;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_77
    .catch Lcom/facebook/FacebookException; {:try_start_36 .. :try_end_41} :catch_68
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_41} :catch_6d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_41} :catch_72

    move-result-object v7

    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :goto_45
    return-object v7

    :cond_46
    sget-object v7, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v8, "ResponseCache"

    const-string v9, "Not using cache for cacheable request because no key was specified"

    invoke-static {v7, v8, v9}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    :cond_50
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :cond_53
    :goto_53
    :try_start_53
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0x190

    if-lt v7, v8, :cond_7c

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    :cond_5f
    :goto_5f
    const/4 v7, 0x0

    invoke-static {v6, p0, p1, v7}, Lcom/facebook/Response;->createResponsesFromStream(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;Z)Ljava/util/List;
    :try_end_63
    .catchall {:try_start_53 .. :try_end_63} :catchall_e1
    .catch Lcom/facebook/FacebookException; {:try_start_53 .. :try_end_63} :catch_8e
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_63} :catch_a6
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_63} :catch_c3

    move-result-object v7

    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_45

    :catch_68
    move-exception v7

    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_53

    :catch_6d
    move-exception v7

    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_53

    :catch_72
    move-exception v7

    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_53

    :catchall_77
    move-exception v7

    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    :cond_7c
    :try_start_7c
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    if-eqz v0, :cond_5f

    if-eqz v1, :cond_5f

    if-eqz v6, :cond_5f

    invoke-virtual {v0, v1, v6}, Lcom/facebook/internal/FileLruCache;->interceptAndPut(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_89
    .catchall {:try_start_7c .. :try_end_89} :catchall_e1
    .catch Lcom/facebook/FacebookException; {:try_start_7c .. :try_end_89} :catch_8e
    .catch Lorg/json/JSONException; {:try_start_7c .. :try_end_89} :catch_a6
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_89} :catch_c3

    move-result-object v5

    if-eqz v5, :cond_5f

    move-object v6, v5

    goto :goto_5f

    :catch_8e
    move-exception v4

    :try_start_8f
    sget-object v7, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v8, "Response"

    const-string v9, "Response <Error>: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p0, v4}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_a1
    .catchall {:try_start_8f .. :try_end_a1} :catchall_e1

    move-result-object v7

    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_45

    :catch_a6
    move-exception v3

    :try_start_a7
    sget-object v7, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v8, "Response"

    const-string v9, "Response <Error>: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v7, Lcom/facebook/FacebookException;

    invoke-direct {v7, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v7}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_be
    .catchall {:try_start_a7 .. :try_end_be} :catchall_e1

    move-result-object v7

    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_45

    :catch_c3
    move-exception v3

    :try_start_c4
    sget-object v7, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v8, "Response"

    const-string v9, "Response <Error>: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v7, Lcom/facebook/FacebookException;

    invoke-direct {v7, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1, p0, v7}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    :try_end_db
    .catchall {:try_start_c4 .. :try_end_db} :catchall_e1

    move-result-object v7

    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_45

    :catchall_e1
    move-exception v7

    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v7
.end method

.method static getResponseCache()Lcom/facebook/internal/FileLruCache;
    .registers 4

    sget-object v1, Lcom/facebook/Response;->responseCache:Lcom/facebook/internal/FileLruCache;

    if-nez v1, :cond_18

    invoke-static {}, Lcom/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_18

    new-instance v1, Lcom/facebook/internal/FileLruCache;

    const-string v2, "ResponseCache"

    new-instance v3, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v3}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lcom/facebook/internal/FileLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v1, Lcom/facebook/Response;->responseCache:Lcom/facebook/internal/FileLruCache;

    :cond_18
    sget-object v1, Lcom/facebook/Response;->responseCache:Lcom/facebook/internal/FileLruCache;

    return-object v1
.end method


# virtual methods
.method public final getConnection()Ljava/net/HttpURLConnection;
    .registers 2

    iget-object v0, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method public final getError()Lcom/facebook/FacebookRequestError;
    .registers 2

    iget-object v0, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    return-object v0
.end method

.method public final getGraphObject()Lcom/facebook/model/GraphObject;
    .registers 2

    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    return-object v0
.end method

.method public final getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Must pass in a valid interface that extends GraphObject"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-interface {v0, p1}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    goto :goto_5
.end method

.method public final getGraphObjectList()Lcom/facebook/model/GraphObjectList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/model/GraphObjectList",
            "<",
            "Lcom/facebook/model/GraphObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    return-object v0
.end method

.method public final getGraphObjectListAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/model/GraphObjectList",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/facebook/Response;->graphObjectList:Lcom/facebook/model/GraphObjectList;

    invoke-interface {v0, p1}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    goto :goto_5
.end method

.method public final getIsFromCache()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/Response;->isFromCache:Z

    return v0
.end method

.method public getRequest()Lcom/facebook/Request;
    .registers 2

    iget-object v0, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    return-object v0
.end method

.method public getRequestForPagedResults(Lcom/facebook/Response$PagingDirection;)Lcom/facebook/Request;
    .registers 10

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    const-class v7, Lcom/facebook/Response$PagedResults;

    invoke-interface {v6, v7}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v2

    check-cast v2, Lcom/facebook/Response$PagedResults;

    invoke-interface {v2}, Lcom/facebook/Response$PagedResults;->getPaging()Lcom/facebook/Response$PagingInfo;

    move-result-object v3

    if-eqz v3, :cond_1e

    sget-object v6, Lcom/facebook/Response$PagingDirection;->NEXT:Lcom/facebook/Response$PagingDirection;

    if-ne p1, v6, :cond_26

    invoke-interface {v3}, Lcom/facebook/Response$PagingInfo;->getNext()Ljava/lang/String;

    move-result-object v1

    :cond_1e
    :goto_1e
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    move-object v4, v5

    :goto_25
    return-object v4

    :cond_26
    invoke-interface {v3}, Lcom/facebook/Response$PagingInfo;->getPrevious()Ljava/lang/String;

    move-result-object v1

    goto :goto_1e

    :cond_2b
    if-eqz v1, :cond_3b

    iget-object v6, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    invoke-virtual {v6}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    move-object v4, v5

    goto :goto_25

    :cond_3b
    :try_start_3b
    new-instance v4, Lcom/facebook/Request;

    iget-object v6, p0, Lcom/facebook/Response;->request:Lcom/facebook/Request;

    invoke-virtual {v6}, Lcom/facebook/Request;->getSession()Lcom/facebook/Session;

    move-result-object v6

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6, v7}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/net/URL;)V
    :try_end_4b
    .catch Ljava/net/MalformedURLException; {:try_start_3b .. :try_end_4b} :catch_4c

    goto :goto_25

    :catch_4c
    move-exception v0

    move-object v4, v5

    goto :goto_25
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v3, "%d"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/facebook/Response;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    :goto_10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_5b

    move-result-object v1

    :goto_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{Response:  responseCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", graphObject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/Response;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/Response;->error:Lcom/facebook/FacebookRequestError;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isFromCache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/facebook/Response;->isFromCache:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_58
    const/16 v2, 0xc8

    goto :goto_10

    :catch_5b
    move-exception v0

    const-string v1, "unknown"

    goto :goto_1a
.end method
