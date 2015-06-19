.class  Lcom/pinguo/camera360/camera/view/EffectSelectView$2;
.super Ljava/lang/Object;
.source "EffectSelectView.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
.method constructor <init>(Lcom/pinguo/camera360/camera/view/EffectSelectView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$2;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 7
const/4 v0, 0x1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v1
if-ne v1, v0, :cond_36
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$2;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
#getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView;->mBtnCancel:Landroid/widget/TextView;
invoke-static {v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->access$2(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$2;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f07007a
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$2;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
#getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView;->mCancelClickListener:Landroid/view/View$OnClickListener;
invoke-static {v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->access$3(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Landroid/view/View$OnClickListener;
move-result-object v1
if-eqz v1, :cond_2f
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$2;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
#getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView;->mCancelClickListener:Landroid/view/View$OnClickListener;
invoke-static {v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->access$3(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Landroid/view/View$OnClickListener;
move-result-object v1
invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
:goto_2e
return v0
:cond_2f
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$2;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
const/4 v2, 0x0
invoke-virtual {v1, v2, v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->hideWithAnimation(Landroid/view/animation/Animation$AnimationListener;Z)V
goto :goto_2e
:cond_36
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-nez v0, :cond_52
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$2;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
#getter for: Lcom/pinguo/camera360/camera/view/EffectSelectView;->mBtnCancel:Landroid/widget/TextView;
invoke-static {v0}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->access$2(Lcom/pinguo/camera360/camera/view/EffectSelectView;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/EffectSelectView$2;->this$0:Lcom/pinguo/camera360/camera/view/EffectSelectView;
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/EffectSelectView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f070078
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
:cond_52
const/4 v0, 0x0
goto :goto_2e
.end method