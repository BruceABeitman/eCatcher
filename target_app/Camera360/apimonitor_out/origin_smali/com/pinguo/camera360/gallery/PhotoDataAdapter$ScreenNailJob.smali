.class Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailJob;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pinguo/camera360/gallery/util/ThreadPool$Job",
        "<",
        "Lcom/pinguo/camera360/gallery/ui/ScreenNail;",
        ">;"
    }
.end annotation


# instance fields
.field private mItem:Lcom/pinguo/camera360/gallery/data/MediaItem;

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/data/MediaItem;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pinguo/camera360/gallery/data/MediaItem;

    return-void
.end method


# virtual methods
.method public run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Lcom/pinguo/camera360/gallery/ui/ScreenNail;
    .registers 8

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pinguo/camera360/gallery/data/MediaItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getScreenNail()Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    move-result-object v1

    if-eqz v1, :cond_c

    move-object v2, v1

    :cond_b
    :goto_b
    return-object v2

    :cond_c
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pinguo/camera360/gallery/data/MediaItem;

    #calls: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->isTemporaryItem(Lcom/pinguo/camera360/gallery/data/MediaItem;)Z
    invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$0(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/data/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailJob;->this$0:Lcom/pinguo/camera360/gallery/PhotoDataAdapter;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pinguo/camera360/gallery/data/MediaItem;

    #calls: Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/pinguo/camera360/gallery/data/MediaItem;)Lcom/pinguo/camera360/gallery/ui/ScreenNail;
    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter;->access$1(Lcom/pinguo/camera360/gallery/PhotoDataAdapter;Lcom/pinguo/camera360/gallery/data/MediaItem;)Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    move-result-object v2

    goto :goto_b

    :cond_1f
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pinguo/camera360/gallery/data/MediaItem;

    invoke-virtual {v3, v5}, Lcom/pinguo/camera360/gallery/data/MediaItem;->requestImage(I)Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;->run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_b

    if-eqz v0, :cond_44

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pinguo/camera360/gallery/data/MediaItem;

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getRotation()I

    move-result v3

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailJob;->mItem:Lcom/pinguo/camera360/gallery/data/MediaItem;

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getFullImageRotation()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v0, v3, v5}, Lcom/pinguo/camera360/gallery/util/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_44
    if-eqz v0, :cond_b

    new-instance v2, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;

    invoke-direct {v2, v0}, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_b
.end method

.method public bridge synthetic run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/PhotoDataAdapter$ScreenNailJob;->run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Lcom/pinguo/camera360/gallery/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method
