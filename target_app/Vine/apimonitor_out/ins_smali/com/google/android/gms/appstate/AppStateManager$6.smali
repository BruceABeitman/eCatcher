.class final Lcom/google/android/gms/appstate/AppStateManager$6;
.super Lcom/google/android/gms/appstate/AppStateManager$e;
.field final synthetic yH:I
.method constructor <init>(I)V
.registers 3
iput p1, p0, Lcom/google/android/gms/appstate/AppStateManager$6;->yH:I
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/appstate/AppStateManager$e;-><init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/gb;
invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$6;->a(Lcom/google/android/gms/internal/gb;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/gb;)V
.registers 3
iget v0, p0, Lcom/google/android/gms/appstate/AppStateManager$6;->yH:I
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/gb;->b(Lcom/google/android/gms/common/api/a$d;I)V
return-void
.end method