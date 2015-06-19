.class public Lcom/bbm/BBMAccountService;
.super Landroid/app/Service;
.source "BBMAccountService.java"
.field private static final a:Ljava/lang/Object;
.field private static b:Lcom/bbm/e;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/bbm/BBMAccountService;->a:Ljava/lang/Object;
const/4 v0, 0x0
sput-object v0, Lcom/bbm/BBMAccountService;->b:Lcom/bbm/e;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Service;-><init>()V
return-void
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
sget-object v0, Lcom/bbm/BBMAccountService;->b:Lcom/bbm/e;
invoke-virtual {v0}, Lcom/bbm/e;->getIBinder()Landroid/os/IBinder;
move-result-object v0
return-object v0
.end method
.method public onCreate()V
.registers 4
const-string v1, " + Lcom/bbm/BBMAccountService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onCreate()V
sget-object v1, Lcom/bbm/BBMAccountService;->a:Ljava/lang/Object;
monitor-enter v1
:try_start_6
sget-object v0, Lcom/bbm/BBMAccountService;->b:Lcom/bbm/e;
if-nez v0, :cond_15
new-instance v0, Lcom/bbm/e;
invoke-virtual {p0}, Lcom/bbm/BBMAccountService;->getApplicationContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v0, v2}, Lcom/bbm/e;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/bbm/BBMAccountService;->b:Lcom/bbm/e;
:cond_15
monitor-exit v1
:try_end_16
.catchall {:try_start_6 .. :try_end_16} :catchall_17
const-string v1, " - Lcom/bbm/BBMAccountService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catchall_17
move-exception v0
monitor-exit v1
throw v0
.end method