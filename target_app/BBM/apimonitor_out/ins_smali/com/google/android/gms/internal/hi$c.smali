.class final Lcom/google/android/gms/internal/hi$c;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/hl;
.field final synthetic Lu:Lcom/google/android/gms/internal/hi;
.method private constructor <init>(Lcom/google/android/gms/internal/hi;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/hi$c;->Lu:Lcom/google/android/gms/internal/hi;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/internal/hi;Lcom/google/android/gms/internal/hi$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/hi$c;-><init>(Lcom/google/android/gms/internal/hi;)V
return-void
.end method
.method public final bm()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/hi$c;->Lu:Lcom/google/android/gms/internal/hi;
invoke-static {v0}, Lcom/google/android/gms/internal/hi;->a(Lcom/google/android/gms/internal/hi;)V
return-void
.end method
.method public final synthetic eb()Landroid/os/IInterface;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/hi$c;->gm()Lcom/google/android/gms/internal/hg;
move-result-object v0
return-object v0
.end method
.method public final gm()Lcom/google/android/gms/internal/hg;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/hi$c;->Lu:Lcom/google/android/gms/internal/hi;
invoke-static {v0}, Lcom/google/android/gms/internal/hi;->b(Lcom/google/android/gms/internal/hi;)Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/hg;
return-object v0
.end method