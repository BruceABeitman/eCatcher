.class final Lcom/tencent/stat/g;
.super Ljava/lang/Object;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.field final synthetic a:Landroid/content/Context;
.method constructor <init>(Landroid/content/Context;)V
.registers 2
iput-object p1, p0, Lcom/tencent/stat/g;->a:Landroid/content/Context;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.registers 8
invoke-static {}, Lcom/tencent/stat/StatConfig;->isEnableStatService()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Lcom/tencent/stat/g;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/tencent/stat/n;->a(Landroid/content/Context;)Lcom/tencent/stat/n;
move-result-object v0
new-instance v1, Lcom/tencent/stat/a/d;
iget-object v2, p0, Lcom/tencent/stat/g;->a:Landroid/content/Context;
iget-object v3, p0, Lcom/tencent/stat/g;->a:Landroid/content/Context;
const/4 v4, 0x0
invoke-static {v3, v4}, Lcom/tencent/stat/StatService;->a(Landroid/content/Context;Z)I
move-result v3
const/4 v4, 0x2
invoke-direct {v1, v2, v3, v4, p2}, Lcom/tencent/stat/a/d;-><init>(Landroid/content/Context;IILjava/lang/Throwable;)V
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/tencent/stat/n;->a(Lcom/tencent/stat/a/e;Lcom/tencent/stat/c;)V
invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v0
const-string/jumbo v1, "MTA has caught the following uncaught exception:"
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->debug(Ljava/lang/Object;)V
invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/tencent/stat/common/StatLogger;->error(Ljava/lang/Object;)V
invoke-static {}, Lcom/tencent/stat/StatService;->c()Ljava/lang/Thread$UncaughtExceptionHandler;
move-result-object v0
if-eqz v0, :cond_49
invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v0
const-string/jumbo v1, "Call the original uncaught exception handler."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->debug(Ljava/lang/Object;)V
invoke-static {}, Lcom/tencent/stat/StatService;->c()Ljava/lang/Thread$UncaughtExceptionHandler;
move-result-object v0
invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
goto :goto_6
:cond_49
invoke-static {}, Lcom/tencent/stat/StatService;->b()Lcom/tencent/stat/common/StatLogger;
move-result-object v0
const-string/jumbo v1, "Original uncaught exception handler not set."
invoke-virtual {v0, v1}, Lcom/tencent/stat/common/StatLogger;->debug(Ljava/lang/Object;)V
goto :goto_6
.end method