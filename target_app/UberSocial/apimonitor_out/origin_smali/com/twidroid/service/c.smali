.class Lcom/twidroid/service/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/service/StreamingService;


# direct methods
.method private constructor <init>(Lcom/twidroid/service/StreamingService;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/service/c;->a:Lcom/twidroid/service/StreamingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twidroid/service/StreamingService;Lcom/twidroid/service/StreamingService$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/twidroid/service/c;-><init>(Lcom/twidroid/service/StreamingService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v0, "StreamingService"

    const-string v1, "Connection state changed!"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/service/c;->a:Lcom/twidroid/service/StreamingService;

    invoke-static {v0}, Lcom/twidroid/service/StreamingService;->a(Lcom/twidroid/service/StreamingService;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->aP()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "StreamingService"

    const-string v1, "not using streaming, nothing to do"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    return-void

    :cond_1b
    iget-object v0, p0, Lcom/twidroid/service/c;->a:Lcom/twidroid/service/StreamingService;

    invoke-static {v0}, Lcom/twidroid/service/StreamingService;->c(Lcom/twidroid/service/StreamingService;)Z

    move-result v0

    if-nez v0, :cond_4c

    const-string v0, "StreamingService"

    const-string v1, "Service detected connection change to mobile or other"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/twidroid/service/StreamingService;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_2d
    sget-object v0, Lcom/twidroid/service/StreamingService;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/net/a/c/a/k;

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/a/d;->g()V

    goto :goto_37

    :catchall_47
    move-exception v0

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_2d .. :try_end_49} :catchall_47

    throw v0

    :cond_4a
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_47

    goto :goto_1a

    :cond_4c
    const-string v0, "StreamingService"

    const-string v1, "Service detected connection change to WIFI"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/twidroid/service/StreamingService;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_56
    sget-object v0, Lcom/twidroid/service/StreamingService;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_60
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/net/a/c/a/k;

    invoke-virtual {v0}, Lcom/twidroid/net/a/c/a/d;->a()V

    goto :goto_60

    :catchall_70
    move-exception v0

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_56 .. :try_end_72} :catchall_70

    throw v0

    :cond_73
    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_70

    goto :goto_1a
.end method
