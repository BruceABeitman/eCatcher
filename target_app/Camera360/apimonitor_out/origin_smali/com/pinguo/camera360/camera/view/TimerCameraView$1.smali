.class Lcom/pinguo/camera360/camera/view/TimerCameraView$1;
.super Ljava/lang/Object;
.source "TimerCameraView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/view/TimerCameraView;->count()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/view/TimerCameraView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$1;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$1;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    #getter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->listener:Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$0(Lcom/pinguo/camera360/camera/view/TimerCameraView;)Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$1;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    #getter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->listener:Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$0(Lcom/pinguo/camera360/camera/view/TimerCameraView;)Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$1;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    #getter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrCount:I
    invoke-static {v1}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$1(Lcom/pinguo/camera360/camera/view/TimerCameraView;)I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$1;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    #getter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->mTotalCount:I
    invoke-static {v2}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$2(Lcom/pinguo/camera360/camera/view/TimerCameraView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;->onAnimationFinish(II)V

    :cond_1d
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$1;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    #getter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrCount:I
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$1(Lcom/pinguo/camera360/camera/view/TimerCameraView;)I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$1;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    #getter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->mTotalCount:I
    invoke-static {v1}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$2(Lcom/pinguo/camera360/camera/view/TimerCameraView;)I

    move-result v1

    if-ge v0, v1, :cond_42

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSoundState()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$1;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/camera/model/SoundManager;->getSoundManager(Landroid/content/Context;)Lcom/pinguo/camera360/camera/model/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/SoundManager;->playTimerSound()V

    :cond_42
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$1;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    #getter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrCount:I
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$1(Lcom/pinguo/camera360/camera/view/TimerCameraView;)I

    move-result v0

    if-lez v0, :cond_5e

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$1;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    #getter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCountTv:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$3(Lcom/pinguo/camera360/camera/view/TimerCameraView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$1;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    #getter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrCount:I
    invoke-static {v1}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$1(Lcom/pinguo/camera360/camera/view/TimerCameraView;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5d
    :goto_5d
    return-void

    :cond_5e
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$1;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$1;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    #getter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->listener:Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$0(Lcom/pinguo/camera360/camera/view/TimerCameraView;)Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;

    move-result-object v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView$1;->this$0:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    #getter for: Lcom/pinguo/camera360/camera/view/TimerCameraView;->listener:Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->access$0(Lcom/pinguo/camera360/camera/view/TimerCameraView;)Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;->countFinish()V

    goto :goto_5d
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
