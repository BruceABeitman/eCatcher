.class Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2$1;
.super Ljava/lang/Object;
.source "PicturePreviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->previewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2$1;->this$1:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2$1;->this$1:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;

    #getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->access$0(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;)Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$4(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Lcom/pinguo/camera360/camera/view/PicturePreviewView;

    move-result-object v0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2$1;->this$1:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;

    #getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->access$0(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;)Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedShowPreview:Z
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$5(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string/jumbo v0, "taketimetest"

    const-string/jumbo v1, "setpicture!"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2$1;->this$1:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;

    #getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->access$0(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;)Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$4(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Lcom/pinguo/camera360/camera/view/PicturePreviewView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2$1;->this$1:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;

    #getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->access$0(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;)Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mOrgPicBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2$1;->this$1:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;

    #getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->access$0(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;)Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mEffectPicBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$7(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->setPreviewImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2$1;->this$1:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;

    #getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;->access$0(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$2;)Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$4(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Lcom/pinguo/camera360/camera/view/PicturePreviewView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->setVisibility(I)V

    :cond_50
    return-void
.end method
