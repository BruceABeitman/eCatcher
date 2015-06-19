.class Lcom/pinguo/camera360/gallery/GalleryActivity$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/cloud/CloudUploadStatusManager$UploadStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/GalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/GalleryActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/GalleryActivity$1;->this$0:Lcom/pinguo/camera360/gallery/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/GalleryActivity$1;->this$0:Lcom/pinguo/camera360/gallery/GalleryActivity;

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/GalleryActivity;->mAlbumActionBar:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->updateCloudAlbumStatus(I)V

    return-void
.end method
