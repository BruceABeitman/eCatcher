.class final Lcom/google/android/gms/internal/dl$b;
.super Lcom/google/android/gms/internal/eh$b;
.implements Lcom/google/android/gms/appstate/AppStateManager$StateDeletedResult;
.field final synthetic vk:Lcom/google/android/gms/internal/dl;
.field private final vl:Lcom/google/android/gms/common/api/Status;
.field private final vm:I
.method public constructor <init>(Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/api/Status;I)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/internal/dl$b;->vk:Lcom/google/android/gms/internal/dl;
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/eh$b;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;)V
iput-object p3, p0, Lcom/google/android/gms/internal/dl$b;->vl:Lcom/google/android/gms/common/api/Status;
iput p4, p0, Lcom/google/android/gms/internal/dl$b;->vm:I
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/common/api/a$c;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/dl$b;->c(Lcom/google/android/gms/common/api/a$c;)V
return-void
.end method
.method public final c(Lcom/google/android/gms/common/api/a$c;)V
.registers 2
invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V
return-void
.end method
.method protected final cP()V
.registers 1
return-void
.end method
.method public final getStateKey()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/dl$b;->vm:I
return v0
.end method
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/dl$b;->vl:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method