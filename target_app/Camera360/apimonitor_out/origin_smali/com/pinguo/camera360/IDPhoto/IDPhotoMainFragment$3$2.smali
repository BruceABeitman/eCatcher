.class Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3$2;
.super Ljava/lang/Object;
.source "IDPhotoMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;->onPictureSaved(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v0

    #calls: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->hideProgressTrans()V
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$20(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$3;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method
