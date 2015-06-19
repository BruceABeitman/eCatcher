.class  Lcom/pinguo/lib/util/state/StateMachine$SmHandler;
.super Landroid/os/Handler;
.source "StateMachine.java"
.field private static final mSmHandlerObj:Ljava/lang/Object;
.field private mDbg:Z
.field private mDeferredMessages:Ljava/util/ArrayList;
.field private mDestState:Lcom/pinguo/lib/util/state/State;
.field private mHaltingState:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$HaltingState;
.field private mInitialState:Lcom/pinguo/lib/util/state/State;
.field private mIsConstructionCompleted:Z
.field private mLogRecords:Lcom/pinguo/lib/util/state/StateMachine$LogRecords;
.field private mMsg:Landroid/os/Message;
.field private mQuittingState:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$QuittingState;
.field private mSm:Lcom/pinguo/lib/util/state/StateMachine;
.field private mStateInfo:Ljava/util/HashMap;
.field private mStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
.field private mStateStackTopIndex:I
.field private mTempStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
.field private mTempStateStackCount:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;
return-void
.end method
.method private constructor <init>(Landroid/os/Looper;Lcom/pinguo/lib/util/state/StateMachine;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
new-instance v0, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;
invoke-direct {v0, v1}, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;-><init>(Lcom/pinguo/lib/util/state/StateMachine$LogRecords;)V
iput-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mLogRecords:Lcom/pinguo/lib/util/state/StateMachine$LogRecords;
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStackTopIndex:I
new-instance v0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$HaltingState;
invoke-direct {v0, p0, v1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$HaltingState;-><init>(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;Lcom/pinguo/lib/util/state/StateMachine$SmHandler$HaltingState;)V
iput-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mHaltingState:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$HaltingState;
new-instance v0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$QuittingState;
invoke-direct {v0, v1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$QuittingState;-><init>(Lcom/pinguo/lib/util/state/StateMachine$SmHandler$QuittingState;)V
iput-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mQuittingState:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$QuittingState;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;
iput-object p2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSm:Lcom/pinguo/lib/util/state/StateMachine;
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mHaltingState:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$HaltingState;
invoke-direct {p0, v0, v1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->addState(Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mQuittingState:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$QuittingState;
invoke-direct {p0, v0, v1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->addState(Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Looper;Lcom/pinguo/lib/util/state/StateMachine;Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/pinguo/lib/util/state/StateMachine;)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Lcom/pinguo/lib/util/state/StateMachine;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSm:Lcom/pinguo/lib/util/state/StateMachine;
return-object v0
.end method
.method static synthetic access$10(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Lcom/pinguo/lib/util/state/StateMachine$LogRecords;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mLogRecords:Lcom/pinguo/lib/util/state/StateMachine$LogRecords;
return-object v0
.end method
.method static synthetic access$11(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->quit()V
return-void
.end method
.method static synthetic access$12(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->quitNow()V
return-void
.end method
.method static synthetic access$13(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Z
.registers 2
invoke-direct {p0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->isDbg()Z
move-result v0
return v0
.end method
.method static synthetic access$14(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->setDbg(Z)V
return-void
.end method
.method static synthetic access$15(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->completeConstruction()V
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
.registers 4
invoke-direct {p0, p1, p2}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->addState(Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
move-result-object v0
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Landroid/os/Message;
.registers 2
invoke-direct {p0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;
move-result-object v0
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Lcom/pinguo/lib/util/state/IState;
.registers 2
invoke-direct {p0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->getCurrentState()Lcom/pinguo/lib/util/state/IState;
move-result-object v0
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;Lcom/pinguo/lib/util/state/State;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->setInitialState(Lcom/pinguo/lib/util/state/State;)V
return-void
.end method
.method static synthetic access$6(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;Lcom/pinguo/lib/util/state/IState;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
return-void
.end method
.method static synthetic access$7(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Lcom/pinguo/lib/util/state/StateMachine$SmHandler$HaltingState;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mHaltingState:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$HaltingState;
return-object v0
.end method
.method static synthetic access$8(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;Landroid/os/Message;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V
return-void
.end method
.method static synthetic access$9(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
return v0
.end method
.method private final addState(Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
.registers 9
const/4 v5, 0x0
iget-boolean v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v2, :cond_2f
const-string/jumbo v3, "StateMachine"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v4, "addStateInternal: E state="
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/lib/util/state/State;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v4, ",parent="
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
if-nez p2, :cond_65
const-string/jumbo v2, ""
:goto_24
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_2f
const/4 v0, 0x0
if-eqz p2, :cond_40
iget-object v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;
invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
if-nez v0, :cond_40
invoke-direct {p0, p2, v5}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->addState(Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
move-result-object v0
:cond_40
iget-object v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;
invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
if-nez v1, :cond_54
new-instance v1, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
invoke-direct {v1, v5}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;-><init>(Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;)V
iget-object v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;
invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_54
iget-object v2, v1, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
if-eqz v2, :cond_6a
iget-object v2, v1, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
if-eq v2, v0, :cond_6a
new-instance v2, Ljava/lang/RuntimeException;
const-string/jumbo v3, "state already added"
invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v2
:cond_65
invoke-virtual {p2}, Lcom/pinguo/lib/util/state/State;->getName()Ljava/lang/String;
move-result-object v2
goto :goto_24
:cond_6a
iput-object p1, v1, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->state:Lcom/pinguo/lib/util/state/State;
iput-object v0, v1, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
const/4 v2, 0x0
iput-boolean v2, v1, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->active:Z
iget-boolean v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v2, :cond_8b
const-string/jumbo v2, "StateMachine"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "addStateInternal: X stateInfo: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_8b
return-object v1
.end method
.method private final cleanupAfterQuitting()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSm:Lcom/pinguo/lib/util/state/StateMachine;
#getter for: Lcom/pinguo/lib/util/state/StateMachine;->mSmThread:Landroid/os/HandlerThread;
invoke-static {v0}, Lcom/pinguo/lib/util/state/StateMachine;->access$0(Lcom/pinguo/lib/util/state/StateMachine;)Landroid/os/HandlerThread;
move-result-object v0
if-eqz v0, :cond_15
invoke-virtual {p0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->getLooper()Landroid/os/Looper;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Looper;->quit()V
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSm:Lcom/pinguo/lib/util/state/StateMachine;
#setter for: Lcom/pinguo/lib/util/state/StateMachine;->mSmThread:Landroid/os/HandlerThread;
invoke-static {v0, v1}, Lcom/pinguo/lib/util/state/StateMachine;->access$1(Lcom/pinguo/lib/util/state/StateMachine;Landroid/os/HandlerThread;)V
:cond_15
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSm:Lcom/pinguo/lib/util/state/StateMachine;
#setter for: Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;
invoke-static {v0, v1}, Lcom/pinguo/lib/util/state/StateMachine;->access$2(Lcom/pinguo/lib/util/state/StateMachine;Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)V
iput-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSm:Lcom/pinguo/lib/util/state/StateMachine;
iput-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mMsg:Landroid/os/Message;
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mLogRecords:Lcom/pinguo/lib/util/state/StateMachine$LogRecords;
invoke-virtual {v0}, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->cleanup()V
iput-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
iput-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mTempStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
iput-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mInitialState:Lcom/pinguo/lib/util/state/State;
iput-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDestState:Lcom/pinguo/lib/util/state/State;
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
return-void
.end method
.method private final completeConstruction()V
.registers 8
iget-boolean v4, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v4, :cond_d
const-string/jumbo v4, "StateMachine"
const-string/jumbo v5, "completeConstruction: E"
invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_d
const/4 v2, 0x0
iget-object v4, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;
invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v4
invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_18
:goto_18
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-nez v5, :cond_5b
iget-boolean v4, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v4, :cond_38
const-string/jumbo v4, "StateMachine"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "completeConstruction: maxDepth="
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_38
new-array v4, v2, [Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
iput-object v4, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
new-array v4, v2, [Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
iput-object v4, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mTempStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
invoke-direct {p0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->setupInitialStateStack()V
const/4 v4, -0x2
sget-object v5, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;
invoke-virtual {p0, v4, v5}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v4
invoke-virtual {p0, v4}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
iget-boolean v4, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v4, :cond_5a
const-string/jumbo v4, "StateMachine"
const-string/jumbo v5, "completeConstruction: X"
invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_5a
return-void
:cond_5b
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
const/4 v0, 0x0
move-object v1, v3
:goto_63
if-nez v1, :cond_69
if-ge v2, v0, :cond_18
move v2, v0
goto :goto_18
:cond_69
iget-object v1, v1, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
add-int/lit8 v0, v0, 0x1
goto :goto_63
.end method
.method private final deferMessage(Landroid/os/Message;)V
.registers 6
iget-boolean v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v1, :cond_1c
const-string/jumbo v1, "StateMachine"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "deferMessage: msg="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p1, Landroid/os/Message;->what:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_1c
invoke-virtual {p0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->obtainMessage()Landroid/os/Message;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V
iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method private final getCurrentMessage()Landroid/os/Message;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mMsg:Landroid/os/Message;
return-object v0
.end method
.method private final getCurrentState()Lcom/pinguo/lib/util/state/IState;
.registers 3
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
iget v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStackTopIndex:I
aget-object v0, v0, v1
iget-object v0, v0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->state:Lcom/pinguo/lib/util/state/State;
return-object v0
.end method
.method private final invokeEnterMethods(I)V
.registers 6
move v0, p1
:goto_1
iget v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStackTopIndex:I
if-le v0, v1, :cond_6
return-void
:cond_6
iget-boolean v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v1, :cond_2a
const-string/jumbo v1, "StateMachine"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "invokeEnterMethods: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
aget-object v3, v3, v0
iget-object v3, v3, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->state:Lcom/pinguo/lib/util/state/State;
invoke-virtual {v3}, Lcom/pinguo/lib/util/state/State;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_2a
iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
aget-object v1, v1, v0
iget-object v1, v1, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->state:Lcom/pinguo/lib/util/state/State;
invoke-virtual {v1}, Lcom/pinguo/lib/util/state/State;->enter()V
iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
aget-object v1, v1, v0
const/4 v2, 0x1
iput-boolean v2, v1, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->active:Z
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method private final invokeExitMethods(Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;)V
.registers 6
:goto_0
iget v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStackTopIndex:I
if-ltz v1, :cond_c
iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
iget v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStackTopIndex:I
aget-object v1, v1, v2
if-ne v1, p1, :cond_d
:cond_c
return-void
:cond_d
iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
iget v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStackTopIndex:I
aget-object v1, v1, v2
iget-object v0, v1, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->state:Lcom/pinguo/lib/util/state/State;
iget-boolean v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v1, :cond_33
const-string/jumbo v1, "StateMachine"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "invokeExitMethods: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/pinguo/lib/util/state/State;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_33
invoke-virtual {v0}, Lcom/pinguo/lib/util/state/State;->exit()V
iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
iget v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStackTopIndex:I
aget-object v1, v1, v2
const/4 v2, 0x0
iput-boolean v2, v1, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->active:Z
iget v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStackTopIndex:I
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStackTopIndex:I
goto :goto_0
.end method
.method private final isDbg()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
return v0
.end method
.method private final isQuit(Landroid/os/Message;)Z
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
const/4 v1, -0x1
if-ne v0, v1, :cond_d
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
sget-object v1, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;
if-ne v0, v1, :cond_d
const/4 v0, 0x1
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method private final moveDeferredMessageAtFrontOfQueue()V
.registers 6
iget-object v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_8
if-gez v1, :cond_10
iget-object v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
return-void
:cond_10
iget-object v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Message;
iget-boolean v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v2, :cond_34
const-string/jumbo v2, "StateMachine"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "moveDeferredMessageAtFrontOfQueue; what="
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v4, v0, Landroid/os/Message;->what:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_34
invoke-virtual {p0, v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
add-int/lit8 v1, v1, -0x1
goto :goto_8
.end method
.method private final moveTempStateStackToStateStack()I
.registers 8
iget v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStackTopIndex:I
add-int/lit8 v2, v3, 0x1
iget v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mTempStateStackCount:I
add-int/lit8 v0, v3, -0x1
move v1, v2
:goto_9
if-gez v0, :cond_4e
add-int/lit8 v3, v1, -0x1
iput v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStackTopIndex:I
iget-boolean v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v3, :cond_4d
const-string/jumbo v3, "StateMachine"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "moveTempStackToStateStack: X mStateStackTop="
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v5, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStackTopIndex:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ",startingIndex="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ",Top="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
iget v6, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStackTopIndex:I
aget-object v5, v5, v6
iget-object v5, v5, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->state:Lcom/pinguo/lib/util/state/State;
invoke-virtual {v5}, Lcom/pinguo/lib/util/state/State;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_4d
return v2
:cond_4e
iget-boolean v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v3, :cond_73
const-string/jumbo v3, "StateMachine"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "moveTempStackToStateStack: i="
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ",j="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_73
iget-object v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
iget-object v4, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mTempStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
aget-object v4, v4, v0
aput-object v4, v3, v1
add-int/lit8 v1, v1, 0x1
add-int/lit8 v0, v0, -0x1
goto :goto_9
.end method
.method private performTransitions()V
.registers 6
const/4 v1, 0x0
:goto_1
iget-object v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDestState:Lcom/pinguo/lib/util/state/State;
if-nez v3, :cond_14
if-eqz v1, :cond_13
iget-object v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mQuittingState:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$QuittingState;
if-ne v1, v3, :cond_38
iget-object v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSm:Lcom/pinguo/lib/util/state/StateMachine;
invoke-virtual {v3}, Lcom/pinguo/lib/util/state/StateMachine;->onQuitting()V
invoke-direct {p0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->cleanupAfterQuitting()V
:cond_13
:goto_13
return-void
:cond_14
iget-boolean v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v3, :cond_21
const-string/jumbo v3, "StateMachine"
const-string/jumbo v4, "handleMessage: new destination call exit"
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_21
iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDestState:Lcom/pinguo/lib/util/state/State;
const/4 v3, 0x0
iput-object v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDestState:Lcom/pinguo/lib/util/state/State;
invoke-direct {p0, v1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->setupTempStateStackWithStatesToEnter(Lcom/pinguo/lib/util/state/State;)Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
move-result-object v0
invoke-direct {p0, v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->invokeExitMethods(Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;)V
invoke-direct {p0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->moveTempStateStackToStateStack()I
move-result v2
invoke-direct {p0, v2}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->invokeEnterMethods(I)V
invoke-direct {p0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->moveDeferredMessageAtFrontOfQueue()V
goto :goto_1
:cond_38
iget-object v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mHaltingState:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$HaltingState;
if-ne v1, v3, :cond_13
iget-object v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSm:Lcom/pinguo/lib/util/state/StateMachine;
invoke-virtual {v3}, Lcom/pinguo/lib/util/state/StateMachine;->onHalting()V
goto :goto_13
.end method
.method private final processMsg(Landroid/os/Message;)V
.registers 8
const/4 v5, 0x0
iget-object v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
iget v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStackTopIndex:I
aget-object v0, v2, v3
iget-boolean v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v2, :cond_27
const-string/jumbo v2, "StateMachine"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "processMsg: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, v0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->state:Lcom/pinguo/lib/util/state/State;
invoke-virtual {v4}, Lcom/pinguo/lib/util/state/State;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_27
invoke-direct {p0, p1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z
move-result v2
if-eqz v2, :cond_7c
iget-object v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mQuittingState:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$QuittingState;
invoke-direct {p0, v2}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
:goto_32
:cond_32
return-void
:cond_33
iget-object v0, v0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
if-nez v0, :cond_5c
iget-object v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSm:Lcom/pinguo/lib/util/state/StateMachine;
invoke-virtual {v2, p1}, Lcom/pinguo/lib/util/state/StateMachine;->unhandledMessage(Landroid/os/Message;)V
:goto_3c
iget-object v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSm:Lcom/pinguo/lib/util/state/StateMachine;
invoke-virtual {v2, p1}, Lcom/pinguo/lib/util/state/StateMachine;->recordLogRec(Landroid/os/Message;)Z
move-result v2
if-eqz v2, :cond_32
if-eqz v0, :cond_85
iget-object v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
iget v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStackTopIndex:I
aget-object v2, v2, v3
iget-object v1, v2, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->state:Lcom/pinguo/lib/util/state/State;
iget-object v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mLogRecords:Lcom/pinguo/lib/util/state/StateMachine$LogRecords;
iget-object v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSm:Lcom/pinguo/lib/util/state/StateMachine;
invoke-virtual {v3, p1}, Lcom/pinguo/lib/util/state/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;
move-result-object v3
iget-object v4, v0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->state:Lcom/pinguo/lib/util/state/State;
invoke-virtual {v2, p1, v3, v4, v1}, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->add(Landroid/os/Message;Ljava/lang/String;Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)V
goto :goto_32
:cond_5c
iget-boolean v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v2, :cond_7c
const-string/jumbo v2, "StateMachine"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "processMsg: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, v0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->state:Lcom/pinguo/lib/util/state/State;
invoke-virtual {v4}, Lcom/pinguo/lib/util/state/State;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_7c
iget-object v2, v0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->state:Lcom/pinguo/lib/util/state/State;
invoke-virtual {v2, p1}, Lcom/pinguo/lib/util/state/State;->processMessage(Landroid/os/Message;)Z
move-result v2
if-eqz v2, :cond_33
goto :goto_3c
:cond_85
iget-object v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mLogRecords:Lcom/pinguo/lib/util/state/StateMachine$LogRecords;
iget-object v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSm:Lcom/pinguo/lib/util/state/StateMachine;
invoke-virtual {v3, p1}, Lcom/pinguo/lib/util/state/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, p1, v3, v5, v5}, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->add(Landroid/os/Message;Ljava/lang/String;Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)V
goto :goto_32
.end method
.method private final quit()V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v0, :cond_d
const-string/jumbo v0, "StateMachine"
const-string/jumbo v1, "quit:"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_d
const/4 v0, -0x1
sget-object v1, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;
invoke-virtual {p0, v0, v1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method private final quitNow()V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v0, :cond_d
const-string/jumbo v0, "StateMachine"
const-string/jumbo v1, "abort:"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_d
const/4 v0, -0x1
sget-object v1, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;
invoke-virtual {p0, v0, v1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
return-void
.end method
.method private final setDbg(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
return-void
.end method
.method private final setInitialState(Lcom/pinguo/lib/util/state/State;)V
.registers 5
iget-boolean v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v0, :cond_1e
const-string/jumbo v0, "StateMachine"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "setInitialState: initialState="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/lib/util/state/State;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_1e
iput-object p1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mInitialState:Lcom/pinguo/lib/util/state/State;
return-void
.end method
.method private final setupInitialStateStack()V
.registers 5
iget-boolean v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v1, :cond_20
const-string/jumbo v1, "StateMachine"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "setupInitialStateStack: E mInitialState="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mInitialState:Lcom/pinguo/lib/util/state/State;
invoke-virtual {v3}, Lcom/pinguo/lib/util/state/State;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_20
iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;
iget-object v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mInitialState:Lcom/pinguo/lib/util/state/State;
invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
const/4 v1, 0x0
iput v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mTempStateStackCount:I
:goto_2d
if-nez v0, :cond_36
const/4 v1, -0x1
iput v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateStackTopIndex:I
invoke-direct {p0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->moveTempStateStackToStateStack()I
return-void
:cond_36
iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mTempStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
iget v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mTempStateStackCount:I
aput-object v0, v1, v2
iget-object v0, v0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
iget v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mTempStateStackCount:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mTempStateStackCount:I
goto :goto_2d
.end method
.method private final setupTempStateStackWithStatesToEnter(Lcom/pinguo/lib/util/state/State;)Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
.registers 6
const/4 v1, 0x0
iput v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mTempStateStackCount:I
iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mStateInfo:Ljava/util/HashMap;
invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
:cond_b
iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mTempStateStack:[Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
iget v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mTempStateStackCount:I
add-int/lit8 v3, v2, 0x1
iput v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mTempStateStackCount:I
aput-object v0, v1, v2
iget-object v0, v0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
if-eqz v0, :cond_1d
iget-boolean v1, v0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->active:Z
if-eqz v1, :cond_b
:cond_1d
iget-boolean v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v1, :cond_44
const-string/jumbo v1, "StateMachine"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mTempStateStackCount:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ",curStateInfo: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_44
return-object v0
.end method
.method private final transitionTo(Lcom/pinguo/lib/util/state/IState;)V
.registers 5
check-cast p1, Lcom/pinguo/lib/util/state/State;
iput-object p1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDestState:Lcom/pinguo/lib/util/state/State;
iget-boolean v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v0, :cond_24
const-string/jumbo v0, "StateMachine"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "transitionTo: destState="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDestState:Lcom/pinguo/lib/util/state/State;
invoke-virtual {v2}, Lcom/pinguo/lib/util/state/State;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_24
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 5
iget-boolean v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v0, :cond_1c
const-string/jumbo v0, "StateMachine"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "handleMessage: E msg.what="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p1, Landroid/os/Message;->what:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_1c
iput-object p1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mMsg:Landroid/os/Message;
iget-boolean v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mIsConstructionCompleted:Z
if-eqz v0, :cond_36
invoke-direct {p0, p1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->processMsg(Landroid/os/Message;)V
:goto_25
invoke-direct {p0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->performTransitions()V
iget-boolean v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
if-eqz v0, :cond_35
const-string/jumbo v0, "StateMachine"
const-string/jumbo v1, "handleMessage: X"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_35
return-void
:cond_36
iget-boolean v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mIsConstructionCompleted:Z
if-nez v0, :cond_51
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mMsg:Landroid/os/Message;
iget v0, v0, Landroid/os/Message;->what:I
const/4 v1, -0x2
if-ne v0, v1, :cond_51
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mMsg:Landroid/os/Message;
iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
sget-object v1, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSmHandlerObj:Ljava/lang/Object;
if-ne v0, v1, :cond_51
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mIsConstructionCompleted:Z
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->invokeEnterMethods(I)V
goto :goto_25
:cond_51
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "StateMachine.handleMessage: The start method not called, received msg: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method