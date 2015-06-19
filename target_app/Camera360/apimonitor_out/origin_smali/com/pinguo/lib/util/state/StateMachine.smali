.class public Lcom/pinguo/lib/util/state/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/lib/util/state/StateMachine$LogRec;,
        Lcom/pinguo/lib/util/state/StateMachine$LogRecords;,
        Lcom/pinguo/lib/util/state/StateMachine$SmHandler;
    }
.end annotation


# static fields
.field public static final HANDLED:Z = true

.field public static final NOT_HANDLED:Z = false

.field private static final SM_INIT_CMD:I = -0x2

.field private static final SM_QUIT_CMD:I = -0x1

.field private static final TAG:Ljava/lang/String; = "StateMachine"


# instance fields
.field private mName:Ljava/lang/String;

.field private mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

.field private mSmThread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/pinguo/lib/util/state/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/pinguo/lib/util/state/StateMachine;->initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/lib/util/state/StateMachine;)Landroid/os/HandlerThread;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/lib/util/state/StateMachine;Landroid/os/HandlerThread;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmThread:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/lib/util/state/StateMachine;Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    return-void
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/pinguo/lib/util/state/StateMachine;->mName:Ljava/lang/String;

    new-instance v0, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/pinguo/lib/util/state/StateMachine;Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)V

    iput-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    return-void
.end method


