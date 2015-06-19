.class Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;
.super Ljava/lang/Object;
.source "IDPhotoMainFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    return-object v0
.end method


# virtual methods
.method public onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCouldMakeIdPhoto:Z
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$19(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3$1;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3$2;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3$2;-><init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_16
.end method

.method public onThumbNailSaved(Landroid/graphics/Bitmap;)V
    .registers 2

    return-void
.end method
