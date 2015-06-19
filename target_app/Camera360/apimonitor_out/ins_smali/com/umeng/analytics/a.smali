.class  Lcom/umeng/analytics/a;
.super Ljava/lang/Object;
.source "CrashHandler.java"
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;
.field private b:Lcom/umeng/analytics/h;
.field private c:Landroid/content/Context;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a(Ljava/lang/Throwable;)V
.registers 4
if-nez p1, :cond_c
const-string/jumbo v0, "MobclickAgent"
const-string/jumbo v1, "Exception is null in handleException"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/umeng/analytics/a;->b:Lcom/umeng/analytics/h;
iget-object v1, p0, Lcom/umeng/analytics/a;->c:Landroid/content/Context;
invoke-interface {v0, v1, p1}, Lcom/umeng/analytics/h;->b(Landroid/content/Context;Ljava/lang/Throwable;)V
goto :goto_b
.end method
.method public a(Landroid/content/Context;)V
.registers 3
invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
move-result-object v0
if-ne v0, p0, :cond_7
:goto_6
return-void
:cond_7
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/umeng/analytics/a;->c:Landroid/content/Context;
invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
move-result-object v0
iput-object v0, p0, Lcom/umeng/analytics/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;
invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
goto :goto_6
.end method
.method public a(Lcom/umeng/analytics/h;)V
.registers 2
iput-object p1, p0, Lcom/umeng/analytics/a;->b:Lcom/umeng/analytics/h;
return-void
.end method
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.registers 4
invoke-direct {p0, p2}, Lcom/umeng/analytics/a;->a(Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/umeng/analytics/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/umeng/analytics/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;
invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
:cond_c
return-void
.end method