.class public Lcom/google/android/gms/plus/internal/e;
.super Lcom/google/android/gms/internal/eh;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;
.field private Rd:Lcom/google/android/gms/plus/model/people/Person;
.field private final Re:Lcom/google/android/gms/plus/internal/h;
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/plus/internal/h;)V
.registers 12
invoke-virtual {p5}, Lcom/google/android/gms/plus/internal/h;->hq()[Ljava/lang/String;
move-result-object v5
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/eh;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V
iput-object p5, p0, Lcom/google/android/gms/plus/internal/e;->Re:Lcom/google/android/gms/plus/internal/h;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Lcom/google/android/gms/plus/internal/h;)V
.registers 11
invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v2
new-instance v3, Lcom/google/android/gms/internal/eh$c;
invoke-direct {v3, p2}, Lcom/google/android/gms/internal/eh$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
new-instance v4, Lcom/google/android/gms/internal/eh$g;
invoke-direct {v4, p3}, Lcom/google/android/gms/internal/eh$g;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
move-object v0, p0
move-object v1, p1
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/plus/internal/h;)V
return-void
.end method
.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
.registers 5
if-nez p1, :cond_18
if-eqz p3, :cond_18
const-string v0, "loaded_person"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_18
const-string v0, "loaded_person"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ir;->i([B)Lcom/google/android/gms/internal/ir;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/plus/internal/e;->Rd:Lcom/google/android/gms/plus/model/people/Person;
:cond_18
invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/eh;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/a$c;ILjava/lang/String;)V
.registers 10
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->bm()V
new-instance v1, Lcom/google/android/gms/plus/internal/e$e;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/e$e;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$c;)V
:try_start_8
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/plus/internal/d;
const/4 v2, 0x1
const/4 v4, -0x1
move v3, p2
move-object v5, p3
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/d;->a(Lcom/google/android/gms/plus/internal/b;IIILjava/lang/String;)V
:try_end_15
.catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_16
:goto_15
return-void
:catch_16
move-exception v0
const/16 v0, 0x8
invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->empty(I)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/plus/internal/e$e;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
goto :goto_15
.end method
.method public a(Lcom/google/android/gms/common/api/a$c;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
.registers 15
const/4 v7, 0x0
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->bm()V
if-eqz p1, :cond_1a
new-instance v1, Lcom/google/android/gms/plus/internal/e$b;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/e$b;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$c;)V
:goto_b
:try_start_b
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/plus/internal/d;
move v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
move-object v6, p6
invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/d;->a(Lcom/google/android/gms/plus/internal/b;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
:try_end_19
.catch Landroid/os/RemoteException; {:try_start_b .. :try_end_19} :catch_1c
:goto_19
return-void
:cond_1a
move-object v1, v7
goto :goto_b
:catch_1c
move-exception v0
const/16 v0, 0x8
invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->empty(I)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
invoke-virtual {v1, v0, v7, v7}, Lcom/google/android/gms/plus/internal/e$b;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_19
.end method
.method public a(Lcom/google/android/gms/common/api/a$c;Lcom/google/android/gms/plus/model/moments/Moment;)V
.registers 7
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->bm()V
if-eqz p1, :cond_1c
new-instance v0, Lcom/google/android/gms/plus/internal/e$a;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/plus/internal/e$a;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$c;)V
move-object v1, v0
:goto_c
:try_start_c
check-cast p2, Lcom/google/android/gms/internal/io;
invoke-static {p2}, Lcom/google/android/gms/internal/fh;->a(Lcom/google/android/gms/internal/fb;)Lcom/google/android/gms/internal/fh;
move-result-object v3
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/plus/internal/d;
invoke-interface {v0, v1, v3}, Lcom/google/android/gms/plus/internal/d;->a(Lcom/google/android/gms/plus/internal/b;Lcom/google/android/gms/internal/fh;)V
:goto_1b
:try_end_1b
.catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1b} :catch_1e
return-void
:cond_1c
move-object v1, v2
goto :goto_c
:catch_1e
move-exception v0
if-nez v1, :cond_27
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_27
new-instance v0, Lcom/google/android/gms/common/api/Status;
const/16 v3, 0x8
invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V
invoke-virtual {v1, v0}, Lcom/google/android/gms/plus/internal/e$a;->L(Lcom/google/android/gms/common/api/Status;)V
goto :goto_1b
.end method
.method public a(Lcom/google/android/gms/common/api/a$c;Ljava/util/Collection;)V
.registers 6
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->bm()V
new-instance v1, Lcom/google/android/gms/plus/internal/e$e;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/e$e;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$c;)V
:try_start_8
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/plus/internal/d;
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/plus/internal/d;->a(Lcom/google/android/gms/plus/internal/b;Ljava/util/List;)V
:goto_16
:try_end_16
.catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_16} :catch_17
return-void
:catch_17
move-exception v0
const/16 v0, 0x8
invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->empty(I)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/plus/internal/e$e;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
goto :goto_16
.end method
.method protected a(Lcom/google/android/gms/internal/en;Lcom/google/android/gms/internal/eh$e;)V
.registers 11
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e;->Re:Lcom/google/android/gms/plus/internal/h;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->hy()Landroid/os/Bundle;
move-result-object v7
const-string v0, "request_visible_actions"
iget-object v1, p0, Lcom/google/android/gms/plus/internal/e;->Re:Lcom/google/android/gms/plus/internal/h;
invoke-virtual {v1}, Lcom/google/android/gms/plus/internal/h;->hr()[Ljava/lang/String;
move-result-object v1
invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
const v2, 0x41f6b8
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e;->Re:Lcom/google/android/gms/plus/internal/h;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->hu()Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e;->Re:Lcom/google/android/gms/plus/internal/h;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->ht()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ea()[Ljava/lang/String;
move-result-object v5
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e;->Re:Lcom/google/android/gms/plus/internal/h;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->getAccountName()Ljava/lang/String;
move-result-object v6
move-object v0, p1
move-object v1, p2
invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/en;->a(Lcom/google/android/gms/internal/em;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method protected aB(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/d;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/plus/internal/d$a;->aA(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/d;
move-result-object v0
return-object v0
.end method
.method protected aF()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.plus.service.START"
return-object v0
.end method
.method protected aG()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
return-object v0
.end method
.method public aR(Ljava/lang/String;)Z
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ea()[Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public c(Lcom/google/android/gms/common/api/a$c;[Ljava/lang/String;)V
.registers 4
invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$c;Ljava/util/Collection;)V
return-void
.end method
.method public clearDefaultAccount()V
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->bm()V
const/4 v0, 0x0
:try_start_4
iput-object v0, p0, Lcom/google/android/gms/plus/internal/e;->Rd:Lcom/google/android/gms/plus/model/people/Person;
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/plus/internal/d;
invoke-interface {v0}, Lcom/google/android/gms/plus/internal/d;->clearDefaultAccount()V
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public getAccountName()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->bm()V
:try_start_3
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/plus/internal/d;
invoke-interface {v0}, Lcom/google/android/gms/plus/internal/d;->getAccountName()Ljava/lang/String;
:try_end_c
.catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e
move-result-object v0
return-object v0
:catch_e
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->bm()V
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e;->Rd:Lcom/google/android/gms/plus/model/people/Person;
return-object v0
.end method
.method public i(Lcom/google/android/gms/common/api/a$c;)V
.registers 9
const/4 v3, 0x0
const/16 v2, 0x14
const-string v6, "me"
move-object v0, p0
move-object v1, p1
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$c;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public i(Lcom/google/android/gms/common/api/a$c;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$c;ILjava/lang/String;)V
return-void
.end method
.method public j(Lcom/google/android/gms/common/api/a$c;)V
.registers 9
const/4 v6, 0x0
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->bm()V
new-instance v1, Lcom/google/android/gms/plus/internal/e$e;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/e$e;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$c;)V
:try_start_9
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/plus/internal/d;
const/4 v2, 0x2
const/4 v3, 0x1
const/4 v4, -0x1
const/4 v5, 0x0
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/d;->a(Lcom/google/android/gms/plus/internal/b;IIILjava/lang/String;)V
:goto_16
:try_end_16
.catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17
return-void
:catch_17
move-exception v0
const/16 v0, 0x8
invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->empty(I)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/plus/internal/e$e;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
goto :goto_16
.end method
.method public k(Lcom/google/android/gms/common/api/a$c;)V
.registers 5
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->bm()V
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->clearDefaultAccount()V
new-instance v1, Lcom/google/android/gms/plus/internal/e$g;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/e$g;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$c;)V
:try_start_b
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/plus/internal/d;
invoke-interface {v0, v1}, Lcom/google/android/gms/plus/internal/d;->b(Lcom/google/android/gms/plus/internal/b;)V
:goto_14
:try_end_14
.catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15
return-void
:catch_15
move-exception v0
const/16 v0, 0x8
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/plus/internal/e$g;->d(ILandroid/os/Bundle;)V
goto :goto_14
.end method
.method protected synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/e;->aB(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/d;
move-result-object v0
return-object v0
.end method
.method public removeMoment(Ljava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->bm()V
:try_start_3
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->eb()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/plus/internal/d;
invoke-interface {v0, p1}, Lcom/google/android/gms/plus/internal/d;->removeMoment(Ljava/lang/String;)V
:try_end_c
.catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d
return-void
:catch_d
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method