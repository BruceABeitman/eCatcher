.class Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2$1;
.super Ljava/lang/Object;
.source "IDPhotoMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->onBitmapMade(Landroid/graphics/Bitmap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;

.field private final synthetic val$skinStrongBitmapFinal:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2$1;->this$2:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;

    iput-object p2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2$1;->val$skinStrongBitmapFinal:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2$1;->this$2:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$4(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2$1;->val$skinStrongBitmapFinal:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2$1;->this$2:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v2

    #calls: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->cancelFaceDetectUI()V
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$1(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)V

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2$1;->this$2:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$4(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v1, Landroid/graphics/RectF;->bottom:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2$1;->this$2:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->this$1:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1$2;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->this$0:Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;->access$0(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment$1;)Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->mPGGLSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$16(Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;)Lus/pinguo/androidsdk/PGGLSurfaceView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lus/pinguo/androidsdk/PGGLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/pinguo/camera360/IDPhoto/IDPhotoMainFragment;->access$3()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "10_cancel_face_detect_animation_and_show_image"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportFaceCheckSuccess()V

    return-void
.end method
