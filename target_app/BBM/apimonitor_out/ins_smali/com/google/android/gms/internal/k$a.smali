.class  Lcom/google/android/gms/internal/k$a;
.super Ljava/lang/Object;
.field private kl:Ljava/lang/String;
.field private km:Z
.field final synthetic kn:Lcom/google/android/gms/internal/k;
.method public constructor <init>(Lcom/google/android/gms/internal/k;Ljava/lang/String;Z)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/k$a;->kn:Lcom/google/android/gms/internal/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/google/android/gms/internal/k$a;->kl:Ljava/lang/String;
iput-boolean p3, p0, Lcom/google/android/gms/internal/k$a;->km:Z
return-void
.end method
.method public getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/k$a;->kl:Ljava/lang/String;
return-object v0
.end method
.method public isLimitAdTrackingEnabled()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/k$a;->km:Z
return v0
.end method