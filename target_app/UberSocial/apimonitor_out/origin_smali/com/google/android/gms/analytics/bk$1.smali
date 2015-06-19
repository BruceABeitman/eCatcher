.class Lcom/google/android/gms/analytics/bk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/bk;->a(Ljava/util/Map;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/google/android/gms/analytics/bk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/bk;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/analytics/bk$1;->b:Lcom/google/android/gms/analytics/bk;

    iput-object p2, p0, Lcom/google/android/gms/analytics/bk$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/analytics/bk$1;->a:Ljava/util/Map;

    const-string v1, "&cid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/analytics/bk$1;->a:Ljava/util/Map;

    const-string v1, "&cid"

    iget-object v2, p0, Lcom/google/android/gms/analytics/bk$1;->b:Lcom/google/android/gms/analytics/bk;

    invoke-static {v2}, Lcom/google/android/gms/analytics/bk;->a(Lcom/google/android/gms/analytics/bk;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    iget-object v0, p0, Lcom/google/android/gms/analytics/bk$1;->b:Lcom/google/android/gms/analytics/bk;

    invoke-static {v0}, Lcom/google/android/gms/analytics/bk;->b(Lcom/google/android/gms/analytics/bk;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/c;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/c;->c()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/analytics/bk$1;->b:Lcom/google/android/gms/analytics/bk;

    iget-object v1, p0, Lcom/google/android/gms/analytics/bk$1;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/bk;->a(Lcom/google/android/gms/analytics/bk;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_38

    :cond_37
    :goto_37
    return-void

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/analytics/bk$1;->b:Lcom/google/android/gms/analytics/bk;

    invoke-static {v0}, Lcom/google/android/gms/analytics/bk;->c(Lcom/google/android/gms/analytics/bk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/bk$1;->a:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/analytics/j;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/j;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/analytics/bk$1;->b:Lcom/google/android/gms/analytics/bk;

    invoke-static {v2}, Lcom/google/android/gms/analytics/bk;->c(Lcom/google/android/gms/analytics/bk;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/j;->d(Ljava/lang/String;)Lcom/google/android/gms/analytics/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/j;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/analytics/bl;->a()Lcom/google/android/gms/analytics/bl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/bl;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/bk$1;->b:Lcom/google/android/gms/analytics/bk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/bk;->a(Lcom/google/android/gms/analytics/bk;Ljava/lang/String;)Ljava/lang/String;

    :cond_72
    iget-object v0, p0, Lcom/google/android/gms/analytics/bk$1;->b:Lcom/google/android/gms/analytics/bk;

    iget-object v1, p0, Lcom/google/android/gms/analytics/bk$1;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/bk;->b(Lcom/google/android/gms/analytics/bk;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/bk$1;->b:Lcom/google/android/gms/analytics/bk;

    iget-object v1, p0, Lcom/google/android/gms/analytics/bk$1;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/bk;->c(Lcom/google/android/gms/analytics/bk;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/bk$1;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/analytics/br;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/analytics/bk$1;->b:Lcom/google/android/gms/analytics/bk;

    invoke-static {v0}, Lcom/google/android/gms/analytics/bk;->e(Lcom/google/android/gms/analytics/bk;)Lcom/google/android/gms/analytics/ad;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/bk$1;->a:Ljava/util/Map;

    const-string v3, "&ht"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/analytics/bk$1;->b:Lcom/google/android/gms/analytics/bk;

    iget-object v5, p0, Lcom/google/android/gms/analytics/bk$1;->a:Ljava/util/Map;

    invoke-static {v4, v5}, Lcom/google/android/gms/analytics/bk;->d(Lcom/google/android/gms/analytics/bk;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/analytics/bk$1;->b:Lcom/google/android/gms/analytics/bk;

    invoke-static {v5}, Lcom/google/android/gms/analytics/bk;->d(Lcom/google/android/gms/analytics/bk;)Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/ad;->a(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_37
.end method
