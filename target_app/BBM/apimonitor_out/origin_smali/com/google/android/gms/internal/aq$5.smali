.class final Lcom/google/android/gms/internal/aq$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ar;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/dd;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/dd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "URL missing from httpTrack GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/da;->w(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    new-instance v1, Lcom/google/android/gms/internal/cy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/dd;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/dd;->bd()Lcom/google/android/gms/internal/db;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/db;->pU:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/cy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/cy;->start()V

    goto :goto_f
.end method
