.class public final Lcom/google/android/gms/plus/internal/m;
.super Lcom/google/android/gms/internal/fy;
.implements Lcom/google/android/gms/common/b;
.field private a:Lcom/google/android/gms/plus/a/b/a;
.field private final e:Lcom/google/android/gms/plus/internal/h;
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/plus/internal/h;)V
.registers 12
invoke-virtual {p5}, Lcom/google/android/gms/plus/internal/h;->c()[Ljava/lang/String;
move-result-object v5
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/l;[Ljava/lang/String;)V
iput-object p5, p0, Lcom/google/android/gms/plus/internal/m;->e:Lcom/google/android/gms/plus/internal/h;
return-void
.end method
.method protected final synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/plus/internal/k;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/j;
move-result-object v0
return-object v0
.end method
.method protected final a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
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
invoke-static {v0}, Lcom/google/android/gms/internal/ih;->a([B)Lcom/google/android/gms/internal/ih;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/plus/internal/m;->a:Lcom/google/android/gms/plus/a/b/a;
:cond_18
invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/fy;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
return-void
.end method
.method public final a(Lcom/google/android/gms/common/api/w;)V
.registers 5
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/m;->k()V
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/m;->m()V
new-instance v1, Lcom/google/android/gms/plus/internal/n;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/plus/internal/n;-><init>(Lcom/google/android/gms/plus/internal/m;Lcom/google/android/gms/common/api/w;)V
:try_start_b
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/m;->l()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/plus/internal/j;
invoke-interface {v0, v1}, Lcom/google/android/gms/plus/internal/j;->b(Lcom/google/android/gms/plus/internal/b;)V
:goto_14
:try_end_14
.catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_15
return-void
:catch_15
move-exception v0
const/16 v0, 0x8
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/plus/internal/n;->a(ILandroid/os/Bundle;)V
goto :goto_14
.end method
.method protected final a(Lcom/google/android/gms/internal/gw;Lcom/google/android/gms/internal/ge;)V
.registers 11
iget-object v0, p0, Lcom/google/android/gms/plus/internal/m;->e:Lcom/google/android/gms/plus/internal/h;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->k()Landroid/os/Bundle;
move-result-object v7
const-string v0, "request_visible_actions"
iget-object v1, p0, Lcom/google/android/gms/plus/internal/m;->e:Lcom/google/android/gms/plus/internal/h;
invoke-virtual {v1}, Lcom/google/android/gms/plus/internal/h;->d()[Ljava/lang/String;
move-result-object v1
invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
const v2, 0x43eea0
iget-object v0, p0, Lcom/google/android/gms/plus/internal/m;->e:Lcom/google/android/gms/plus/internal/h;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->g()Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/google/android/gms/plus/internal/m;->e:Lcom/google/android/gms/plus/internal/h;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->f()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/m;->j()[Ljava/lang/String;
move-result-object v5
iget-object v0, p0, Lcom/google/android/gms/plus/internal/m;->e:Lcom/google/android/gms/plus/internal/h;
invoke-virtual {v0}, Lcom/google/android/gms/plus/internal/h;->b()Ljava/lang/String;
move-result-object v6
move-object v0, p1
move-object v1, p2
invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/gw;->a(Lcom/google/android/gms/internal/gt;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method protected final e()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.plus.service.START"
return-object v0
.end method
.method protected final f()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
return-object v0
.end method
.method public final g()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/m;->k()V
:try_start_3
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/m;->l()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/plus/internal/j;
invoke-interface {v0}, Lcom/google/android/gms/plus/internal/j;->a()Ljava/lang/String;
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
.method public final m()V
.registers 3
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/m;->k()V
const/4 v0, 0x0
:try_start_4
iput-object v0, p0, Lcom/google/android/gms/plus/internal/m;->a:Lcom/google/android/gms/plus/a/b/a;
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/m;->l()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/gms/plus/internal/j;
invoke-interface {v0}, Lcom/google/android/gms/plus/internal/j;->b()V
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method