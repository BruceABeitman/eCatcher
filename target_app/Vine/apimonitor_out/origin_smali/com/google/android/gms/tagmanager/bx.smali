.class abstract Lcom/google/android/gms/tagmanager/bx;
.super Lcom/google/android/gms/tagmanager/cc;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/cc;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/d$a;Lcom/google/android/gms/internal/d$a;Ljava/util/Map;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/d$a;",
            "Lcom/google/android/gms/internal/d$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/dh;->k(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/dg;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/tagmanager/dh;->k(Lcom/google/android/gms/internal/d$a;)Lcom/google/android/gms/tagmanager/dg;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->mW()Lcom/google/android/gms/tagmanager/dg;

    move-result-object v2

    if-eq v0, v2, :cond_14

    invoke-static {}, Lcom/google/android/gms/tagmanager/dh;->mW()Lcom/google/android/gms/tagmanager/dg;

    move-result-object v2

    if-ne v1, v2, :cond_16

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    invoke-virtual {p0, v0, v1, p3}, Lcom/google/android/gms/tagmanager/bx;->a(Lcom/google/android/gms/tagmanager/dg;Lcom/google/android/gms/tagmanager/dg;Ljava/util/Map;)Z

    move-result v0

    goto :goto_15
.end method

.method protected abstract a(Lcom/google/android/gms/tagmanager/dg;Lcom/google/android/gms/tagmanager/dg;Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/dg;",
            "Lcom/google/android/gms/tagmanager/dg;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)Z"
        }
    .end annotation
.end method