# virtual methods
.method protected addLogRec(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #getter for: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mLogRecords:Lcom/pinguo/lib/util/state/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$10(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Lcom/pinguo/lib/util/state/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v1, v1}, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->add(Landroid/os/Message;Ljava/lang/String;Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)V

    return-void
.end method

.method protected addLogRec(Ljava/lang/String;Lcom/pinguo/lib/util/state/State;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #getter for: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mLogRecords:Lcom/pinguo/lib/util/state/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$10(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Lcom/pinguo/lib/util/state/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, v1, p1, p2, v1}, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->add(Landroid/os/Message;Ljava/lang/String;Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)V

    return-void
.end method

.method protected final addState(Lcom/pinguo/lib/util/state/State;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    const/4 v1, 0x0

    #calls: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->addState(Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
    invoke-static {v0, p1, v1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$2(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method protected final addState(Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #calls: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->addState(Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;
    invoke-static {v0, p1, p2}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$2(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)Lcom/pinguo/lib/util/state/StateMachine$SmHandler$StateInfo;

    return-void
.end method

.method protected final deferMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #calls: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$8(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;Landroid/os/Message;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pinguo/lib/util/state/StateMachine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " total records="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/lib/util/state/StateMachine;->getLogRecCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_33
    invoke-virtual {p0}, Lcom/pinguo/lib/util/state/StateMachine;->getLogRecSize()I

    move-result v1

    if-lt v0, v1, :cond_55

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "curState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/lib/util/state/StateMachine;->getCurrentState()Lcom/pinguo/lib/util/state/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/pinguo/lib/util/state/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_55
    const-string/jumbo v1, " rec[%d]: %s\n"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v0}, Lcom/pinguo/lib/util/state/StateMachine;->getLogRec(I)Lcom/pinguo/lib/util/state/StateMachine$LogRec;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->toString(Lcom/pinguo/lib/util/state/StateMachine;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_33
.end method

.method protected final getCurrentMessage()Landroid/os/Message;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #calls: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$3(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected final getCurrentState()Lcom/pinguo/lib/util/state/IState;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #calls: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->getCurrentState()Lcom/pinguo/lib/util/state/IState;
    invoke-static {v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$4(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Lcom/pinguo/lib/util/state/IState;

    move-result-object v0

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    return-object v0
.end method

.method public final getLogRec(I)Lcom/pinguo/lib/util/state/StateMachine$LogRec;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #getter for: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mLogRecords:Lcom/pinguo/lib/util/state/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$10(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Lcom/pinguo/lib/util/state/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->get(I)Lcom/pinguo/lib/util/state/StateMachine$LogRec;

    move-result-object v0

    return-object v0
.end method

.method public final getLogRecCount()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #getter for: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mLogRecords:Lcom/pinguo/lib/util/state/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$10(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Lcom/pinguo/lib/util/state/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->count()I

    move-result v0

    return v0
.end method

.method public final getLogRecSize()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #getter for: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mLogRecords:Lcom/pinguo/lib/util/state/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$10(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Lcom/pinguo/lib/util/state/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->size()I

    move-result v0

    return v0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .registers 2

    return-void
.end method

.method public isDbg()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #calls: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->isDbg()Z
    invoke-static {v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$13(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Z

    move-result v0

    goto :goto_5
.end method

.method public final obtainMessage()Landroid/os/Message;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    goto :goto_5
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    goto :goto_5
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .registers 5

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    goto :goto_5
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_5
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_5
.end method

.method protected onHalting()V
    .registers 1

    return-void
.end method

.method protected onQuitting()V
    .registers 1

    return-void
.end method

.method protected final quit()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #calls: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->quit()V
    invoke-static {v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$11(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)V

    goto :goto_4
.end method

.method protected final quitNow()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #calls: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->quitNow()V
    invoke-static {v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$12(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)V

    goto :goto_4
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method protected final removeMessages(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    invoke-virtual {v0, p1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->removeMessages(I)V

    return-void
.end method

.method public final sendMessage(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    invoke-virtual {p0, p1}, Lcom/pinguo/lib/util/state/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/lib/util/state/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    invoke-virtual {v0, p1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    invoke-virtual {p0, p1}, Lcom/pinguo/lib/util/state/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/lib/util/state/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    invoke-virtual {v0, p1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final sendMessageDelayed(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    invoke-virtual {p0, p1}, Lcom/pinguo/lib/util/state/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4
.end method

.method public final sendMessageDelayed(ILjava/lang/Object;J)V
    .registers 7

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/lib/util/state/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4
.end method

.method public setDbg(Z)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #calls: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->setDbg(Z)V
    invoke-static {v0, p1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$14(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;Z)V

    goto :goto_4
.end method

.method protected final setInitialState(Lcom/pinguo/lib/util/state/State;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #calls: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->setInitialState(Lcom/pinguo/lib/util/state/State;)V
    invoke-static {v0, p1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$5(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;Lcom/pinguo/lib/util/state/State;)V

    return-void
.end method

.method public final setLogRecSize(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #getter for: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mLogRecords:Lcom/pinguo/lib/util/state/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$10(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Lcom/pinguo/lib/util/state/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pinguo/lib/util/state/StateMachine$LogRecords;->setSize(I)V

    return-void
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #calls: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->completeConstruction()V
    invoke-static {v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$15(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)V

    goto :goto_4
.end method

.method protected final transitionTo(Lcom/pinguo/lib/util/state/IState;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #calls: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
    invoke-static {v0, p1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$6(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;Lcom/pinguo/lib/util/state/IState;)V

    return-void
.end method

.method protected final transitionToHaltingState()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    iget-object v1, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #getter for: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mHaltingState:Lcom/pinguo/lib/util/state/StateMachine$SmHandler$HaltingState;
    invoke-static {v1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$7(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Lcom/pinguo/lib/util/state/StateMachine$SmHandler$HaltingState;

    move-result-object v1

    #calls: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->transitionTo(Lcom/pinguo/lib/util/state/IState;)V
    invoke-static {v0, v1}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$6(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;Lcom/pinguo/lib/util/state/IState;)V

    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine;->mSmHandler:Lcom/pinguo/lib/util/state/StateMachine$SmHandler;

    #getter for: Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->mDbg:Z
    invoke-static {v0}, Lcom/pinguo/lib/util/state/StateMachine$SmHandler;->access$9(Lcom/pinguo/lib/util/state/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "StateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pinguo/lib/util/state/StateMachine;->mName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " - unhandledMessage: msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method
