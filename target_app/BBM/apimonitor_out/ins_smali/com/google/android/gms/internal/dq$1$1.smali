.class  Lcom/google/android/gms/internal/dq$1$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic xX:I
.field final synthetic xY:Lcom/google/android/gms/internal/dq$1;
.method constructor <init>(Lcom/google/android/gms/internal/dq$1;I)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/dq$1$1;->xY:Lcom/google/android/gms/internal/dq$1;
iput p2, p0, Lcom/google/android/gms/internal/dq$1$1;->xX:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/dq$1$1;->xY:Lcom/google/android/gms/internal/dq$1;
iget-object v0, v0, Lcom/google/android/gms/internal/dq$1;->xW:Lcom/google/android/gms/internal/dq;
invoke-static {v0}, Lcom/google/android/gms/internal/dq;->c(Lcom/google/android/gms/internal/dq;)Lcom/google/android/gms/cast/Cast$Listener;
move-result-object v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/google/android/gms/internal/dq$1$1;->xY:Lcom/google/android/gms/internal/dq$1;
iget-object v0, v0, Lcom/google/android/gms/internal/dq$1;->xW:Lcom/google/android/gms/internal/dq;
invoke-static {v0}, Lcom/google/android/gms/internal/dq;->c(Lcom/google/android/gms/internal/dq;)Lcom/google/android/gms/cast/Cast$Listener;
move-result-object v0
iget v1, p0, Lcom/google/android/gms/internal/dq$1$1;->xX:I
invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationDisconnected(I)V
:cond_17
return-void
.end method