.class Lcom/glympse/android/lib/aa;
.super Ljava/lang/Object;
.source "BatteryManager.java"

# interfaces
.implements Lcom/glympse/android/hal/GBatteryListener;
.implements Lcom/glympse/android/lib/GBatteryManagerPrivate;


# instance fields
.field private I:Z

.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private hE:Lcom/glympse/android/lib/CommonSink;

.field private ia:I

.field private ib:I

.field private ic:I

.field private id:Lcom/glympse/android/hal/GBatteryProvider;

.field private ie:Z

.field private if:Z

.field private ig:Z

.field private ih:Lcom/glympse/android/hal/GTimer;


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/glympse/android/lib/aa;->ia:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/glympse/android/lib/aa;->ib:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/glympse/android/lib/aa;->ic:I

    new-instance v0, Lcom/glympse/android/lib/CommonSink;

    const-string v1, "BatteryManager"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/glympse/android/lib/aa;->hE:Lcom/glympse/android/lib/CommonSink;

    iput-boolean v3, p0, Lcom/glympse/android/lib/aa;->ie:Z

    iput-boolean v2, p0, Lcom/glympse/android/lib/aa;->if:Z

    iput-boolean v2, p0, Lcom/glympse/android/lib/aa;->I:Z

    iput-boolean v3, p0, Lcom/glympse/android/lib/aa;->ig:Z

    return-void
.end method

.method private ao()Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v0

    invoke-virtual {p0}, Lcom/glympse/android/lib/aa;->isBatteryOk()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->isSharing()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->haveLocationsToPost()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private ap()V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->ih:Lcom/glympse/android/hal/GTimer;

    if-nez v0, :cond_24

    const/4 v0, 0x1

    const-string v1, "[BatteryManager.startWatchdogTimer]"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Lcom/glympse/android/lib/ab;

    iget-object v1, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/ab;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;)V

    const-wide/16 v1, 0x7530

    iget-object v3, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v3}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/glympse/android/hal/HalFactory;->createTimer(Ljava/lang/Runnable;JLcom/glympse/android/core/GHandler;)Lcom/glympse/android/hal/GTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/aa;->ih:Lcom/glympse/android/hal/GTimer;

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->ih:Lcom/glympse/android/hal/GTimer;

    invoke-interface {v0}, Lcom/glympse/android/hal/GTimer;->start()V

    :cond_24
    return-void
.end method

.method private aq()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->ih:Lcom/glympse/android/hal/GTimer;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    const-string v1, "[BatteryManager.stopWatchdogTimer]"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->ih:Lcom/glympse/android/hal/GTimer;

    invoke-interface {v0}, Lcom/glympse/android/hal/GTimer;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/aa;->ih:Lcom/glympse/android/hal/GTimer;

    :cond_12
    return-void
.end method


