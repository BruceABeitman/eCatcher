.class final Lcom/google/android/gms/internal/jh$c;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/jk;
.field final synthetic VR:Lcom/google/android/gms/internal/jh;
.method private constructor <init>(Lcom/google/android/gms/internal/jh;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/jh$c;->VR:Lcom/google/android/gms/internal/jh;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/internal/jh;Lcom/google/android/gms/internal/jh$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/jh$c;-><init>(Lcom/google/android/gms/internal/jh;)V
return-void
.end method
.method public ci()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/jh$c;->VR:Lcom/google/android/gms/internal/jh;
invoke-static {v0}, Lcom/google/android/gms/internal/jh;->b(Lcom/google/android/gms/internal/jh;)V
return-void
.end method
.method public synthetic fo()Landroid/os/IInterface;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/jh$c;->iU()Lcom/google/android/gms/internal/jf;
move-result-object v0
return-object v0
.end method
.method public iU()Lcom/google/android/gms/internal/jf;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/jh$c;->VR:Lcom/google/android/gms/internal/jh;
invoke-virtual {v0}, Lcom/google/android/gms/internal/jh;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/jf;
return-object v0
.end method