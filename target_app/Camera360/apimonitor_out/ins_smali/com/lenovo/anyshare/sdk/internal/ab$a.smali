.class  Lcom/lenovo/anyshare/sdk/internal/ab$a;
.super Ljava/lang/Object;
.source "DownloadExecutor.java"
.field private final a:I
.field private final b:I
.field private c:Lorg/apache/http/client/HttpClient;
.field private d:Lcom/lenovo/anyshare/sdk/internal/ab$a$a;
.method constructor <init>(IILcom/lenovo/anyshare/sdk/internal/ab$a$a;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p3}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
iput p1, p0, Lcom/lenovo/anyshare/sdk/internal/ab$a;->a:I
iput p2, p0, Lcom/lenovo/anyshare/sdk/internal/ab$a;->b:I
iput-object p3, p0, Lcom/lenovo/anyshare/sdk/internal/ab$a;->d:Lcom/lenovo/anyshare/sdk/internal/ab$a$a;
return-void
.end method
.method declared-synchronized a()Lorg/apache/http/client/HttpClient;
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ab$a;->c:Lorg/apache/http/client/HttpClient;
if-nez v0, :cond_f
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/ab$a;->a:I
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/ab$a;->b:I
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/as;->a(II)Lorg/apache/http/client/HttpClient;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ab$a;->c:Lorg/apache/http/client/HttpClient;
:cond_f
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ab$a;->c:Lorg/apache/http/client/HttpClient;
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_13
monitor-exit p0
return-object v0
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method  a(Lcom/lenovo/anyshare/sdk/internal/cq;JJ)V
.registers 13
:try_start_0
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ab$a;->d:Lcom/lenovo/anyshare/sdk/internal/ab$a$a;
move-object v1, p1
move-wide v2, p2
move-wide v4, p4
invoke-interface/range {v0 .. v5}, Lcom/lenovo/anyshare/sdk/internal/ab$a$a;->a(Lcom/lenovo/anyshare/sdk/internal/cq;JJ)V
:try_end_8
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9
:goto_8
return-void
:catch_9
move-exception v6
const-string/jumbo v0, "Task.Scheduler.Download.Executor"
invoke-static {v0, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_8
.end method