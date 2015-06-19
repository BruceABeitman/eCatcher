.class public abstract Lcom/pinguo/Camera360Lib/network/HttpRequestBase;
.super Lcom/android/volley/Request;
.source "HttpRequestBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/volley/Request",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x3a98

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/pinguo/Camera360Lib/network/HttpRequestBase;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v3, p1, v0}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x3a98

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v3, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/pinguo/Camera360Lib/network/HttpRequestBase;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    return-void
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/pinguo/Camera360Lib/network/HttpRequestBase;->onErrorResponse(Ljava/lang/Exception;)V

    return-void
.end method

.method protected deliverResponse(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/pinguo/Camera360Lib/network/HttpRequestBase;->onResponse(Ljava/lang/Object;)V

    return-void
.end method

.method public execute()V
    .registers 2

    invoke-static {}, Lcom/pinguo/Camera360Lib/network/HttpRequestQueue;->getInstance()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method

.method protected abstract onErrorResponse(Ljava/lang/Exception;)V
.end method

.method protected abstract onResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
