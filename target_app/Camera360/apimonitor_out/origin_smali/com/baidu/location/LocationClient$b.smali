.class Lcom/baidu/location/LocationClient$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/LocationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/LocationClient;


# direct methods
.method private constructor <init>(Lcom/baidu/location/LocationClient;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/location/LocationClient$b;->a:Lcom/baidu/location/LocationClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/LocationClient;Lcom/baidu/location/LocationClient$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/location/LocationClient$b;-><init>(Lcom/baidu/location/LocationClient;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/baidu/location/LocationClient$b;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->do(Lcom/baidu/location/LocationClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/baidu/location/LocationClient$b;->a:Lcom/baidu/location/LocationClient;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/baidu/location/LocationClient;->for(Lcom/baidu/location/LocationClient;Z)Z

    iget-object v0, p0, Lcom/baidu/location/LocationClient$b;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->char(Lcom/baidu/location/LocationClient;)Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/baidu/location/LocationClient$b;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->int(Lcom/baidu/location/LocationClient;)Landroid/os/Messenger;

    move-result-object v0

    if-nez v0, :cond_1f

    :cond_1d
    monitor-exit v1

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/baidu/location/LocationClient$b;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->else(Lcom/baidu/location/LocationClient;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/baidu/location/LocationClient$b;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->else(Lcom/baidu/location/LocationClient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_39

    :cond_34
    monitor-exit v1

    goto :goto_1e

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v0

    :cond_39
    :try_start_39
    const-string/jumbo v0, "baidu_location_Client"

    const-string/jumbo v2, "request location ..."

    invoke-static {v0, v2}, Lcom/baidu/location/j;->if(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/location/LocationClient$b;->a:Lcom/baidu/location/LocationClient;

    invoke-static {v0}, Lcom/baidu/location/LocationClient;->try(Lcom/baidu/location/LocationClient;)Lcom/baidu/location/LocationClient$a;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClient$a;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_36

    goto :goto_1e
.end method
