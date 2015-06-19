.class  Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;
.super Ljava/lang/Object;
.source "PhotoAdjustDialog.java"
.implements Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
.field final synthetic this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
.method private constructor <init>(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;-><init>(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)V
return-void
.end method
.method public adjust()V
.registers 4
const/16 v2, 0x5a
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mCurRotation:I
invoke-static {v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$0(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)I
move-result v1
add-int/lit8 v1, v1, 0x5a
rem-int/lit16 v1, v1, 0x168
#setter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mCurRotation:I
invoke-static {v0, v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$1(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$2(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
invoke-static {v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$2(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/graphics/Bitmap;
move-result-object v1
invoke-static {v1, v2}, Lcom/pinguo/lib/image/BitmapUtils;->getRotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v1
#setter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
invoke-static {v0, v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$3(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;Landroid/graphics/Bitmap;)V
:goto_28
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightImageView:Landroid/widget/ImageView;
invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$5(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/ImageView;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
invoke-static {v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$2(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
return-void
:cond_38
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mOriginalBitmap:Landroid/graphics/Bitmap;
invoke-static {v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$4(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/graphics/Bitmap;
move-result-object v1
invoke-static {v1, v2}, Lcom/pinguo/lib/image/BitmapUtils;->getRotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v1
#setter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorBitmap:Landroid/graphics/Bitmap;
invoke-static {v0, v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$3(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;Landroid/graphics/Bitmap;)V
goto :goto_28
.end method
.method public changeStep()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mLeftBtn:Landroid/widget/Button;
invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$6(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/Button;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mLeftDivider:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$7(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mRightBtn:Landroid/widget/Button;
invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$8(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/Button;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mFinishBtn:Landroid/widget/Button;
invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$9(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/Button;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mStepIndicationTv:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$10(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mResources:Landroid/content/res/Resources;
invoke-static {v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$11(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f080243
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMidBtn:Landroid/widget/Button;
invoke-static {v0}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$12(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Landroid/widget/Button;
move-result-object v0
const v1, 0x7f08024d
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
iget-object v1, p0, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$DirectionAdjustState;->this$0:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;
#getter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mMirrorState:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
invoke-static {v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$13(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;)Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
move-result-object v1
#setter for: Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->mCurState:Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;
invoke-static {v0, v1}, Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;->access$14(Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog;Lcom/pinguo/camera360/ui/dialog/PhotoAdjustDialog$AdjustState;)V
return-void
.end method