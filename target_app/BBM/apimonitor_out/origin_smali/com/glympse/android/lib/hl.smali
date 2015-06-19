.class Lcom/glympse/android/lib/hl;
.super Ljava/lang/Object;
.source "ServerPost.java"

# interfaces
.implements Lcom/glympse/android/lib/GAccountListener;
.implements Lcom/glympse/android/lib/GBatchListener;
.implements Lcom/glympse/android/lib/GServerPost;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private f:Ljava/lang/String;

.field private gK:Ljava/lang/String;

.field private gL:Ljava/lang/String;

.field private gM:Lcom/glympse/android/lib/GConfigPrivate;

.field private gQ:Ljava/lang/String;

.field private hV:Z

.field private hW:Ljava/lang/String;

.field private pf:Z

.field private rM:Lcom/glympse/android/api/GNetworkManager;

.field private rN:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GApiEndpoint;",
            ">;"
        }
    .end annotation
.end field

.field private rO:Z

.field private rP:Z

.field private rQ:Lcom/glympse/android/lib/GTrackPrivate;

.field private rR:Ljava/lang/String;

.field private rS:Lcom/glympse/android/lib/GAccountManager;

.field private rT:I

.field private rU:Ljava/lang/Runnable;

.field private rV:Ljava/lang/Runnable;

.field private rW:J

.field private rX:I

.field private rY:I

.field private rZ:Lcom/glympse/android/lib/HttpJob;

.field private sa:I


# direct methods
.method public constructor <init>()V
    .registers 6

    const/16 v4, 0x7530

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/glympse/android/hal/GVector;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/glympse/android/hal/GVector;-><init>(I)V

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    iput-boolean v2, p0, Lcom/glympse/android/lib/hl;->rO:Z

    iput-boolean v2, p0, Lcom/glympse/android/lib/hl;->rP:Z

    new-instance v0, Lcom/glympse/android/lib/iv;

    invoke-direct {v0}, Lcom/glympse/android/lib/iv;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->rQ:Lcom/glympse/android/lib/GTrackPrivate;

    iput-boolean v3, p0, Lcom/glympse/android/lib/hl;->hV:Z

    iput v3, p0, Lcom/glympse/android/lib/hl;->rT:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/glympse/android/lib/hl;->rW:J

    iput v4, p0, Lcom/glympse/android/lib/hl;->rX:I

    iput v4, p0, Lcom/glympse/android/lib/hl;->rY:I

    iput v2, p0, Lcom/glympse/android/lib/hl;->sa:I

    iput-boolean v2, p0, Lcom/glympse/android/lib/hl;->pf:Z

    return-void
.end method

.method private ah()Lcom/glympse/android/lib/GAccountListener;
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GAccountListener;

    return-object v0
.end method

.method private ai()Lcom/glympse/android/lib/GBatchListener;
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GBatchListener;

    return-object v0
.end method

.method private cA()V
    .registers 6

    const/4 v0, 0x3

    iput v0, p0, Lcom/glympse/android/lib/hl;->rT:I

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserManagerPrivate;->getSelf()Lcom/glympse/android/api/GUser;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GUserPrivate;->isNicknameSynced()Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserManagerPrivate;->modifyUser(Lcom/glympse/android/lib/GUserPrivate;)V

    :cond_1a
    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getNetworkManager()Lcom/glympse/android/api/GNetworkManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GNetworkManagerPrivate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GNetworkManagerPrivate;->checkMotd(Z)V

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GHistoryManagerPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->syncFresh()V

    invoke-virtual {p0}, Lcom/glympse/android/lib/hl;->doPost()V

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method private cB()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rV:Ljava/lang/Runnable;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/glympse/android/lib/hl;->rT:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    new-instance v0, Lcom/glympse/android/lib/hn;

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cI()Lcom/glympse/android/lib/GServerPost;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/hn;-><init>(Lcom/glympse/android/lib/GServerPost;)V

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->rV:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->rV:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_11
.end method

