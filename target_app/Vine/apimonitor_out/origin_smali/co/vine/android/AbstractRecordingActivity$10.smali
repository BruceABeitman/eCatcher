.class Lco/vine/android/AbstractRecordingActivity$10;
.super Lco/vine/android/animation/SimpleAnimationListener;
.source "AbstractRecordingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/AbstractRecordingActivity;->showDrafts(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/AbstractRecordingActivity;

.field final synthetic val$goToCamera:Z


# direct methods
.method constructor <init>(Lco/vine/android/AbstractRecordingActivity;Z)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    iput-boolean p2, p0, Lco/vine/android/AbstractRecordingActivity$10;->val$goToCamera:Z

    invoke-direct {p0}, Lco/vine/android/animation/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 8

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    iget v0, v0, Lco/vine/android/AbstractRecordingActivity;->mCurrentPage:I

    iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftFragments:Landroid/util/SparseArray;
    invoke-static {v1}, Lco/vine/android/AbstractRecordingActivity;->access$000(Lco/vine/android/AbstractRecordingActivity;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eq v0, v1, :cond_41

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftTrashContainer:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$400(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftTrashContainer:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$400(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #calls: Lco/vine/android/AbstractRecordingActivity;->isResuming()Z
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1500(Lco/vine/android/AbstractRecordingActivity;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftTrashContainer:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$400(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_41
    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mSlowFadeIn:Landroid/view/animation/Animation;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1700(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lco/vine/android/AbstractRecordingActivity$10$1;

    invoke-direct {v1, p0}, Lco/vine/android/AbstractRecordingActivity$10$1;-><init>(Lco/vine/android/AbstractRecordingActivity$10;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1000(Lco/vine/android/AbstractRecordingActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lco/vine/android/AbstractRecordingActivity$10$2;

    invoke-direct {v1, p0}, Lco/vine/android/AbstractRecordingActivity$10$2;-><init>(Lco/vine/android/AbstractRecordingActivity$10;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$2100(Lco/vine/android/AbstractRecordingActivity;)Landroid/support/v4/view/DraftViewPager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/DraftViewPager;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mViewPager:Landroid/support/v4/view/DraftViewPager;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$2100(Lco/vine/android/AbstractRecordingActivity;)Landroid/support/v4/view/DraftViewPager;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mSlowFadeIn:Landroid/view/animation/Animation;
    invoke-static {v1}, Lco/vine/android/AbstractRecordingActivity;->access$1700(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/DraftViewPager;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #setter for: Lco/vine/android/AbstractRecordingActivity;->mPageScrollState:I
    invoke-static {v0, v4}, Lco/vine/android/AbstractRecordingActivity;->access$2202(Lco/vine/android/AbstractRecordingActivity;I)I

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftRoot:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$600(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    instance-of v0, v0, Lco/vine/android/RecordingFragment;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity;->mCurrentFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lco/vine/android/RecordingFragment;

    invoke-virtual {v0}, Lco/vine/android/RecordingFragment;->onShowDrafts()V

    :cond_96
    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftMaskParent:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$500(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftMaskTop:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$2300(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftMaskLeft:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$2400(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mDraftMaskRight:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$2500(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 6

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1000(Lco/vine/android/AbstractRecordingActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mOnResumeDraftRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lco/vine/android/AbstractRecordingActivity;->access$1400(Lco/vine/android/AbstractRecordingActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1000(Lco/vine/android/AbstractRecordingActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mOnResumeDraftRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lco/vine/android/AbstractRecordingActivity;->access$1400(Lco/vine/android/AbstractRecordingActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
