.class public Lcom/spotify/mobile/android/core/internal/HttpConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final kDelete:I = 0x8

.field protected static final kErrorClassHttp:I = 0x12c

.field protected static final kErrorHttpAborted:I = 0x137

.field protected static final kErrorHttpBadRange:I = 0x131

.field protected static final kErrorHttpBadReply:I = 0x130

.field protected static final kErrorHttpBadTransferEncoding:I = 0x133

.field protected static final kErrorHttpConnectFail:I = 0x12e

.field protected static final kErrorHttpConnectTimeout:I = 0x12d

.field protected static final kErrorHttpFail:I = 0x135

.field protected static final kErrorHttpGzipDecode:I = 0x136

.field protected static final kErrorHttpInvalidUrl:I = 0x12f

.field protected static final kErrorHttpTimeout:I = 0x134

.field protected static final kErrorHttpTooManyRedirects:I = 0x132

.field protected static final kErrorSuccess:I = 0x0

.field protected static final kGet:I = 0x1

.field protected static final kMethodFlagMask:I = 0xf

.field protected static final kPost:I = 0x2

.field protected static final kUpdate:I = 0x4


# instance fields
.field private mContentType:Ljava/lang/String;

.field private mErrorCode:I

.field private mFlags:I

.field private mFrom:I

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mParams:Lorg/apache/http/params/HttpParams;

.field private mPostData:Ljava/lang/String;

.field private mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field private mRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResponse:Lorg/apache/http/HttpResponse;

