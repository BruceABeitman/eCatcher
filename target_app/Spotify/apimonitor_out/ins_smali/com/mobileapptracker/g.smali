.class public final Lcom/mobileapptracker/g;
.super Ljava/lang/Object;
.field private static volatile t:Lcom/mobileapptracker/g;
.field protected a:Lcom/mobileapptracker/e;
.field protected b:Lcom/mobileapptracker/f;
.field protected c:Z
.field protected d:Z
.field protected e:Z
.field protected f:Z
.field protected g:Z
.field protected h:Z
.field protected i:Landroid/content/BroadcastReceiver;
.field protected j:Lcom/mobileapptracker/h;
.field protected k:Landroid/content/Context;
.field protected l:Ljava/util/concurrent/ExecutorService;
.field protected m:Ljava/util/concurrent/ExecutorService;
.field protected n:Lcom/mobileapptracker/b;
.field private final o:Ljava/lang/String;
.field private p:Lcom/mobileapptracker/r;
.field private q:Lcom/mobileapptracker/a;
.field private r:Z
.field private s:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/mobileapptracker/g;->t:Lcom/mobileapptracker/g;
return-void
.end method
.method protected constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "heF9BATUfWuISyO8"
iput-object v0, p0, Lcom/mobileapptracker/g;->o:Ljava/lang/String;
return-void
.end method
.method public static declared-synchronized a()Lcom/mobileapptracker/g;
.registers 2
const-class v0, Lcom/mobileapptracker/g;
monitor-enter v0
:try_start_3
sget-object v1, Lcom/mobileapptracker/g;->t:Lcom/mobileapptracker/g;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_7
monitor-exit v0
return-object v1
:catchall_7
move-exception v1
monitor-exit v0
throw v1
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/mobileapptracker/g;
invoke-direct {v0}, Lcom/mobileapptracker/g;-><init>()V
sput-object v0, Lcom/mobileapptracker/g;->t:Lcom/mobileapptracker/g;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
iput-object v1, v0, Lcom/mobileapptracker/g;->k:Landroid/content/Context;
sget-object v0, Lcom/mobileapptracker/g;->t:Lcom/mobileapptracker/g;
invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
move-result-object v1
iput-object v1, v0, Lcom/mobileapptracker/g;->m:Ljava/util/concurrent/ExecutorService;
sget-object v0, Lcom/mobileapptracker/g;->t:Lcom/mobileapptracker/g;
iget-object v1, v0, Lcom/mobileapptracker/g;->k:Landroid/content/Context;
invoke-static {v1, p1}, Lcom/mobileapptracker/h;->a(Landroid/content/Context;Ljava/lang/String;)V
invoke-static {}, Lcom/mobileapptracker/h;->a()Lcom/mobileapptracker/h;
move-result-object v1
iput-object v1, v0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
move-result-object v1
iput-object v1, v0, Lcom/mobileapptracker/g;->l:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/mobileapptracker/r;
invoke-direct {v1}, Lcom/mobileapptracker/r;-><init>()V
iput-object v1, v0, Lcom/mobileapptracker/g;->p:Lcom/mobileapptracker/r;
new-instance v1, Lcom/mobileapptracker/a;
invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
const-string v3, "heF9BATUfWuISyO8"
invoke-direct {v1, v2, v3}, Lcom/mobileapptracker/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iput-object v1, v0, Lcom/mobileapptracker/g;->q:Lcom/mobileapptracker/a;
iput-boolean v5, v0, Lcom/mobileapptracker/g;->g:Z
iput-boolean v4, v0, Lcom/mobileapptracker/g;->d:Z
iput-boolean v4, v0, Lcom/mobileapptracker/g;->c:Z
iput-boolean v4, v0, Lcom/mobileapptracker/g;->r:Z
iput-boolean v4, v0, Lcom/mobileapptracker/g;->s:Z
new-instance v1, Lcom/mobileapptracker/b;
iget-object v2, v0, Lcom/mobileapptracker/g;->k:Landroid/content/Context;
invoke-direct {v1, v2, v0}, Lcom/mobileapptracker/b;-><init>(Landroid/content/Context;Lcom/mobileapptracker/g;)V
iput-object v1, v0, Lcom/mobileapptracker/g;->n:Lcom/mobileapptracker/b;
invoke-virtual {v0}, Lcom/mobileapptracker/g;->b()V
new-instance v1, Lcom/mobileapptracker/s;
invoke-direct {v1, v0}, Lcom/mobileapptracker/s;-><init>(Lcom/mobileapptracker/g;)V
iput-object v1, v0, Lcom/mobileapptracker/g;->i:Landroid/content/BroadcastReceiver;
iget-boolean v1, v0, Lcom/mobileapptracker/g;->c:Z
if-eqz v1, :cond_68
:try_start_5f
iget-object v1, v0, Lcom/mobileapptracker/g;->k:Landroid/content/Context;
iget-object v2, v0, Lcom/mobileapptracker/g;->i:Landroid/content/BroadcastReceiver;
invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
:goto_66
:try_end_66
.catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_66} :catch_7b
iput-boolean v4, v0, Lcom/mobileapptracker/g;->c:Z
:cond_68
new-instance v1, Landroid/content/IntentFilter;
const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
iget-object v2, v0, Lcom/mobileapptracker/g;->k:Landroid/content/Context;
iget-object v3, v0, Lcom/mobileapptracker/g;->i:Landroid/content/BroadcastReceiver;
invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
iput-boolean v5, v0, Lcom/mobileapptracker/g;->c:Z
iput-boolean v5, v0, Lcom/mobileapptracker/g;->d:Z
return-void
:catch_7b
move-exception v1
goto :goto_66
.end method
.method static synthetic a(Lcom/mobileapptracker/g;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/mobileapptracker/g;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private declared-synchronized a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
.registers 11
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/mobileapptracker/g;->d:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_a5
if-nez v0, :cond_7
:goto_5
:cond_5
monitor-exit p0
return-void
:try_start_7
:cond_7
invoke-virtual {p0}, Lcom/mobileapptracker/g;->b()V
iget-object v0, p0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
const-string v1, "conversion"
invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->a(Ljava/lang/String;)V
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
instance-of v1, p1, Ljava/lang/String;
if-eqz v1, :cond_b0
const-string v1, "close"
invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_5
const-string v1, "open"
invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_42
const-string v1, "install"
invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_42
const-string v1, "update"
invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_42
const-string v1, "session"
invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_a8
:cond_42
iget-object v1, p0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
const-string v2, "session"
invoke-virtual {v1, v2}, Lcom/mobileapptracker/h;->a(Ljava/lang/String;)V
new-instance v1, Ljava/util/Date;
invoke-virtual {v0}, Ljava/util/Date;->getTime()J
move-result-wide v2
const-wide/32 v4, 0xea60
add-long/2addr v2, v4
invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V
:goto_56
iget-object v0, p0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
const-wide/16 v1, 0x0
invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->m(Ljava/lang/String;)V
iget-object v0, p0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
invoke-virtual {v0, p2}, Lcom/mobileapptracker/h;->b(Ljava/lang/String;)V
iget-object v0, p0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
invoke-virtual {v0, p3}, Lcom/mobileapptracker/h;->l(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/mobileapptracker/g;->r:Z
iget-boolean v1, p0, Lcom/mobileapptracker/g;->s:Z
invoke-static {v0, v1}, Lcom/mobileapptracker/m;->a(ZZ)Ljava/lang/String;
move-result-object v2
invoke-static {}, Lcom/mobileapptracker/m;->a()Ljava/lang/String;
move-result-object v3
invoke-static {}, Lcom/mobileapptracker/m;->b()Lorg/json/JSONObject;
move-result-object v4
iget-object v0, p0, Lcom/mobileapptracker/g;->b:Lcom/mobileapptracker/f;
if-eqz v0, :cond_81
iget-object v0, p0, Lcom/mobileapptracker/g;->b:Lcom/mobileapptracker/f;
:cond_81
iget-boolean v5, p0, Lcom/mobileapptracker/g;->g:Z
iget-object v6, p0, Lcom/mobileapptracker/g;->l:Ljava/util/concurrent/ExecutorService;
new-instance v0, Lcom/mobileapptracker/c;
iget-object v1, p0, Lcom/mobileapptracker/g;->n:Lcom/mobileapptracker/b;
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
invoke-direct/range {v0 .. v5}, Lcom/mobileapptracker/c;-><init>(Lcom/mobileapptracker/b;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)V
invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/mobileapptracker/g;->g:Z
invoke-virtual {p0}, Lcom/mobileapptracker/g;->b()V
iget-object v0, p0, Lcom/mobileapptracker/g;->a:Lcom/mobileapptracker/e;
if-eqz v0, :cond_9e
iget-object v0, p0, Lcom/mobileapptracker/g;->a:Lcom/mobileapptracker/e;
:cond_9e
iget-object v0, p0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
invoke-virtual {v0}, Lcom/mobileapptracker/h;->b()V
:try_end_a3
.catchall {:try_start_7 .. :try_end_a3} :catchall_a5
goto/16 :goto_5
:catchall_a5
move-exception v0
monitor-exit p0
throw v0
:try_start_a8
:cond_a8
iget-object v0, p0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
check-cast p1, Ljava/lang/String;
invoke-virtual {v0, p1}, Lcom/mobileapptracker/h;->d(Ljava/lang/String;)V
goto :goto_56
:cond_b0
instance-of v0, p1, Ljava/lang/Integer;
if-eqz v0, :cond_c4
iget-object v0, p0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
check-cast p1, Ljava/lang/Integer;
invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/mobileapptracker/h;->c(Ljava/lang/String;)V
goto :goto_56
:cond_c4
const-string v0, "MobileAppTracker"
const-string v1, "Received invalid event name or id value, not measuring event"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:try_end_cb
.catchall {:try_start_a8 .. :try_end_cb} :catchall_a5
goto/16 :goto_5
.end method
.method static synthetic a(Lcom/mobileapptracker/g;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/mobileapptracker/g;->r:Z
return p1
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/mobileapptracker/g;->m:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/mobileapptracker/u;
invoke-direct {v1, p0, p1}, Lcom/mobileapptracker/u;-><init>(Lcom/mobileapptracker/g;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public final a(Ljava/lang/String;Z)V
.registers 6
if-eqz p2, :cond_e
const/4 v0, 0x1
:goto_3
iget-object v1, p0, Lcom/mobileapptracker/g;->m:Ljava/util/concurrent/ExecutorService;
new-instance v2, Lcom/mobileapptracker/j;
invoke-direct {v2, p0, p1, v0}, Lcom/mobileapptracker/j;-><init>(Lcom/mobileapptracker/g;Ljava/lang/String;I)V
invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
:cond_e
const/4 v0, 0x0
goto :goto_3
.end method
.method public final a(Z)V
.registers 4
iget-object v0, p0, Lcom/mobileapptracker/g;->m:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/mobileapptracker/i;
invoke-direct {v1, p0, p1}, Lcom/mobileapptracker/i;-><init>(Lcom/mobileapptracker/g;Z)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method protected final a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
.registers 9
const/4 v1, 0x1
const/4 v0, 0x0
iget-boolean v2, p0, Lcom/mobileapptracker/g;->r:Z
if-eqz v2, :cond_d
const-string v2, "MobileAppTracker"
const-string v3, "Sending event to server..."
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_d
iget-object v2, p0, Lcom/mobileapptracker/g;->q:Lcom/mobileapptracker/a;
invoke-static {p2, v2}, Lcom/mobileapptracker/m;->a(Ljava/lang/String;Lcom/mobileapptracker/a;)Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "&data="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/mobileapptracker/g;->p:Lcom/mobileapptracker/r;
iget-boolean v4, p0, Lcom/mobileapptracker/g;->r:Z
invoke-virtual {v3, v2, p3, v4}, Lcom/mobileapptracker/r;->a(Ljava/lang/String;Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
move-result-object v2
if-nez v2, :cond_3b
iget-object v0, p0, Lcom/mobileapptracker/g;->a:Lcom/mobileapptracker/e;
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/mobileapptracker/g;->a:Lcom/mobileapptracker/e;
:goto_3a
:cond_3a
return v1
:cond_3b
const-string v3, "success"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_50
iget-boolean v1, p0, Lcom/mobileapptracker/g;->r:Z
if-eqz v1, :cond_4e
const-string v1, "MobileAppTracker"
const-string v2, "Request failed, event will remain in queue"
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_4e
move v1, v0
goto :goto_3a
:cond_50
iget-object v3, p0, Lcom/mobileapptracker/g;->a:Lcom/mobileapptracker/e;
if-eqz v3, :cond_67
:try_start_54
const-string v3, "success"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v4, "true"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_5f
.catch Lorg/json/JSONException; {:try_start_54 .. :try_end_5f} :catch_96
move-result v3
if-eqz v3, :cond_63
move v0, v1
:cond_63
if-eqz v0, :cond_9c
iget-object v0, p0, Lcom/mobileapptracker/g;->a:Lcom/mobileapptracker/e;
:try_start_67
:cond_67
:goto_67
const-string v0, "site_event_type"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v3, "open"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3a
const-string v0, "log_id"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
invoke-virtual {v2}, Lcom/mobileapptracker/h;->ac()Ljava/lang/String;
move-result-object v2
const-string v3, ""
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_8e
iget-object v2, p0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
invoke-virtual {v2, v0}, Lcom/mobileapptracker/h;->j(Ljava/lang/String;)V
:cond_8e
iget-object v2, p0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
invoke-virtual {v2, v0}, Lcom/mobileapptracker/h;->i(Ljava/lang/String;)V
:try_end_93
.catch Lorg/json/JSONException; {:try_start_67 .. :try_end_93} :catch_94
goto :goto_3a
:catch_94
move-exception v0
goto :goto_3a
:catch_96
move-exception v1
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
move v1, v0
goto :goto_3a
:cond_9c
iget-object v0, p0, Lcom/mobileapptracker/g;->a:Lcom/mobileapptracker/e;
goto :goto_67
.end method
.method protected final b()V
.registers 4
iget-object v0, p0, Lcom/mobileapptracker/g;->k:Landroid/content/Context;
const-string v1, "connectivity"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_1a
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v0
if-eqz v0, :cond_1a
const/4 v0, 0x1
:goto_17
if-nez v0, :cond_1c
:goto_19
return-void
:cond_1a
const/4 v0, 0x0
goto :goto_17
:cond_1c
iget-object v0, p0, Lcom/mobileapptracker/g;->l:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/mobileapptracker/d;
iget-object v2, p0, Lcom/mobileapptracker/g;->n:Lcom/mobileapptracker/b;
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
invoke-direct {v1, v2}, Lcom/mobileapptracker/d;-><init>(Lcom/mobileapptracker/b;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
goto :goto_19
.end method
.method public final b(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/mobileapptracker/g;->m:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/mobileapptracker/k;
invoke-direct {v1, p0, p1}, Lcom/mobileapptracker/k;-><init>(Lcom/mobileapptracker/g;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public final c()V
.registers 3
iget-object v0, p0, Lcom/mobileapptracker/g;->m:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/mobileapptracker/t;
invoke-direct {v1, p0}, Lcom/mobileapptracker/t;-><init>(Lcom/mobileapptracker/g;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public final c(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/mobileapptracker/g;->m:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/mobileapptracker/l;
invoke-direct {v1, p0, p1}, Lcom/mobileapptracker/l;-><init>(Lcom/mobileapptracker/g;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
invoke-virtual {v0}, Lcom/mobileapptracker/h;->n()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final d(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/mobileapptracker/g;->m:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/mobileapptracker/n;
invoke-direct {v1, p0, p1}, Lcom/mobileapptracker/n;-><init>(Lcom/mobileapptracker/g;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mobileapptracker/g;->j:Lcom/mobileapptracker/h;
invoke-virtual {v0}, Lcom/mobileapptracker/h;->aj()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final e(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/mobileapptracker/g;->m:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/mobileapptracker/o;
invoke-direct {v1, p0, p1}, Lcom/mobileapptracker/o;-><init>(Lcom/mobileapptracker/g;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method
.method public final f()V
.registers 3
iget-object v0, p0, Lcom/mobileapptracker/g;->m:Ljava/util/concurrent/ExecutorService;
new-instance v1, Lcom/mobileapptracker/p;
invoke-direct {v1, p0}, Lcom/mobileapptracker/p;-><init>(Lcom/mobileapptracker/g;)V
invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
return-void
.end method