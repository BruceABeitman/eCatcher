.class  Lcom/google/android/gms/plus/PlusClient$4;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/api/a$d;
.field final synthetic abs:Lcom/google/android/gms/plus/PlusClient;
.field final synthetic abt:Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;
.method constructor <init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient$4;->abs:Lcom/google/android/gms/plus/PlusClient;
iput-object p2, p0, Lcom/google/android/gms/plus/PlusClient$4;->abt:Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/plus/People$LoadPeopleResult;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient$4;->abt:Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;
invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getStatus()Lcom/google/android/gms/common/api/Status;
move-result-object v1
invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->eM()Lcom/google/android/gms/common/ConnectionResult;
move-result-object v1
invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getPersonBuffer()Lcom/google/android/gms/plus/model/people/PersonBuffer;
move-result-object v2
invoke-interface {p1}, Lcom/google/android/gms/plus/People$LoadPeopleResult;->getNextPageToken()Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;->onPeopleLoaded(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/plus/model/people/PersonBuffer;Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/plus/People$LoadPeopleResult;
invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/PlusClient$4;->a(Lcom/google/android/gms/plus/People$LoadPeopleResult;)V
return-void
.end method