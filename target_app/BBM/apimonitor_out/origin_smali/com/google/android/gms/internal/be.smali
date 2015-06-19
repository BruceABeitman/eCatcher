.class public final Lcom/google/android/gms/internal/be;
.super Lcom/google/android/gms/internal/bf$a;


# instance fields
.field private mQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/bf$a;-><init>()V

    return-void
.end method

.method private n(Ljava/lang/String;)Lcom/google/android/gms/internal/bg;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<NETWORK_EXTRAS::",
            "Lcom/google/a/a/h;",
            "SERVER_PARAMETERS:",
            "Lcom/google/a/a/e;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/bg;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/google/android/gms/internal/be;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/a/a/b;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_58

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not instantiate mediation adapter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_31} :catch_31

    :catch_31
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not instantiate mediation adapter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_58
    :try_start_58
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/b;

    iget-object v1, p0, Lcom/google/android/gms/internal/be;->mQ:Ljava/util/Map;

    invoke-interface {v0}, Lcom/google/a/a/b;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/a/a/h;

    new-instance v2, Lcom/google/android/gms/internal/bi;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/bi;-><init>(Lcom/google/a/a/b;Lcom/google/a/a/h;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_6f} :catch_31

    return-object v2
.end method


# virtual methods
.method public final c(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/be;->mQ:Ljava/util/Map;

    return-void
.end method

.method public final m(Ljava/lang/String;)Lcom/google/android/gms/internal/bg;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/be;->n(Ljava/lang/String;)Lcom/google/android/gms/internal/bg;

    move-result-object v0

    return-object v0
.end method