.method private cC()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->rV:Ljava/lang/Runnable;

    return-void
.end method

.method private cD()V
    .registers 7

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rU:Ljava/lang/Runnable;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cE()V

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isActive()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x2

    invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getBackgroundMode()I

    move-result v1

    if-ne v0, v1, :cond_8

    :cond_1b
    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->okToPost()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->rU:Ljava/lang/Runnable;

    iget v2, p0, Lcom/glympse/android/lib/hl;->rY:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rM:Lcom/glympse/android/api/GNetworkManager;

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v2, 0x5

    const/16 v3, 0x10

    iget v4, p0, Lcom/glympse/android/lib/hl;->rY:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/api/GNetworkManager;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_8
.end method

.method private cE()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rU:Ljava/lang/Runnable;

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->rU:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method private cF()I
    .registers 9

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->gM:Lcom/glympse/android/lib/GConfigPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getGetRate()J

    move-result-wide v0

    long-to-int v3, v0

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getTracking()Ljava/util/Enumeration;

    move-result-object v4

    :cond_12
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->getActiveStandalone()Lcom/glympse/android/api/GTicket;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->isSelf()Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz v1, :cond_12

    invoke-interface {v1}, Lcom/glympse/android/lib/GTicketPrivate;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x12

    if-eqz v0, :cond_12

    move v1, v3

    :cond_35
    :goto_35
    return v1

    :cond_36
    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GGroupManager;->getTracking()Ljava/util/Enumeration;

    move-result-object v5

    move v1, v2

    :cond_41
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GGroup;

    const/4 v4, 0x4

    invoke-interface {v0}, Lcom/glympse/android/api/GGroup;->getState()I

    move-result v6

    if-ne v4, v6, :cond_41

    invoke-interface {v0}, Lcom/glympse/android/api/GGroup;->getId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_41

    const v1, 0xea60

    invoke-interface {v0}, Lcom/glympse/android/api/GGroup;->getMembers()Lcom/glympse/android/core/GArray;

    move-result-object v6

    invoke-interface {v6}, Lcom/glympse/android/core/GArray;->length()I

    move-result v7

    const/4 v0, 0x0

    move v4, v0

    :goto_67
    if-ge v4, v7, :cond_41

    invoke-interface {v6, v4}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GGroupMember;

    invoke-interface {v0}, Lcom/glympse/android/api/GGroupMember;->getTicket()Lcom/glympse/android/api/GTicket;

    move-result-object v0

    if-eqz v0, :cond_7f

    invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x12

    if-eqz v0, :cond_7f

    move v1, v3

    goto :goto_35

    :cond_7f
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_67

    :cond_83
    if-ne v2, v1, :cond_35

    const/16 v1, 0x7530

    goto :goto_35
.end method

.method private cG()V
    .registers 3

    iget v1, p0, Lcom/glympse/android/lib/hl;->rX:I

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->startStopLocation()V

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cF()I

    move-result v0

    if-ge v0, v1, :cond_18

    :goto_15
    iput v0, p0, Lcom/glympse/android/lib/hl;->rY:I

    :goto_17
    return-void

    :cond_18
    move v0, v1

    goto :goto_15

    :cond_1a
    iput v1, p0, Lcom/glympse/android/lib/hl;->rY:I

    goto :goto_17
.end method

