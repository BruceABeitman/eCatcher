.class public final Lcom/google/android/gms/internal/il;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/plus/People;
.field private final Rw:Lcom/google/android/gms/common/api/Api$b;
.method public constructor <init>(Lcom/google/android/gms/common/api/Api$b;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/il;->Rw:Lcom/google/android/gms/common/api/Api$b;
return-void
.end method
.method public final getCurrentPerson(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/plus/model/people/Person;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/il;->Rw:Lcom/google/android/gms/common/api/Api$b;
invoke-static {p1, v0}, Lcom/google/android/gms/plus/Plus;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Api$b;)Lcom/google/android/gms/plus/internal/e;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;
move-result-object v0
return-object v0
.end method
.method public final load(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Collection;)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/il$4;
iget-object v1, p0, Lcom/google/android/gms/internal/il;->Rw:Lcom/google/android/gms/common/api/Api$b;
invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/il$4;-><init>(Lcom/google/android/gms/internal/il;Lcom/google/android/gms/common/api/Api$b;Ljava/util/Collection;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final varargs load(Lcom/google/android/gms/common/api/GoogleApiClient;[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/il$5;
iget-object v1, p0, Lcom/google/android/gms/internal/il;->Rw:Lcom/google/android/gms/common/api/Api$b;
invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/il$5;-><init>(Lcom/google/android/gms/internal/il;Lcom/google/android/gms/common/api/Api$b;[Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final loadConnected(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/il$3;
iget-object v1, p0, Lcom/google/android/gms/internal/il;->Rw:Lcom/google/android/gms/common/api/Api$b;
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/il$3;-><init>(Lcom/google/android/gms/internal/il;Lcom/google/android/gms/common/api/Api$b;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final loadVisible(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 6
new-instance v0, Lcom/google/android/gms/internal/il$1;
iget-object v1, p0, Lcom/google/android/gms/internal/il;->Rw:Lcom/google/android/gms/common/api/Api$b;
invoke-direct {v0, p0, v1, p2, p3}, Lcom/google/android/gms/internal/il$1;-><init>(Lcom/google/android/gms/internal/il;Lcom/google/android/gms/common/api/Api$b;ILjava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final loadVisible(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/il$2;
iget-object v1, p0, Lcom/google/android/gms/internal/il;->Rw:Lcom/google/android/gms/common/api/Api$b;
invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/il$2;-><init>(Lcom/google/android/gms/internal/il;Lcom/google/android/gms/common/api/Api$b;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method