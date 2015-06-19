.class  LvStudio/Android/Camera360/activity/GuideViewFragment$6;
.super Ljava/lang/Object;
.source "GuideViewFragment.java"
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.field final synthetic this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
.method constructor <init>(LvStudio/Android/Camera360/activity/GuideViewFragment;)V
.registers 2
iput-object p1, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$6;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPageScrollStateChanged(I)V
.registers 2
return-void
.end method
.method public onPageScrolled(IFI)V
.registers 4
return-void
.end method
.method public onPageSelected(I)V
.registers 5
const/4 v2, 0x0
const/4 v1, 0x4
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$6;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#setter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mSelectedViewPagerIndex:I
invoke-static {v0, p1}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$24(LvStudio/Android/Camera360/activity/GuideViewFragment;I)V
packed-switch p1, :pswitch_data_88
:cond_a
:goto_a
return-void
:pswitch_b
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$6;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFirst:Lcom/pinguo/camera360/guide/GuideViewFirst;
invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$25(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/guide/GuideViewFirst;
move-result-object v0
if-eqz v0, :cond_a
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$6;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewSecond:Lcom/pinguo/camera360/guide/GuideViewSecond;
invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$26(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/guide/GuideViewSecond;
move-result-object v0
if-eqz v0, :cond_a
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$6;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mBtnStartLay:Landroid/widget/RelativeLayout;
invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$27(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/RelativeLayout;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
goto :goto_a
:pswitch_25
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$6;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewSecond:Lcom/pinguo/camera360/guide/GuideViewSecond;
invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$26(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/guide/GuideViewSecond;
move-result-object v0
if-eqz v0, :cond_a
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$6;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mBtnStartLay:Landroid/widget/RelativeLayout;
invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$27(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/RelativeLayout;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
goto :goto_a
:pswitch_37
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$6;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewThird:Lcom/pinguo/camera360/guide/GuideViewThird;
invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$28(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/guide/GuideViewThird;
move-result-object v0
if-eqz v0, :cond_a
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$6;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mBtnStartLay:Landroid/widget/RelativeLayout;
invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$27(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/RelativeLayout;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
goto :goto_a
:pswitch_49
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$6;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mMaxIndex:I
invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$12(LvStudio/Android/Camera360/activity/GuideViewFragment;)I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_a
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$6;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$23(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/guide/GuideViewFifth;
move-result-object v0
if-eqz v0, :cond_a
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$6;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mBtnStartLay:Landroid/widget/RelativeLayout;
invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$27(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/RelativeLayout;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$6;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$23(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/guide/GuideViewFifth;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/guide/GuideViewFifth;->startAnimation()V
goto :goto_a
:pswitch_6d
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$6;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$23(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/guide/GuideViewFifth;
move-result-object v0
if-eqz v0, :cond_a
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$6;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mBtnStartLay:Landroid/widget/RelativeLayout;
invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$27(LvStudio/Android/Camera360/activity/GuideViewFragment;)Landroid/widget/RelativeLayout;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v0, p0, LvStudio/Android/Camera360/activity/GuideViewFragment$6;->this$0:LvStudio/Android/Camera360/activity/GuideViewFragment;
#getter for: LvStudio/Android/Camera360/activity/GuideViewFragment;->mGuideViewFifth:Lcom/pinguo/camera360/guide/GuideViewFifth;
invoke-static {v0}, LvStudio/Android/Camera360/activity/GuideViewFragment;->access$23(LvStudio/Android/Camera360/activity/GuideViewFragment;)Lcom/pinguo/camera360/guide/GuideViewFifth;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/guide/GuideViewFifth;->startAnimation()V
goto :goto_a
:pswitch_data_88
.packed-switch 0x0
:pswitch_b
:pswitch_25
:pswitch_37
:pswitch_49
:pswitch_6d
.end packed-switch
.end method