.method private cH()V
    .registers 8

    const/4 v2, 0x0

    const/16 v6, 0x10

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rM:Lcom/glympse/android/api/GNetworkManager;

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v3, 0x5

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/glympse/android/api/GNetworkManager;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    iput-boolean v2, p0, Lcom/glympse/android/lib/hl;->rO:Z

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-ge v6, v0, :cond_56

    const/4 v0, 0x3

    const-string v1, "[ServerPost.startBatch] First chunk of api endpoints is prepared"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/lib/hl;->rO:Z

    new-instance v3, Lcom/glympse/android/hal/GVector;

    invoke-direct {v3, v6}, Lcom/glympse/android/hal/GVector;-><init>(I)V

    move v1, v2

    :goto_27
    if-ge v1, v6, :cond_38

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GApiEndpoint;

    invoke-virtual {v3, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27

    :cond_38
    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2, v6}, Lcom/glympse/android/hal/GVector;->removeRange(II)V

    new-instance v0, Lcom/glympse/android/lib/y;

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->ai()Lcom/glympse/android/lib/GBatchListener;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/glympse/android/lib/y;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GBatchListener;Lcom/glympse/android/hal/GVector;)V

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->rZ:Lcom/glympse/android/lib/HttpJob;

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getJobQueue()Lcom/glympse/android/lib/GJobQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->rZ:Lcom/glympse/android/lib/HttpJob;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V

    :cond_55
    :goto_55
    return-void

    :cond_56
    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    new-instance v1, Lcom/glympse/android/hal/GVector;

    invoke-direct {v1}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v1, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    new-instance v1, Lcom/glympse/android/lib/y;

    iget-object v2, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->ai()Lcom/glympse/android/lib/GBatchListener;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/glympse/android/lib/y;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GBatchListener;Lcom/glympse/android/hal/GVector;)V

    iput-object v1, p0, Lcom/glympse/android/lib/hl;->rZ:Lcom/glympse/android/lib/HttpJob;

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getJobQueue()Lcom/glympse/android/lib/GJobQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->rZ:Lcom/glympse/android/lib/HttpJob;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GJobQueue;->addJob(Lcom/glympse/android/lib/GJob;)V

    goto :goto_55
.end method

.method private cI()Lcom/glympse/android/lib/GServerPost;
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GServerPost;

    return-object v0
.end method

