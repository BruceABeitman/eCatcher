.class public Lcom/pinguo/camera360/gallery/AlbumPage$C360PhotoObserver;
.super Landroid/os/FileObserver;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "C360PhotoObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumPage;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/AlbumPage;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$C360PhotoObserver;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 5

    packed-switch p1, :pswitch_data_3a

    :cond_3
    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$C360PhotoObserver;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mIsActive:Z
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$7(Lcom/pinguo/camera360/gallery/AlbumPage;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$C360PhotoObserver;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$8(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/Path;->getType()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$C360PhotoObserver;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$8(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/pinguo/camera360/gallery/data/MediaSet;->deleteByPath(Ljava/lang/String;)Z

    :cond_27
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$C360PhotoObserver;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/AlbumPage;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$C360PhotoObserver;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    sget-object v1, Lcom/pinguo/camera360/gallery/ActivityState$State;->ResetUI:Lcom/pinguo/camera360/gallery/ActivityState$State;

    #setter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mState:Lcom/pinguo/camera360/gallery/ActivityState$State;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$9(Lcom/pinguo/camera360/gallery/AlbumPage;Lcom/pinguo/camera360/gallery/ActivityState$State;)V

    goto :goto_3

    nop

    :pswitch_data_3a
    .packed-switch 0x200
        :pswitch_4
    .end packed-switch
.end method
