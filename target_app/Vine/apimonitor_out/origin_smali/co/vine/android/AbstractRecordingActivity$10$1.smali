.class Lco/vine/android/AbstractRecordingActivity$10$1;
.super Lco/vine/android/animation/SimpleAnimationListener;
.source "AbstractRecordingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/AbstractRecordingActivity$10;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lco/vine/android/AbstractRecordingActivity$10;


# direct methods
.method constructor <init>(Lco/vine/android/AbstractRecordingActivity$10;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$10$1;->this$1:Lco/vine/android/AbstractRecordingActivity$10;

    invoke-direct {p0}, Lco/vine/android/animation/SimpleAnimationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10$1;->this$1:Lco/vine/android/AbstractRecordingActivity$10;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    const/4 v1, 0x0

    #setter for: Lco/vine/android/AbstractRecordingActivity;->mAnimatingIntoDrafts:Z
    invoke-static {v0, v1}, Lco/vine/android/AbstractRecordingActivity;->access$1902(Lco/vine/android/AbstractRecordingActivity;Z)Z

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10$1;->this$1:Lco/vine/android/AbstractRecordingActivity$10;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1000(Lco/vine/android/AbstractRecordingActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lco/vine/android/AbstractRecordingActivity$10$1$2;

    invoke-direct {v1, p0}, Lco/vine/android/AbstractRecordingActivity$10$1$2;-><init>(Lco/vine/android/AbstractRecordingActivity$10$1;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 6

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10$1;->this$1:Lco/vine/android/AbstractRecordingActivity$10;

    iget-boolean v0, v0, Lco/vine/android/AbstractRecordingActivity$10;->val$goToCamera:Z

    if-eqz v0, :cond_70

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10$1;->this$1:Lco/vine/android/AbstractRecordingActivity$10;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mCameraIconOverlayImage:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1600(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10$1;->this$1:Lco/vine/android/AbstractRecordingActivity$10;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mCameraIconOverlayImage:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1600(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10$1;->this$1:Lco/vine/android/AbstractRecordingActivity$10;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mCameraIconOverlayImage:Landroid/view/View;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1600(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/AbstractRecordingActivity$10$1;->this$1:Lco/vine/android/AbstractRecordingActivity$10;

    iget-object v1, v1, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mSlowFadeIn:Landroid/view/animation/Animation;
    invoke-static {v1}, Lco/vine/android/AbstractRecordingActivity;->access$1700(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lco/vine/android/recorder/ViewGoneAnimationListener;

    iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity$10$1;->this$1:Lco/vine/android/AbstractRecordingActivity$10;

    iget-object v2, v2, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mCameraIconOverlayImage:Landroid/view/View;
    invoke-static {v2}, Lco/vine/android/AbstractRecordingActivity;->access$1600(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lco/vine/android/recorder/ViewGoneAnimationListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10$1;->this$1:Lco/vine/android/AbstractRecordingActivity$10;

    iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1000(Lco/vine/android/AbstractRecordingActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lco/vine/android/AbstractRecordingActivity$10$1$1;

    invoke-direct {v1, p0}, Lco/vine/android/AbstractRecordingActivity$10$1$1;-><init>(Lco/vine/android/AbstractRecordingActivity$10$1;)V

    iget-object v2, p0, Lco/vine/android/AbstractRecordingActivity$10$1;->this$1:Lco/vine/android/AbstractRecordingActivity$10;

    iget-object v2, v2, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;

    #getter for: Lco/vine/android/AbstractRecordingActivity;->mCameraIconFadeIn:Landroid/view/animation/Animation;
    invoke-static {v2}, Lco/vine/android/AbstractRecordingActivity;->access$1800(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_70
    return-void
.end method
