.class public final Lcom/google/android/gms/internal/bi;
.super Lcom/google/android/gms/internal/bg$a;
.field private final mR:Lcom/google/a/a/b;
.field private final mS:Lcom/google/a/a/h;
.method public constructor <init>(Lcom/google/a/a/b;Lcom/google/a/a/h;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/internal/bg$a;-><init>()V
iput-object p1, p0, Lcom/google/android/gms/internal/bi;->mR:Lcom/google/a/a/b;
iput-object p2, p0, Lcom/google/android/gms/internal/bi;->mS:Lcom/google/a/a/h;
return-void
.end method
.method private a(Ljava/lang/String;ILjava/lang/String;)Lcom/google/a/a/e;
.registers 10
if-eqz p1, :cond_55
:try_start_2
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/util/HashMap;
invoke-virtual {v3}, Lorg/json/JSONObject;->length()I
move-result v1
invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V
invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v4
:goto_14
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_34
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-interface {v2, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_27
.catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_27} :catch_28
goto :goto_14
:catch_28
move-exception v1
const-string v2, "Could not get MediationServerParameters."
invoke-static {v2, v1}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v1, Landroid/os/RemoteException;
invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V
throw v1
:cond_34
move-object v3, v2
:goto_35
:try_start_35
iget-object v1, p0, Lcom/google/android/gms/internal/bi;->mR:Lcom/google/a/a/b;
invoke-interface {v1}, Lcom/google/a/a/b;->b()Ljava/lang/Class;
move-result-object v1
const/4 v2, 0x0
if-eqz v1, :cond_48
invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/a/a/e;
invoke-virtual {v1, v3}, Lcom/google/a/a/e;->a(Ljava/util/Map;)V
move-object v2, v1
:cond_48
instance-of v1, v2, Lcom/google/a/a/a/a;
if-eqz v1, :cond_54
move-object v0, v2
check-cast v0, Lcom/google/a/a/a/a;
move-object v1, v0
iput-object p3, v1, Lcom/google/a/a/a/a;->b:Ljava/lang/String;
iput p2, v1, Lcom/google/a/a/a/a;->c:I
:cond_54
return-object v2
:cond_55
new-instance v1, Ljava/util/HashMap;
const/4 v2, 0x0
invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V
:try_end_5b
.catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_5b} :catch_28
move-object v3, v1
goto :goto_35
.end method
.method public final a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/z;Ljava/lang/String;Lcom/google/android/gms/internal/bh;)V
.registers 13
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v6, p5
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/bi;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bh;)V
return-void
.end method
.method public final a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bh;)V
.registers 9
iget-object v0, p0, Lcom/google/android/gms/internal/bi;->mR:Lcom/google/a/a/b;
instance-of v0, v0, Lcom/google/a/a/c;
if-nez v0, :cond_28
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "MediationAdapter is not a MediationBannerAdapter: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/internal/bi;->mR:Lcom/google/a/a/b;
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
:cond_28
const-string v0, "Requesting banner ad from adapter."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V
:try_start_2d
iget-object v0, p0, Lcom/google/android/gms/internal/bi;->mR:Lcom/google/a/a/b;
new-instance v0, Lcom/google/android/gms/internal/bj;
invoke-direct {v0, p6}, Lcom/google/android/gms/internal/bj;-><init>(Lcom/google/android/gms/internal/bh;)V
invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;
iget v0, p3, Lcom/google/android/gms/internal/z;->tagForChildDirectedTreatment:I
invoke-direct {p0, p4, v0, p5}, Lcom/google/android/gms/internal/bi;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/google/a/a/e;
invoke-static {p2}, Lcom/google/android/gms/internal/bk;->b(Lcom/google/android/gms/internal/ab;)Lcom/google/a/d;
invoke-static {p3}, Lcom/google/android/gms/internal/bk;->e(Lcom/google/android/gms/internal/z;)Lcom/google/a/a/a;
iget-object v0, p0, Lcom/google/android/gms/internal/bi;->mS:Lcom/google/a/a/h;
:try_end_44
.catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_44} :catch_45
return-void
:catch_45
move-exception v0
const-string v1, "Could not request banner ad from adapter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
.end method
.method public final a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/z;Ljava/lang/String;Lcom/google/android/gms/internal/bh;)V
.registers 11
const/4 v4, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v5, p4
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/bi;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bh;)V
return-void
.end method
.method public final a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bh;)V
.registers 8
iget-object v0, p0, Lcom/google/android/gms/internal/bi;->mR:Lcom/google/a/a/b;
instance-of v0, v0, Lcom/google/a/a/d;
if-nez v0, :cond_28
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "MediationAdapter is not a MediationInterstitialAdapter: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/internal/bi;->mR:Lcom/google/a/a/b;
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
:cond_28
const-string v0, "Requesting interstitial ad from adapter."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V
:try_start_2d
iget-object v0, p0, Lcom/google/android/gms/internal/bi;->mR:Lcom/google/a/a/b;
new-instance v0, Lcom/google/android/gms/internal/bj;
invoke-direct {v0, p5}, Lcom/google/android/gms/internal/bj;-><init>(Lcom/google/android/gms/internal/bh;)V
invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->b(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;
iget v0, p2, Lcom/google/android/gms/internal/z;->tagForChildDirectedTreatment:I
invoke-direct {p0, p3, v0, p4}, Lcom/google/android/gms/internal/bi;->a(Ljava/lang/String;ILjava/lang/String;)Lcom/google/a/a/e;
invoke-static {p2}, Lcom/google/android/gms/internal/bk;->e(Lcom/google/android/gms/internal/z;)Lcom/google/a/a/a;
iget-object v0, p0, Lcom/google/android/gms/internal/bi;->mS:Lcom/google/a/a/h;
:try_end_41
.catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_41} :catch_42
return-void
:catch_42
move-exception v0
const-string v1, "Could not request interstitial ad from adapter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
.end method
.method public final destroy()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/internal/bi;->mR:Lcom/google/a/a/b;
:try_end_2
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3
return-void
:catch_3
move-exception v0
const-string v1, "Could not destroy adapter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
.end method
.method public final getView()Lcom/google/android/gms/dynamic/b;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/bi;->mR:Lcom/google/a/a/b;
instance-of v0, v0, Lcom/google/a/a/c;
if-nez v0, :cond_28
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "MediationAdapter is not a MediationBannerAdapter: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/internal/bi;->mR:Lcom/google/a/a/b;
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
:cond_28
:try_start_28
iget-object v0, p0, Lcom/google/android/gms/internal/bi;->mR:Lcom/google/a/a/b;
check-cast v0, Lcom/google/a/a/c;
invoke-interface {v0}, Lcom/google/a/a/c;->c()Landroid/view/View;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;
:try_end_33
.catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_33} :catch_35
move-result-object v0
return-object v0
:catch_35
move-exception v0
const-string v1, "Could not get banner view from adapter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
.end method
.method public final showInterstitial()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/bi;->mR:Lcom/google/a/a/b;
instance-of v0, v0, Lcom/google/a/a/d;
if-nez v0, :cond_28
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "MediationAdapter is not a MediationInterstitialAdapter: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/internal/bi;->mR:Lcom/google/a/a/b;
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
:cond_28
const-string v0, "Showing interstitial from adapter."
invoke-static {v0}, Lcom/google/android/gms/internal/da;->s(Ljava/lang/String;)V
:try_start_2d
iget-object v0, p0, Lcom/google/android/gms/internal/bi;->mR:Lcom/google/a/a/b;
:try_end_2f
.catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2f} :catch_30
return-void
:catch_30
move-exception v0
const-string v1, "Could not show interstitial from adapter."
invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
new-instance v0, Landroid/os/RemoteException;
invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V
throw v0
.end method