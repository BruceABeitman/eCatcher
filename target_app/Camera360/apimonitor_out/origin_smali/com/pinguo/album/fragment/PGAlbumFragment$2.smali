.class Lcom/pinguo/album/fragment/PGAlbumFragment$2;
.super Ljava/lang/Object;
.source "PGAlbumFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/fragment/PGAlbumFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/album/fragment/PGAlbumFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/album/fragment/PGAlbumFragment$2;)Lcom/pinguo/album/fragment/PGAlbumFragment;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;

    return-object v0
.end method


# virtual methods
.method public onStatusChanged(ILjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mHeadUploadStatusView:Lcom/pinguo/album/surpport/GLTextView;
    invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$1(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/surpport/GLTextView;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
    invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$2(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/SynchronizedHandler;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$2;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;

    #getter for: Lcom/pinguo/album/fragment/PGAlbumFragment;->mHandler:Lcom/pinguo/album/SynchronizedHandler;
    invoke-static {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->access$2(Lcom/pinguo/album/fragment/PGAlbumFragment;)Lcom/pinguo/album/SynchronizedHandler;

    move-result-object v0

    new-instance v1, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/pinguo/album/fragment/PGAlbumFragment$2$1;-><init>(Lcom/pinguo/album/fragment/PGAlbumFragment$2;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/album/SynchronizedHandler;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    return-void
.end method
