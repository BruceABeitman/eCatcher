.class final Lcom/umeng/analytics/d$b;
.super Ljava/lang/Object;
.source "PolicyManager.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/umeng/analytics/d;
.field private b:Landroid/content/Context;
.method constructor <init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V
.registers 4
iput-object p1, p0, Lcom/umeng/analytics/d$b;->a:Lcom/umeng/analytics/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/umeng/analytics/d$b;->b:Landroid/content/Context;
return-void
.end method
.method public run()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/umeng/analytics/d$b;->a:Lcom/umeng/analytics/d;
invoke-static {v0}, Lcom/umeng/analytics/d;->a(Lcom/umeng/analytics/d;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_13
iget-object v0, p0, Lcom/umeng/analytics/d$b;->a:Lcom/umeng/analytics/d;
iget-object v2, p0, Lcom/umeng/analytics/d$b;->b:Landroid/content/Context;
invoke-static {v0, v2}, Lcom/umeng/analytics/d;->a(Lcom/umeng/analytics/d;Landroid/content/Context;)V
monitor-exit v1
:goto_f
return-void
:catchall_10
move-exception v0
monitor-exit v1
:try_start_12
:try_end_12
.catchall {:try_start_7 .. :try_end_12} :catchall_10
throw v0
:catch_13
:try_end_13
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_13} :catch_13
move-exception v0
const-string/jumbo v1, "MobclickAgent"
const-string/jumbo v2, "Exception occurred in ReportMessageHandler"
invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_f
.end method