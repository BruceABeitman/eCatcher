.class final Lcom/google/android/gms/internal/dl$f;
.super Lcom/google/android/gms/internal/eh$d;
.implements Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;
.implements Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;
.implements Lcom/google/android/gms/appstate/AppStateManager$StateResult;
.field final synthetic vk:Lcom/google/android/gms/internal/dl;
.field private final vl:Lcom/google/android/gms/common/api/Status;
.field private final vm:I
.field private final vn:Lcom/google/android/gms/appstate/AppStateBuffer;
.method public constructor <init>(Lcom/google/android/gms/internal/dl;Lcom/google/android/gms/common/api/a$c;ILcom/google/android/gms/common/data/DataHolder;)V
.registers 7
iput-object p1, p0, Lcom/google/android/gms/internal/dl$f;->vk:Lcom/google/android/gms/internal/dl;
invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/eh$d;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
iput p3, p0, Lcom/google/android/gms/internal/dl$f;->vm:I
new-instance v0, Lcom/google/android/gms/common/api/Status;
invoke-virtual {p4}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I
move-result v1
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
iput-object v0, p0, Lcom/google/android/gms/internal/dl$f;->vl:Lcom/google/android/gms/common/api/Status;
new-instance v0, Lcom/google/android/gms/appstate/AppStateBuffer;
invoke-direct {v0, p4}, Lcom/google/android/gms/appstate/AppStateBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object v0, p0, Lcom/google/android/gms/internal/dl$f;->vn:Lcom/google/android/gms/appstate/AppStateBuffer;
return-void
.end method
.method private cQ()Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/dl$f;->vl:Lcom/google/android/gms/common/api/Status;
invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I
move-result v0
const/16 v1, 0x7d0
if-ne v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public final a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
invoke-interface {p1, p0}, Lcom/google/android/gms/common/api/a$c;->b(Ljava/lang/Object;)V
return-void
.end method
.method public final bridge synthetic a(Ljava/lang/Object;Lcom/google/android/gms/common/data/DataHolder;)V
.registers 3
check-cast p1, Lcom/google/android/gms/common/api/a$c;
invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/dl$f;->a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/common/data/DataHolder;)V
return-void
.end method
.method public final getConflictResult()Lcom/google/android/gms/appstate/AppStateManager$StateConflictResult;
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/dl$f;->cQ()Z
move-result v0
if-eqz v0, :cond_7
:goto_6
return-object p0
:cond_7
const/4 p0, 0x0
goto :goto_6
.end method
.method public final getLoadedResult()Lcom/google/android/gms/appstate/AppStateManager$StateLoadedResult;
.registers 2
invoke-direct {p0}, Lcom/google/android/gms/internal/dl$f;->cQ()Z
move-result v0
if-eqz v0, :cond_7
const/4 p0, 0x0
:cond_7
return-object p0
.end method
.method public final getLocalData()[B
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/dl$f;->vn:Lcom/google/android/gms/appstate/AppStateBuffer;
invoke-virtual {v0}, Lcom/google/android/gms/appstate/AppStateBuffer;->getCount()I
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/google/android/gms/internal/dl$f;->vn:Lcom/google/android/gms/appstate/AppStateBuffer;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/google/android/gms/appstate/AppStateBuffer;->get(I)Lcom/google/android/gms/appstate/AppState;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/appstate/AppState;->getLocalData()[B
move-result-object v0
goto :goto_9
.end method
.method public final getResolvedVersion()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/dl$f;->vn:Lcom/google/android/gms/appstate/AppStateBuffer;
invoke-virtual {v0}, Lcom/google/android/gms/appstate/AppStateBuffer;->getCount()I
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/google/android/gms/internal/dl$f;->vn:Lcom/google/android/gms/appstate/AppStateBuffer;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/google/android/gms/appstate/AppStateBuffer;->get(I)Lcom/google/android/gms/appstate/AppState;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/appstate/AppState;->getConflictVersion()Ljava/lang/String;
move-result-object v0
goto :goto_9
.end method
.method public final getServerData()[B
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/dl$f;->vn:Lcom/google/android/gms/appstate/AppStateBuffer;
invoke-virtual {v0}, Lcom/google/android/gms/appstate/AppStateBuffer;->getCount()I
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/google/android/gms/internal/dl$f;->vn:Lcom/google/android/gms/appstate/AppStateBuffer;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/google/android/gms/appstate/AppStateBuffer;->get(I)Lcom/google/android/gms/appstate/AppState;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/appstate/AppState;->getConflictData()[B
move-result-object v0
goto :goto_9
.end method
.method public final getStateKey()I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/dl$f;->vm:I
return v0
.end method
.method public final getStatus()Lcom/google/android/gms/common/api/Status;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/dl$f;->vl:Lcom/google/android/gms/common/api/Status;
return-object v0
.end method
.method public final release()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/dl$f;->vn:Lcom/google/android/gms/appstate/AppStateBuffer;
invoke-virtual {v0}, Lcom/google/android/gms/appstate/AppStateBuffer;->close()V
return-void
.end method