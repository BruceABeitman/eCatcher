.class  Lcom/google/android/gms/internal/oe$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/multiplayer/turnbased/m;
.field final synthetic a:Lcom/google/android/gms/common/api/Status;
.field final synthetic b:Lcom/google/android/gms/internal/oe;
.method constructor <init>(Lcom/google/android/gms/internal/oe;Lcom/google/android/gms/common/api/Status;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/oe$1;->b:Lcom/google/android/gms/internal/oe;
iput-object p2, p0, Lcom/google/android/gms/internal/oe$1;->a:Lcom/google/android/gms/common/api/Status;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/oe$1;->a:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public b()Lcom/google/android/gms/games/multiplayer/turnbased/b;
.registers 3
new-instance v0, Lcom/google/android/gms/games/multiplayer/turnbased/b;
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
invoke-direct {v0, v1}, Lcom/google/android/gms/games/multiplayer/turnbased/b;-><init>(Landroid/os/Bundle;)V
return-object v0
.end method
.method public d()V
.registers 1
return-void
.end method