.class  Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;
.super Ljava/lang/Object;
.source "EffectDetailActivity.java"
.implements Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
.field final synthetic this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;
.field private final synthetic val$currentItem:I
.field private final synthetic val$position:I
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;II)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;->this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;
iput p2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;->val$currentItem:I
iput p3, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;->val$position:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;->this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;
return-object v0
.end method
.method public onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.registers 8
iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;->this$1:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->this$0:Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;->access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;)Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
move-result-object v0
#getter for: Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->access$23(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1$1;
iget v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;->val$currentItem:I
iget v3, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;->val$position:I
invoke-direct {v1, p0, v2, p2, v3}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1$1;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15$1;ILandroid/graphics/Bitmap;I)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method