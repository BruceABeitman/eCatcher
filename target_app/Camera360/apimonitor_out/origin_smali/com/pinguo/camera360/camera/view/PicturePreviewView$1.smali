.class Lcom/pinguo/camera360/camera/view/PicturePreviewView$1;
.super Ljava/lang/Object;
.source "PicturePreviewView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/view/PicturePreviewView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/view/PicturePreviewView;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/view/PicturePreviewView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$1;->this$0:Lcom/pinguo/camera360/camera/view/PicturePreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$1;->this$0:Lcom/pinguo/camera360/camera/view/PicturePreviewView;

    #getter for: Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mAdjustPictureOri:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->access$0(Lcom/pinguo/camera360/camera/view/PicturePreviewView;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$1;->this$0:Lcom/pinguo/camera360/camera/view/PicturePreviewView;

    #getter for: Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->access$1(Lcom/pinguo/camera360/camera/view/PicturePreviewView;)Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$1;->this$0:Lcom/pinguo/camera360/camera/view/PicturePreviewView;

    #getter for: Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mOrgPicBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->access$2(Lcom/pinguo/camera360/camera/view/PicturePreviewView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$1;->this$0:Lcom/pinguo/camera360/camera/view/PicturePreviewView;

    #getter for: Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mEffectPicBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->access$3(Lcom/pinguo/camera360/camera/view/PicturePreviewView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;->save(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$1;->this$0:Lcom/pinguo/camera360/camera/view/PicturePreviewView;

    #getter for: Lcom/pinguo/camera360/camera/view/PicturePreviewView;->mListener:Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->access$1(Lcom/pinguo/camera360/camera/view/PicturePreviewView;)Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/camera/view/PicturePreviewView$IPicturePreviewView;->startAdjustPictureOri()V

    return-void
.end method
