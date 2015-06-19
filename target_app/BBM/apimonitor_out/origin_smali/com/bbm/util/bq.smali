.class final Lcom/bbm/util/bq;
.super Lcom/bbm/ui/activities/ajz;
.source "HttpLoader.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/ajz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/util/bq;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Lcom/bbm/ui/activities/ajy;)V
    .registers 7

    invoke-static {}, Lcom/bbm/util/bo;->a()Ljava/util/PriorityQueue;

    move-result-object v2

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lcom/bbm/util/bo;->a()Ljava/util/PriorityQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/bs;

    iget-object v3, v0, Lcom/bbm/util/bs;->c:Lcom/bbm/ui/activities/ajy;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Queue remove stopped "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/bbm/util/bs;->g:Ljava/net/URL;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    monitor-enter v0
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_47

    const/4 v3, 0x1

    :try_start_3d
    iput-boolean v3, v0, Lcom/bbm/util/bs;->e:Z

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_44

    goto :goto_d

    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0

    throw v1
    :try_end_47
    .catchall {:try_start_45 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_4a
    :try_start_4a
    invoke-static {}, Lcom/bbm/util/bo;->d()Ljava/util/PriorityQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_52
    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/bs;

    iget-object v3, v0, Lcom/bbm/util/bs;->c:Lcom/bbm/ui/activities/ajy;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Preload remove stopped "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/bbm/util/bs;->g:Ljava/net/URL;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/bbm/x;->e(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_52

    :cond_81
    invoke-static {}, Lcom/bbm/util/bo;->c()V

    monitor-exit v2
    :try_end_85
    .catchall {:try_start_4a .. :try_end_85} :catchall_47

    return-void
.end method
