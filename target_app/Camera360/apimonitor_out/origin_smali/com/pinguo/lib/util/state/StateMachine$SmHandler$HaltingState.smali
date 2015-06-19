.class Lcom/pinguo/lib/util/state/StateMachine$SmHandler$HaltingState;
.super Lcom/pinguo/lib/util/state/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/lib/util/state/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HaltingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;


# direct methods
.method private constructor <init>(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$HaltingState;->this$1:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    invoke-direct {p0}, Lcom/pinguo/lib/util/state/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;Lcom/pinguo/lib/util/state/StateMachine$SmHandler$HaltingState;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$HaltingState;-><init>(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$HaltingState;->this$1:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #getter for: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mSm:Lcom/pinguo/lib/util/state/StateMachine;
    invoke-static {v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$0(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Lcom/pinguo/lib/util/state/StateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pinguo/lib/util/state/StateMachine;->haltedProcessMessage(Landroid/os/Message;)V

    const/4 v0, 0x1

    return v0
.end method
