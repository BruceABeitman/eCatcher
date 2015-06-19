.class  Lcom/google/android/gms/internal/k$a;
.super Ljava/lang/Object;
.field private kb:Ljava/lang/String;
.field private kc:Z
.field final synthetic kd:Lcom/google/android/gms/internal/k;
.method public constructor <init>(Lcom/google/android/gms/internal/k;Ljava/lang/String;Z)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/k$a;->kd:Lcom/google/android/gms/internal/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/internal/k$a;->kb:Ljava/lang/String;
iput-boolean p3, p0, Lcom/google/android/gms/internal/k$a;->kc:Z
return-void
.end method
.method public getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/k$a;->kb:Ljava/lang/String;
return-object v0
.end method
.method public isLimitAdTrackingEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/k$a;->kc:Z
return v0
.end method