.method private cy()V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/glympse/android/lib/hl;->rT:I

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rS:Lcom/glympse/android/lib/GAccountManager;

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GAccountManager;->create(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/glympse/android/lib/hl;->failedToCreate(ZILcom/glympse/android/api/GServerError;)V

    :cond_17
    return-void
.end method

.method private cz()V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/glympse/android/lib/hl;->rT:I

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rS:Lcom/glympse/android/lib/GAccountManager;

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getApiKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/glympse/android/lib/hl;->gK:Ljava/lang/String;

    iget-object v3, p0, Lcom/glympse/android/lib/hl;->gL:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/lib/GAccountManager;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/glympse/android/lib/hl;->failedToLogin(ILcom/glympse/android/api/GServerError;)V

    :cond_1b
    return-void
.end method

.method private e(Lcom/glympse/android/hal/GVector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GApiEndpoint;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/glympse/android/lib/hl;->sendEvents()V

    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->rZ:Lcom/glympse/android/lib/HttpJob;

    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-lez v0, :cond_2b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/lib/hl;->rO:Z

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    goto :goto_1b

    :cond_29
    iput-object p1, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    :cond_2b
    return-void
.end method


# virtual methods
.method public accountCreated(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/glympse/android/lib/hl;->gK:Ljava/lang/String;

    iput-object p2, p0, Lcom/glympse/android/lib/hl;->gL:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->gK:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lcom/glympse/android/lib/GUserManagerPrivate;->setSelfUserId(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cz()V

    return-void
.end method

.method public addLocation(JLcom/glympse/android/core/GLocation;)V
    .registers 11

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rQ:Lcom/glympse/android/lib/GTrackPrivate;

    invoke-interface {v0, p3}, Lcom/glympse/android/lib/GTrackPrivate;->addCore(Lcom/glympse/android/core/GLocation;)V

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rQ:Lcom/glympse/android/lib/GTrackPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTrackPrivate;->length()I

    move-result v6

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rQ:Lcom/glympse/android/lib/GTrackPrivate;

    const-wide/32 v4, 0xa4cb800

    move-wide v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/glympse/android/lib/GTrackPrivate;->trim(JZJ)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rQ:Lcom/glympse/android/lib/GTrackPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTrackPrivate;->length()I

    move-result v0

    sub-int v0, v6, v0

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ServerPost.addLocation] Locations were lost: "

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    :cond_40
    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isActive()Z

    move-result v0

    if-nez v0, :cond_8d

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ServerPost.addLocation] last posted:"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/glympse/android/lib/hl;->rW:J

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Lcom/glympse/android/hal/Helpers;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getBackgroundMode()I

    move-result v1

    if-ne v0, v1, :cond_8d

    iget-wide v0, p0, Lcom/glympse/android/lib/hl;->rW:J

    sub-long v0, p1, v0

    iget v2, p0, Lcom/glympse/android/lib/hl;->rY:I

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_8d

    iget-boolean v0, p0, Lcom/glympse/android/lib/hl;->rO:Z

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getJobQueue()Lcom/glympse/android/lib/GJobQueue;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/glympse/android/lib/GJobQueue;->retryAll(Z)V

    invoke-virtual {p0}, Lcom/glympse/android/lib/hl;->doPost()V

    :cond_8d
    return-void
.end method

.method public areLocationsPartiallyUploaded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/hl;->rP:Z

    return v0
.end method

.method public authenticate()V
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/glympse/android/lib/hl;->rT:I

    if-eq v0, v1, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/glympse/android/lib/hl;->gQ:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cA()V

    goto :goto_5

    :cond_e
    iget-object v0, p0, Lcom/glympse/android/lib/hl;->gK:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->gL:Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cz()V

    goto :goto_5

    :cond_1a
    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cy()V

    goto :goto_5
.end method

.method public batchCompleted(Lcom/glympse/android/hal/GVector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GApiEndpoint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/glympse/android/lib/hl;->e(Lcom/glympse/android/hal/GVector;)V

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cG()V

    invoke-virtual {p0}, Lcom/glympse/android/lib/hl;->haveDataToPost()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/glympse/android/lib/hl;->doPost()V

    :goto_14
    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/hl;->rW:J

    goto :goto_7

    :cond_1d
    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cD()V

    goto :goto_14
.end method

.method public batchFailed(Lcom/glympse/android/hal/GVector;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GApiEndpoint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/glympse/android/lib/hl;->e(Lcom/glympse/android/hal/GVector;)V

    return-void
.end method

.method public cancelEndpoint(Lcom/glympse/android/lib/GApiEndpoint;I)Z
    .registers 7

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandlerManager()Lcom/glympse/android/lib/GHandlerManager;

    move-result-object v0

    new-instance v1, Lcom/glympse/android/lib/hm;

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cI()Lcom/glympse/android/lib/GServerPost;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/glympse/android/lib/hm;-><init>(Lcom/glympse/android/lib/GServerPost;Lcom/glympse/android/lib/GApiEndpoint;)V

    int-to-long v2, p2

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/lib/GHandlerManager;->postDelayed(Ljava/lang/Runnable;J)V

    const/4 v0, 0x1

    return v0
.end method

.method public doPost()V
    .registers 15

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cC()V

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/glympse/android/lib/hl;->isPosting()Z

    move-result v0

    if-nez v0, :cond_12

    iget v0, p0, Lcom/glympse/android/lib/hl;->rT:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    :try_start_13
    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cE()V

    iget-boolean v0, p0, Lcom/glympse/android/lib/hl;->rO:Z

    if-nez v0, :cond_15a

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isActive()Z

    move-result v0

    if-eqz v0, :cond_117

    iget-boolean v0, p0, Lcom/glympse/android/lib/hl;->rP:Z

    if-nez v0, :cond_117

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v10

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getTracking()Ljava/util/Enumeration;

    move-result-object v11

    :cond_36
    :goto_36
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v2}, Lcom/glympse/android/lib/GUserPrivate;->isSelf()Z

    move-result v0

    if-nez v0, :cond_36

    invoke-interface {v2}, Lcom/glympse/android/lib/GUserPrivate;->getActiveStandalone()Lcom/glympse/android/api/GTicket;

    move-result-object v3

    check-cast v3, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v10}, Lcom/glympse/android/api/GUserManager;->getUserTrackingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_76

    if-eqz v3, :cond_36

    invoke-interface {v3}, Lcom/glympse/android/lib/GTicketPrivate;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v6, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    new-instance v0, Lcom/glympse/android/lib/ew;

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/glympse/android/lib/hl;->pf:Z

    invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/ew;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GUserPrivate;Lcom/glympse/android/lib/GTicketPrivate;ZZ)V

    invoke-virtual {v6, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_6c} :catch_6d

    goto :goto_36

    :catch_6d
    move-exception v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    :cond_72
    :goto_72
    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cD()V

    goto :goto_12

    :cond_76
    :try_start_76
    invoke-interface {v2}, Lcom/glympse/android/lib/GUserPrivate;->getTickets()Lcom/glympse/android/core/GArray;

    move-result-object v1

    invoke-interface {v1}, Lcom/glympse/android/core/GArray;->length()I

    move-result v12

    const/4 v0, 0x0

    :goto_7f
    if-ge v0, v12, :cond_36

    invoke-interface {v1, v0}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v7}, Lcom/glympse/android/lib/GTicketPrivate;->isStandalone()Z

    move-result v4

    if-eqz v4, :cond_a5

    invoke-interface {v7}, Lcom/glympse/android/lib/GTicketPrivate;->isCompleted()Z

    move-result v4

    if-nez v4, :cond_a5

    if-ne v3, v7, :cond_a8

    const/4 v8, 0x1

    :goto_96
    iget-object v13, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    new-instance v4, Lcom/glympse/android/lib/ew;

    iget-object v5, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-boolean v9, p0, Lcom/glympse/android/lib/hl;->pf:Z

    move-object v6, v2

    invoke-direct/range {v4 .. v9}, Lcom/glympse/android/lib/ew;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GUserPrivate;Lcom/glympse/android/lib/GTicketPrivate;ZZ)V

    invoke-virtual {v13, v4}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    :cond_a5
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    :cond_a8
    const/4 v8, 0x0

    goto :goto_96

    :cond_aa
    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GGroupManager;->getTracking()Ljava/util/Enumeration;

    move-result-object v7

    :cond_b4
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_117

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glympse/android/lib/GGroupPrivate;

    const/4 v0, 0x4

    invoke-interface {v2}, Lcom/glympse/android/lib/GGroupPrivate;->getState()I

    move-result v1

    if-ne v0, v1, :cond_b4

    invoke-interface {v2}, Lcom/glympse/android/lib/GGroupPrivate;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    new-instance v1, Lcom/glympse/android/lib/cv;

    iget-object v3, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {v1, v3, v2}, Lcom/glympse/android/lib/cv;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;)V

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    invoke-interface {v2}, Lcom/glympse/android/lib/GGroupPrivate;->getMembers()Lcom/glympse/android/core/GArray;

    move-result-object v8

    invoke-interface {v8}, Lcom/glympse/android/core/GArray;->length()I

    move-result v9

    const/4 v0, 0x0

    move v6, v0

    :goto_e3
    if-ge v6, v9, :cond_b4

    invoke-interface {v8, v6}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glympse/android/lib/GGroupMemberPrivate;

    invoke-interface {v3}, Lcom/glympse/android/lib/GGroupMemberPrivate;->getUser()Lcom/glympse/android/api/GUser;

    move-result-object v4

    check-cast v4, Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v3}, Lcom/glympse/android/lib/GGroupMemberPrivate;->getTicket()Lcom/glympse/android/api/GTicket;

    move-result-object v5

    check-cast v5, Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v4}, Lcom/glympse/android/lib/GUserPrivate;->isSelf()Z

    move-result v0

    if-nez v0, :cond_113

    if-eqz v5, :cond_113

    invoke-interface {v5}, Lcom/glympse/android/lib/GTicketPrivate;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x12

    if-eqz v0, :cond_113

    iget-object v10, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    new-instance v0, Lcom/glympse/android/lib/ep;

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/ep;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;Lcom/glympse/android/lib/GGroupMemberPrivate;Lcom/glympse/android/lib/GUserPrivate;Lcom/glympse/android/lib/GTicketPrivate;)V

    invoke-virtual {v10, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    :cond_113
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_e3

    :cond_117
    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rQ:Lcom/glympse/android/lib/GTrackPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTrackPrivate;->length()I

    move-result v0

    if-eqz v0, :cond_18e

    const/16 v1, 0x262

    if-le v0, v1, :cond_165

    const/4 v0, 0x3

    const-string v1, "[ServerPost.doPost] First chunk of location points is prepared"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/lib/hl;->rP:Z

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rQ:Lcom/glympse/android/lib/GTrackPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTrackPrivate;->getLocationsRaw()Lcom/glympse/android/hal/GLinkedList;

    move-result-object v2

    new-instance v3, Lcom/glympse/android/hal/GLinkedList;

    invoke-direct {v3}, Lcom/glympse/android/hal/GLinkedList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_139
    const/16 v0, 0x262

    if-ge v1, v0, :cond_14d

    invoke-virtual {v2}, Lcom/glympse/android/hal/GLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/core/GLocation;

    invoke-virtual {v2}, Lcom/glympse/android/hal/GLinkedList;->removeFirst()Ljava/lang/Object;

    invoke-virtual {v3, v0}, Lcom/glympse/android/hal/GLinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_139

    :cond_14d
    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    new-instance v1, Lcom/glympse/android/lib/fq;

    iget-object v2, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/glympse/android/lib/fq;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/hal/GLinkedList;)V

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    :cond_15a
    :goto_15a
    invoke-virtual {p0}, Lcom/glympse/android/lib/hl;->haveDataToPost()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cH()V

    goto/16 :goto_72

    :cond_165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/lib/hl;->rP:Z

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    new-instance v1, Lcom/glympse/android/lib/fq;

    iget-object v2, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/glympse/android/lib/hl;->rQ:Lcom/glympse/android/lib/GTrackPrivate;

    invoke-interface {v4}, Lcom/glympse/android/lib/GTrackPrivate;->getLocationsRaw()Lcom/glympse/android/hal/GLinkedList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/glympse/android/lib/fq;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/hal/GLinkedList;)V

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    new-instance v0, Lcom/glympse/android/lib/iv;

    invoke-direct {v0}, Lcom/glympse/android/lib/iv;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->rQ:Lcom/glympse/android/lib/GTrackPrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GHistoryManagerPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->completePending()V

    goto :goto_15a

    :cond_18e
    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isSharingSiblings()Z

    move-result v0

    if-eqz v0, :cond_15a

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTicketProtocol()Lcom/glympse/android/lib/GTicketProtocol;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketProtocol;->refreshInvites()V
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_19f} :catch_6d

    goto :goto_15a
