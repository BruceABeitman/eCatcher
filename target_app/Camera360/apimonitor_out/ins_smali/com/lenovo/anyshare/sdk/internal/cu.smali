.class public Lcom/lenovo/anyshare/sdk/internal/cu;
.super Ljava/lang/Object;
.source "ToneRecognizer.java"
.implements Lcom/lenovo/anyshare/sdk/internal/dr;
.field protected a:Lcom/lenovo/anyshare/sdk/internal/dq;
.field protected b:Lcom/lenovo/anyshare/sdk/internal/df;
.field protected c:Lcom/lenovo/anyshare/sdk/internal/cu$a;
.field protected d:Ljava/util/Queue;
.method public constructor <init>(Lcom/lenovo/anyshare/sdk/internal/dg;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/dq;
const/16 v1, 0x64
invoke-direct {v0, p0, v1}, Lcom/lenovo/anyshare/sdk/internal/dq;-><init>(Lcom/lenovo/anyshare/sdk/internal/dr;I)V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->a:Lcom/lenovo/anyshare/sdk/internal/dq;
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->d:Ljava/util/Queue;
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/df;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->a:Lcom/lenovo/anyshare/sdk/internal/dq;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/dq;->a()I
move-result v1
invoke-direct {v0, p1, v1}, Lcom/lenovo/anyshare/sdk/internal/df;-><init>(Lcom/lenovo/anyshare/sdk/internal/dg;I)V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->b:Lcom/lenovo/anyshare/sdk/internal/df;
return-void
.end method
.method protected a([S)V
.registers 4
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->d:Ljava/util/Queue;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->d:Ljava/util/Queue;
invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->d:Ljava/util/Queue;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
return-void
:catchall_f
move-exception v0
monitor-exit v1
:try_end_11
.catchall {:try_start_3 .. :try_end_11} :catchall_f
throw v0
.end method
.method public a([SIJ)V
.registers 5
if-eqz p1, :cond_4
if-gtz p2, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-virtual {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/cu;->a([S)V
goto :goto_4
.end method
.method public a()Z
.registers 6
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cu;->d()V
:try_start_3
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->a:Lcom/lenovo/anyshare/sdk/internal/dq;
invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/dq;->b()V
:try_end_8
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_21
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->c:Lcom/lenovo/anyshare/sdk/internal/cu$a;
if-nez v2, :cond_1f
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/cu$a;
invoke-direct {v1, p0}, Lcom/lenovo/anyshare/sdk/internal/cu$a;-><init>(Lcom/lenovo/anyshare/sdk/internal/cu;)V
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->c:Lcom/lenovo/anyshare/sdk/internal/cu$a;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/cu$a;->start()V
const-string/jumbo v2, "ToneRecognizer"
const-string/jumbo v3, "Tone recognizer Thread Started"
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_1f
const/4 v2, 0x1
:goto_20
return v2
:catch_21
move-exception v0
const-string/jumbo v2, "ToneRecognizer"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "start VoiceRecorder faild: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
const/4 v2, 0x0
goto :goto_20
.end method
.method public b()V
.registers 4
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->a:Lcom/lenovo/anyshare/sdk/internal/dq;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/dq;->c()V
invoke-virtual {p0}, Lcom/lenovo/anyshare/sdk/internal/cu;->d()V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->c:Lcom/lenovo/anyshare/sdk/internal/cu$a;
const/4 v1, 0x0
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->c:Lcom/lenovo/anyshare/sdk/internal/cu$a;
if-eqz v0, :cond_1e
:try_start_f
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cu$a;->interrupt()V
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cu$a;->join()V
:try_end_15
.catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_15} :catch_24
:goto_15
const-string/jumbo v1, "ToneRecognizer"
const-string/jumbo v2, "Tone recognizer Thread Stopped"
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_1e
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->b:Lcom/lenovo/anyshare/sdk/internal/df;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/df;->a()V
return-void
:catch_24
move-exception v1
goto :goto_15
.end method
.method protected c()[S
.registers 4
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->d:Ljava/util/Queue;
monitor-enter v2
:goto_3
:try_start_3
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->c:Lcom/lenovo/anyshare/sdk/internal/cu$a;
if-eqz v1, :cond_18
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->d:Ljava/util/Queue;
invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z
move-result v1
if-eqz v1, :cond_18
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->d:Ljava/util/Queue;
invoke-virtual {v1}, Ljava/lang/Object;->wait()V
goto :goto_3
:catchall_15
move-exception v1
monitor-exit v2
:try_end_17
.catchall {:try_start_3 .. :try_end_17} :catchall_15
throw v1
:cond_18
:try_start_18
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->d:Ljava/util/Queue;
invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, [S
if-nez v0, :cond_28
new-instance v1, Ljava/lang/InterruptedException;
invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V
throw v1
:cond_28
monitor-exit v2
:try_end_29
.catchall {:try_start_18 .. :try_end_29} :catchall_15
return-object v0
.end method
.method protected d()V
.registers 3
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->d:Ljava/util/Queue;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cu;->d:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->clear()V
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_a
throw v0
.end method