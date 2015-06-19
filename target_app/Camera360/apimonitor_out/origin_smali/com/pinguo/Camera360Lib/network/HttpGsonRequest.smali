.class public abstract Lcom/pinguo/Camera360Lib/network/HttpGsonRequest;
.super Lcom/pinguo/Camera360Lib/network/HttpRequestBase;
.source "HttpGsonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/pinguo/Camera360Lib/network/HttpRequestBase",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/Camera360Lib/network/HttpRequestBase;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/Camera360Lib/network/HttpRequestBase;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    :try_start_0
    new-instance v3, Ljava/lang/String;

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->data:[B

    iget-object v6, p1, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v6}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_46

    :goto_d
    const-string/jumbo v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "111111111 response:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v1, v5, v6

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    :try_start_39
    invoke-virtual {v2, v3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_44
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_39 .. :try_end_44} :catch_4f

    move-result-object v5

    :goto_45
    return-object v5

    :catch_46
    move-exception v0

    new-instance v3, Ljava/lang/String;

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    goto :goto_d

    :catch_4f
    move-exception v0

    new-instance v5, Lcom/android/volley/VolleyError;

    invoke-direct {v5, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v5}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v5

    goto :goto_45
.end method
