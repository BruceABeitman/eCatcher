.class Lcom/pinguo/lib/util/state/StateMachine$SmHandler$QuittingState;
.super Lcom/pinguo/lib/util/state/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/lib/util/state/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuittingState"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/lib/util/state/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/lib/util/state/StateMachine$SmHandler$QuittingState;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$QuittingState;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
