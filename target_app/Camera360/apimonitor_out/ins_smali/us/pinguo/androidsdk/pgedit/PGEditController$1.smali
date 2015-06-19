.class  Lus/pinguo/androidsdk/pgedit/PGEditController$1;
.super Ljava/lang/Object;
.source "PGEditController.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditController;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 14
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lus/pinguo/androidsdk/pgedit/PGEditController$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v6
if-nez v6, :cond_7
:goto_6
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditController$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_7
const/4 v11, 0x0
:goto_8
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVLinearLayoutFirst:Landroid/view/ViewGroup;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/ViewGroup;
move-result-object v6
invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I
move-result v6
if-lt v11, v6, :cond_113
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getEffect()Ljava/lang/Enum;
move-result-object v6
sget-object v7, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->effectClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;
if-ne v6, v7, :cond_125
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v2, v6, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v3, v6, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenusBeanList:Ljava/util/List;
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mEffectClickListener:Landroid/view/View$OnClickListener;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View$OnClickListener;
move-result-object v4
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v5, v6, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
invoke-direct/range {v0 .. v5}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mEffectFragmentProxy:Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;
move-result-object v6
invoke-virtual {v0, v6}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->setPGEditEffectFragmentProxy(Lus/pinguo/androidsdk/pgedit/PGEditEffectFragmentProxy;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mTopColor:Landroid/view/View;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
move-result-object v6
invoke-virtual {v0, v6}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->setPGEditTopColor(Landroid/view/View;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mReplaceEffect:Landroid/view/View;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
move-result-object v6
invoke-virtual {v0, v6}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->setReplaceEffect(Landroid/view/View;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mSeekBarLinearLayout:Landroid/view/View;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
move-result-object v6
invoke-virtual {v0, v6}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->setSeekBarLinearLayout(Landroid/view/View;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$6(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
move-result-object v6
invoke-virtual {v0, v6}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->setEditSeekBar(Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$7(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
move-result-object v6
invoke-virtual {v0, v6}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->setAutoHideTextView(Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mOrgText:Landroid/view/View;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$8(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
move-result-object v6
invoke-virtual {v0, v6}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->setOrgText(Landroid/view/View;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mContainerTop:Landroid/view/View;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$9(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
move-result-object v6
invoke-virtual {v0, v6}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->setContainerTop(Landroid/view/View;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVLinearLayoutThird:Landroid/view/ViewGroup;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$10(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/ViewGroup;
move-result-object v6
invoke-virtual {v0, v6}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->setBottomMenuHSVLinearLayoutThird(Landroid/view/ViewGroup;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVThird:Landroid/widget/HorizontalScrollView;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$11(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/widget/HorizontalScrollView;
move-result-object v6
invoke-virtual {v0, v6}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->setBottomMenuHSVThird(Landroid/widget/HorizontalScrollView;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mButtomChildMenu:Landroid/view/View;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$12(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
move-result-object v6
invoke-virtual {v0, v6}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->setButtomChildMenu(Landroid/view/View;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-static {v6, v0}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$13(Lus/pinguo/androidsdk/pgedit/PGEditController;Lus/pinguo/androidsdk/pgedit/PGEditMenu;)V
:goto_a1
:cond_a1
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;
move-result-object v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mFirstTopMenu:Landroid/view/View;
invoke-static {v7}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$16(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
move-result-object v7
iget-object v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mSecondTopMenu:Landroid/view/View;
invoke-static {v8}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
move-result-object v8
iget-object v9, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mSecondTopTitle:Landroid/widget/TextView;
invoke-static {v9}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$18(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/widget/TextView;
move-result-object v9
invoke-virtual {v6, v7, v8, v9}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->setTopView(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;
move-result-object v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVLinearLayoutFirst:Landroid/view/ViewGroup;
invoke-static {v7}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/ViewGroup;
move-result-object v7
iget-object v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVFirst:Landroid/widget/HorizontalScrollView;
invoke-static {v8}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$19(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/widget/HorizontalScrollView;
move-result-object v8
iget-object v9, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVSecond:Landroid/widget/HorizontalScrollView;
invoke-static {v9}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$20(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/widget/HorizontalScrollView;
move-result-object v9
iget-object v10, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVLinearLayoutSecond:Landroid/view/ViewGroup;
invoke-static {v10}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$21(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/ViewGroup;
move-result-object v10
invoke-virtual {v6, v7, v8, v9, v10}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->setButtomView(Landroid/view/ViewGroup;Landroid/widget/HorizontalScrollView;Landroid/widget/HorizontalScrollView;Landroid/view/ViewGroup;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;
move-result-object v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v7, v7, Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditImageView:Lus/pinguo/androidsdk/pgedit/PGEditImageView;
iget-object v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditPhotoFrameLayout:Landroid/view/ViewGroup;
invoke-static {v8}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$22(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/ViewGroup;
move-result-object v8
invoke-virtual {v6, v7, v8}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->setOtherView(Lus/pinguo/androidsdk/pgedit/PGEditImageView;Landroid/view/ViewGroup;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;
move-result-object v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditSurfaceView:Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;
invoke-static {v7}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$23(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;
move-result-object v7
invoke-virtual {v6, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->setEditSurfaceView(Lus/pinguo/androidsdk/pgedit/PGGLEditSurfaceView;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditMenu;
move-result-object v6
invoke-virtual {v6}, Lus/pinguo/androidsdk/pgedit/PGEditMenu;->gotoSecondMenu()V
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getEffect()Ljava/lang/Enum;
move-result-object v6
check-cast v6, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditCountManager;->countMenuClick(Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;)V
goto/16 :goto_6
:cond_113
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mBottomMenuHSVLinearLayoutFirst:Landroid/view/ViewGroup;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/ViewGroup;
move-result-object v6
invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v6
const/4 v7, 0x0
invoke-virtual {v6, v7}, Landroid/view/View;->setClickable(Z)V
add-int/lit8 v11, v11, 0x1
goto/16 :goto_8
:cond_125
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getEffect()Ljava/lang/Enum;
move-result-object v6
sget-object v7, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->rotateClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;
if-ne v6, v7, :cond_14c
new-instance v2, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v4, v6, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v5, v6, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenusBeanList:Ljava/util/List;
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mEffectClickListener:Landroid/view/View$OnClickListener;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View$OnClickListener;
move-result-object v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v7, v7, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
move-object v3, v1
invoke-direct/range {v2 .. v7}, Lus/pinguo/androidsdk/pgedit/PGEditRotateMenu;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-static {v6, v2}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$13(Lus/pinguo/androidsdk/pgedit/PGEditController;Lus/pinguo/androidsdk/pgedit/PGEditMenu;)V
goto/16 :goto_a1
:cond_14c
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getEffect()Ljava/lang/Enum;
move-result-object v6
sget-object v7, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->textureClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;
if-ne v6, v7, :cond_173
new-instance v2, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v4, v6, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v5, v6, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenusBeanList:Ljava/util/List;
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mEffectClickListener:Landroid/view/View$OnClickListener;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View$OnClickListener;
move-result-object v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v7, v7, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
move-object v3, v1
invoke-direct/range {v2 .. v7}, Lus/pinguo/androidsdk/pgedit/PGEditTextureMenu;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-static {v6, v2}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$13(Lus/pinguo/androidsdk/pgedit/PGEditController;Lus/pinguo/androidsdk/pgedit/PGEditMenu;)V
goto/16 :goto_a1
:cond_173
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getEffect()Ljava/lang/Enum;
move-result-object v6
sget-object v7, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->cropClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;
if-ne v6, v7, :cond_19a
new-instance v3, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v5, v6, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v6, v6, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenusBeanList:Ljava/util/List;
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mEffectClickListener:Landroid/view/View$OnClickListener;
invoke-static {v7}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View$OnClickListener;
move-result-object v7
iget-object v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v8, v8, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
move-object v4, v1
invoke-direct/range {v3 .. v8}, Lus/pinguo/androidsdk/pgedit/PGEditCropMenu;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-static {v6, v3}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$13(Lus/pinguo/androidsdk/pgedit/PGEditController;Lus/pinguo/androidsdk/pgedit/PGEditMenu;)V
goto/16 :goto_a1
:cond_19a
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getEffect()Ljava/lang/Enum;
move-result-object v6
sget-object v7, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->tiltShiftClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;
if-ne v6, v7, :cond_1ca
new-instance v4, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v6, v6, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v7, v7, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenusBeanList:Ljava/util/List;
iget-object v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mEffectClickListener:Landroid/view/View$OnClickListener;
invoke-static {v8}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View$OnClickListener;
move-result-object v8
iget-object v9, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v9, v9, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
move-object v5, v1
invoke-direct/range {v4 .. v9}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mTiltShiftSeekBarLinearLayout:Landroid/view/View;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$14(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
move-result-object v6
invoke-virtual {v4, v6}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftMenu;->setTiltShiftSeekBarLinearLayout(Landroid/view/View;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-static {v6, v4}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$13(Lus/pinguo/androidsdk/pgedit/PGEditController;Lus/pinguo/androidsdk/pgedit/PGEditMenu;)V
goto/16 :goto_a1
:cond_1ca
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;->getEffect()Ljava/lang/Enum;
move-result-object v6
sget-object v7, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;->adjustClass:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;
if-ne v6, v7, :cond_a1
new-instance v5, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v7, v6, Lus/pinguo/androidsdk/pgedit/PGEditController;->mContext:Landroid/content/Context;
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v8, v6, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenusBeanList:Ljava/util/List;
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mEffectClickListener:Landroid/view/View$OnClickListener;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View$OnClickListener;
move-result-object v9
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
iget-object v10, v6, Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditSDK:Lus/pinguo/androidsdk/pgedit/PGEditSDK;
move-object v6, v1
invoke-direct/range {v5 .. v10}, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;Lus/pinguo/androidsdk/pgedit/PGEditSDK;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mSeekBarLinearLayout:Landroid/view/View;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditController;)Landroid/view/View;
move-result-object v6
invoke-virtual {v5, v6}, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->setSeekBarLinearLayout(Landroid/view/View;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mEditSeekBar:Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$6(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;
move-result-object v6
invoke-virtual {v5, v6}, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->setEditSeekBar(Lus/pinguo/androidsdk/pgedit/PGEditSeekBar;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mAutoHideTextView:Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$7(Lus/pinguo/androidsdk/pgedit/PGEditController;)Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;
move-result-object v6
invoke-virtual {v5, v6}, Lus/pinguo/androidsdk/pgedit/PGEditAdjustMenu;->setAutoHideTextView(Lus/pinguo/androidsdk/pgedit/PGEditAutoHideTextView;)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$1;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditController;->mPGEditMenu:Lus/pinguo/androidsdk/pgedit/PGEditMenu;
invoke-static {v6, v5}, Lus/pinguo/androidsdk/pgedit/PGEditController;->access$13(Lus/pinguo/androidsdk/pgedit/PGEditController;Lus/pinguo/androidsdk/pgedit/PGEditMenu;)V
goto/16 :goto_a1
.end method