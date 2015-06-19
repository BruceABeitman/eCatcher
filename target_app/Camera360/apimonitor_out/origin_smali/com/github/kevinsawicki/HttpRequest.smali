.class public Lcom/github/kevinsawicki/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/kevinsawicki/HttpRequest$Base64;,
        Lcom/github/kevinsawicki/HttpRequest$CloseOperation;,
        Lcom/github/kevinsawicki/HttpRequest$FlushOperation;,
        Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;,
        Lcom/github/kevinsawicki/HttpRequest$Operation;,
        Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;
    }
.end annotation


# static fields
.field private static final BOUNDARY:Ljava/lang/String; = "00content0boundary00"

.field public static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field public static final CONTENT_TYPE_FORM:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field private static final CONTENT_TYPE_MULTIPART:Ljava/lang/String; = "multipart/form-data; boundary=00content0boundary00"

.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final EMPTY_STRINGS:[Ljava/lang/String; = null

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_AUTHORIZATION:Ljava/lang/String; = "Authorization"

.field public static final HEADER_CACHE_CONTROL:Ljava/lang/String; = "Cache-Control"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_DATE:Ljava/lang/String; = "Date"

.field public static final HEADER_ETAG:Ljava/lang/String; = "ETag"

.field public static final HEADER_EXPIRES:Ljava/lang/String; = "Expires"

.field public static final HEADER_IF_NONE_MATCH:Ljava/lang/String; = "If-None-Match"

.field public static final HEADER_LAST_MODIFIED:Ljava/lang/String; = "Last-Modified"

.field public static final HEADER_LOCATION:Ljava/lang/String; = "Location"

.field public static final HEADER_SERVER:Ljava/lang/String; = "Server"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field public static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field public static final METHOD_OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field public static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field public static final METHOD_TRACE:Ljava/lang/String; = "TRACE"

.field public static final PARAM_CHARSET:Ljava/lang/String; = "charset"

.field private static volatile TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

.field private static volatile TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private bufferSize:I

.field private final connection:Ljava/net/HttpURLConnection;

.field private form:Z

.field private ignoreCloseExceptions:Z

.field private multipart:Z

.field private output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

.field private uncompress:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/github/kevinsawicki/HttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/github/kevinsawicki/HttpRequest;->ignoreCloseExceptions:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/github/kevinsawicki/HttpRequest;->uncompress:Z

    const/16 v1, 0x2000

    iput v1, p0, Lcom/github/kevinsawicki/HttpRequest;->bufferSize:I

    :try_start_d
    new-instance v1, Ljava/net/URL;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_23} :catch_24

    return-void

    :catch_24
    move-exception v0

    new-instance v1, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/github/kevinsawicki/HttpRequest;->ignoreCloseExceptions:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/github/kevinsawicki/HttpRequest;->uncompress:Z

    const/16 v1, 0x2000

    iput v1, p0, Lcom/github/kevinsawicki/HttpRequest;->bufferSize:I

    :try_start_d
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception v0

    new-instance v1, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method static synthetic access$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/github/kevinsawicki/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/github/kevinsawicki/HttpRequest;)I
    .registers 2

    iget v0, p0, Lcom/github/kevinsawicki/HttpRequest;->bufferSize:I

    return v0
.end method

.method private static addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 7

    const/16 v4, 0x3f

    const/16 v3, 0x26

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_14
    :goto_14
    return-object p1

    :cond_15
    if-ge v1, v0, :cond_14

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_14

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_14
.end method

.method private static addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 5

    const/16 v2, 0x2f

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ne v0, v1, :cond_13

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    return-object p1
.end method

.method public static append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v6, 0x3d

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/github/kevinsawicki/HttpRequest;->addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-static {v0, v3}, Lcom/github/kevinsawicki/HttpRequest;->addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3f
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4a

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_4a
    const/16 v5, 0x26

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_3f
.end method

