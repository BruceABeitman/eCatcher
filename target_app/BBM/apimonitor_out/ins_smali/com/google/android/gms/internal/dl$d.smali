.class final Lcom/google/android/gms/internal/dl$d;
.super Lcom/google/android/gms/internal/eh$d;
.implements Lcom/google/android/gms/appstate/AppStateManager$StateListResult;
.field final synthetic vk:Lcom/google/android/gms/internal/dl;
.field private final vl:Lcom/google/android/gms/common/api/Status;
.field private final vn:Lcom/google/android/gms/appstate/AppStateBuffer;
.method public constructor <init>(Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 6
iput-object p1, p0, Lcom/google/android/gms/internal/dl$d;->vk:Lcom/google/android/gms/internal/dl;
invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/eh$d;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
iput-object p3, p0, Lcom/google/android/gms/internal/dl$d;->vl:Lcom/google/android/gms/common/api/Status;
new-instance v0, Lcom/google/android/gms/appstate/AppStateBuffer;
invoke-direct {v0, p4}, Lcom/google/android/gms/appstate/AppStateBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object v0, p0, Lcom/google/android/gms/internal/dl$d;->vn:Lcom/google/android/gms/appstate/AppStateBuffer;
return-void
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V
return-void
.end method
.method public final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
check-cast p1, Lcom/google/android/gms/common/api/a$c;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/dl$d;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method public final getStateBuffer()Lcom/google/android/gms/appstate/AppStateBuffer;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/dl$d;->vn:Lcom/google/android/gms/appstate/AppStateBuffer;
return-object v0
.end method
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/dl$d;->vl:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method