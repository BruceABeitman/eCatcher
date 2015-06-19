.class Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;
.super Lcom/pinguo/lib/util/state/State;
.source "FocusStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateSuccess"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    invoke-direct {p0}, Lcom/pinguo/lib/util/state/State;-><init>()V

    const-string/jumbo v0, "STATE_SUCCESS"

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->mName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;-><init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    const-string/jumbo v0, "FocusStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->mName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->setFocusSuccess(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->setFocusFinishTime(J)V

    :cond_3b
    return-void
.end method

.method public exit()V
    .registers 4

    const-string/jumbo v0, "FocusStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->mName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6

    const-string/jumbo v1, "FocusStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "StateSuccess.processMessage what="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_102

    :pswitch_1d
    const/4 v0, 0x0

    :goto_1e
    return v0

    :pswitch_1f
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v1

    if-eqz v1, :cond_5f

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getIsIgnoreXiaomiFlashBlackProblem()Z

    move-result v1

    if-nez v1, :cond_61

    sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_3:Z

    if-eqz v1, :cond_61

    const-string/jumbo v1, "FocusStateMachine"

    const-string/jumbo v2, "cancel auto focus for xiaomi"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->cancelAutoFocus()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setIsIgnoreXiaomiFlashBlackProblem(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$9(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Landroid/os/Message;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mIdle:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$8(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;

    move-result-object v2

    #calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
    invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V

    :cond_5f
    :goto_5f
    const/4 v0, 0x1

    goto :goto_1e

    :cond_61
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->capture()V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->resetTouchFocus()V

    goto :goto_5f

    :pswitch_74
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$9(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Landroid/os/Message;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mIdle:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$8(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;

    move-result-object v2

    #calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
    invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V

    const/4 v0, 0x1

    goto :goto_1e

    :pswitch_86
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->cancelAutoFocus()V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mIdle:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$8(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;

    move-result-object v2

    #calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
    invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V

    const/4 v0, 0x1

    goto :goto_1e

    :pswitch_9c
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$9(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Landroid/os/Message;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mIdle:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$8(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;

    move-result-object v2

    #calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
    invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V

    const/4 v0, 0x1

    goto/16 :goto_1e

    :pswitch_af
    const-string/jumbo v1, "FocusStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "clear focus view = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->isShutterDownFocus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->isShutterDownFocus()Z

    move-result v1

    if-nez v1, :cond_e4

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->resetTouchFocus()V

    :cond_e4
    const/4 v0, 0x1

    goto/16 :goto_1e

    :pswitch_e7
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mIdle:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$8(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;

    move-result-object v2

    #calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
    invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1e

    nop

    :pswitch_data_102
    .packed-switch 0x1
        :pswitch_9c
        :pswitch_74
        :pswitch_86
        :pswitch_1f
        :pswitch_e7
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_af
        :pswitch_9c
    .end packed-switch
.end method