.end method

.method public doPost(I)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/glympse/android/lib/hl;->rW:J

    sub-long/2addr v0, v2

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->okToPost()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/glympse/android/lib/hl;->doPost()V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cG()V

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cD()V

    goto :goto_19
.end method

.method public enableIncognito(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/glympse/android/lib/hl;->pf:Z

    return-void
.end method

.method public enableSsl(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/glympse/android/lib/hl;->hV:Z

    return-void
.end method

.method public failedToCreate(ZILcom/glympse/android/api/GServerError;)V
    .registers 4

    invoke-virtual {p0, p2, p3}, Lcom/glympse/android/lib/hl;->failedToLogin(ILcom/glympse/android/api/GServerError;)V

    return-void
.end method

.method public failedToLogin(ILcom/glympse/android/api/GServerError;)V
    .registers 6

    const/4 v0, 0x4

    iput v0, p0, Lcom/glympse/android/lib/hl;->rT:I

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->stop()V

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->gQ:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthState()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/hl;->rT:I

    return v0
.end method

.method public getAuthUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rR:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPostRate()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/hl;->rY:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->hW:Ljava/lang/String;

    return-object v0
.end method

.method public haveDataToPost()Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-gtz v0, :cond_18

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rQ:Lcom/glympse/android/lib/GTrackPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTrackPrivate;->length()I

    move-result v0

    iget v1, p0, Lcom/glympse/android/lib/hl;->rY:I

    div-int/lit16 v1, v1, 0x3e8

    if-ge v0, v1, :cond_18

    iget-boolean v0, p0, Lcom/glympse/android/lib/hl;->rP:Z

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public haveLocationsToPost()Z
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rQ:Lcom/glympse/android/lib/GTrackPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTrackPrivate;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    if-eqz p2, :cond_a

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cB()V

    :cond_a
    return-void
.end method

.method public isIncognitoEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/hl;->pf:Z

    return v0
.end method

.method public isPosting()Z
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rZ:Lcom/glympse/android/lib/HttpJob;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isSslEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/hl;->hV:Z

    return v0
.end method

.method public loggedIn(Ljava/lang/String;J)V
    .registers 7

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->gM:Lcom/glympse/android/lib/GConfigPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getCurrentAccount()Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->gM:Lcom/glympse/android/lib/GConfigPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->gK:Ljava/lang/String;

    iget-object v2, p0, Lcom/glympse/android/lib/hl;->gL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GConfigPrivate;->saveCurrentAccount(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    iget-object v0, p0, Lcom/glympse/android/lib/hl;->gM:Lcom/glympse/android/lib/GConfigPrivate;

    invoke-interface {v0, p1, p2, p3}, Lcom/glympse/android/lib/GConfigPrivate;->saveAccessToken(Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/glympse/android/lib/hl;->gQ:Ljava/lang/String;

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cA()V

    return-void
.end method

.method public rememberEvents(I)V
    .registers 3

    iget v0, p0, Lcom/glympse/android/lib/hl;->sa:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/glympse/android/lib/hl;->sa:I

    return-void
.end method

.method public removeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rN:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Lcom/glympse/android/lib/GApiEndpoint;->cancel()V

    :cond_b
    return v0
.end method

.method public sendEvents()V
    .registers 6

    iget v0, p0, Lcom/glympse/android/lib/hl;->sa:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v2, 0x1

    iget v3, p0, Lcom/glympse/android/lib/hl;->sa:I

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/glympse/android/lib/hl;->sa:I

    :cond_12
    return-void
.end method

.method public sessionFailed(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x3

    iget v1, p0, Lcom/glympse/android/lib/hl;->rT:I

    if-eq v0, v1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/glympse/android/lib/hl;->gQ:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->gQ:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_12
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/hl;->rememberEvents(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/glympse/android/lib/hl;->rT:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->gQ:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->gM:Lcom/glympse/android/lib/GConfigPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->forgetAccessToken()V

    invoke-virtual {p0}, Lcom/glympse/android/lib/hl;->authenticate()V

    goto :goto_5
.end method

.method public setActive(Z)V
    .registers 4

    const/4 v0, 0x2

    invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getBackgroundMode()I

    move-result v1

    if-eq v0, v1, :cond_14

    if-eqz p1, :cond_34

    new-instance v0, Lcom/glympse/android/lib/hn;

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cI()Lcom/glympse/android/lib/GServerPost;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/hn;-><init>(Lcom/glympse/android/lib/GServerPost;)V

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->rU:Ljava/lang/Runnable;

    :cond_14
    :goto_14
    if-eqz p1, :cond_33

    invoke-virtual {p0}, Lcom/glympse/android/lib/hl;->isPosting()Z

    move-result v0

    if-nez v0, :cond_33

    const/4 v0, 0x3

    iget v1, p0, Lcom/glympse/android/lib/hl;->rT:I

    if-ne v0, v1, :cond_33

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->gM:Lcom/glympse/android/lib/GConfigPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->gQ:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->gQ:Ljava/lang/String;

    if-nez v0, :cond_33

    const/4 v0, 0x1

    iput v0, p0, Lcom/glympse/android/lib/hl;->rT:I

    invoke-virtual {p0}, Lcom/glympse/android/lib/hl;->authenticate()V

    :cond_33
    return-void

    :cond_34
    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cE()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->rU:Ljava/lang/Runnable;

    goto :goto_14
.end method

.method public setOfflineMode(Z)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_12

    const/4 v0, 0x3

    iput v0, p0, Lcom/glympse/android/lib/hl;->rT:I

    new-instance v0, Lcom/glympse/android/lib/HttpJob;

    invoke-direct {v0}, Lcom/glympse/android/lib/HttpJob;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->rZ:Lcom/glympse/android/lib/HttpJob;

    goto :goto_4

    :cond_12
    const/4 v0, 0x1

    iput v0, p0, Lcom/glympse/android/lib/hl;->rT:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->rZ:Lcom/glympse/android/lib/HttpJob;

    goto :goto_4
.end method

.method public setServerPostRate(I)V
    .registers 2

    iput p1, p0, Lcom/glympse/android/lib/hl;->rX:I

    return-void
.end method

.method public start(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/core/GPrimitive;)V
    .registers 6

    iput-object p1, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getNetworkManager()Lcom/glympse/android/api/GNetworkManager;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->rM:Lcom/glympse/android/api/GNetworkManager;

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->gM:Lcom/glympse/android/lib/GConfigPrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/lib/UrlParser;->prepareAuthUrlServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->rR:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/lib/UrlParser;->prepareBaseUrlServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/lib/hx;->b(Lcom/glympse/android/hal/GContextHolder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->hW:Ljava/lang/String;

    new-instance v0, Lcom/glympse/android/lib/hn;

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cI()Lcom/glympse/android/lib/GServerPost;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/hn;-><init>(Lcom/glympse/android/lib/GServerPost;)V

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->rU:Ljava/lang/Runnable;

    invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/hl;->rW:J

    if-eqz p2, :cond_8a

    const-string v0, "un"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->gK:Ljava/lang/String;

    const-string v0, "psw"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->gL:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->gM:Lcom/glympse/android/lib/GConfigPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->gQ:Ljava/lang/String;

    const-string v0, "key"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getApiKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->gM:Lcom/glympse/android/lib/GConfigPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->gK:Ljava/lang/String;

    iget-object v2, p0, Lcom/glympse/android/lib/hl;->gL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GConfigPrivate;->saveCurrentAccount(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8a
    new-instance v0, Lcom/glympse/android/lib/e;

    invoke-direct {v0}, Lcom/glympse/android/lib/e;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/hl;->rS:Lcom/glympse/android/lib/GAccountManager;

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rS:Lcom/glympse/android/lib/GAccountManager;

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->ah()Lcom/glympse/android/lib/GAccountListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GAccountManager;->setAccountListener(Lcom/glympse/android/lib/GAccountListener;)V

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rS:Lcom/glympse/android/lib/GAccountManager;

    iget-object v1, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GAccountManager;->start(Lcom/glympse/android/lib/GGlympsePrivate;)V

    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/hl;->rS:Lcom/glympse/android/lib/GAccountManager;

    invoke-interface {v0}, Lcom/glympse/android/lib/GAccountManager;->stop()V

    iput-object v1, p0, Lcom/glympse/android/lib/hl;->rS:Lcom/glympse/android/lib/GAccountManager;

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cE()V

    iput-object v1, p0, Lcom/glympse/android/lib/hl;->rU:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/glympse/android/lib/hl;->cC()V

    iput-object v1, p0, Lcom/glympse/android/lib/hl;->rZ:Lcom/glympse/android/lib/HttpJob;

    iput-object v1, p0, Lcom/glympse/android/lib/hl;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object v1, p0, Lcom/glympse/android/lib/hl;->gM:Lcom/glympse/android/lib/GConfigPrivate;

    iput-object v1, p0, Lcom/glympse/android/lib/hl;->rM:Lcom/glympse/android/api/GNetworkManager;

    iput-object v1, p0, Lcom/glympse/android/lib/hl;->gQ:Ljava/lang/String;

    return-void
.end method
