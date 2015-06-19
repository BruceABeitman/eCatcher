.class public Lcom/mobileapptracker/Tracker;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    if-eqz p2, :cond_61

    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string v0, "referrer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_61

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileAppTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MAT received referrer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mat_referrer"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "referrer"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/mobileapptracker/g;->a()Lcom/mobileapptracker/g;

    move-result-object v0

    if-eqz v0, :cond_61

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobileapptracker/g;->f:Z

    iget-boolean v1, v0, Lcom/mobileapptracker/g;->e:Z

    if-eqz v1, :cond_61

    iget-boolean v1, v0, Lcom/mobileapptracker/g;->h:Z

    if-nez v1, :cond_61

    iget-object v1, v0, Lcom/mobileapptracker/g;->l:Ljava/util/concurrent/ExecutorService;

    monitor-enter v1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_58} :catch_65

    :try_start_58
    iget-object v2, v0, Lcom/mobileapptracker/g;->l:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mobileapptracker/g;->h:Z

    monitor-exit v1
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_62

    :cond_61
    :goto_61
    return-void

    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit v1

    throw v0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_65} :catch_65

    :catch_65
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_61
.end method