# virtual methods
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public associateContext(JLjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V

    return-void
.end method

.method public clearContext(J)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V

    return-void
.end method

.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V

    return-void
.end method

.method public enableWakeLock(Z)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/glympse/android/lib/aa;->ig:Z

    if-eq p1, v0, :cond_4

    iput-boolean p1, p0, Lcom/glympse/android/lib/aa;->ig:Z

    invoke-virtual {p0}, Lcom/glympse/android/lib/aa;->setKeepAwake()V

    goto :goto_4
.end method

.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/api/GEventSink;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/lib/CommonSink;->eventsOccurred(Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public getContext(J)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContextKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getListener()Lcom/glympse/android/hal/GBatteryListener;
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/hal/GBatteryListener;

    return-object v0
.end method

.method public getListeners()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GEventListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Lcom/glympse/android/hal/GBatteryProvider;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    return-object v0
.end method

.method public hasContext(J)Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z

    move-result v0

    return v0
.end method

.method public isBatteryForce()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/aa;->if:Z

    return v0
.end method

.method public isBatteryLevelGood()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/aa;->ie:Z

    return v0
.end method

.method public isBatteryOk()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/aa;->ie:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/glympse/android/lib/aa;->if:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isWakeLockEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/aa;->ig:Z

    return v0
.end method

.method public logBatteryEvent(Lcom/glympse/android/api/GTicket;)V
    .registers 7

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isActive()Z

    move-result v0

    if-eqz v0, :cond_49

    move v0, v1

    :goto_c
    shl-int/lit8 v4, v0, 0x0

    iget-boolean v0, p0, Lcom/glympse/android/lib/aa;->ie:Z

    if-eqz v0, :cond_4b

    move v0, v2

    :goto_13
    shl-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v4

    iget-object v4, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    invoke-interface {v4}, Lcom/glympse/android/hal/GBatteryProvider;->isPlugged()Z

    move-result v4

    if-eqz v4, :cond_53

    :goto_1e
    shl-int/lit8 v1, v1, 0x3

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    invoke-interface {v1}, Lcom/glympse/android/hal/GBatteryProvider;->getLevel()I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    new-instance v1, Lcom/glympse/android/lib/Primitive;

    invoke-direct {v1, v3}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    const-string v2, "state"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v0

    invoke-interface {v1, v2, v3, v4}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getDiagnosticsManager()Lcom/glympse/android/lib/GDiagnosticsManager;

    move-result-object v0

    const-string v2, "battery"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2, v1}, Lcom/glympse/android/lib/GDiagnosticsManager;->logEvent(Lcom/glympse/android/api/GTicket;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    return-void

    :cond_49
    move v0, v2

    goto :goto_c

    :cond_4b
    iget-boolean v0, p0, Lcom/glympse/android/lib/aa;->if:Z

    if-eqz v0, :cond_51

    move v0, v1

    goto :goto_13

    :cond_51
    move v0, v3

    goto :goto_13

    :cond_53
    move v1, v2

    goto :goto_1e
.end method

.method public memoryWarningReceived()V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v1, Lcom/glympse/android/lib/Primitive;

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    const-string v0, "state"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "low"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "platform"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isActive()Z

    move-result v0

    if-eqz v0, :cond_41

    const-string v0, "active"

    :goto_2a
    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getDiagnosticsManager()Lcom/glympse/android/lib/GDiagnosticsManager;

    move-result-object v0

    const-string v2, "memory"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/glympse/android/lib/GDiagnosticsManager;->logEvent(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    goto :goto_4

    :cond_41
    const-string v0, "inactive"

    goto :goto_2a
.end method

.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public setBatteryForce()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/glympse/android/lib/aa;->ie:Z

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/glympse/android/lib/aa;->if:Z

    if-eqz v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    iput-boolean v2, p0, Lcom/glympse/android/lib/aa;->if:Z

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->okToPost()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->doPost()V

    :cond_22
    iget-object v0, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/glympse/android/lib/aa;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/glympse/android/lib/aa;->logBatteryEvent(Lcom/glympse/android/api/GTicket;)V

    goto :goto_e
.end method

.method public setBatteryLevels(II)Z
    .registers 6

    const/16 v0, 0x64

    if-ltz p1, :cond_c

    if-gt p1, v0, :cond_c

    if-ltz p2, :cond_c

    if-gt p2, v0, :cond_c

    if-le p1, p2, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    iput p1, p0, Lcom/glympse/android/lib/aa;->ia:I

    iput p2, p0, Lcom/glympse/android/lib/aa;->ib:I

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    invoke-interface {v0}, Lcom/glympse/android/hal/GBatteryProvider;->getLevel()I

    move-result v0

    iget-object v1, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    invoke-interface {v1}, Lcom/glympse/android/hal/GBatteryProvider;->isPlugged()Z

    move-result v1

    iget-object v2, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    invoke-interface {v2}, Lcom/glympse/android/hal/GBatteryProvider;->isPresent()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/glympse/android/lib/aa;->updateStatus(IZZ)V

    :cond_2b
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public setKeepAwake()V
    .registers 3

    invoke-direct {p0}, Lcom/glympse/android/lib/aa;->ao()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lcom/glympse/android/lib/aa;->ig:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    invoke-interface {v1}, Lcom/glympse/android/hal/GBatteryProvider;->acquireWakeLock()V

    :cond_f
    invoke-direct {p0}, Lcom/glympse/android/lib/aa;->ap()V

    :cond_12
    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    invoke-interface {v0}, Lcom/glympse/android/hal/GBatteryProvider;->releaseWakeLock()V

    invoke-direct {p0}, Lcom/glympse/android/lib/aa;->aq()V

    :cond_1c
    return-void
.end method

.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 5

    iput-object p1, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/HalFactory;->createBatteryProvider(Landroid/content/Context;)Lcom/glympse/android/hal/GBatteryProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    iget-object v1, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/hal/GBatteryListener;

    invoke-interface {v1, v0}, Lcom/glympse/android/hal/GBatteryProvider;->setBatteryListener(Lcom/glympse/android/hal/GBatteryListener;)V

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    invoke-interface {v0}, Lcom/glympse/android/hal/GBatteryProvider;->start()V

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    invoke-interface {v0}, Lcom/glympse/android/hal/GBatteryProvider;->getLevel()I

    move-result v0

    iget-object v1, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    invoke-interface {v1}, Lcom/glympse/android/hal/GBatteryProvider;->isPlugged()Z

    move-result v1

    iget-object v2, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    invoke-interface {v2}, Lcom/glympse/android/hal/GBatteryProvider;->isPresent()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/glympse/android/lib/aa;->updateStatus(IZZ)V

    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/glympse/android/lib/aa;->aq()V

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->removeAllListeners()Z

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    invoke-interface {v0}, Lcom/glympse/android/hal/GBatteryProvider;->stop()V

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    invoke-interface {v0, v1}, Lcom/glympse/android/hal/GBatteryProvider;->setBatteryListener(Lcom/glympse/android/hal/GBatteryListener;)V

    iput-object v1, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    iput-object v1, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-void
.end method

.method public updateStatus()V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    invoke-interface {v0}, Lcom/glympse/android/hal/GBatteryProvider;->getLevel()I

    move-result v0

    iget-object v1, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    invoke-interface {v1}, Lcom/glympse/android/hal/GBatteryProvider;->isPlugged()Z

    move-result v1

    iget-object v2, p0, Lcom/glympse/android/lib/aa;->id:Lcom/glympse/android/hal/GBatteryProvider;

    invoke-interface {v2}, Lcom/glympse/android/hal/GBatteryProvider;->isPresent()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/glympse/android/lib/aa;->updateStatus(IZZ)V

    :cond_19
    return-void
.end method

.method public updateStatus(IZZ)V
    .registers 10

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_9

    if-gez p1, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget v0, p0, Lcom/glympse/android/lib/aa;->ia:I

    if-gt p1, v0, :cond_61

    move v0, v1

    :goto_f
    iget v3, p0, Lcom/glympse/android/lib/aa;->ib:I

    if-lt p1, v3, :cond_63

    move v3, v1

    :goto_14
    iget-boolean v4, p0, Lcom/glympse/android/lib/aa;->ie:Z

    if-nez v3, :cond_20

    if-nez p2, :cond_20

    if-eqz p3, :cond_20

    iget v3, p0, Lcom/glympse/android/lib/aa;->ia:I

    if-nez v3, :cond_7d

    :cond_20
    move v3, v1

    :goto_21
    if-eqz v0, :cond_7b

    if-nez p2, :cond_7b

    if-eqz p3, :cond_7b

    iget v0, p0, Lcom/glympse/android/lib/aa;->ia:I

    if-lez v0, :cond_7b

    move v0, v2

    :goto_2c
    iget-boolean v3, p0, Lcom/glympse/android/lib/aa;->ie:Z

    if-eq v0, v3, :cond_65

    iput-boolean v0, p0, Lcom/glympse/android/lib/aa;->ie:Z

    iget-boolean v0, p0, Lcom/glympse/android/lib/aa;->ie:Z

    if-eqz v0, :cond_41

    iput-boolean v2, p0, Lcom/glympse/android/lib/aa;->if:Z

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->doPost()V

    :cond_41
    iget-object v0, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->startStopLocation()V

    const/4 v0, 0x3

    const-string v2, "[BatteryManager.updateStatus] Changed"

    invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v2, v1, v5}, Lcom/glympse/android/lib/aa;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    invoke-virtual {p0, v5}, Lcom/glympse/android/lib/aa;->logBatteryEvent(Lcom/glympse/android/api/GTicket;)V

    :cond_55
    :goto_55
    iget-boolean v0, p0, Lcom/glympse/android/lib/aa;->I:Z

    if-eq v0, p2, :cond_5e

    iget-object v0, p0, Lcom/glympse/android/lib/aa;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->startStopLocation()V

    :cond_5e
    iput-boolean p2, p0, Lcom/glympse/android/lib/aa;->I:Z

    goto :goto_9

    :cond_61
    move v0, v2

    goto :goto_f

    :cond_63
    move v3, v2

    goto :goto_14

    :cond_65
    iget v0, p0, Lcom/glympse/android/lib/aa;->ic:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_75

    iget v0, p0, Lcom/glympse/android/lib/aa;->ic:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_55

    :cond_75
    iput p1, p0, Lcom/glympse/android/lib/aa;->ic:I

    invoke-virtual {p0, v5}, Lcom/glympse/android/lib/aa;->logBatteryEvent(Lcom/glympse/android/api/GTicket;)V

    goto :goto_55

    :cond_7b
    move v0, v3

    goto :goto_2c

    :cond_7d
    move v3, v4

    goto :goto_21
.end method
