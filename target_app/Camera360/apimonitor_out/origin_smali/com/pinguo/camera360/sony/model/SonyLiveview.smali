.class public Lcom/pinguo/camera360/sony/model/SonyLiveview;
.super Ljava/lang/Object;
.source "SonyLiveview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/sony/model/SonyLiveview$LiveviewCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDrawerThread:Ljava/lang/Thread;

.field private final mInMutableAvailable:Z

.field private final mJpegQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private mLiveviewCallback:Lcom/pinguo/camera360/sony/model/SonyLiveview$LiveviewCallback;

.field private mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

.field private mWhileFetching:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/sony/model/SonyLiveview;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/sony/model/SonyRemoteApi;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mJpegQueue:Ljava/util/concurrent/BlockingQueue;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_17

    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mInMutableAvailable:Z

    iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Lcom/pinguo/camera360/sony/model/SonyRemoteApi;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/sony/model/SonyLiveview;Landroid/graphics/BitmapFactory$Options;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->clearInBitmap(Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/sony/model/SonyLiveview;Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->setInBitmap(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/lang/Thread;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mDrawerThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Ljava/util/concurrent/BlockingQueue;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mJpegQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/sony/model/SonyLiveview;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mWhileFetching:Z

    return-void
.end method

.method static synthetic access$5(Lorg/json/JSONObject;)Z
    .registers 2

    invoke-static {p0}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->isErrorReply(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mWhileFetching:Z

    return v0
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/sony/model/SonyLiveview;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->fireLiveviewError()V

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/sony/model/SonyLiveview;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mInMutableAvailable:Z

    return v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/sony/model/SonyLiveview;Landroid/graphics/BitmapFactory$Options;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/model/SonyLiveview;->initInBitmap(Landroid/graphics/BitmapFactory$Options;)V

    return-void
.end method

.method private clearInBitmap(Landroid/graphics/BitmapFactory$Options;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    iget-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    :cond_c
    return-void
.end method

.method private fireLiveviewError()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mLiveviewCallback:Lcom/pinguo/camera360/sony/model/SonyLiveview$LiveviewCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mLiveviewCallback:Lcom/pinguo/camera360/sony/model/SonyLiveview$LiveviewCallback;

    invoke-interface {v0}, Lcom/pinguo/camera360/sony/model/SonyLiveview$LiveviewCallback;->onLiveviewError()V

    :cond_9
    return-void
.end method

.method private initInBitmap(Landroid/graphics/BitmapFactory$Options;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    return-void
.end method

.method private static isErrorReply(Lorg/json/JSONObject;)Z
    .registers 3

    if-eqz p0, :cond_d

    const-string/jumbo v1, "error"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private setInBitmap(Landroid/graphics/BitmapFactory$Options;Landroid/graphics/Bitmap;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iput-object p2, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public fireLiveviewCallback(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mLiveviewCallback:Lcom/pinguo/camera360/sony/model/SonyLiveview$LiveviewCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mLiveviewCallback:Lcom/pinguo/camera360/sony/model/SonyLiveview$LiveviewCallback;

    invoke-interface {v0, p1}, Lcom/pinguo/camera360/sony/model/SonyLiveview$LiveviewCallback;->onLiveviewFrame(Landroid/graphics/Bitmap;)V

    :cond_9
    return-void
.end method

.method public isStarted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mWhileFetching:Z

    return v0
.end method

.method public setLiveviewCallback(Lcom/pinguo/camera360/sony/model/SonyLiveview$LiveviewCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mLiveviewCallback:Lcom/pinguo/camera360/sony/model/SonyLiveview$LiveviewCallback;

    return-void
.end method

.method public startLiveview()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mRemoteApi:Lcom/pinguo/camera360/sony/model/SonyRemoteApi;

    if-nez v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RemoteApi is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-boolean v1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mWhileFetching:Z

    if-eqz v1, :cond_1c

    sget-object v0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start() already starting."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1b
    return v0

    :cond_1c
    iput-boolean v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mWhileFetching:Z

    new-instance v1, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;-><init>(Lcom/pinguo/camera360/sony/model/SonyLiveview;)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/sony/model/SonyLiveview$1;->start()V

    new-instance v1, Lcom/pinguo/camera360/sony/model/SonyLiveview$2;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/sony/model/SonyLiveview$2;-><init>(Lcom/pinguo/camera360/sony/model/SonyLiveview;)V

    iput-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mDrawerThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mDrawerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1b
.end method

.method public stopLiveview()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/sony/model/SonyLiveview;->mWhileFetching:Z

    return-void
.end method
