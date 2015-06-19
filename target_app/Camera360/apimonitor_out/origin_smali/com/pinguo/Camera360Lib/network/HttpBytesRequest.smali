.class public abstract Lcom/pinguo/Camera360Lib/network/HttpBytesRequest;
.super Lcom/pinguo/Camera360Lib/network/HttpRequestBase;
.source "HttpBytesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/Camera360Lib/network/HttpRequestBase",
        "<[B>;"
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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<[B>;"
        }
    .end annotation

    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0
.end method
