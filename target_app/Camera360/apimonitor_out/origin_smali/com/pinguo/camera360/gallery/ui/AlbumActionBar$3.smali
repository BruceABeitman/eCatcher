.class Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$3;
.super Ljava/lang/Object;
.source "AlbumActionBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->handleHideAlbumsetAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$3;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$3;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$12(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ActivityState;

    move-result-object v1

    instance-of v1, v1, Lcom/pinguo/camera360/gallery/AlbumSetPage;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$3;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivityState:Lcom/pinguo/camera360/gallery/ActivityState;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$12(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ActivityState;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/AlbumSetPage;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/AlbumSetPage;->hideAlbums()V

    :cond_15
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