.method public static varargs append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 8

    const/16 v5, 0x3d

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_b

    array-length v4, p1

    if-nez v4, :cond_c

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    array-length v4, p1

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1a

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Must specify an even number of parameter names/values"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/github/kevinsawicki/HttpRequest;->addPathSeparator(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lcom/github/kevinsawicki/HttpRequest;->addParamPrefix(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v3, p1, v4

    if-eqz v3, :cond_36

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_36
    const/4 v1, 0x2

    :goto_37
    array-length v4, p1

    if-lt v1, v4, :cond_3f

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_3f
    const/16 v4, 0x26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, p1, v4

    if-eqz v3, :cond_55

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_55
    add-int/lit8 v1, v1, 0x2

    goto :goto_37
.end method

.method public static delete(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static delete(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/github/kevinsawicki/HttpRequest;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/github/kevinsawicki/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_a

    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->delete(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs delete(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 5

    invoke-static {p0, p2}, Lcom/github/kevinsawicki/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_a

    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->delete(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static delete(Ljava/net/URL;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static encode(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_46

    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Ljava/net/URL;->getPort()I

    move-result v9

    const/4 v0, -0x1

    if-eq v9, v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2f
    :try_start_2f
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;
    :try_end_44
    .catch Ljava/net/URISyntaxException; {:try_start_2f .. :try_end_44} :catch_4d

    move-result-object v0

    return-object v0

    :catch_46
    move-exception v6

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v0, v6}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0

    :catch_4d
    move-exception v6

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v0, "Parsing URI failed"

    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v0, v7}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public static get(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest;

    const-string/jumbo v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static get(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/github/kevinsawicki/HttpRequest;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/github/kevinsawicki/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_a

    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs get(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 5

    invoke-static {p0, p2}, Lcom/github/kevinsawicki/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_a

    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static get(Ljava/net/URL;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest;

    const-string/jumbo v1, "GET"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    sget-object v4, Lcom/github/kevinsawicki/HttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v4, :cond_25

    const/4 v4, 0x1

    new-array v3, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lcom/github/kevinsawicki/HttpRequest$1;

    invoke-direct {v5}, Lcom/github/kevinsawicki/HttpRequest$1;-><init>()V

    aput-object v5, v3, v4

    :try_start_f
    const-string/jumbo v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v4, 0x0

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v4, v3, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    sput-object v4, Lcom/github/kevinsawicki/HttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_25
    .catch Ljava/security/GeneralSecurityException; {:try_start_f .. :try_end_25} :catch_28

    :cond_25
    sget-object v4, Lcom/github/kevinsawicki/HttpRequest;->TRUSTED_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    return-object v4

    :catch_28
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "Security exception configuring SSL context"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v4, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v4, v2}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v4
.end method

.method private static getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 1

    sget-object v0, Lcom/github/kevinsawicki/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_b

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest$2;

    invoke-direct {v0}, Lcom/github/kevinsawicki/HttpRequest$2;-><init>()V

    sput-object v0, Lcom/github/kevinsawicki/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    :cond_b
    sget-object v0, Lcom/github/kevinsawicki/HttpRequest;->TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method private static getValidCharset(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    const-string/jumbo p0, "UTF-8"

    goto :goto_8
.end method

.method public static head(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest;

    const-string/jumbo v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static head(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/github/kevinsawicki/HttpRequest;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/github/kevinsawicki/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_a

    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->head(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs head(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 5

    invoke-static {p0, p2}, Lcom/github/kevinsawicki/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_a

    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->head(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static head(Ljava/net/URL;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest;

    const-string/jumbo v1, "HEAD"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static keepAlive(Z)V
    .registers 3

    const-string/jumbo v0, "http.keepAlive"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/github/kevinsawicki/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static varargs nonProxyHosts([Ljava/lang/String;)V
    .registers 6

    if-eqz p0, :cond_2e

    array-length v3, p0

    if-lez v3, :cond_2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    const/4 v0, 0x0

    :goto_e
    if-lt v0, v1, :cond_20

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "http.nonProxyHosts"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/github/kevinsawicki/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :goto_1f
    return-void

    :cond_20
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_2e
    const-string/jumbo v3, "http.nonProxyHosts"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/github/kevinsawicki/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1f
.end method

.method public static options(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest;

    const-string/jumbo v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static options(Ljava/net/URL;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest;

    const-string/jumbo v1, "OPTIONS"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest;

    const-string/jumbo v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static post(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/github/kevinsawicki/HttpRequest;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/github/kevinsawicki/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_a

    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs post(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 5

    invoke-static {p0, p2}, Lcom/github/kevinsawicki/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_a

    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->post(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static post(Ljava/net/URL;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest;

    const-string/jumbo v1, "POST"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public static proxyHost(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "http.proxyHost"

    invoke-static {v0, p0}, Lcom/github/kevinsawicki/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v0, "https.proxyHost"

    invoke-static {v0, p0}, Lcom/github/kevinsawicki/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static proxyPort(I)V
    .registers 3

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http.proxyPort"

    invoke-static {v1, v0}, Lcom/github/kevinsawicki/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "https.proxyPort"

    invoke-static {v1, v0}, Lcom/github/kevinsawicki/HttpRequest;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public static put(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest;

    const-string/jumbo v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static put(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<**>;Z)",
            "Lcom/github/kevinsawicki/HttpRequest;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/github/kevinsawicki/HttpRequest;->append(Ljava/lang/CharSequence;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_a

    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->put(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static varargs put(Ljava/lang/CharSequence;Z[Ljava/lang/Object;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 5

    invoke-static {p0, p2}, Lcom/github/kevinsawicki/HttpRequest;->append(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_a

    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->encode(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-static {v0}, Lcom/github/kevinsawicki/HttpRequest;->put(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public static put(Ljava/net/URL;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest;

    const-string/jumbo v1, "PUT"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method private static setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_e

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest$3;

    invoke-direct {v0, p0, p1}, Lcom/github/kevinsawicki/HttpRequest$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_e
    new-instance v0, Lcom/github/kevinsawicki/HttpRequest$4;

    invoke-direct {v0, p0}, Lcom/github/kevinsawicki/HttpRequest$4;-><init>(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static trace(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest;

    const-string/jumbo v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/HttpRequest;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method public static trace(Ljava/net/URL;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest;

    const-string/jumbo v1, "TRACE"

    invoke-direct {v0, p0, v1}, Lcom/github/kevinsawicki/HttpRequest;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3

    const-string/jumbo v0, "Accept"

    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptCharset(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3

    const-string/jumbo v0, "Accept-Charset"

    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptEncoding(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3

    const-string/jumbo v0, "Accept-Encoding"

    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptGzipEncoding()Lcom/github/kevinsawicki/HttpRequest;
    .registers 2

    const-string/jumbo v0, "gzip"

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->acceptEncoding(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public acceptJson()Lcom/github/kevinsawicki/HttpRequest;
    .registers 2

    const-string/jumbo v0, "application/json"

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->accept(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public authorization(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3

    const-string/jumbo v0, "Authorization"

    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public badRequest()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/16 v0, 0x190

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public basic(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Basic "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/kevinsawicki/HttpRequest$Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->authorization(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public body()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->body(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public body(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->byteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    :try_start_4
    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/github/kevinsawicki/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/HttpRequest;

    invoke-static {p1}, Lcom/github/kevinsawicki/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_12} :catch_14

    move-result-object v2

    return-object v2

    :catch_14
    move-exception v0

    new-instance v2, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public buffer()Ljava/io/BufferedInputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->stream()Ljava/io/InputStream;

    move-result-object v1

    iget v2, p0, Lcom/github/kevinsawicki/HttpRequest;->bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method public bufferSize()I
    .registers 2

    iget v0, p0, Lcom/github/kevinsawicki/HttpRequest;->bufferSize:I

    return v0
.end method

.method public bufferSize(I)Lcom/github/kevinsawicki/HttpRequest;
    .registers 4

    const/4 v0, 0x1

    if-ge p1, v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Size must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iput p1, p0, Lcom/github/kevinsawicki/HttpRequest;->bufferSize:I

    return-object p0
.end method

.method public bufferedReader()Ljava/io/BufferedReader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->bufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public bufferedReader(Ljava/lang/String;)Ljava/io/BufferedReader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedReader;

    invoke-virtual {p0, p1}, Lcom/github/kevinsawicki/HttpRequest;->reader(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v1

    iget v2, p0, Lcom/github/kevinsawicki/HttpRequest;->bufferSize:I

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    return-object v0
.end method

.method protected byteStream()Ljava/io/ByteArrayOutputStream;
    .registers 3

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->contentLength()I

    move-result v0

    if-lez v0, :cond_c

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :goto_b
    return-object v1

    :cond_c
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    goto :goto_b
.end method

.method public bytes()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->byteStream()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    :try_start_4
    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/github/kevinsawicki/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/HttpRequest;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_10

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    :catch_10
    move-exception v0

    new-instance v2, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public cacheControl()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Cache-Control"

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public charset()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "Content-Type"

    const-string/jumbo v1, "charset"

    invoke-virtual {p0, v0, v1}, Lcom/github/kevinsawicki/HttpRequest;->parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chunk(I)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    return-object p0
.end method

.method protected closeOutput()Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    if-nez v0, :cond_5

    :goto_4
    return-object p0

    :cond_5
    iget-boolean v0, p0, Lcom/github/kevinsawicki/HttpRequest;->multipart:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    const-string/jumbo v1, "\r\n--00content0boundary00--\r\n"

    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    :cond_11
    iget-boolean v0, p0, Lcom/github/kevinsawicki/HttpRequest;->ignoreCloseExceptions:Z

    if-eqz v0, :cond_1e

    :try_start_15
    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    invoke-virtual {v0}, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1a} :catch_24

    :goto_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    goto :goto_4

    :cond_1e
    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    invoke-virtual {v0}, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->close()V

    goto :goto_1a

    :catch_24
    move-exception v0

    goto :goto_1a
.end method

.method protected closeOutputQuietly()Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->closeOutput()Lcom/github/kevinsawicki/HttpRequest;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    new-instance v1, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public code()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->closeOutput()Lcom/github/kevinsawicki/HttpRequest;

    iget-object v1, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_a

    move-result v1

    return v1

    :catch_a
    move-exception v0

    new-instance v1, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public code(Ljava/util/concurrent/atomic/AtomicInteger;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->code()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-object p0
.end method

.method public connectTimeout(I)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-object p0
.end method

.method public contentEncoding()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()I
    .registers 2

    const-string/jumbo v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->intHeader(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public contentLength(I)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    return-object p0
.end method

.method public contentLength(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->contentLength(I)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public contentType(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/github/kevinsawicki/HttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 7

    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2b

    const-string/jumbo v0, "; charset="

    const-string/jumbo v1, "Content-Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "; charset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v1

    :goto_2a
    return-object v1

    :cond_2b
    const-string/jumbo v1, "Content-Type"

    invoke-virtual {p0, v1, p1}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v1

    goto :goto_2a
.end method

.method public contentType()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Content-Type"

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest$8;

    iget-boolean v3, p0, Lcom/github/kevinsawicki/HttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/github/kevinsawicki/HttpRequest$8;-><init>(Lcom/github/kevinsawicki/HttpRequest;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lcom/github/kevinsawicki/HttpRequest$8;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/kevinsawicki/HttpRequest;

    return-object v0
.end method

.method protected copy(Ljava/io/Reader;Ljava/io/Writer;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest$9;

    iget-boolean v3, p0, Lcom/github/kevinsawicki/HttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/github/kevinsawicki/HttpRequest$9;-><init>(Lcom/github/kevinsawicki/HttpRequest;Ljava/io/Closeable;ZLjava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/github/kevinsawicki/HttpRequest$9;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/kevinsawicki/HttpRequest;

    return-object v0
.end method

.method public created()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/16 v0, 0xc9

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public date()J
    .registers 3

    const-string/jumbo v0, "Date"

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public dateHeader(Ljava/lang/String;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/kevinsawicki/HttpRequest;->dateHeader(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public dateHeader(Ljava/lang/String;J)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->closeOutputQuietly()Lcom/github/kevinsawicki/HttpRequest;

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public disconnect()Lcom/github/kevinsawicki/HttpRequest;
    .registers 2

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p0
.end method

.method public eTag()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ETag"

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public expires()J
    .registers 3

    const-string/jumbo v0, "Expires"

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public form(Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/kevinsawicki/HttpRequest;->form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/github/kevinsawicki/HttpRequest;->form:Z

    if-eqz v3, :cond_44

    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_10

    const-string/jumbo v3, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v3, p3}, Lcom/github/kevinsawicki/HttpRequest;->contentType(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    iput-boolean v2, p0, Lcom/github/kevinsawicki/HttpRequest;->form:Z

    :cond_10
    invoke-static {p3}, Lcom/github/kevinsawicki/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :try_start_14
    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->openOutput()Lcom/github/kevinsawicki/HttpRequest;

    if-nez v1, :cond_20

    iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->write(I)V

    :cond_20
    iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->write(I)V

    if-eqz p2, :cond_43

    iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_43} :catch_46

    :cond_43
    return-object p0

    :cond_44
    move v1, v2

    goto :goto_6

    :catch_46
    move-exception v0

    new-instance v2, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public form(Ljava/util/Map$Entry;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/github/kevinsawicki/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/github/kevinsawicki/HttpRequest;->form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/kevinsawicki/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_16

    :goto_15
    return-object v3

    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "[]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p2}, Lcom/github/kevinsawicki/HttpRequest;->form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_35} :catch_39

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p2}, Lcom/github/kevinsawicki/HttpRequest;->form(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v3

    goto :goto_15
.end method

.method public form(Ljava/util/Map;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Lcom/github/kevinsawicki/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, p1, v0}, Lcom/github/kevinsawicki/HttpRequest;->form(Ljava/util/Map;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public form(Ljava/util/Map;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/github/kevinsawicki/HttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    return-object p0

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0, p2}, Lcom/github/kevinsawicki/HttpRequest;->form(Ljava/util/Map$Entry;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    goto :goto_e
.end method

.method public getConnection()Ljava/net/HttpURLConnection;
    .registers 2

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method protected getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const/16 v10, 0x22

    const/4 v6, 0x0

    const/16 v9, 0x3b

    const/4 v8, -0x1

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_10

    :cond_e
    move-object v3, v6

    :cond_f
    :goto_f
    return-object v3

    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    add-int/lit8 v4, v7, 0x1

    if-eqz v4, :cond_1e

    if-ne v4, v1, :cond_20

    :cond_1e
    move-object v3, v6

    goto :goto_f

    :cond_20
    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v8, :cond_27

    move v0, v1

    :cond_27
    :goto_27
    if-lt v4, v0, :cond_2b

    move-object v3, v6

    goto :goto_f

    :cond_2b
    const/16 v7, 0x3d

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v8, :cond_6d

    if-ge v2, v0, :cond_6d

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6d

    const/4 v6, 0x2

    if-le v5, v6, :cond_f

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v10, v6, :cond_f

    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v10, v6, :cond_f

    const/4 v6, 0x1

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_f

    :cond_6d
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v8, :cond_27

    move v0, v1

    goto :goto_27
.end method

.method protected getParams(Ljava/lang/String;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v12, 0x22

    const/16 v11, 0x3b

    const/4 v10, -0x1

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_12

    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    :cond_11
    :goto_11
    return-object v5

    :cond_12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    if-eqz v6, :cond_20

    if-ne v6, v1, :cond_25

    :cond_20
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    goto :goto_11

    :cond_25
    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v10, :cond_2c

    move v0, v1

    :cond_2c
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_31
    :goto_31
    if-ge v6, v0, :cond_11

    const/16 v8, 0x3d

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v10, :cond_77

    if-ge v4, v0, :cond_77

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_77

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p1, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_77

    const/4 v8, 0x2

    if-le v2, v8, :cond_81

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v12, v8, :cond_81

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v12, v8, :cond_81

    const/4 v8, 0x1

    add-int/lit8 v9, v2, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    :goto_77
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v11, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v10, :cond_31

    move v0, v1

    goto :goto_31

    :cond_81
    invoke-interface {v5, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_77
.end method

.method public header(Ljava/lang/String;Ljava/lang/Number;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 4

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, p1, v0}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 4

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public header(Ljava/util/Map$Entry;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/github/kevinsawicki/HttpRequest;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->closeOutputQuietly()Lcom/github/kevinsawicki/HttpRequest;

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/util/Map;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/github/kevinsawicki/HttpRequest;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_15

    :cond_14
    return-object p0

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/util/Map$Entry;)Lcom/github/kevinsawicki/HttpRequest;

    goto :goto_e
.end method

.method public headers()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->closeOutputQuietly()Lcom/github/kevinsawicki/HttpRequest;

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->headers()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_c
    sget-object v2, Lcom/github/kevinsawicki/HttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    :goto_e
    return-object v2

    :cond_f
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2a

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_e

    :cond_2a
    sget-object v2, Lcom/github/kevinsawicki/HttpRequest;->EMPTY_STRINGS:[Ljava/lang/String;

    goto :goto_e
.end method

.method public ifModifiedSince(J)Lcom/github/kevinsawicki/HttpRequest;
    .registers 4

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setIfModifiedSince(J)V

    return-object p0
.end method

.method public ifNoneMatch(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3

    const-string/jumbo v0, "If-None-Match"

    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public ignoreCloseExceptions(Z)Lcom/github/kevinsawicki/HttpRequest;
    .registers 2

    iput-boolean p1, p0, Lcom/github/kevinsawicki/HttpRequest;->ignoreCloseExceptions:Z

    return-object p0
.end method

.method public ignoreCloseExceptions()Z
    .registers 2

    iget-boolean v0, p0, Lcom/github/kevinsawicki/HttpRequest;->ignoreCloseExceptions:Z

    return v0
.end method

.method public intHeader(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/github/kevinsawicki/HttpRequest;->intHeader(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public intHeader(Ljava/lang/String;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->closeOutputQuietly()Lcom/github/kevinsawicki/HttpRequest;

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isBodyEmpty()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->contentLength()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public lastModified()J
    .registers 3

    const-string/jumbo v0, "Last-Modified"

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->dateHeader(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public location()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Location"

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public message()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->closeOutput()Lcom/github/kevinsawicki/HttpRequest;

    iget-object v1, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    return-object v1

    :catch_a
    move-exception v0

    new-instance v1, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public method()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notFound()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/16 v0, 0x194

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public notModified()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/16 v0, 0x130

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public ok()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/16 v0, 0xc8

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected openOutput()Lcom/github/kevinsawicki/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    if-eqz v1, :cond_5

    :goto_4
    return-object p0

    :cond_5
    iget-object v1, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v1, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "charset"

    invoke-virtual {p0, v1, v2}, Lcom/github/kevinsawicki/HttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget v3, p0, Lcom/github/kevinsawicki/HttpRequest;->bufferSize:I

    invoke-direct {v1, v2, v0, v3}, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    goto :goto_4
.end method

.method public parameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/github/kevinsawicki/HttpRequest;->getParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public parameters(Ljava/lang/String;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/io/File;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/github/kevinsawicki/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/io/InputStream;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/github/kevinsawicki/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/Number;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/github/kevinsawicki/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/github/kevinsawicki/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/github/kevinsawicki/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Number;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/github/kevinsawicki/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/github/kevinsawicki/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_f

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/github/kevinsawicki/HttpRequest;->part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v2

    return-object v2

    :catch_f
    move-exception v0

    new-instance v2, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->startPart()Lcom/github/kevinsawicki/HttpRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/github/kevinsawicki/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    iget-object v1, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    invoke-virtual {p0, p4, v1}, Lcom/github/kevinsawicki/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/HttpRequest;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception v0

    new-instance v1, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public part(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->startPart()Lcom/github/kevinsawicki/HttpRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/github/kevinsawicki/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    iget-object v1, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    invoke-virtual {v1, p4}, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception v0

    new-instance v1, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/kevinsawicki/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/kevinsawicki/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public readTimeout(I)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-object p0
.end method

.method public reader()Ljava/io/InputStreamReader;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->charset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->reader(Ljava/lang/String;)Ljava/io/InputStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Ljava/lang/String;)Ljava/io/InputStreamReader;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->stream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {p1}, Lcom/github/kevinsawicki/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    :catch_e
    move-exception v0

    new-instance v1, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public receive(Ljava/io/File;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget v3, p0, Lcom/github/kevinsawicki/HttpRequest;->bufferSize:I

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_c} :catch_1a

    new-instance v2, Lcom/github/kevinsawicki/HttpRequest$5;

    iget-boolean v3, p0, Lcom/github/kevinsawicki/HttpRequest;->ignoreCloseExceptions:Z

    invoke-direct {v2, p0, v1, v3, v1}, Lcom/github/kevinsawicki/HttpRequest$5;-><init>(Lcom/github/kevinsawicki/HttpRequest;Ljava/io/Closeable;ZLjava/io/OutputStream;)V

    invoke-virtual {v2}, Lcom/github/kevinsawicki/HttpRequest$5;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/kevinsawicki/HttpRequest;

    return-object v2

    :catch_1a
    move-exception v0

    new-instance v2, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public receive(Ljava/io/OutputStream;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->buffer()Ljava/io/BufferedInputStream;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/github/kevinsawicki/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/HttpRequest;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    new-instance v1, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public receive(Ljava/io/PrintStream;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/kevinsawicki/HttpRequest;->receive(Ljava/io/OutputStream;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public receive(Ljava/io/Writer;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->bufferedReader()Ljava/io/BufferedReader;

    move-result-object v2

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest$7;

    iget-boolean v3, p0, Lcom/github/kevinsawicki/HttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/github/kevinsawicki/HttpRequest$7;-><init>(Lcom/github/kevinsawicki/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V

    invoke-virtual {v0}, Lcom/github/kevinsawicki/HttpRequest$7;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/kevinsawicki/HttpRequest;

    return-object v0
.end method

.method public receive(Ljava/lang/Appendable;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->bufferedReader()Ljava/io/BufferedReader;

    move-result-object v2

    new-instance v0, Lcom/github/kevinsawicki/HttpRequest$6;

    iget-boolean v3, p0, Lcom/github/kevinsawicki/HttpRequest;->ignoreCloseExceptions:Z

    move-object v1, p0

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/github/kevinsawicki/HttpRequest$6;-><init>(Lcom/github/kevinsawicki/HttpRequest;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Lcom/github/kevinsawicki/HttpRequest$6;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/kevinsawicki/HttpRequest;

    return-object v0
.end method

.method public send(Ljava/io/File;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_f

    invoke-virtual {p0, v1}, Lcom/github/kevinsawicki/HttpRequest;->send(Ljava/io/InputStream;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v2

    return-object v2

    :catch_f
    move-exception v0

    new-instance v2, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public send(Ljava/io/InputStream;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->openOutput()Lcom/github/kevinsawicki/HttpRequest;

    iget-object v1, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    invoke-virtual {p0, p1, v1}, Lcom/github/kevinsawicki/HttpRequest;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)Lcom/github/kevinsawicki/HttpRequest;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception v0

    new-instance v1, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public send(Ljava/io/Reader;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->openOutput()Lcom/github/kevinsawicki/HttpRequest;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_20

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    iget-object v3, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    #getter for: Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->encoder:Ljava/nio/charset/CharsetEncoder;
    invoke-static {v3}, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->access$0(Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    new-instance v2, Lcom/github/kevinsawicki/HttpRequest$10;

    invoke-direct {v2, p0, v1, p1, v1}, Lcom/github/kevinsawicki/HttpRequest$10;-><init>(Lcom/github/kevinsawicki/HttpRequest;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V

    invoke-virtual {v2}, Lcom/github/kevinsawicki/HttpRequest$10;->call()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/kevinsawicki/HttpRequest;

    return-object v2

    :catch_20
    move-exception v0

    new-instance v2, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->openOutput()Lcom/github/kevinsawicki/HttpRequest;

    iget-object v1, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception v0

    new-instance v1, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public send([B)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->send(Ljava/io/InputStream;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method public server()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Server"

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serverError()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    const/16 v0, 0x1f4

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->code()I

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected startPart()Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/github/kevinsawicki/HttpRequest;->multipart:Z

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/kevinsawicki/HttpRequest;->multipart:Z

    const-string/jumbo v0, "multipart/form-data; boundary=00content0boundary00"

    invoke-virtual {p0, v0}, Lcom/github/kevinsawicki/HttpRequest;->contentType(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/kevinsawicki/HttpRequest;->openOutput()Lcom/github/kevinsawicki/HttpRequest;

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    const-string/jumbo v1, "--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    :goto_19
    return-object p0

    :cond_1a
    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    const-string/jumbo v1, "\r\n--00content0boundary00\r\n"

    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->write(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    goto :goto_19
.end method

.method public stream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->code()I

    move-result v2

    const/16 v3, 0x190

    if-ge v2, v3, :cond_27

    :try_start_8
    iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_20

    move-result-object v1

    :cond_e
    :goto_e
    iget-boolean v2, p0, Lcom/github/kevinsawicki/HttpRequest;->uncompress:Z

    if-eqz v2, :cond_1f

    const-string/jumbo v2, "gzip"

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->contentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    :cond_1f
    :goto_1f
    return-object v1

    :catch_20
    move-exception v0

    new-instance v2, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    :cond_27
    iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    if-nez v1, :cond_e

    :try_start_2f
    iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_36

    move-result-object v1

    goto :goto_e

    :catch_36
    move-exception v0

    new-instance v2, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2

    :cond_3d
    :try_start_3d
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_42} :catch_44

    move-object v1, v2

    goto :goto_1f

    :catch_44
    move-exception v0

    new-instance v2, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v2, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->url()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trustAllCerts()Lcom/github/kevinsawicki/HttpRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lcom/github/kevinsawicki/HttpRequest;->getTrustedFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_11
    return-object p0
.end method

.method public trustAllHosts()Lcom/github/kevinsawicki/HttpRequest;
    .registers 3

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    instance-of v0, v0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lcom/github/kevinsawicki/HttpRequest;->getTrustedVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_11
    return-object p0
.end method

.method public uncompress(Z)Lcom/github/kevinsawicki/HttpRequest;
    .registers 2

    iput-boolean p1, p0, Lcom/github/kevinsawicki/HttpRequest;->uncompress:Z

    return-object p0
.end method

.method public url()Ljava/net/URL;
    .registers 2

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public useCaches(Z)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return-object p0
.end method

.method public userAgent(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 3

    const-string/jumbo v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lcom/github/kevinsawicki/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/github/kevinsawicki/HttpRequest;->writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method protected writePartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1b

    const-string/jumbo v1, "\"; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Content-Disposition"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/github/kevinsawicki/HttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    if-eqz p3, :cond_32

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {p0, v1, p3}, Lcom/github/kevinsawicki/HttpRequest;->partHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest;

    :cond_32
    const-string/jumbo v1, "\r\n"

    invoke-virtual {p0, v1}, Lcom/github/kevinsawicki/HttpRequest;->send(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/HttpRequest;

    move-result-object v1

    return-object v1
.end method

.method public writer()Ljava/io/OutputStreamWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest;->openOutput()Lcom/github/kevinsawicki/HttpRequest;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    iget-object v3, p0, Lcom/github/kevinsawicki/HttpRequest;->output:Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;

    #getter for: Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->encoder:Ljava/nio/charset/CharsetEncoder;
    invoke-static {v3}, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->access$0(Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/CharsetEncoder;->charset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v1

    :catch_15
    move-exception v0

    new-instance v1, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;

    invoke-direct {v1, v0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method
