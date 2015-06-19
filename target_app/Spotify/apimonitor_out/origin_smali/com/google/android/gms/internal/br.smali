.class public final Lcom/google/android/gms/internal/br;
.super Lcom/google/android/gms/internal/bj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NETWORK_EXTRAS::",
        "Lcom/google/ads/mediation/f;",
        "SERVER_PARAMETERS:",
        "Lcom/google/ads/mediation/MediationServerParameters;",
        ">",
        "Lcom/google/android/gms/internal/bj;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/mediation/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/mediation/b",
            "<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/ads/mediation/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TNETWORK_EXTRAS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/b;Lcom/google/ads/mediation/f;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/mediation/b",
            "<TNETWORK_EXTRAS;TSERVER_PARAMETERS;>;TNETWORK_EXTRAS;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/bj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/br;->a:Lcom/google/ads/mediation/b;

    iput-object p2, p0, Lcom/google/android/gms/internal/br;->b:Lcom/google/ads/mediation/f;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSERVER_PARAMETERS;"
        }
    .end annotation

    if-eqz p1, :cond_34

    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_27} :catch_28

    goto :goto_14

    :catch_28
    move-exception v0

    const-string v1, "Could not get MediationServerParameters."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_34
    :try_start_34
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v0

    :cond_3b
    iget-object v0, p0, Lcom/google/android/gms/internal/br;->a:Lcom/google/ads/mediation/b;

    invoke-interface {v0}, Lcom/google/ads/mediation/b;->b()Ljava/lang/Class;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/MediationServerParameters;

    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/MediationServerParameters;->a(Ljava/util/Map;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_4d} :catch_28

    :cond_4d
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/dynamic/b;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/br;->a:Lcom/google/ads/mediation/b;

    instance-of v0, v0, Lcom/google/ads/mediation/c;

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediationAdapter is not a MediationBannerAdapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/br;->a:Lcom/google/ads/mediation/b;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/br;->a:Lcom/google/ads/mediation/b;

    check-cast v0, Lcom/google/ads/mediation/c;

    invoke-interface {v0}, Lcom/google/ads/mediation/c;->c()Landroid/view/View;

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

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/br;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bl;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bl;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/br;->a:Lcom/google/ads/mediation/b;

    instance-of v0, v0, Lcom/google/ads/mediation/d;

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediationAdapter is not a MediationInterstitialAdapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/br;->a:Lcom/google/ads/mediation/b;

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
    const-string v0, "Requesting interstitial ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    :try_start_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/br;->a:Lcom/google/ads/mediation/b;

    new-instance v0, Lcom/google/android/gms/internal/bs;

    invoke-direct {v0, p5}, Lcom/google/android/gms/internal/bs;-><init>(Lcom/google/android/gms/internal/bl;)V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    iget v0, p2, Lcom/google/android/gms/internal/ah;->g:I

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/br;->a(Ljava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;

    invoke-static {p2}, Lcom/google/android/gms/internal/bt;->a(Lcom/google/android/gms/internal/ah;)Lcom/google/ads/mediation/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/br;->b:Lcom/google/ads/mediation/f;
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_41} :catch_42

    return-void

    :catch_42
    move-exception v0

    const-string v1, "Could not request interstitial ad from adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
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

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/br;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bl;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ak;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/bl;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/br;->a:Lcom/google/ads/mediation/b;

    instance-of v0, v0, Lcom/google/ads/mediation/c;

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediationAdapter is not a MediationBannerAdapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/br;->a:Lcom/google/ads/mediation/b;

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
    const-string v0, "Requesting banner ad from adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V

    :try_start_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/br;->a:Lcom/google/ads/mediation/b;

    new-instance v0, Lcom/google/android/gms/internal/bs;

    invoke-direct {v0, p6}, Lcom/google/android/gms/internal/bs;-><init>(Lcom/google/android/gms/internal/bl;)V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->a(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    iget v0, p3, Lcom/google/android/gms/internal/ah;->g:I

    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/br;->a(Ljava/lang/String;)Lcom/google/ads/mediation/MediationServerParameters;

    invoke-static {p2}, Lcom/google/android/gms/internal/bt;->a(Lcom/google/android/gms/internal/ak;)Lcom/google/ads/a;

    invoke-static {p3}, Lcom/google/android/gms/internal/bt;->a(Lcom/google/android/gms/internal/ah;)Lcom/google/ads/mediation/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/br;->b:Lcom/google/ads/mediation/f;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_44} :catch_45

    return-void

    :catch_45
    move-exception v0

    const-string v1, "Could not request banner ad from adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/br;->a:Lcom/google/ads/mediation/b;

    instance-of v0, v0, Lcom/google/ads/mediation/d;

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediationAdapter is not a MediationInterstitialAdapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/br;->a:Lcom/google/ads/mediation/b;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/br;->a:Lcom/google/ads/mediation/b;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2f} :catch_30

    return-void

    :catch_30
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
    iget-object v0, p0, Lcom/google/android/gms/internal/br;->a:Lcom/google/ads/mediation/b;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2} :catch_3

    return-void

    :catch_3
    move-exception v0

    const-string v1, "Could not destroy adapter."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final d()V
    .registers 2

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public final e()V
    .registers 2

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method
