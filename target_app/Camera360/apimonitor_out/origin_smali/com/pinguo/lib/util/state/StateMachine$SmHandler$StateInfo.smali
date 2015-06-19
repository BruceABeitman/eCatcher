.class Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/lib/util/state/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateInfo"
.end annotation


# instance fields
.field active:Z

.field parentStateInfo:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;

.field state:Lcom/pinguo/lib/util/state/State;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->state:Lcom/pinguo/lib/util/state/State;

    invoke-virtual {v1}, Lcom/pinguo/lib/util/state/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;

    if-nez v0, :cond_36

    const-string/jumbo v0, "null"

    :goto_2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_36
    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;

    iget-object v0, v0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;->state:Lcom/pinguo/lib/util/state/State;

    invoke-virtual {v0}, Lcom/pinguo/lib/util/state/State;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d
.end method
