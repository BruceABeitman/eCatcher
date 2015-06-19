.class Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;
.super Lcom/pinguo/lib/util/state/State;
.source "FocusStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateIdle"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    invoke-direct {p0}, Lcom/pinguo/lib/util/state/State;-><init>()V

    const-string/jumbo v0, "STATE_IDLE"

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->mName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;-><init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    const/16 v1, 0xa

    #calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$0(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;I)V

    const-string/jumbo v0, "FocusStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->mName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .registers 4

    const-string/jumbo v0, "FocusStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->mName:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9

    const-string/jumbo v3, "FocusStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "StateIdle.processMessage what="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_1f6

    :pswitch_1d
    const/4 v0, 0x0

    :goto_1e
    return v0

    :pswitch_1f
    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->isTouchSnap()Z

    move-result v3

    if-nez v3, :cond_5a

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->needAutoFocusCall()Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->setFocusArea(II)V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->autoFocus()V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusing:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;
    invoke-static {v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$2(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;

    move-result-object v4

    #calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
    invoke-static {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V

    :cond_58
    :goto_58
    const/4 v0, 0x1

    goto :goto_1e

    :cond_5a
    const-string/jumbo v3, "FocusStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mFocusManager.needAutoFocusCall() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v5}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v5}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->needAutoFocusCall()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->needAutoFocusCall()Z

    move-result v3

    if-eqz v3, :cond_c6

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->setFocusArea(II)V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->showFocusViewStart()V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->autoFocus()V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusingSnapOnFinish:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;
    invoke-static {v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$4(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;

    move-result-object v4

    #calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
    invoke-static {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V

    goto :goto_58

    :cond_c6
    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "infinity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->capture()V

    goto/16 :goto_58

    :pswitch_e4
    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->needFocus()Z

    move-result v3

    if-eqz v3, :cond_104

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusing:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;
    invoke-static {v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$2(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;

    move-result-object v4

    #calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
    invoke-static {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->autoFocus()V

    :cond_104
    const/4 v0, 0x1

    goto/16 :goto_1e

    :pswitch_107
    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->isTouchSnap()Z

    move-result v3

    if-nez v3, :cond_136

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->needAutoFocusCall()Z

    move-result v3

    if-eqz v3, :cond_133

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->autoFocus()V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusing:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;
    invoke-static {v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$2(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;

    move-result-object v4

    #calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
    invoke-static {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V

    :cond_133
    :goto_133
    const/4 v0, 0x1

    goto/16 :goto_1e

    :cond_136
    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->needAutoFocusCall()Z

    move-result v3

    if-eqz v3, :cond_160

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->showFocusViewStart()V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->autoFocus()V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusingSnapOnFinish:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;
    invoke-static {v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$4(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;

    move-result-object v4

    #calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
    invoke-static {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V

    goto :goto_133

    :cond_160
    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "infinity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_133

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->capture()V

    goto :goto_133

    :pswitch_17d
    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "auto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ec

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v5}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->getCaptureTime()J

    move-result-wide v5

    sub-long v1, v3, v5

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->getCaptureTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1ce

    const-wide/16 v3, 0x3e8

    cmp-long v3, v1, v3

    if-gez v3, :cond_1ce

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->isFocusSuccess()Z

    move-result v3

    if-eqz v3, :cond_1ce

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->capture()V

    :goto_1cb
    const/4 v0, 0x1

    goto/16 :goto_1e

    :cond_1ce
    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->showFocusViewStart()V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->autoFocus()V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusingSnapOnFinish:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;
    invoke-static {v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$4(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;

    move-result-object v4

    #calls: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
    invoke-static {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V

    goto :goto_1cb

    :cond_1ec
    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->capture()V

    goto :goto_1cb

    :pswitch_data_1f6
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_e4
        :pswitch_1d
        :pswitch_17d
        :pswitch_e4
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_107
    .end packed-switch
.end method
