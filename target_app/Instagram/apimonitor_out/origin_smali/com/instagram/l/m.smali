.class final Lcom/instagram/l/m;
.super Lcom/instagram/api/k/a/h;
.source "QuickExperimentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/h",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/l/l;


# direct methods
.method private constructor <init>(Lcom/instagram/l/l;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/l/m;->a:Lcom/instagram/l/l;

    invoke-direct {p0}, Lcom/instagram/api/k/a/h;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/l/l;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/l/m;-><init>(Lcom/instagram/l/l;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/api/k/a/i;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/k/a/i",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    new-instance v1, Lcom/instagram/common/analytics/b;

    const-string v2, "qe_failure"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v2, "device_id"

    iget-object v3, p0, Lcom/instagram/l/m;->a:Lcom/instagram/l/l;

    iget-object v3, v3, Lcom/instagram/l/l;->a:Lcom/instagram/l/k;

    invoke-static {v3}, Lcom/instagram/l/k;->c(Lcom/instagram/l/k;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "experiments"

    const-string v3, ","

    iget-object v4, p0, Lcom/instagram/l/m;->a:Lcom/instagram/l/l;

    iget-object v4, v4, Lcom/instagram/l/l;->a:Lcom/instagram/l/k;

    invoke-static {v4}, Lcom/instagram/l/k;->b(Lcom/instagram/l/k;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    invoke-static {}, Lcom/instagram/l/k;->d()Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/instagram/api/k/a/i;->k()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method
