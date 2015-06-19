.class final Lcom/google/android/gms/appstate/AppStateManager$8;
.super Lcom/google/android/gms/appstate/AppStateManager$e;
.field final synthetic yH:I
.field final synthetic yK:Ljava/lang/String;
.field final synthetic yL:[B
.method constructor <init>(ILjava/lang/String;[B)V
.registers 5
iput p1, p0, Lcom/google/android/gms/appstate/AppStateManager$8;->yH:I
iput-object p2, p0, Lcom/google/android/gms/appstate/AppStateManager$8;->yK:Ljava/lang/String;
iput-object p3, p0, Lcom/google/android/gms/appstate/AppStateManager$8;->yL:[B
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/appstate/AppStateManager$e;-><init>(Lcom/google/android/gms/appstate/AppStateManager$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/gb;
invoke-virtual {p0, p1}, Lcom/google/android/gms/appstate/AppStateManager$8;->a(Lcom/google/android/gms/internal/gb;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/gb;)V
.registers 5
iget v0, p0, Lcom/google/android/gms/appstate/AppStateManager$8;->yH:I
iget-object v1, p0, Lcom/google/android/gms/appstate/AppStateManager$8;->yK:Ljava/lang/String;
iget-object v2, p0, Lcom/google/android/gms/appstate/AppStateManager$8;->yL:[B
invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/internal/gb;->a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;[B)V
return-void
.end method