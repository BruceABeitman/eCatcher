.class Lcom/pinguo/camera360/video/PGVideoFragment$3;
.super Ljava/lang/Object;
.source "PGVideoFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/video/PGVideoFragment;->getThumbnail(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

.field private final synthetic val$relateVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/video/PGVideoFragment;Lcom/pinguo/camera360/video/VideoInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$3;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    iput-object p2, p0, Lcom/pinguo/camera360/video/PGVideoFragment$3;->val$relateVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailCreateInAsyncThread(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment$3;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    iget-object v0, v0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment$3;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    iget-object v0, v0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$3;->val$relateVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/video/VideoModel;->storeVideoFirstFrame(Lcom/pinguo/camera360/video/VideoInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public onThumbnailCreateInUIThread()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment$3;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    const/4 v1, 0x1

    #calls: Lcom/pinguo/camera360/video/PGVideoFragment;->updateThumbnailButton(Z)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/video/PGVideoFragment;->access$6(Lcom/pinguo/camera360/video/PGVideoFragment;Z)V

    return-void
.end method
