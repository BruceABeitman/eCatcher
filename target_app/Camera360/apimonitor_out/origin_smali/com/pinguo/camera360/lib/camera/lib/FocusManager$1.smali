.class Lcom/pinguo/camera360/lib/camera/lib/FocusManager$1;
.super Ljava/lang/Object;
.source "FocusManager.java"

# interfaces
.implements Lcom/pinguo/camera360/camera/focus/FocusDistanceChecker$DistanceCheckerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$1;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDistanceChanged()V
    .registers 7

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$1;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusStateMachine:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->access$4(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getState()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onDistanceChanged : send message to state machine. state = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "STATE_FOCUSING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    const-string/jumbo v2, "mFocusingSnapOnFinish"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_32
    :goto_32
    return-void

    :cond_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$1;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mFocusFinishTime:J
    invoke-static {v4}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->access$5(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v0, v2

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$1;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mLastFocusSuccess:Z
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->access$6(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const/high16 v2, 0x44c8

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_32

    :cond_4d
    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$1;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsShutterDownFocus:Z
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->access$7(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$1;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    const/4 v3, 0x5

    #calls: Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->sendMsgToStateMachine(I)V
    invoke-static {v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->access$8(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;I)V

    goto :goto_32

    :cond_5c
    const/high16 v2, 0x44fa

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4d

    goto :goto_32
.end method

.method public preCheck()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$1;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mEnableFocus:Z
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->access$0(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$1;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mCloseSensor:Z
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$1;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsPreviewPause:Z
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->access$2(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$1;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    #getter for: Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->mIsCameraRelease:Z
    invoke-static {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusManager;)Z

    move-result v2

    if-eqz v2, :cond_22

    :cond_21
    :goto_21
    return v1

    :cond_22
    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusManager$1;->this$0:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "infinity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string/jumbo v2, "macro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const/4 v1, 0x1

    goto :goto_21
.end method
