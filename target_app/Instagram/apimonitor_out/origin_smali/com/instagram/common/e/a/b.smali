.class final Lcom/instagram/common/e/a/b;
.super Ljava/lang/Object;
.source "CacheAnalytics.java"

# interfaces
.implements Lcom/instagram/common/l/b/a;


# instance fields
.field final synthetic a:Lcom/instagram/common/e/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/common/e/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/common/e/a/b;->a:Lcom/instagram/common/e/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/common/e/a/b;->a:Lcom/instagram/common/e/a/a;

    invoke-static {v0}, Lcom/instagram/common/e/a/a;->a(Lcom/instagram/common/e/a/a;)J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    invoke-static {}, Lcom/instagram/common/u/b/a;->a()Lcom/instagram/common/u/b/a;

    invoke-static {}, Lcom/instagram/common/u/b/a;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1a

    iget-object v0, p0, Lcom/instagram/common/e/a/b;->a:Lcom/instagram/common/e/a/a;

    invoke-static {v0}, Lcom/instagram/common/e/a/a;->b(Lcom/instagram/common/e/a/a;)V

    :cond_1a
    return-void
.end method

.method public final b()V
    .registers 1

    return-void
.end method
