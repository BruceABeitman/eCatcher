.class Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$1;
.super Ljava/lang/Object;
.source "IDPhotoMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$orgHeight:I

.field private final synthetic val$orgWidth:I


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;Landroid/graphics/Bitmap;II)V
    .registers 5

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$1;->val$orgWidth:I

    iput p4, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$1;->val$orgHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$3()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "3_show_face_detect_animation"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$4(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$1;->val$orgWidth:I

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$1;->val$orgHeight:I

    #calls: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->initFaceDetectAnimation(II)V
    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$5(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;II)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$1;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v0

    #calls: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->showFaceDetectUI()V
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$6(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V

    :cond_3b
    return-void
.end method
