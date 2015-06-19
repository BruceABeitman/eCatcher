.class  Lcom/lenovo/anyshare/sdk/internal/bz$b;
.super Lcom/lenovo/anyshare/sdk/internal/be$c;
.source "ModeManager.java"
.field final e:Lcom/lenovo/anyshare/sdk/internal/bz$a;
.field final f:Lcom/lenovo/anyshare/sdk/internal/bz$a;
.field final synthetic g:Lcom/lenovo/anyshare/sdk/internal/bz;
.method public constructor <init>(Lcom/lenovo/anyshare/sdk/internal/bz;Lcom/lenovo/anyshare/sdk/internal/bz$a;Lcom/lenovo/anyshare/sdk/internal/bz$a;)V
.registers 4
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->g:Lcom/lenovo/anyshare/sdk/internal/bz;
invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/be$c;-><init>()V
iput-object p2, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->e:Lcom/lenovo/anyshare/sdk/internal/bz$a;
iput-object p3, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->f:Lcom/lenovo/anyshare/sdk/internal/bz$a;
return-void
.end method
.method public a()V
.registers 7
const/4 v5, 0x0
:try_start_1
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->f:Lcom/lenovo/anyshare/sdk/internal/bz$a;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->e:Lcom/lenovo/anyshare/sdk/internal/bz$a;
invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/bz$a;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_73
const-string/jumbo v0, "ModeManager"
const-string/jumbo v1, "Begin Switch: %s -> %s"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->e:Lcom/lenovo/anyshare/sdk/internal/bz$a;
aput-object v4, v2, v3
const/4 v3, 0x1
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->f:Lcom/lenovo/anyshare/sdk/internal/bz$a;
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->g:Lcom/lenovo/anyshare/sdk/internal/bz;
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->e:Lcom/lenovo/anyshare/sdk/internal/bz$a;
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->f:Lcom/lenovo/anyshare/sdk/internal/bz$a;
invoke-virtual {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/bz;->a(Lcom/lenovo/anyshare/sdk/internal/bz$a;Lcom/lenovo/anyshare/sdk/internal/bz$a;)V
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->g:Lcom/lenovo/anyshare/sdk/internal/bz;
monitor-enter v1
:try_end_2d
.catchall {:try_start_1 .. :try_end_2d} :catchall_63
:try_start_2d
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->g:Lcom/lenovo/anyshare/sdk/internal/bz;
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->f:Lcom/lenovo/anyshare/sdk/internal/bz$a;
invoke-static {v0, v2}, Lcom/lenovo/anyshare/sdk/internal/bz;->a(Lcom/lenovo/anyshare/sdk/internal/bz;Lcom/lenovo/anyshare/sdk/internal/bz$a;)Lcom/lenovo/anyshare/sdk/internal/bz$a;
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->g:Lcom/lenovo/anyshare/sdk/internal/bz;
const/4 v2, 0x0
invoke-static {v0, v2}, Lcom/lenovo/anyshare/sdk/internal/bz;->b(Lcom/lenovo/anyshare/sdk/internal/bz;Lcom/lenovo/anyshare/sdk/internal/bz$a;)Lcom/lenovo/anyshare/sdk/internal/bz$a;
monitor-exit v1
:try_end_3b
.catchall {:try_start_2d .. :try_end_3b} :catchall_60
:try_start_3b
const-string/jumbo v0, "ModeManager"
const-string/jumbo v1, "End Switch: %s -> %s"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->e:Lcom/lenovo/anyshare/sdk/internal/bz$a;
aput-object v4, v2, v3
const/4 v3, 0x1
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->f:Lcom/lenovo/anyshare/sdk/internal/bz$a;
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_51
.catchall {:try_start_3b .. :try_end_51} :catchall_63
:goto_51
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->g:Lcom/lenovo/anyshare/sdk/internal/bz;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/bz;->a(Lcom/lenovo/anyshare/sdk/internal/bz;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->g:Lcom/lenovo/anyshare/sdk/internal/bz;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/bz;->b(Lcom/lenovo/anyshare/sdk/internal/bz;)V
return-void
:catchall_60
move-exception v0
:try_start_61
monitor-exit v1
:try_start_62
:try_end_62
.catchall {:try_start_61 .. :try_end_62} :catchall_60
throw v0
:try_end_63
.catchall {:try_start_62 .. :try_end_63} :catchall_63
:catchall_63
move-exception v0
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->g:Lcom/lenovo/anyshare/sdk/internal/bz;
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/bz;->a(Lcom/lenovo/anyshare/sdk/internal/bz;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v1
invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->g:Lcom/lenovo/anyshare/sdk/internal/bz;
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/bz;->b(Lcom/lenovo/anyshare/sdk/internal/bz;)V
throw v0
:try_start_73
:cond_73
const-string/jumbo v0, "ModeManager"
const-string/jumbo v1, "No Switch: %s -> %s"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->e:Lcom/lenovo/anyshare/sdk/internal/bz$a;
aput-object v4, v2, v3
const/4 v3, 0x1
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/bz$b;->f:Lcom/lenovo/anyshare/sdk/internal/bz$a;
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
:try_end_89
.catchall {:try_start_73 .. :try_end_89} :catchall_63
goto :goto_51
.end method
.method public a(Ljava/lang/Exception;)V
.registers 2
return-void
.end method