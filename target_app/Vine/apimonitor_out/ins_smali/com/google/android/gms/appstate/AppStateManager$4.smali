.class final Lcom/google/android/gms/appstate/AppStateManager$4;
.super Lcom/google/android/gms/appstate/AppStateManager$e;
.field final synthetic yH:I
.field final synthetic yI:[B
.method constructor <init>(I[B)V
.registers 4
iput p1, p0, Lcom/google/android/gms/appstate/AppStateManager$4;->yH:I
iput-object p2, p0, Lcom/google/android/gms/appstate/AppStateManager$4;->yI:[B
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/appstate/AppStateManager$e;-><init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/gb;
invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$4;->a(Lcom/google/android/gms/internal/gb;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/gb;)V
.registers 4
iget v0, p0, Lcom/google/android/gms/appstate/AppStateManager$4;->yH:I
iget-object v1, p0, Lcom/google/android/gms/appstate/AppStateManager$4;->yI:[B
invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/common/api/a$d;I[B)V
return-void
.end method