.class public final Lcom/google/android/gms/internal/ar;
.super Lcom/google/android/gms/internal/at;


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/at;-><init>()V

    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/google/android/gms/internal/av;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/google/android/gms/internal/ar;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/ads/mediation/MediationAdapter;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_60

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not instantiate mediation adapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_35} :catch_35

    :catch_35
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not instantiate mediation adapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ea;->e(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_60
    :try_start_60
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/mediation/MediationAdapter;

    iget-object v1, p0, Lcom/google/android/gms/internal/ar;->a:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/ads/mediation/MediationAdapter;->getAdditionalParametersType()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/mediation/NetworkExtras;

    new-instance v2, Lcom/google/android/gms/internal/bb;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/bb;-><init>(Lcom/google/ads/mediation/MediationAdapter;Lcom/google/ads/mediation/NetworkExtras;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_77} :catch_35

    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/android/gms/internal/av;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ar;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/av;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Map;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ar;->a:Ljava/util/Map;

    return-void
.end method
