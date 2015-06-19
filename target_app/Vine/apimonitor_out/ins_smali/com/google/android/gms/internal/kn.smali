.class public final Lcom/google/android/gms/internal/kn;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/plus/People;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getCurrentPerson(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/plus/model/people/Person;
.registers 3
sget-object v0, Lcom/google/android/gms/plus/Plus;->yE:Lcom/google/android/gms/common/api/Api$c;
invoke-static {p1, v0}, Lcom/google/android/gms/plus/Plus;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/plus/internal/e;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;
move-result-object v0
return-object v0
.end method
.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/Collection;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/kn$4;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/kn$4;-><init>(Lcom/google/android/gms/internal/kn;Ljava/util/Collection;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public varargs load(Lcom/google/android/gms/common/api/GoogleApiClient;[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/kn$5;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/kn$5;-><init>(Lcom/google/android/gms/internal/kn;[Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public loadConnected(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 3
new-instance v0, Lcom/google/android/gms/internal/kn$3;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/kn$3;-><init>(Lcom/google/android/gms/internal/kn;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public loadVisible(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
new-instance v0, Lcom/google/android/gms/internal/kn$1;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/internal/kn$1;-><init>(Lcom/google/android/gms/internal/kn;ILjava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public loadVisible(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/kn$2;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/kn$2;-><init>(Lcom/google/android/gms/internal/kn;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method