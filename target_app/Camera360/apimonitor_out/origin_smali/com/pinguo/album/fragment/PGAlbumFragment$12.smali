.class Lcom/pinguo/album/fragment/PGAlbumFragment$12;
.super Ljava/lang/Object;
.source "PGAlbumFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/fragment/PGAlbumFragment;->callCloudUpload(J)V
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

    iput-object p1, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$12;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$12;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;

    invoke-virtual {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGAlbumFragment$12;->this$0:Lcom/pinguo/album/fragment/PGAlbumFragment;

    invoke-virtual {v0}, Lcom/pinguo/album/fragment/PGAlbumFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/cloud/CloudServiceManager;->startCloudUpload(Landroid/content/Context;)V

    :cond_11
    return-void
.end method
