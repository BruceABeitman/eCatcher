.class public Lcom/google/android/gms/plus/internal/e;
.super Lcom/google/android/gms/internal/hc;
.field private abG:Lcom/google/android/gms/plus/model/people/Person;
.field private final abH:Lcom/google/android/gms/plus/internal/h;
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/plus/internal/h;)V
.registers 12
invoke-virtual {p5}, Lcom/google/android/gms/plus/internal/h;->jU()[Ljava/lang/String;
move-result-object v5
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/hc;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V
iput-object p5, p0, Lcom/google/android/gms/plus/internal/e;->abH:Lcom/google/android/gms/plus/internal/h;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Lcom/google/android/gms/plus/internal/h;)V
.registers 11
invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v2
new-instance v3, Lcom/google/android/gms/internal/hc$c;
invoke-direct {v3, p2}, Lcom/google/android/gms/internal/hc$c;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
new-instance v4, Lcom/google/android/gms/internal/hc$g;
invoke-direct {v4, p3}, Lcom/google/android/gms/internal/hc$g;-><init>(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
move-object v0, p0
move-object v1, p1
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/e;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/plus/internal/h;)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;)Lcom/google/android/gms/internal/hh;
.registers 11
const/4 v6, 0x0
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ci()V
new-instance v1, Lcom/google/android/gms/plus/internal/e$e;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/e$e;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V
:try_start_9
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/plus/internal/d;
const/4 v2, 0x1
const/4 v4, -0x1
move v3, p2
move-object v5, p3
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/d;->a(Lcom/google/android/gms/plus/internal/b;IIILjava/lang/String;)Lcom/google/android/gms/internal/hh;
:try_end_16
.catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_18
move-result-object v0
:goto_17
return-object v0
:catch_18
move-exception v0
const/16 v0, 0x8
invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->af(I)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/plus/internal/e$e;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
move-object v0, v6
goto :goto_17
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
invoke-static {v0}, Lcom/google/android/gms/internal/kt;->i([B)Lcom/google/android/gms/internal/kt;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/plus/internal/e;->abG:Lcom/google/android/gms/plus/model/people/Person;
:cond_18
invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/hc;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
return-void
.end method
.method public a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
.registers 15
const/4 v7, 0x0
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ci()V
if-eqz p1, :cond_1a
new-instance v1, Lcom/google/android/gms/plus/internal/e$b;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/e$b;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V
:goto_b
:try_start_b
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->fo()Landroid/os/IInterface;
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
invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->af(I)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
invoke-virtual {v1, v0, v7, v7}, Lcom/google/android/gms/plus/internal/e$b;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_19
.end method
.method public a(Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/plus/model/moments/Moment;)V
.registers 7
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ci()V
if-eqz p1, :cond_1c
new-instance v0, Lcom/google/android/gms/plus/internal/e$a;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/plus/internal/e$a;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V
move-object v1, v0
:goto_c
:try_start_c
check-cast p2, Lcom/google/android/gms/internal/kq;
invoke-static {p2}, Lcom/google/android/gms/internal/if;->a(Lcom/google/android/gms/internal/hz;)Lcom/google/android/gms/internal/if;
move-result-object v3
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/plus/internal/d;
invoke-interface {v0, v1, v3}, Lcom/google/android/gms/plus/internal/d;->a(Lcom/google/android/gms/plus/internal/b;Lcom/google/android/gms/internal/if;)V
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
invoke-virtual {v1, v0}, Lcom/google/android/gms/plus/internal/e$a;->am(Lcom/google/android/gms/common/api/Status;)V
goto :goto_1b
.end method
.method public a(Lcom/google/android/gms/common/api/a$d;Ljava/util/Collection;)V
.registers 6
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ci()V
new-instance v1, Lcom/google/android/gms/plus/internal/e$e;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/e$e;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V
:try_start_8
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->fo()Landroid/os/IInterface;
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
invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->af(I)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/plus/internal/e$e;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
goto :goto_16
.end method
.method protected a(Lcom/google/android/gms/internal/hj;Lcom/google/android/gms/internal/hc$e;)V
.registers 11
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e;->abH:Lcom/google/android/gms/plus/internal/h;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->kc()Landroid/os/Bundle;
move-result-object v7
const-string v0, "request_visible_actions"
iget-object v1, p0, Lcom/google/android/gms/plus/internal/e;->abH:Lcom/google/android/gms/plus/internal/h;
invoke-virtual {v1}, Lcom/google/android/gms/plus/internal/h;->jV()[Ljava/lang/String;
move-result-object v1
invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
const v2, 0x4d7808
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e;->abH:Lcom/google/android/gms/plus/internal/h;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->jY()Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e;->abH:Lcom/google/android/gms/plus/internal/h;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->jX()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->fn()[Ljava/lang/String;
move-result-object v5
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e;->abH:Lcom/google/android/gms/plus/internal/h;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->getAccountName()Ljava/lang/String;
move-result-object v6
move-object v0, p1
move-object v1, p2
invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/hj;->a(Lcom/google/android/gms/internal/hi;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method protected bn(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/d;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/plus/internal/d$a;->bm(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/d;
move-result-object v0
return-object v0
.end method
.method protected bp()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.plus.service.START"
return-object v0
.end method
.method protected bq()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
return-object v0
.end method
.method public by(Ljava/lang/String;)Z
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->fn()[Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public clearDefaultAccount()V
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ci()V
const/4 v0, 0x0
:try_start_4
iput-object v0, p0, Lcom/google/android/gms/plus/internal/e;->abG:Lcom/google/android/gms/plus/model/people/Person;
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->fo()Landroid/os/IInterface;
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
.method public d(Lcom/google/android/gms/common/api/a$d;[Ljava/lang/String;)V
.registers 4
invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;Ljava/util/Collection;)V
return-void
.end method
.method public getAccountName()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ci()V
:try_start_3
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->fo()Landroid/os/IInterface;
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
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ci()V
iget-object v0, p0, Lcom/google/android/gms/plus/internal/e;->abG:Lcom/google/android/gms/plus/model/people/Person;
return-object v0
.end method
.method public k(Lcom/google/android/gms/common/api/a$d;)V
.registers 9
const/4 v3, 0x0
const/16 v2, 0x14
const-string v6, "me"
move-object v0, p0
move-object v1, p1
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public l(Lcom/google/android/gms/common/api/a$d;)V
.registers 9
const/4 v6, 0x0
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ci()V
new-instance v1, Lcom/google/android/gms/plus/internal/e$e;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/e$e;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V
:try_start_9
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->fo()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/plus/internal/d;
const/4 v2, 0x2
const/4 v3, 0x1
const/4 v4, -0x1
const/4 v5, 0x0
invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/d;->a(Lcom/google/android/gms/plus/internal/b;IIILjava/lang/String;)Lcom/google/android/gms/internal/hh;
:goto_16
:try_end_16
.catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17
return-void
:catch_17
move-exception v0
const/16 v0, 0x8
invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->af(I)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/plus/internal/e$e;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
goto :goto_16
.end method
.method public m(Lcom/google/android/gms/common/api/a$d;)V
.registers 5
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ci()V
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->clearDefaultAccount()V
new-instance v1, Lcom/google/android/gms/plus/internal/e$g;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/e$g;-><init>(Lcom/google/android/gms/plus/internal/e;Lcom/google/android/gms/common/api/a$d;)V
:try_start_b
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->fo()Landroid/os/IInterface;
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
invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/plus/internal/e$g;->h(ILandroid/os/Bundle;)V
goto :goto_14
.end method
.method public r(Lcom/google/android/gms/common/api/a$d;Ljava/lang/String;)Lcom/google/android/gms/internal/hh;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/plus/internal/e;->a(Lcom/google/android/gms/common/api/a$d;ILjava/lang/String;)Lcom/google/android/gms/internal/hh;
move-result-object v0
return-object v0
.end method
.method public removeMoment(Ljava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->ci()V
:try_start_3
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/e;->fo()Landroid/os/IInterface;
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
.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/e;->bn(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/d;
move-result-object v0
return-object v0
.end method