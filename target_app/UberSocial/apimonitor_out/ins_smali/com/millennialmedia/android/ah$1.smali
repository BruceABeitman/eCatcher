.class  Lcom/millennialmedia/android/ah$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/millennialmedia/android/ah;
.method constructor <init>(Lcom/millennialmedia/android/ah;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/ah$1;->a:Lcom/millennialmedia/android/ah;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v1, p0, Lcom/millennialmedia/android/ah$1;->a:Lcom/millennialmedia/android/ah;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/millennialmedia/android/ah$1;->a:Lcom/millennialmedia/android/ah;
invoke-static {v0}, Lcom/millennialmedia/android/ah;->a(Lcom/millennialmedia/android/ah;)Lcom/millennialmedia/android/cy;
move-result-object v0
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/millennialmedia/android/ah$1;->a:Lcom/millennialmedia/android/ah;
invoke-static {v0}, Lcom/millennialmedia/android/ah;->a(Lcom/millennialmedia/android/ah;)Lcom/millennialmedia/android/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/millennialmedia/android/cy;->h()V
iget-object v0, p0, Lcom/millennialmedia/android/ah$1;->a:Lcom/millennialmedia/android/ah;
invoke-static {v0}, Lcom/millennialmedia/android/ah;->a(Lcom/millennialmedia/android/ah;)Lcom/millennialmedia/android/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/millennialmedia/android/cy;->l()V
iget-object v0, p0, Lcom/millennialmedia/android/ah$1;->a:Lcom/millennialmedia/android/ah;
const/4 v2, 0x0
invoke-static {v0, v2}, Lcom/millennialmedia/android/ah;->a(Lcom/millennialmedia/android/ah;Lcom/millennialmedia/android/cy;)Lcom/millennialmedia/android/cy;
:cond_23
monitor-exit v1
return-void
:catchall_25
move-exception v0
monitor-exit v1
:try_end_27
.catchall {:try_start_3 .. :try_end_27} :catchall_25
throw v0
.end method