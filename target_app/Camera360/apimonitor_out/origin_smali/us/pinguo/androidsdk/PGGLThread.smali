.class public Lus/pinguo/androidsdk/PGGLThread;
.super Ljava/lang/Object;
.source "PGGLThread.java"


# instance fields
.field private imageSDK:Lus/pinguo/androidsdk/PGImageSDK;

.field private mAction:Ljava/lang/Runnable;

.field private volatile mRunningFlag:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;

    new-instance v0, Lus/pinguo/androidsdk/PGGLThread$1;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/PGGLThread$1;-><init>(Lus/pinguo/androidsdk/PGGLThread;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/PGGLThread;->mAction:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$0(Lus/pinguo/androidsdk/PGGLThread;)Lus/pinguo/androidsdk/PGImageSDK;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;

    return-object v0
.end method

.method static synthetic access$1(Lus/pinguo/androidsdk/PGGLThread;Z)V
    .registers 2

    iput-boolean p1, p0, Lus/pinguo/androidsdk/PGGLThread;->mRunningFlag:Z

    return-void
.end method


# virtual methods
.method public isBusyRunning()Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/PGGLThread;->mRunningFlag:Z

    return v0
.end method

.method public run()V
    .registers 3

    invoke-static {}, Lus/pinguo/androidsdk/PGThreadPool;->getInstance()Lus/pinguo/androidsdk/PGThreadPool;

    move-result-object v0

    iget-object v1, p0, Lus/pinguo/androidsdk/PGGLThread;->mAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/PGThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setImageSDK(Lus/pinguo/androidsdk/PGImageSDK;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/PGGLThread;->imageSDK:Lus/pinguo/androidsdk/PGImageSDK;

    return-void
.end method
