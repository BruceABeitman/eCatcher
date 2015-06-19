.class public abstract Lcom/ford/syncV4/transport/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Boolean;

.field private b:Ljava/lang/String;

.field private c:Lcom/ford/syncV4/transport/f;


# direct methods
.method protected constructor <init>(Lcom/ford/syncV4/transport/f;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ford/syncV4/transport/h;->a:Ljava/lang/Boolean;

    const-string v0, "lock"

    iput-object v0, p0, Lcom/ford/syncV4/transport/h;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ford/syncV4/transport/h;->c:Lcom/ford/syncV4/transport/f;

    if-nez p1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided transport listener interface reference is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iput-object p1, p0, Lcom/ford/syncV4/transport/h;->c:Lcom/ford/syncV4/transport/f;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ford/syncV4/transport/h;->a:Ljava/lang/Boolean;

    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transport.disconnect: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->a:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "42baba60-eb57-11df-98cf-0800200c9a66"

    invoke-static/range {v0 .. v5}, Lcom/ford/syncV4/trace/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;[BILjava/lang/String;)V

    iget-object v0, p0, Lcom/ford/syncV4/transport/h;->c:Lcom/ford/syncV4/transport/f;

    invoke-interface {v0, p1}, Lcom/ford/syncV4/transport/f;->a(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_25} :catch_26

    :goto_25
    return-void

    :catch_26
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failure propagating onTransportDisconnected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ford/syncV4/transport/h;->a:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/ford/syncV4/transport/h;->c:Lcom/ford/syncV4/transport/f;

    invoke-interface {v0, p1, p2}, Lcom/ford/syncV4/transport/f;->b(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method protected final a([BI)V
    .registers 9

    if-lez p2, :cond_16

    :try_start_2
    invoke-static {p1, p2}, Lcom/ford/syncV4/transport/SiphonServer;->a([BI)Ljava/lang/Boolean;

    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->b:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;

    const-string v5, "42baba60-eb57-11df-98cf-0800200c9a66"

    move-object v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/ford/syncV4/trace/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;[BILjava/lang/String;)V

    iget-object v0, p0, Lcom/ford/syncV4/transport/h;->c:Lcom/ford/syncV4/transport/f;

    invoke-interface {v0, p1, p2}, Lcom/ford/syncV4/transport/f;->a([BI)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    :cond_16
    :goto_16
    return-void

    :catch_17
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failure propagating handleBytesFromTransport: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "Failure propagating "

    invoke-virtual {p0, v1, v0}, Lcom/ford/syncV4/transport/h;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_16
.end method

.method protected abstract a([BII)Z
.end method

.method public abstract b()V
.end method

.method public final b([BII)Z
    .registers 12

    iget-object v1, p0, Lcom/ford/syncV4/transport/h;->b:Ljava/lang/String;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/ford/syncV4/transport/h;->a([BII)Z

    move-result v7

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_19

    invoke-static {p1, p2, p3}, Lcom/ford/syncV4/transport/SiphonServer;->a([BII)Ljava/lang/Boolean;

    const-string v0, ""

    const/4 v1, 0x0

    sget-object v2, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->a:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;

    const-string v6, "42baba60-eb57-11df-98cf-0800200c9a66"

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/ford/syncV4/trace/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;[BIILjava/lang/String;)V

    return v7

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public abstract c()Lcom/ford/syncV4/transport/TransportType;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public final e()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/transport/h;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected final f()V
    .registers 7

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ford/syncV4/transport/h;->a:Ljava/lang/Boolean;

    :try_start_7
    const-string v0, "Transport.connected"

    const/4 v1, 0x0

    sget-object v2, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->b:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "42baba60-eb57-11df-98cf-0800200c9a66"

    invoke-static/range {v0 .. v5}, Lcom/ford/syncV4/trace/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;[BILjava/lang/String;)V

    iget-object v0, p0, Lcom/ford/syncV4/transport/h;->c:Lcom/ford/syncV4/transport/f;

    invoke-interface {v0}, Lcom/ford/syncV4/transport/f;->b()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_19

    :goto_18
    return-void

    :catch_19
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failure propagating onTransportConnected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "Failure propagating onTransportConnected"

    invoke-virtual {p0, v1, v0}, Lcom/ford/syncV4/transport/h;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_18
.end method
