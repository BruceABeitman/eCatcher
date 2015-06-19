.class public Lcom/pinguo/Camera360Lib/network/HttpRequestQueue;
.super Ljava/lang/Object;
.source "HttpRequestQueue.java"


# static fields
.field private static mRequestQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/volley/RequestQueue;
    .registers 1

    sget-object v0, Lcom/pinguo/Camera360Lib/network/HttpRequestQueue;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public static setInstance(Lcom/android/volley/RequestQueue;)V
    .registers 1

    sput-object p0, Lcom/pinguo/Camera360Lib/network/HttpRequestQueue;->mRequestQueue:Lcom/android/volley/RequestQueue;

    return-void
.end method
