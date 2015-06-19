.class final Lcom/umeng/analytics/b$a;
.super Ljava/lang/Thread;
.source "InternalAgent.java"
.field final synthetic a:Lcom/umeng/analytics/b;
.field private final b:Ljava/lang/Object;
.field private c:Landroid/content/Context;
.field private d:I
.method constructor <init>(Lcom/umeng/analytics/b;Landroid/content/Context;I)V
.registers 5
iput-object p1, p0, Lcom/umeng/analytics/b$a;->a:Lcom/umeng/analytics/b;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/umeng/analytics/b$a;->b:Ljava/lang/Object;
invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/umeng/analytics/b$a;->c:Landroid/content/Context;
iput p3, p0, Lcom/umeng/analytics/b$a;->d:I
return-void
.end method
.method public run()V
.registers 4
:try_start_0
iget-object v1, p0, Lcom/umeng/analytics/b$a;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_3
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_15
iget v0, p0, Lcom/umeng/analytics/b$a;->d:I
packed-switch v0, :pswitch_data_28
:goto_8
monitor-exit v1
:goto_9
return-void
:pswitch_a
iget-object v0, p0, Lcom/umeng/analytics/b$a;->a:Lcom/umeng/analytics/b;
iget-object v2, p0, Lcom/umeng/analytics/b$a;->c:Landroid/content/Context;
invoke-static {v0, v2}, Lcom/umeng/analytics/b;->a(Lcom/umeng/analytics/b;Landroid/content/Context;)V
goto :goto_8
:catchall_12
move-exception v0
monitor-exit v1
:try_start_14
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_12
throw v0
:catch_15
:try_end_15
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_15} :catch_15
move-exception v0
const-string/jumbo v1, "MobclickAgent"
const-string/jumbo v2, "Exception occurred in invokehander."
invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
goto :goto_9
:pswitch_20
:try_start_20
iget-object v0, p0, Lcom/umeng/analytics/b$a;->a:Lcom/umeng/analytics/b;
iget-object v2, p0, Lcom/umeng/analytics/b$a;->c:Landroid/content/Context;
invoke-static {v0, v2}, Lcom/umeng/analytics/b;->b(Lcom/umeng/analytics/b;Landroid/content/Context;)V
:try_end_27
.catchall {:try_start_20 .. :try_end_27} :catchall_12
goto :goto_8
:pswitch_data_28
.packed-switch 0x0
:pswitch_a
:pswitch_20
.end packed-switch
.end method