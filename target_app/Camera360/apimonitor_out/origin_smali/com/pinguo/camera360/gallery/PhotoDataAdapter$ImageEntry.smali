.class Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEntry"
.end annotation


# instance fields
.field public failToLoad:Z

.field public fullImage:Landroid/graphics/BitmapRegionDecoder;

.field public fullImageTask:Lcom/pinguo/camera360/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/camera360/gallery/util/Future",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field public requestedFullImage:J

.field public requestedScreenNail:J

.field public screenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;

.field public screenNailTask:Lcom/pinguo/camera360/gallery/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/camera360/gallery/util/Future",
            "<",
            "Lcom/pinguo/camera360/gallery/ui/ScreenNail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->requestedScreenNail:J

    iput-wide v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->requestedFullImage:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;->failToLoad:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ImageEntry;-><init>()V

    return-void
.end method
