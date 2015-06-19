.class final Lcom/google/android/gms/internal/am$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ao;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/am;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/er;Ljava/util/Map;)V
    .registers 7
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

    const-string v0, "u"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, "URL missing from click GMSG."

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    :goto_f
    return-void

    :cond_10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/er;->g()Lcom/google/android/gms/internal/lh;

    move-result-object v2

    if-eqz v2, :cond_52

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/lh;->a(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-virtual {p1}, Lcom/google/android/gms/internal/er;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/lh;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_27
    .catch Lcom/google/android/gms/internal/m; {:try_start_14 .. :try_end_27} :catch_3f

    move-result-object v0

    :goto_28
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/en;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/er;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/er;->h()Lcom/google/android/gms/internal/dx;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/dx;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/en;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/en;->e()V

    goto :goto_f

    :catch_3f
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to append parameter to URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V

    :cond_52
    move-object v0, v1

    goto :goto_28
.end method
