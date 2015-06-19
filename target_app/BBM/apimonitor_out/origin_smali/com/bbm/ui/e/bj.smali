.class public final Lcom/bbm/ui/e/bj;
.super Ljava/lang/Object;
.source "MessagesDelegateAdapter.java"


# instance fields
.field a:Lcom/bbm/ui/e/at;

.field b:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Lcom/bbm/ui/e/i;",
            ">;"
        }
    .end annotation
.end field

.field c:J

.field d:Z

.field e:Z

.field f:I

.field g:Z

.field final synthetic h:Lcom/bbm/ui/e/au;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/e/au;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/e/bj;->h:Lcom/bbm/ui/e/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/e/bj;->g:Z

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/bbm/ui/e/bj;->h:Lcom/bbm/ui/e/au;

    invoke-static {v0}, Lcom/bbm/ui/e/au;->f(Lcom/bbm/ui/e/au;)J

    move-result-wide v3

    int-to-long v5, p1

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long v5, v3, v5

    if-gt p1, v1, :cond_5e

    move v0, v1

    :goto_11
    iget-object v3, p0, Lcom/bbm/ui/e/bj;->h:Lcom/bbm/ui/e/au;

    invoke-static {v3}, Lcom/bbm/ui/e/au;->g(Lcom/bbm/ui/e/au;)J

    move-result-wide v3

    cmp-long v3, v5, v3

    if-eqz v3, :cond_1d

    if-gtz p1, :cond_60

    :cond_1d
    move v3, v1

    :goto_1e
    iget-wide v7, p0, Lcom/bbm/ui/e/bj;->c:J

    cmp-long v4, v5, v7

    if-nez v4, :cond_2c

    iget-boolean v4, p0, Lcom/bbm/ui/e/bj;->d:Z

    if-ne v0, v4, :cond_2c

    iget-boolean v4, p0, Lcom/bbm/ui/e/bj;->e:Z

    if-eq v3, v4, :cond_5d

    :cond_2c
    iget-boolean v4, p0, Lcom/bbm/ui/e/bj;->d:Z

    if-nez v4, :cond_34

    iget-boolean v4, p0, Lcom/bbm/ui/e/bj;->e:Z

    if-eqz v4, :cond_62

    :cond_34
    move v4, v1

    :goto_35
    if-nez v0, :cond_39

    if-eqz v3, :cond_3a

    :cond_39
    move v2, v1

    :cond_3a
    iput-wide v5, p0, Lcom/bbm/ui/e/bj;->c:J

    iput-boolean v0, p0, Lcom/bbm/ui/e/bj;->d:Z

    iput-boolean v3, p0, Lcom/bbm/ui/e/bj;->e:Z

    iget-object v0, p0, Lcom/bbm/ui/e/bj;->b:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->c()V

    if-eqz v4, :cond_52

    if-nez v2, :cond_52

    iget-object v0, p0, Lcom/bbm/ui/e/bj;->h:Lcom/bbm/ui/e/au;

    invoke-static {v0}, Lcom/bbm/ui/e/au;->h(Lcom/bbm/ui/e/au;)Lcom/bbm/util/fj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bbm/util/fj;->b(Ljava/lang/Object;)V

    :cond_52
    if-eqz v2, :cond_5d

    iget-object v0, p0, Lcom/bbm/ui/e/bj;->h:Lcom/bbm/ui/e/au;

    invoke-static {v0}, Lcom/bbm/ui/e/au;->h(Lcom/bbm/ui/e/au;)Lcom/bbm/util/fj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bbm/util/fj;->a(Ljava/lang/Object;)V

    :cond_5d
    return-void

    :cond_5e
    move v0, v2

    goto :goto_11

    :cond_60
    move v3, v2

    goto :goto_1e

    :cond_62
    move v4, v2

    goto :goto_35
.end method
