.class Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$1;
.super Ljava/lang/Object;
.source "PGCameraFragment.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$1;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDown"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 12

    const/4 v2, 0x0

    const/high16 v6, 0x4416

    const/high16 v5, -0x3bea

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$1;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
    invoke-static {v3}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$2(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    move-result-object v3

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mCurrentMode:Ljava/lang/String;
    invoke-static {v3}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$2(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "f4ab1ced32e2092c35bfa10cae9e836c"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    :cond_19
    :goto_19
    return v1

    :cond_1a
    invoke-static {}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$1()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onFling"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$1;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
    invoke-static {v3}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$2(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    move-result-object v3

    #calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->isAdvanceParametersSupport()Z
    invoke-static {v3}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$3(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Z

    move-result v3

    if-nez v3, :cond_32

    move v1, v2

    goto :goto_19

    :cond_32
    cmpl-float v3, p3, v6

    if-lez v3, :cond_44

    cmpg-float v3, p4, v6

    if-gez v3, :cond_44

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$1;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$2(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    move-result-object v2

    #calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->hideAdvanceParameterUI()Z
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$4(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Z

    goto :goto_19

    :cond_44
    cmpg-float v3, p3, v5

    if-gez v3, :cond_ba

    cmpl-float v3, p4, v5

    if-lez v3, :cond_ba

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$1;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$2(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->canShowAdvaceParamSetting:Z
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$5(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    new-instance v2, Lcom/pinguo/camera360/camera/event/ShowParameterAdvanceSetting;

    invoke-direct {v2}, Lcom/pinguo/camera360/camera/event/ShowParameterAdvanceSetting;-><init>()V

    invoke-virtual {v0, v2}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$1;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$2(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setVisibility(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$1;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$2(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->setVisibility(I)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setHasUseAdvanceParameter(Z)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$1;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$2(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    move-result-object v2

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdvanceParamIndicator:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$1;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideAll()V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$1;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$2(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    move-result-object v2

    #calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->isCanShowZoomControlView()Z
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$7(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$1;->this$1:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$2(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->hideZoomControl()V

    goto/16 :goto_19

    :cond_ba
    move v1, v2

    goto/16 :goto_19
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onLongPress"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onScroll"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onSingleTapUp"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
