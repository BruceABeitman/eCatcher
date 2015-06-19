.class  Lcom/google/android/gms/internal/gi$1$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field final synthetic Ca:I
.field final synthetic Cb:Lcom/google/android/gms/internal/gi$1;
.method constructor <init>(Lcom/google/android/gms/internal/gi$1;I)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/gi$1$1;->Cb:Lcom/google/android/gms/internal/gi$1;
iput p2, p0, Lcom/google/android/gms/internal/gi$1$1;->Ca:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/gi$1$1;->Cb:Lcom/google/android/gms/internal/gi$1;
iget-object v0, v0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;
invoke-static {v0}, Lcom/google/android/gms/internal/gi;->d(Lcom/google/android/gms/internal/gi;)Lcom/google/android/gms/cast/Cast$Listener;
move-result-object v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/google/android/gms/internal/gi$1$1;->Cb:Lcom/google/android/gms/internal/gi$1;
iget-object v0, v0, Lcom/google/android/gms/internal/gi$1;->BZ:Lcom/google/android/gms/internal/gi;
invoke-static {v0}, Lcom/google/android/gms/internal/gi;->d(Lcom/google/android/gms/internal/gi;)Lcom/google/android/gms/cast/Cast$Listener;
move-result-object v0
iget v1, p0, Lcom/google/android/gms/internal/gi$1$1;->Ca:I
invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/Cast$Listener;->onApplicationDisconnected(I)V
:cond_17
return-void
.end method