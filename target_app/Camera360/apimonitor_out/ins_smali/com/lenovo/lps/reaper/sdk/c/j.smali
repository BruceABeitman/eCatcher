.class public final Lcom/lenovo/lps/reaper/sdk/c/j;
.super Lcom/lenovo/lps/reaper/sdk/c/g;
.field private a:Lcom/lenovo/lps/reaper/sdk/b/f;
.field private b:Lcom/lenovo/lps/reaper/sdk/f/a;
.field private c:Lcom/lenovo/lps/reaper/sdk/d/d;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/c/g;-><init>()V
return-void
.end method
.method private declared-synchronized b(Lcom/lenovo/lps/reaper/sdk/b/f;)V
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/j;->c:Lcom/lenovo/lps/reaper/sdk/d/d;
invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/d/d;->a(Lcom/lenovo/lps/reaper/sdk/b/f;)[Lcom/lenovo/lps/reaper/sdk/api/a;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/c/j;->b:Lcom/lenovo/lps/reaper/sdk/f/a;
invoke-virtual {v1, v0}, Lcom/lenovo/lps/reaper/sdk/f/a;->a([Lcom/lenovo/lps/reaper/sdk/api/a;)I
move-result v0
iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/c/j;->c:Lcom/lenovo/lps/reaper/sdk/d/d;
invoke-virtual {v1, v0, p1}, Lcom/lenovo/lps/reaper/sdk/d/d;->a(ILcom/lenovo/lps/reaper/sdk/b/f;)V
if-nez v0, :cond_1d
const-string/jumbo v0, "EventReportTask"
const-string/jumbo v1, "no reported event."
invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_1d
:try_end_1d
.catchall {:try_start_1 .. :try_end_1d} :catchall_3f
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1f
:cond_1d
monitor-exit p0
return-void
:catch_1f
move-exception v0
:try_start_20
const-string/jumbo v1, "EventReportTask"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "some error occured when dispatch. "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:try_end_3e
.catchall {:try_start_20 .. :try_end_3e} :catchall_3f
goto :goto_1d
:catchall_3f
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final a()V
.registers 4
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Lcom/lenovo/lps/reaper/sdk/a/a;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/c/j;->a:Lcom/lenovo/lps/reaper/sdk/b/f;
invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/a/a;->a(Lcom/lenovo/lps/reaper/sdk/b/f;)Z
move-result v0
if-nez v0, :cond_16
const-string/jumbo v0, "EventReportTask"
const-string/jumbo v1, "not ready for reporting."
invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_15
return-void
:cond_16
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/j;->a:Lcom/lenovo/lps/reaper/sdk/b/f;
iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/c/j;->c:Lcom/lenovo/lps/reaper/sdk/d/d;
invoke-virtual {v1, v0}, Lcom/lenovo/lps/reaper/sdk/d/d;->b(Lcom/lenovo/lps/reaper/sdk/b/f;)I
move-result v1
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Lcom/lenovo/lps/reaper/sdk/a/a;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/lenovo/lps/reaper/sdk/a/a;->b(Lcom/lenovo/lps/reaper/sdk/b/f;)I
move-result v0
if-lt v1, v0, :cond_35
const/4 v0, 0x1
:goto_29
if-nez v0, :cond_37
const-string/jumbo v0, "EventReportTask"
const-string/jumbo v1, "current number of events is not enough."
invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_15
:cond_35
const/4 v0, 0x0
goto :goto_29
:cond_37
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/c/j;->a:Lcom/lenovo/lps/reaper/sdk/b/f;
invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/c/j;->b(Lcom/lenovo/lps/reaper/sdk/b/f;)V
goto :goto_15
.end method
.method public final a(Lcom/lenovo/lps/reaper/sdk/b/f;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/c/j;->a:Lcom/lenovo/lps/reaper/sdk/b/f;
return-void
.end method
.method public final a(Lcom/lenovo/lps/reaper/sdk/d/d;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/c/j;->c:Lcom/lenovo/lps/reaper/sdk/d/d;
return-void
.end method
.method public final a(Lcom/lenovo/lps/reaper/sdk/f/a;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/c/j;->b:Lcom/lenovo/lps/reaper/sdk/f/a;
return-void
.end method