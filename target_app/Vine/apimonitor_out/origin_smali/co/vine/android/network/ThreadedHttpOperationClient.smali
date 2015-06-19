.class public Lco/vine/android/network/ThreadedHttpOperationClient;
.super Lco/vine/android/network/HttpOperationClient;
.source "ThreadedHttpOperationClient.java"


# static fields
.field private static sInstance:Lco/vine/android/network/ThreadedHttpOperationClient;


# instance fields
.field private mConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private final mContext:Landroid/content/Context;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lco/vine/android/network/ThreadedHttpOperationClient;->sInstance:Lco/vine/android/network/ThreadedHttpOperationClient;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lco/vine/android/network/HttpOperationClient;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lco/vine/android/network/ThreadedHttpOperationClient;->initialize()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
    .registers 4

    const-class v1, Lco/vine/android/network/ThreadedHttpOperationClient;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lco/vine/android/network/ThreadedHttpOperationClient;->sInstance:Lco/vine/android/network/ThreadedHttpOperationClient;

    if-nez v0, :cond_12

    new-instance v0, Lco/vine/android/network/ThreadedHttpOperationClient;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lco/vine/android/network/ThreadedHttpOperationClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/vine/android/network/ThreadedHttpOperationClient;->sInstance:Lco/vine/android/network/ThreadedHttpOperationClient;

    :cond_12
    sget-object v0, Lco/vine/android/network/ThreadedHttpOperationClient;->sInstance:Lco/vine/android/network/ThreadedHttpOperationClient;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initialize()V
    .registers 5

    invoke-virtual {p0}, Lco/vine/android/network/ThreadedHttpOperationClient;->initializeHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    iget-object v2, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lco/vine/android/network/ThreadedHttpOperationClient;->initializeSchemeRegistry(Landroid/content/Context;)Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lco/vine/android/network/ThreadedHttpOperationClient;->initializeConnectionManager(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    iget-object v2, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-virtual {p0, v2, v3, v0}, Lco/vine/android/network/ThreadedHttpOperationClient;->initializeHttpClient(Landroid/content/Context;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    return-void
.end method

.method private initializeConnectionManager(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionManager;
    .registers 4

    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method


# virtual methods
.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 2

    iget-object v0, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mHttpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public restart()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    invoke-direct {p0}, Lco/vine/android/network/ThreadedHttpOperationClient;->initialize()V

    return-void
.end method

.method public shutdown()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/network/ThreadedHttpOperationClient;->mConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-void
.end method
