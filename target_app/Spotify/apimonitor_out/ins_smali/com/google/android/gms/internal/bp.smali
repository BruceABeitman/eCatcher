.class public final Lcom/google/android/gms/internal/bp;
.super Lcom/google/android/gms/internal/bj;
.field private final a:Lcom/google/android/gms/ads/b/b;
.field private final b:Landroid/os/Bundle;
.method public constructor <init>(Lcom/google/android/gms/ads/b/b;Landroid/os/Bundle;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/internal/bj;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/bp;->a:Lcom/google/android/gms/ads/b/b;
iput-object p2, p0, Lcom/google/android/gms/internal/bp;->b:Landroid/os/Bundle;
return-void
.end method
.method private a(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
.registers 9
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Server parameters: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
:try_start_12
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
if-eqz p1, :cond_48
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v3
:goto_27
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_47
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:try_end_3a
.catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_3a} :catch_3b
goto :goto_27
:catch_3b
move-exception v0
const-string v1, "Could not get Server Parameters Bundle."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
:cond_47
move-object v0, v1
:cond_48
:try_start_48
iget-object v1, p0, Lcom/google/android/gms/internal/bp;->a:Lcom/google/android/gms/ads/b/b;
instance-of v1, v1, Lcom/google/ads/mediation/a/a;
if-eqz v1, :cond_58
const-string v1, "adJson"
invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "tagForChildDirectedTreatment"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_58
:try_end_58
.catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_58} :catch_3b
return-object v0
.end method
.method public final a()Lcom/google/android/gms/dynamic/b;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/bp;->a:Lcom/google/android/gms/ads/b/b;
instance-of v0, v0, Lcom/google/android/gms/ads/b/c;
if-nez v0, :cond_28
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "MediationAdapter is not a MediationBannerAdapter: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/internal/bp;->a:Lcom/google/android/gms/ads/b/b;
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
:cond_28
:try_start_28
iget-object v0, p0, Lcom/google/android/gms/internal/bp;->a:Lcom/google/android/gms/ads/b/b;
check-cast v0, Lcom/google/android/gms/ads/b/c;
invoke-interface {v0}, Lcom/google/android/gms/ads/b/c;->d()Landroid/view/View;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;
:try_end_33
.catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_33} :catch_35
move-result-object v0
return-object v0
:catch_35
move-exception v0
const-string v1, "Could not get banner view from adapter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
.end method
.method public final a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Lcom/google/android/gms/internal/bl;)V
.registers 11
const/4 v4, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bl;)V
return-void
.end method
.method public final a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bl;)V
.registers 15
iget-object v1, p0, Lcom/google/android/gms/internal/bp;->a:Lcom/google/android/gms/ads/b/b;
instance-of v1, v1, Lcom/google/android/gms/ads/b/e;
if-nez v1, :cond_28
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "MediationAdapter is not a MediationInterstitialAdapter: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/android/gms/internal/bp;->a:Lcom/google/android/gms/ads/b/b;
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
new-instance v1, Landroid/os/RemoteException;
invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V
throw v1
:cond_28
const-string v1, "Requesting interstitial ad from adapter."
invoke-static {v1}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
:try_start_2d
iget-object v1, p0, Lcom/google/android/gms/internal/bp;->a:Lcom/google/android/gms/ads/b/b;
move-object v0, v1
check-cast v0, Lcom/google/android/gms/ads/b/e;
move-object v8, v0
iget-object v1, p2, Lcom/google/android/gms/internal/ah;->e:Ljava/util/List;
if-eqz v1, :cond_69
new-instance v4, Ljava/util/HashSet;
iget-object v1, p2, Lcom/google/android/gms/internal/ah;->e:Ljava/util/List;
invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
:goto_3e
new-instance v1, Lcom/google/android/gms/internal/bo;
new-instance v2, Ljava/util/Date;
iget-wide v5, p2, Lcom/google/android/gms/internal/ah;->b:J
invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V
iget v3, p2, Lcom/google/android/gms/internal/ah;->d:I
iget-boolean v5, p2, Lcom/google/android/gms/internal/ah;->f:Z
iget v6, p2, Lcom/google/android/gms/internal/ah;->g:I
invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/bo;-><init>(Ljava/util/Date;ILjava/util/Set;ZI)V
invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/content/Context;
new-instance v4, Lcom/google/android/gms/internal/bq;
invoke-direct {v4, p5}, Lcom/google/android/gms/internal/bq;-><init>(Lcom/google/android/gms/internal/bl;)V
iget v2, p2, Lcom/google/android/gms/internal/ah;->g:I
invoke-direct {p0, p3, v2, p4}, Lcom/google/android/gms/internal/bp;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
move-result-object v5
iget-object v7, p0, Lcom/google/android/gms/internal/bp;->b:Landroid/os/Bundle;
move-object v2, v8
move-object v6, v1
invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/ads/b/e;->a(Landroid/content/Context;Lcom/google/android/gms/ads/b/f;Landroid/os/Bundle;Lcom/google/android/gms/ads/b/a;Landroid/os/Bundle;)V
:try_end_68
.catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_68} :catch_6b
return-void
:cond_69
const/4 v4, 0x0
goto :goto_3e
:catch_6b
move-exception v1
const-string v2, "Could not request interstitial ad from adapter."
invoke-static {v2, v1}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v1, Landroid/os/RemoteException;
invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V
throw v1
.end method
.method public final a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Lcom/google/android/gms/internal/bl;)V
.registers 13
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v6, p5
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bl;)V
return-void
.end method
.method public final a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bl;)V
.registers 16
iget-object v1, p0, Lcom/google/android/gms/internal/bp;->a:Lcom/google/android/gms/ads/b/b;
instance-of v1, v1, Lcom/google/android/gms/ads/b/c;
if-nez v1, :cond_28
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "MediationAdapter is not a MediationBannerAdapter: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/android/gms/internal/bp;->a:Lcom/google/android/gms/ads/b/b;
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
new-instance v1, Landroid/os/RemoteException;
invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V
throw v1
:cond_28
const-string v1, "Requesting banner ad from adapter."
invoke-static {v1}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
:try_start_2d
iget-object v1, p0, Lcom/google/android/gms/internal/bp;->a:Lcom/google/android/gms/ads/b/b;
move-object v0, v1
check-cast v0, Lcom/google/android/gms/ads/b/c;
move-object v7, v0
iget-object v1, p3, Lcom/google/android/gms/internal/ah;->e:Ljava/util/List;
if-eqz v1, :cond_73
new-instance v4, Ljava/util/HashSet;
iget-object v1, p3, Lcom/google/android/gms/internal/ah;->e:Ljava/util/List;
invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
:goto_3e
new-instance v1, Lcom/google/android/gms/internal/bo;
new-instance v2, Ljava/util/Date;
iget-wide v5, p3, Lcom/google/android/gms/internal/ah;->b:J
invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V
iget v3, p3, Lcom/google/android/gms/internal/ah;->d:I
iget-boolean v5, p3, Lcom/google/android/gms/internal/ah;->f:Z
iget v6, p3, Lcom/google/android/gms/internal/ah;->g:I
invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/bo;-><init>(Ljava/util/Date;ILjava/util/Set;ZI)V
invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/content/Context;
new-instance v4, Lcom/google/android/gms/internal/bq;
invoke-direct {v4, p6}, Lcom/google/android/gms/internal/bq;-><init>(Lcom/google/android/gms/internal/bl;)V
iget v2, p3, Lcom/google/android/gms/internal/ah;->g:I
invoke-direct {p0, p4, v2, p5}, Lcom/google/android/gms/internal/bp;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;
move-result-object v5
iget v2, p2, Lcom/google/android/gms/internal/ak;->f:I
iget v6, p2, Lcom/google/android/gms/internal/ak;->c:I
iget-object v8, p2, Lcom/google/android/gms/internal/ak;->b:Ljava/lang/String;
invoke-static {v2, v6, v8}, Lcom/google/android/gms/ads/f;->a(IILjava/lang/String;)Lcom/google/android/gms/ads/d;
move-result-object v6
iget-object v8, p0, Lcom/google/android/gms/internal/bp;->b:Landroid/os/Bundle;
move-object v2, v7
move-object v7, v1
invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/ads/b/c;->a(Landroid/content/Context;Lcom/google/android/gms/ads/b/d;Landroid/os/Bundle;Lcom/google/android/gms/ads/d;Lcom/google/android/gms/ads/b/a;Landroid/os/Bundle;)V
:try_end_72
.catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_72} :catch_75
return-void
:cond_73
const/4 v4, 0x0
goto :goto_3e
:catch_75
move-exception v1
const-string v2, "Could not request banner ad from adapter."
invoke-static {v2, v1}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v1, Landroid/os/RemoteException;
invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V
throw v1
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/bp;->a:Lcom/google/android/gms/ads/b/b;
instance-of v0, v0, Lcom/google/android/gms/ads/b/e;
if-nez v0, :cond_28
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "MediationAdapter is not a MediationInterstitialAdapter: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/internal/bp;->a:Lcom/google/android/gms/ads/b/b;
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
:cond_28
const-string v0, "Showing interstitial from adapter."
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
:try_start_2d
iget-object v0, p0, Lcom/google/android/gms/internal/bp;->a:Lcom/google/android/gms/ads/b/b;
check-cast v0, Lcom/google/android/gms/ads/b/e;
invoke-interface {v0}, Lcom/google/android/gms/ads/b/e;->e()V
:try_end_34
.catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_34} :catch_35
return-void
:catch_35
move-exception v0
const-string v1, "Could not show interstitial from adapter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
.end method
.method public final c()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/bp;->a:Lcom/google/android/gms/ads/b/b;
invoke-interface {v0}, Lcom/google/android/gms/ads/b/b;->a()V
:try_end_5
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
const-string v1, "Could not destroy adapter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
.end method
.method public final d()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/bp;->a:Lcom/google/android/gms/ads/b/b;
invoke-interface {v0}, Lcom/google/android/gms/ads/b/b;->b()V
:try_end_5
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
const-string v1, "Could not pause adapter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
.end method
.method public final e()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/bp;->a:Lcom/google/android/gms/ads/b/b;
invoke-interface {v0}, Lcom/google/android/gms/ads/b/b;->c()V
:try_end_5
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
const-string v1, "Could not resume adapter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
.end method