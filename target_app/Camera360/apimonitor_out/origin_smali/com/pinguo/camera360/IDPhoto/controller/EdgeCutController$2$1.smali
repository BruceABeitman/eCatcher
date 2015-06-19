.class Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;
.super Ljava/lang/Object;
.source "EdgeCutController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->onBitmapComposed(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    move-result-object v0

    #calls: Lcom/pinguo/camera360/IDPhoto/controller/BaseController;->keyDone()V
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$6(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->hideProcessDialog()V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->hideProcessDialogInCenter()V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutEraserContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$7(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$1(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->setTouchListener(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$TouchListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterImageView:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$1(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->enterNormalMode()V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mIsLastClothesViewVisible:Z
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$8(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mCenterClothesView:Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$2(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/IDPhoto/view/TextureContainerView;->setVisibility(I)V

    :cond_5f
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    move-result-object v0

    #setter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mTempAlphaBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$9(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    move-result-object v0

    #setter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mTempBitmapForCancel:Landroid/graphics/Bitmap;
    invoke-static {v0, v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$10(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutTop:Landroid/view/View;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$11(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mMainTop:Landroid/view/View;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$12(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->enterChildViewForTop(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    invoke-static {v0}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mEdgeCutButtom:Landroid/view/View;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$13(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2$1;->this$1:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->this$0:Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;->access$0(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController$2;)Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->mMainButtom:Landroid/view/View;
    invoke-static {v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->access$14(Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/IDPhoto/controller/EdgeCutController;->enterChildViewForTop(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method
