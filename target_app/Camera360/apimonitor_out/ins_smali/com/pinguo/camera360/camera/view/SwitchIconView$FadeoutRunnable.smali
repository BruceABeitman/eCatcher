.class  Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;
.super Ljava/lang/Object;
.source "SwitchIconView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
.method private constructor <init>(Lcom/pinguo/camera360/camera/view/SwitchIconView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/camera/view/SwitchIconView;Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;-><init>(Lcom/pinguo/camera360/camera/view/SwitchIconView;)V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
#getter for: Lcom/pinguo/camera360/camera/view/SwitchIconView;->deltaY:I
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->access$0(Lcom/pinguo/camera360/camera/view/SwitchIconView;)I
move-result v1
add-int/lit8 v1, v1, 0x8
#setter for: Lcom/pinguo/camera360/camera/view/SwitchIconView;->deltaY:I
invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->access$1(Lcom/pinguo/camera360/camera/view/SwitchIconView;I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
#getter for: Lcom/pinguo/camera360/camera/view/SwitchIconView;->deltaY:I
invoke-static {v1}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->access$0(Lcom/pinguo/camera360/camera/view/SwitchIconView;)I
move-result v1
int-to-float v1, v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
#getter for: Lcom/pinguo/camera360/camera/view/SwitchIconView;->transY:I
invoke-static {v2}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->access$2(Lcom/pinguo/camera360/camera/view/SwitchIconView;)I
move-result v2
int-to-float v2, v2
div-float/2addr v1, v2
#setter for: Lcom/pinguo/camera360/camera/view/SwitchIconView;->fRate:F
invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->access$3(Lcom/pinguo/camera360/camera/view/SwitchIconView;F)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
#getter for: Lcom/pinguo/camera360/camera/view/SwitchIconView;->fRate:F
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->access$4(Lcom/pinguo/camera360/camera/view/SwitchIconView;)F
move-result v0
const v2, 0x3e99999a
cmpl-float v0, v0, v2
if-ltz v0, :cond_79
const/high16 v0, 0x3f80
:goto_30
#setter for: Lcom/pinguo/camera360/camera/view/SwitchIconView;->fRate:F
invoke-static {v1, v0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->access$3(Lcom/pinguo/camera360/camera/view/SwitchIconView;F)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->invalidate()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
#getter for: Lcom/pinguo/camera360/camera/view/SwitchIconView;->deltaY:I
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->access$0(Lcom/pinguo/camera360/camera/view/SwitchIconView;)I
move-result v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
#getter for: Lcom/pinguo/camera360/camera/view/SwitchIconView;->transY:I
invoke-static {v1}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->access$2(Lcom/pinguo/camera360/camera/view/SwitchIconView;)I
move-result v1
if-lt v0, v1, :cond_80
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
const/4 v1, 0x0
#setter for: Lcom/pinguo/camera360/camera/view/SwitchIconView;->deltaY:I
invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->access$1(Lcom/pinguo/camera360/camera/view/SwitchIconView;I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
const/4 v1, 0x0
#setter for: Lcom/pinguo/camera360/camera/view/SwitchIconView;->fRate:F
invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->access$3(Lcom/pinguo/camera360/camera/view/SwitchIconView;F)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
#getter for: Lcom/pinguo/camera360/camera/view/SwitchIconView;->mNextIconImg:Landroid/graphics/Bitmap;
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->access$5(Lcom/pinguo/camera360/camera/view/SwitchIconView;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_69
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
#getter for: Lcom/pinguo/camera360/camera/view/SwitchIconView;->mNextIconImg:Landroid/graphics/Bitmap;
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->access$5(Lcom/pinguo/camera360/camera/view/SwitchIconView;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
const/4 v1, 0x0
#setter for: Lcom/pinguo/camera360/camera/view/SwitchIconView;->mNextIconImg:Landroid/graphics/Bitmap;
invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->access$6(Lcom/pinguo/camera360/camera/view/SwitchIconView;Landroid/graphics/Bitmap;)V
:cond_69
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
#calls: Lcom/pinguo/camera360/camera/view/SwitchIconView;->initIcon()V
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->access$7(Lcom/pinguo/camera360/camera/view/SwitchIconView;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->invalidate()V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
#calls: Lcom/pinguo/camera360/camera/view/SwitchIconView;->stop()V
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->access$8(Lcom/pinguo/camera360/camera/view/SwitchIconView;)V
:goto_78
return-void
:cond_79
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
#getter for: Lcom/pinguo/camera360/camera/view/SwitchIconView;->fRate:F
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->access$4(Lcom/pinguo/camera360/camera/view/SwitchIconView;)F
move-result v0
goto :goto_30
:cond_80
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;->this$0:Lcom/pinguo/camera360/camera/view/SwitchIconView;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->post(Ljava/lang/Runnable;)Z
goto :goto_78
.end method