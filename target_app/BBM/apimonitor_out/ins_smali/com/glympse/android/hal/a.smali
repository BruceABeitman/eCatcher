.class  Lcom/glympse/android/hal/a;
.super Ljava/lang/Object;
.source "AccountImporter.java"
.implements Lcom/glympse/android/lib/GAccountProvider;
.field public static final a:Ljava/lang/String; = "com.glympse.android.hal.auth.REQUEST"
.field public static final b:Ljava/lang/String; = "com.glympse.android.hal.auth.RESPONSE"
.field public static final c:Ljava/lang/String; = "body"
.field public static final d:J = 0x7d0L
.field private _handler:Lcom/glympse/android/core/GHandler;
.field private e:Landroid/content/Context;
.field private f:Ljava/lang/String;
.field private g:Lcom/glympse/android/lib/GAccountImportListener;
.field private h:Ljava/lang/String;
.field private i:Lcom/glympse/android/hal/c;
.field private j:Lcom/glympse/android/hal/d;
.method public constructor <init>(Landroid/content/Context;Lcom/glympse/android/core/GHandler;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/hal/a;->e:Landroid/content/Context;
iput-object p2, p0, Lcom/glympse/android/hal/a;->_handler:Lcom/glympse/android/core/GHandler;
iput-object p3, p0, Lcom/glympse/android/hal/a;->f:Ljava/lang/String;
return-void
.end method
.method static synthetic a(Lcom/glympse/android/hal/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/a;->h:Ljava/lang/String;
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const/16 v1, 0x20
invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
const-string v1, "com.glympse.android.hal.auth.REQUEST"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "body"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "com.glympse.android.hal.auth.RESPONSE"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "body"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method static synthetic b(Lcom/glympse/android/hal/a;)Lcom/glympse/android/core/GHandler;
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/a;->_handler:Lcom/glympse/android/core/GHandler;
return-object v0
.end method
.method static synthetic c(Lcom/glympse/android/hal/a;)Lcom/glympse/android/lib/GAccountImportListener;
.registers 2
iget-object v0, p0, Lcom/glympse/android/hal/a;->g:Lcom/glympse/android/lib/GAccountImportListener;
return-object v0
.end method
.method public cancel()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/glympse/android/hal/a;->h:Ljava/lang/String;
if-nez v0, :cond_6
:goto_5
return-void
:try_start_6
:cond_6
iget-object v0, p0, Lcom/glympse/android/hal/a;->e:Landroid/content/Context;
iget-object v1, p0, Lcom/glympse/android/hal/a;->i:Lcom/glympse/android/hal/c;
invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
iget-object v0, p0, Lcom/glympse/android/hal/a;->_handler:Lcom/glympse/android/core/GHandler;
iget-object v1, p0, Lcom/glympse/android/hal/a;->j:Lcom/glympse/android/hal/d;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->cancel(Ljava/lang/Runnable;)V
:try_end_14
.catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_14} :catch_1d
:goto_14
iput-object v2, p0, Lcom/glympse/android/hal/a;->i:Lcom/glympse/android/hal/c;
iput-object v2, p0, Lcom/glympse/android/hal/a;->j:Lcom/glympse/android/hal/d;
iput-object v2, p0, Lcom/glympse/android/hal/a;->h:Ljava/lang/String;
iput-object v2, p0, Lcom/glympse/android/hal/a;->g:Lcom/glympse/android/lib/GAccountImportListener;
goto :goto_5
:catch_1d
move-exception v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_14
.end method
.method public create(Ljava/lang/String;)Z
.registers 7
const/4 v0, 0x0
iget-object v1, p0, Lcom/glympse/android/hal/a;->h:Ljava/lang/String;
if-eqz v1, :cond_6
:goto_5
return v0
:try_start_6
:cond_6
invoke-static {}, Lcom/glympse/android/hal/j;->f()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/glympse/android/hal/a;->h:Ljava/lang/String;
iget-object v1, p0, Lcom/glympse/android/hal/a;->e:Landroid/content/Context;
iget-object v2, p0, Lcom/glympse/android/hal/a;->f:Ljava/lang/String;
iget-object v3, p0, Lcom/glympse/android/hal/a;->h:Ljava/lang/String;
invoke-static {v1, v2, p1, v3}, Lcom/glympse/android/hal/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Landroid/content/IntentFilter;
const-string v3, "com.glympse.android.hal.auth.RESPONSE"
invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
new-instance v3, Lcom/glympse/android/hal/c;
const/4 v4, 0x0
invoke-direct {v3, p0, v4}, Lcom/glympse/android/hal/c;-><init>(Lcom/glympse/android/hal/a;Lcom/glympse/android/hal/a$1;)V
iput-object v3, p0, Lcom/glympse/android/hal/a;->i:Lcom/glympse/android/hal/c;
iget-object v3, p0, Lcom/glympse/android/hal/a;->e:Landroid/content/Context;
iget-object v4, p0, Lcom/glympse/android/hal/a;->i:Lcom/glympse/android/hal/c;
invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
iget-object v2, p0, Lcom/glympse/android/hal/a;->e:Landroid/content/Context;
invoke-static {v2, v1}, Lcom/glympse/android/hal/a;->a(Landroid/content/Context;Ljava/lang/String;)V
new-instance v1, Lcom/glympse/android/hal/d;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/glympse/android/hal/d;-><init>(Lcom/glympse/android/hal/a;Lcom/glympse/android/hal/a$1;)V
iput-object v1, p0, Lcom/glympse/android/hal/a;->j:Lcom/glympse/android/hal/d;
iget-object v1, p0, Lcom/glympse/android/hal/a;->_handler:Lcom/glympse/android/core/GHandler;
iget-object v2, p0, Lcom/glympse/android/hal/a;->j:Lcom/glympse/android/hal/d;
const-wide/16 v3, 0x7d0
invoke-interface {v1, v2, v3, v4}, Lcom/glympse/android/core/GHandler;->postDelayed(Ljava/lang/Runnable;J)V
:try_end_42
.catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_42} :catch_44
const/4 v0, 0x1
goto :goto_5
:catch_44
move-exception v1
invoke-virtual {p0}, Lcom/glympse/android/hal/a;->cancel()V
goto :goto_5
.end method
.method public setAccountListener(Lcom/glympse/android/lib/GAccountImportListener;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/hal/a;->g:Lcom/glympse/android/lib/GAccountImportListener;
return-void
.end method