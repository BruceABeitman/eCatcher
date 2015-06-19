.class final Lcom/google/android/gms/internal/du$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ao;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/du;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/du;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/du;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/du$2;->a:Lcom/google/android/gms/internal/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/er;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/er;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/du$2;->a:Lcom/google/android/gms/internal/du;

    invoke-static {v0}, Lcom/google/android/gms/internal/du;->a(Lcom/google/android/gms/internal/du;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    const-string v0, "url"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_18

    const-string v0, "URL missing in loadAdUrl GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    monitor-exit v2

    :goto_17
    return-void

    :cond_18
    const-string v1, "%40mediation_adapters%40"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/er;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v1, "check_adapters"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/du$2;->a:Lcom/google/android/gms/internal/du;

    invoke-static {v4}, Lcom/google/android/gms/internal/du;->c(Lcom/google/android/gms/internal/du;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/eg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "%40mediation_adapters%40"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Ad request URL modified to "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ep;->d(Ljava/lang/String;)V

    :cond_4e
    iget-object v1, p0, Lcom/google/android/gms/internal/du$2;->a:Lcom/google/android/gms/internal/du;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/du;->a(Lcom/google/android/gms/internal/du;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/du$2;->a:Lcom/google/android/gms/internal/du;

    invoke-static {v0}, Lcom/google/android/gms/internal/du;->a(Lcom/google/android/gms/internal/du;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_7 .. :try_end_5d} :catchall_5e

    goto :goto_17

    :catchall_5e
    move-exception v0

    monitor-exit v2

    throw v0
.end method
