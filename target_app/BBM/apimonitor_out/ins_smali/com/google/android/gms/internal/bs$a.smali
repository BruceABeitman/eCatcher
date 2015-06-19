.class final Lcom/google/android/gms/internal/bs$a;
.super Ljava/lang/Object;
.field private final kW:Ljava/lang/Runnable;
.field private volatile nG:Z
.method public constructor <init>(Lcom/google/android/gms/internal/bs;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/bs$a;->nG:Z
new-instance v0, Lcom/google/android/gms/internal/bs$a$1;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/bs$a$1;-><init>(Lcom/google/android/gms/internal/bs$a;Lcom/google/android/gms/internal/bs;)V
iput-object v0, p0, Lcom/google/android/gms/internal/bs$a;->kW:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/bs$a;)Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/bs$a;->nG:Z
return v0
.end method
.method public final aA()V
.registers 5
sget-object v0, Lcom/google/android/gms/internal/cz;->pT:Landroid/os/Handler;
iget-object v1, p0, Lcom/google/android/gms/internal/bs$a;->kW:Ljava/lang/Runnable;
const-wide/16 v2, 0xfa
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method public final cancel()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/internal/bs$a;->nG:Z
sget-object v0, Lcom/google/android/gms/internal/cz;->pT:Landroid/os/Handler;
iget-object v1, p0, Lcom/google/android/gms/internal/bs$a;->kW:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method