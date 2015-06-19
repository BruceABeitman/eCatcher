.class  Lcom/admarvel/android/util/a$a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/admarvel/android/util/a;
.field private final b:Ljava/lang/String;
.field private final c:I
.method public constructor <init>(Lcom/admarvel/android/util/a;Ljava/lang/String;I)V
.registers 4
iput-object p1, p0, Lcom/admarvel/android/util/a$a;->a:Lcom/admarvel/android/util/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/admarvel/android/util/a$a;->b:Ljava/lang/String;
iput p3, p0, Lcom/admarvel/android/util/a$a;->c:I
return-void
.end method
.method public run()V
.registers 6
:try_start_0
new-instance v0, Lcom/admarvel/android/util/a$c;
iget-object v1, p0, Lcom/admarvel/android/util/a$a;->a:Lcom/admarvel/android/util/a;
iget-object v2, p0, Lcom/admarvel/android/util/a$a;->b:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Lcom/admarvel/android/util/a$c;-><init>(Lcom/admarvel/android/util/a;Ljava/lang/String;)V
sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Integer;
const/4 v3, 0x0
iget v4, p0, Lcom/admarvel/android/util/a$a;->c:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/util/a$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
:try_end_1a
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b
:goto_1a
return-void
:catch_1b
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_1a
.end method