.class final Lcom/google/android/gms/internal/pm;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/internal/pp;
.field final synthetic a:Lcom/google/android/gms/internal/pj;
.method private constructor <init>(Lcom/google/android/gms/internal/pj;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/pm;->a:Lcom/google/android/gms/internal/pj;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/google/android/gms/internal/pj;Lcom/google/android/gms/internal/pj$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/pm;-><init>(Lcom/google/android/gms/internal/pj;)V
return-void
.end method
.method public a()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/pm;->a:Lcom/google/android/gms/internal/pj;
invoke-static {v0}, Lcom/google/android/gms/internal/pj;->a(Lcom/google/android/gms/internal/pj;)V
return-void
.end method
.method public b()Lcom/google/android/gms/internal/pd;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/pm;->a:Lcom/google/android/gms/internal/pj;
invoke-static {v0}, Lcom/google/android/gms/internal/pj;->b(Lcom/google/android/gms/internal/pj;)Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/pd;
return-object v0
.end method
.method public synthetic c()Landroid/os/IInterface;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/internal/pm;->b()Lcom/google/android/gms/internal/pd;
move-result-object v0
return-object v0
.end method