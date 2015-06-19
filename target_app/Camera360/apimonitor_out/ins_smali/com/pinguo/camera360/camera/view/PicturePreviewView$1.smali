.class  Lcom/pinguo/camera360/camera/view/PicturePreviewView$1;
.super Ljava/lang/Object;
.source "PicturePreviewView.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
.method constructor <init>(Lcom/pinguo/camera360/camera/view/PicturePreviewView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/PicturePreviewView$1;->this$0:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/camera/view/PicturePreviewView$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
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
const-string v1, " - Lcom/pinguo/camera360/camera/view/PicturePreviewView$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method