.class  Lcom/google/android/gms/internal/kn$4;
.super Lcom/google/android/gms/internal/kn$a;
.field final synthetic ack:Lcom/google/android/gms/internal/kn;
.field final synthetic acl:Ljava/util/Collection;
.method constructor <init>(Lcom/google/android/gms/internal/kn;Ljava/util/Collection;)V
.registers 4
iput-object p1, p0, Lcom/google/android/gms/internal/kn$4;->ack:Lcom/google/android/gms/internal/kn;
iput-object p2, p0, Lcom/google/android/gms/internal/kn$4;->acl:Ljava/util/Collection;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/kn$a;-><init>(Lcom/google/android/gms/internal/kn$1;)V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/plus/internal/e;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/kn$4;->a(Lcom/google/android/gms/plus/internal/e;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/plus/internal/e;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/kn$4;->acl:Ljava/util/Collection;
invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;Ljava/util/Collection;)V
return-void
.end method