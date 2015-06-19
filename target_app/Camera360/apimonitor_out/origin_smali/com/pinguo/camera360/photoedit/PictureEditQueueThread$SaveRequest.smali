.class Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;
.super Ljava/lang/Object;
.source "PictureEditQueueThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveRequest"
.end annotation


# instance fields
.field private callback:Lcom/pinguo/camera360/photoedit/callback/EffectCallback;

.field private data:[B

.field private pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;[B)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->data:[B

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;Lcom/pinguo/camera360/photoedit/callback/EffectCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->callback:Lcom/pinguo/camera360/photoedit/callback/EffectCallback;

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;Lcom/pinguo/camera360/photoedit/PictureInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;)Lcom/pinguo/camera360/photoedit/PictureInfo;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;)[B
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->data:[B

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;)Lcom/pinguo/camera360/photoedit/callback/EffectCallback;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread$SaveRequest;->callback:Lcom/pinguo/camera360/photoedit/callback/EffectCallback;

    return-object v0
.end method
