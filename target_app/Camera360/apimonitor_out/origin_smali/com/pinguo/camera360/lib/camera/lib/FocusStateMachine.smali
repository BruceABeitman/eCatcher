.class public Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;
.super Lcom/pinguo/lib/util/state/StateMachine;
.source "FocusStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFail;,
        Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;,
        Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;,
        Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;,
        Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;
    }
.end annotation


# static fields
.field public static final MSG_CLEAR_FOCUS:I = 0xa

.field public static final MSG_FOCUSING_TIMEOUT:I = 0x9

.field public static final MSG_FOCUS_FAIL:I = 0x8

.field public static final MSG_FOCUS_SUCCESS:I = 0x7

.field public static final MSG_FOR_DELAY_DISMISS_FOCUS_VIEW_TIME:I = 0x3e8

.field public static final MSG_HALF_PRESS_DOWN:I = 0x2

.field public static final MSG_HALF_PRESS_UP:I = 0x3

.field public static final MSG_NOT_SUPPORT_FOCUS_AREA_TOUCH:I = 0xb

.field public static final MSG_SNAP:I = 0x4

.field public static final MSG_START_SENSOR_FOCUS:I = 0x5

.field public static final MSG_TOUCH:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FocusStateMachine"


# instance fields
.field private mFail:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFail;

.field private mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

.field private mFocusing:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;

.field private mFocusingSnapOnFinish:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;

.field private mIdle:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;

.field private mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/lib/util/state/State;",
            ">;"
        }
    .end annotation
.end field

.field private mSuccess:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/camera360/lib/camera/lib/FocusManager;Landroid/os/Looper;)V
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0, p1, p4}, Lcom/pinguo/lib/util/state/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    new-instance v1, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;

    invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;-><init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;)V

    iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mIdle:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;

    new-instance v1, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;

    invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;-><init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;)V

    iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusing:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;

    new-instance v1, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;

    invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;-><init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;)V

    iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusingSnapOnFinish:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;

    new-instance v1, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;

    invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;-><init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;)V

    iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mSuccess:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;

    new-instance v1, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFail;

    invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFail;-><init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFail;)V

    iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFail:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFail;

    iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mStateMap:Ljava/util/Map;

    new-instance v1, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$1;-><init>(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)V

    iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mTimeoutRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    const-string/jumbo v1, "FocusStateMachine"

    const-string/jumbo v2, "new focus state machine"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mIdle:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->addState(Lcom/pinguo/lib/util/state/State;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusing:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->addState(Lcom/pinguo/lib/util/state/State;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusingSnapOnFinish:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->addState(Lcom/pinguo/lib/util/state/State;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mSuccess:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->addState(Lcom/pinguo/lib/util/state/State;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFail:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFail;

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->addState(Lcom/pinguo/lib/util/state/State;)V

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mStateMap:Ljava/util/Map;

    const-string/jumbo v2, "STATE_IDLE"

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mIdle:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mStateMap:Ljava/util/Map;

    const-string/jumbo v2, "STATE_FOCUSING"

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusing:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mStateMap:Ljava/util/Map;

    const-string/jumbo v2, "STATE_FOCUSING_SNAP_ON_FINISH"

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusingSnapOnFinish:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mStateMap:Ljava/util/Map;

    const-string/jumbo v2, "STATE_SUCCESS"

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mSuccess:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mStateMap:Ljava/util/Map;

    const-string/jumbo v2, "STATE_FAIL"

    iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFail:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFail;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mStateMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/lib/util/state/State;

    if-eqz v0, :cond_9b

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->setInitialState(Lcom/pinguo/lib/util/state/State;)V

    :goto_9a
    return-void

    :cond_9b
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mIdle:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->setInitialState(Lcom/pinguo/lib/util/state/State;)V

    goto :goto_9a
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusing:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusing;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Lcom/pinguo/lib/util/state/IState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFocusingSnapOnFinish:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFocusingSnapOnFinish;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mSuccess:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateSuccess;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFail;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mFail:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateFail;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;)Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mIdle:Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine$StateIdle;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;Landroid/os/Message;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getCurrentState()Lcom/pinguo/lib/util/state/IState;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/lib/util/state/IState;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onHalting()V
    .registers 3

    const-string/jumbo v0, "FocusStateMachine"

    const-string/jumbo v1, "halting"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v0
.end method

.method public removeAllPendingMessage()V
    .registers 3

    const-string/jumbo v0, "FocusStateMachine"

    const-string/jumbo v1, "removeAllPendingMessage"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/FocusStateMachine;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
