.class public Lcom/pinguo/Camera360Lib/network/DummyRequestQueue;
.super Lcom/android/volley/RequestQueue;
.source "DummyRequestQueue.java"


# direct methods
.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILcom/android/volley/ResponseDelivery;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;ILcom/android/volley/ResponseDelivery;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/volley/Request",
            "<TT;>;)",
            "Lcom/android/volley/Request",
            "<TT;>;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v1

    new-instance v0, Lcom/android/volley/toolbox/StringRequest;

    const-string/jumbo v2, "http://127.0.0.1"

    invoke-direct {v0, v2, v3, v3}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    invoke-virtual {p1}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/volley/toolbox/StringRequest;->setShouldCache(Z)Lcom/android/volley/Request;

    invoke-super {p0, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-object v1
.end method
