.class final Lcom/gindin/util/LogUtils$1;
.super Ljava/lang/Object;
.source "LogUtils.java"
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.registers 5
if-nez p1, :cond_b
const-string v1, "null thread"
move-object v0, v1
:goto_5
const-string v1, ""
invoke-static {v0, v1, p2}, Lcom/gindin/util/LogUtils;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
return-void
:cond_b
invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v1
move-object v0, v1
goto :goto_5
.end method