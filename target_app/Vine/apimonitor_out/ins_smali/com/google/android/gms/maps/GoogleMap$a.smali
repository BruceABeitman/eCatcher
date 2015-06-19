.class final Lcom/google/android/gms/maps/GoogleMap$a;
.super Lcom/google/android/gms/maps/internal/b$a;
.field private final Zo:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;)V
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/maps/internal/b$a;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$a;->Zo:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;
return-void
.end method
.method public onCancel()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$a;->Zo:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;
invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;->onCancel()V
return-void
.end method
.method public onFinish()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$a;->Zo:Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;
invoke-interface {v0}, Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;->onFinish()V
return-void
.end method