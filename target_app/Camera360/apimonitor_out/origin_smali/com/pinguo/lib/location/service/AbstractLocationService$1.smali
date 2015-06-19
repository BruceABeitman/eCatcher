.class Lcom/pinguo/lib/location/service/AbstractLocationService$1;
.super Ljava/lang/Object;
.source "AbstractLocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/lib/location/service/AbstractLocationService;->requestAddress(Lcom/pinguo/lib/location/data/PGLocation;Lcom/pinguo/lib/location/IPGLocationManager$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/lib/location/service/AbstractLocationService;


# direct methods
.method constructor <init>(Lcom/pinguo/lib/location/service/AbstractLocationService;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/lib/location/service/AbstractLocationService$1;->this$0:Lcom/pinguo/lib/location/service/AbstractLocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x3

    invoke-static {}, Lcom/pinguo/lib/location/service/AbstractLocationService;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "location timer thread begin to run"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_c
    iget-object v2, p0, Lcom/pinguo/lib/location/service/AbstractLocationService$1;->this$0:Lcom/pinguo/lib/location/service/AbstractLocationService;

    iget-object v2, v2, Lcom/pinguo/lib/location/service/AbstractLocationService;->mGeocodingTask:Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;

    const-wide/16 v3, 0x7d0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_17} :catch_18
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c .. :try_end_17} :catch_33
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_c .. :try_end_17} :catch_4e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c .. :try_end_17} :catch_7e

    :goto_17
    return-void

    :catch_18
    move-exception v0

    invoke-static {}, Lcom/pinguo/lib/location/service/AbstractLocationService;->access$0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v6, v1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/lib/location/PGLocationManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_17

    :catch_33
    move-exception v0

    invoke-static {}, Lcom/pinguo/lib/location/service/AbstractLocationService;->access$0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v6, v1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/lib/location/PGLocationManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_17

    :catch_4e
    move-exception v0

    invoke-static {}, Lcom/pinguo/lib/location/service/AbstractLocationService;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timeout and cancel geocoding task"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/lib/location/service/AbstractLocationService$1;->this$0:Lcom/pinguo/lib/location/service/AbstractLocationService;

    iget-object v2, v2, Lcom/pinguo/lib/location/service/AbstractLocationService;->mGeocodingTask:Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;

    invoke-virtual {v2, v7}, Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;->cancel(Z)Z

    invoke-static {}, Lcom/pinguo/lib/location/service/AbstractLocationService;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "inform location manager"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/lib/location/PGLocationManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_17

    :catch_7e
    move-exception v0

    invoke-static {}, Lcom/pinguo/lib/location/service/AbstractLocationService;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "cancellation exception happens and cancel geocoding task"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/lib/location/service/AbstractLocationService$1;->this$0:Lcom/pinguo/lib/location/service/AbstractLocationService;

    iget-object v2, v2, Lcom/pinguo/lib/location/service/AbstractLocationService;->mGeocodingTask:Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;

    invoke-virtual {v2, v7}, Lcom/pinguo/lib/location/service/AbstractLocationService$AbstractReverseGeocodingTask;->cancel(Z)Z

    invoke-static {}, Lcom/pinguo/lib/location/service/AbstractLocationService;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "inform location manager"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iput v6, v1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/lib/location/PGLocationManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_17
.end method
