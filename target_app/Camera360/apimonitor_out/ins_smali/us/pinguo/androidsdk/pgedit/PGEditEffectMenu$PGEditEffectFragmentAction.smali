.class public Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;
.super Ljava/lang/Object;
.source "PGEditEffectMenu.java"
.implements Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy$PGEditEffectFragmentActionListener;
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
.method public constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public dialogCancel()V
.registers 3
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mContainerTop:Landroid/view/View;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$6(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$12(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->hideEffectFragment(Z)V
return-void
.end method
.method public onHide(Z)V
.registers 7
const/4 v4, 0x0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mIsShowEffectDialog:Z
invoke-static {v2, v4}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$7(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;Z)V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mContainerTop:Landroid/view/View;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$6(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/View;
move-result-object v2
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mIsReplaceEffect:Z
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$9(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Z
move-result v2
if-eqz v2, :cond_3c
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
iget-object v1, v2, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mSecondTopMenu:Landroid/view/View;
:goto_1d
invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mTopShowTranslateAnimation:Landroid/view/animation/TranslateAnimation;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$11(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/animation/TranslateAnimation;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
const/4 v0, 0x0
:goto_2a
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMenuHSVLinearLayoutFirst:Landroid/view/ViewGroup;
invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I
move-result v2
if-lt v0, v2, :cond_41
if-eqz p1, :cond_3b
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->finish()V
:cond_3b
return-void
:cond_3c
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
iget-object v1, v2, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mFirstTopMenu:Landroid/view/View;
goto :goto_1d
:cond_41
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mBottomMenuHSVLinearLayoutFirst:Landroid/view/ViewGroup;
invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V
add-int/lit8 v0, v0, 0x1
goto :goto_2a
.end method
.method public onSelect(Ljava/util/List;)V
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mPGEditMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
invoke-virtual {v0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->setChildList(Ljava/util/List;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mPGEditTopColor:Landroid/view/View;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$8(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$12(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
move-result-object v0
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;->hideEffectFragment(Z)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->hideTopFirstMenuAnimation()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->isNowActivity:Z
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$13(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Z
move-result v0
if-eqz v0, :cond_2d
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->hideButtomFirstMenuAnimation()V
:goto_2c
return-void
:cond_2d
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x3
const-wide/16 v2, 0x96
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
goto :goto_2c
.end method
.method public onShow()V
.registers 4
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mContainerTop:Landroid/view/View;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$6(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/View;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
const/4 v2, 0x1
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mIsShowEffectDialog:Z
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$7(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;Z)V
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mPGEditTopColor:Landroid/view/View;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$8(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/View;
move-result-object v1
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mIsReplaceEffect:Z
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$9(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Z
move-result v1
if-eqz v1, :cond_3f
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
iget-object v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mSecondTopMenu:Landroid/view/View;
:goto_27
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mTopViewHideTranslateAnimation:Landroid/view/animation/TranslateAnimation;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$10(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/animation/TranslateAnimation;
move-result-object v1
new-instance v2, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction$1;
invoke-direct {v2, p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;Landroid/view/View;)V
invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mTopViewHideTranslateAnimation:Landroid/view/animation/TranslateAnimation;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$10(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/animation/TranslateAnimation;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
return-void
:cond_3f
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$PGEditEffectFragmentAction;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
iget-object v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mFirstTopMenu:Landroid/view/View;
goto :goto_27
.end method