.field protected mResultData:[B

.field private mTo:I

.field private mUserAgent:Ljava/lang/String;

.field private nThis:I


# direct methods
.method public constructor <init>(I)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mPostData:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mContentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mUserAgent:Ljava/lang/String;

    iput v1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mFrom:I

    iput v1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mTo:I

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequestHeaders:Ljava/util/Map;

    iput v1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mErrorCode:I

    iput p1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mFlags:I

    const-class v0, Lcom/spotify/mobile/android/util/de;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/de;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/de;->a()Lcom/squareup/okhttp/m;

    move-result-object v0

    new-instance v1, Lcom/squareup/okhttp/a/a;

    invoke-direct {v1, v0}, Lcom/squareup/okhttp/a/a;-><init>(Lcom/squareup/okhttp/m;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mHttpClient:Lorg/apache/http/client/HttpClient;

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mParams:Lorg/apache/http/params/HttpParams;

    return-void
.end method

.method static synthetic access$002(Lcom/spotify/mobile/android/core/internal/HttpConnection;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    return-object p1
.end method

.method static synthetic access$100(Lcom/spotify/mobile/android/core/internal/HttpConnection;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    return-object v0
.end method

.method static synthetic access$200(Lcom/spotify/mobile/android/core/internal/HttpConnection;)Lorg/apache/http/client/HttpClient;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mHttpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method static synthetic access$302(Lcom/spotify/mobile/android/core/internal/HttpConnection;I)I
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mErrorCode:I

    return p1
.end method

.method static synthetic access$400(Lcom/spotify/mobile/android/core/internal/HttpConnection;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/core/internal/HttpConnection;->notifyComplete()V

    return-void
.end method

.method private native notifyComplete()V
.end method

.method private readBytes([B)I
    .registers 9

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-nez v1, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x2000

    new-array v3, v3, [B

    :goto_22
    const/4 v4, 0x0

    const/16 v5, 0x2000

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_44

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_30} :catch_31

    goto :goto_22

    :catch_31
    move-exception v1

    :try_start_32
    const-string v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x135

    iput v1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mErrorCode:I
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_58

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v1, v6}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_e

    :cond_44
    :try_start_44
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {v1, v3, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_58
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_51} :catch_31

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v1, v6}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_e

    :catchall_58
    move-exception v0

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v1, v6}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    throw v0
.end method


# virtual methods
.method public abort()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    const/16 v0, 0x137

    iput v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mErrorCode:I

    return-void
.end method

.method public getErrorCode()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mErrorCode:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method public getResourceSize()I
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_d
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method

.method public getResultCode()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public getResultData()[B
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResultData:[B

    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResultData:[B

    :goto_8
    return-object v0

    :cond_9
    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-nez v2, :cond_17

    :cond_15
    move-object v0, v1

    goto :goto_8

    :cond_17
    :try_start_17
    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v4, 0x2000

    new-array v4, v4, [B

    :goto_2a
    const/4 v5, 0x0

    const/16 v6, 0x2000

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3a

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v0, v5

    goto :goto_2a

    :cond_3a
    if-lez v0, :cond_46

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3f
    .catchall {:try_start_17 .. :try_end_3f} :catchall_60
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_3f} :catch_4d

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v2, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_8

    :cond_46
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    :goto_4b
    move-object v0, v1

    goto :goto_8

    :catch_4d
    move-exception v0

    :try_start_4e
    const-string v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x135

    iput v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mErrorCode:I
    :try_end_5a
    .catchall {:try_start_4e .. :try_end_5a} :catchall_60

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_4b

    :catchall_60
    move-exception v0

    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v2, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    throw v0
.end method

.method public isRequestStarted()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public openUrl(Ljava/lang/String;)V
    .registers 9

    const/16 v4, 0x135

    const/16 v3, 0x12f

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mFlags:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mPostData:Ljava/lang/String;

    if-eqz v0, :cond_38

    iget v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mFlags:I

    :cond_16
    :goto_16
    iget v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mFlags:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mPostData:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mFlags:I

    :cond_2b
    :goto_2b
    iget v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mFlags:I

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_13e

    :pswitch_32
    iput v4, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mErrorCode:I

    invoke-direct {p0}, Lcom/spotify/mobile/android/core/internal/HttpConnection;->notifyComplete()V

    :goto_37
    return-void

    :cond_38
    iget v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mFlags:I

    goto :goto_16

    :cond_3f
    iget v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mFlags:I

    goto :goto_2b

    :pswitch_46
    :try_start_46
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_4d} :catch_ae

    :cond_4d
    :goto_4d
    iget v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mFrom:I

    if-nez v0, :cond_55

    iget v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mTo:I

    if-eqz v0, :cond_75

    :cond_55
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v1, "Range"

    const-string v2, "bytes=%d-%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mFrom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mTo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v1, "User-Agent"

    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mUserAgent:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_82
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequestHeaders:Ljava/util/Map;

    if-eqz v0, :cond_12c

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_90
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_90

    :catch_ae
    move-exception v0

    const-string v1, "Error when trying to create HttpGet(%s)."

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v3, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mErrorCode:I

    invoke-direct {p0}, Lcom/spotify/mobile/android/core/internal/HttpConnection;->notifyComplete()V

    goto/16 :goto_37

    :pswitch_bf
    :try_start_bf
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bf .. :try_end_c4} :catch_e7

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    :try_start_c6
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mPostData:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mContentType:Ljava/lang/String;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    const-string v1, "Content-Type"

    iget-object v2, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dd
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c6 .. :try_end_dd} :catch_df

    goto/16 :goto_4d

    :catch_df
    move-exception v0

    iput v4, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mErrorCode:I

    invoke-direct {p0}, Lcom/spotify/mobile/android/core/internal/HttpConnection;->notifyComplete()V

    goto/16 :goto_37

    :catch_e7
    move-exception v0

    const-string v1, "Error when trying to create HttpPost(%s)."

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v3, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mErrorCode:I

    invoke-direct {p0}, Lcom/spotify/mobile/android/core/internal/HttpConnection;->notifyComplete()V

    goto/16 :goto_37

    :pswitch_f8
    :try_start_f8
    new-instance v0, Lcom/spotify/mobile/android/core/internal/HttpConnection$1;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/core/internal/HttpConnection$1;-><init>(Lcom/spotify/mobile/android/core/internal/HttpConnection;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_ff
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f8 .. :try_end_ff} :catch_101

    goto/16 :goto_4d

    :catch_101
    move-exception v0

    const-string v1, "Error when trying to create UPDATE HttpGet(%s)."

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v3, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mErrorCode:I

    invoke-direct {p0}, Lcom/spotify/mobile/android/core/internal/HttpConnection;->notifyComplete()V

    goto/16 :goto_37

    :pswitch_112
    :try_start_112
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_119
    .catch Ljava/lang/IllegalArgumentException; {:try_start_112 .. :try_end_119} :catch_11b

    goto/16 :goto_4d

    :catch_11b
    move-exception v0

    const-string v1, "Error when trying to create HttpDelete(%s)."

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v3, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mErrorCode:I

    invoke-direct {p0}, Lcom/spotify/mobile/android/core/internal/HttpConnection;->notifyComplete()V

    goto/16 :goto_37

    :cond_12c
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    new-instance v0, Lcom/spotify/mobile/android/core/internal/HttpConnection$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/core/internal/HttpConnection$2;-><init>(Lcom/spotify/mobile/android/core/internal/HttpConnection;)V

    invoke-virtual {v0}, Lcom/spotify/mobile/android/core/internal/HttpConnection$2;->start()V

    goto/16 :goto_37

    nop

    :pswitch_data_13e
    .packed-switch 0x1
        :pswitch_46
        :pswitch_bf
        :pswitch_32
        :pswitch_f8
        :pswitch_32
        :pswitch_32
        :pswitch_32
        :pswitch_112
    .end packed-switch
.end method

.method public setConnectTimeout(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mContentType:Ljava/lang/String;

    return-void
.end method

.method public setPostData(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mPostData:Ljava/lang/String;

    return-void
.end method

.method public setRequestHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequestHeaders:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequestHeaders:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRequestRange(II)V
    .registers 3

    iput p1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mFrom:I

    iput p2, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mTo:I

    return-void
.end method

.method public setTimeout(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/core/internal/HttpConnection;->mUserAgent:Ljava/lang/String;

    return-void
.end method
