.class Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$7;
.super Ljava/lang/Object;
.source "AlbumActionBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->startAction(IILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;ZLjava/util/ArrayList;)V
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

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$7;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$7;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$6(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/PhotoSelector;

    move-result-object v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$7;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mPhotoSelector:Lcom/pinguo/camera360/gallery/ui/PhotoSelector;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$6(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/PhotoSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/PhotoSelector;->getSourceMediaSet()Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v0

    :goto_16
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$7;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/RootActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/RootActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/gallery/data/DataManager;->cancelDelete(Lcom/pinguo/camera360/gallery/data/Path;)V

    return-void

    :cond_24
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar$7;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->mSelectionManager:Lcom/pinguo/camera360/gallery/ui/SelectionManager;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;)Lcom/pinguo/camera360/gallery/ui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->getSourceMediaSet()Lcom/pinguo/camera360/gallery/data/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;

    move-result-object v0

    goto :goto_16
.end method
