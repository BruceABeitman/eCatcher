.class public Lcom/google/android/gms/plus/PlusClient;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;
.field final abq:Lcom/google/android/gms/plus/internal/e;
.method constructor <init>(Lcom/google/android/gms/plus/internal/e;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
return-void
.end method
.method public clearDefaultAccount()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->clearDefaultAccount()V
return-void
.end method
.method public connect()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->connect()V
return-void
.end method
.method public disconnect()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->disconnect()V
return-void
.end method
.method public getAccountName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->getAccountName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;
move-result-object v0
return-object v0
.end method
.method public isConnected()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->isConnected()Z
move-result v0
return v0
.end method
.method public isConnecting()Z
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/e;->isConnecting()Z
move-result v0
return v0
.end method
.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/e;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
move-result v0
return v0
.end method
.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
.registers 3
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/e;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
move-result v0
return v0
.end method
.method  jN()Lcom/google/android/gms/plus/internal/e;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
return-object v0
.end method
.method public loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
new-instance v1, Lcom/google/android/gms/plus/PlusClient$1;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$1;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/e;->k(Lcom/google/android/gms/common/api/a$d;)V
return-void
.end method
.method public loadMoments(Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
.registers 14
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
new-instance v1, Lcom/google/android/gms/plus/PlusClient$2;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$2;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnMomentsLoadedListener;)V
move v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
move-object v6, p6
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/util/Collection;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
new-instance v1, Lcom/google/android/gms/plus/PlusClient$5;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$5;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V
invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;Ljava/util/Collection;)V
return-void
.end method
.method public varargs loadPeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;[Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
new-instance v1, Lcom/google/android/gms/plus/PlusClient$6;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$6;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V
invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/plus/internal/e;->d(Lcom/google/android/gms/common/api/a$d;[Ljava/lang/String;)V
return-void
.end method
.method public loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;ILjava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
new-instance v1, Lcom/google/android/gms/plus/PlusClient$3;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$3;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V
invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;)Lcom/google/android/gms/internal/hh;
return-void
.end method
.method public loadVisiblePeople(Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
new-instance v1, Lcom/google/android/gms/plus/PlusClient$4;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$4;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;)V
invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/plus/internal/e;->r(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)Lcom/google/android/gms/internal/hh;
return-void
.end method
.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/e;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
return-void
.end method
.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/e;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
return-void
.end method
.method public removeMoment(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/e;->removeMoment(Ljava/lang/String;)V
return-void
.end method
.method public revokeAccessAndDisconnect(Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
new-instance v1, Lcom/google/android/gms/plus/PlusClient$7;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/PlusClient$7;-><init>(Lcom/google/android/gms/plus/PlusClient;Lcom/google/android/gms/plus/PlusClient$OnAccessRevokedListener;)V
invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/internal/e;->m(Lcom/google/android/gms/common/api/a$d;)V
return-void
.end method
.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/e;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
return-void
.end method
.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/internal/e;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
return-void
.end method
.method public writeMoment(Lcom/google/android/gms/plus/model/moments/Moment;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/plus/PlusClient;->abq:Lcom/google/android/gms/plus/internal/e;
const/4 v1, 0x0
invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/plus/model/moments/Moment;)V
return-void
.end method