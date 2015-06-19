.class final Lcom/bbm/ui/c/ao;
.super Lcom/bbm/d/b/q;
.source "ChannelsNotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/q",
        "<",
        "Lcom/bbm/ui/gp",
        "<",
        "Lcom/bbm/d/ei;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/am;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/am;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/ao;->a:Lcom/bbm/ui/c/am;

    invoke-direct {p0}, Lcom/bbm/d/b/q;-><init>()V

    return-void
.end method

.method private static a(JLjava/util/List;)Lcom/bbm/ui/gp;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/gp",
            "<",
            "Lcom/bbm/d/ei;",
            "Ljava/lang/Long;",
            ">;>;)",
            "Lcom/bbm/ui/gp",
            "<",
            "Lcom/bbm/d/ei;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/gp;

    iget-object v1, v0, Lcom/bbm/ui/gp;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, p0

    if-nez v1, :cond_1f

    :goto_1e
    return-object v0

    :cond_1f
    iget-object v0, v0, Lcom/bbm/ui/gp;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-gtz v0, :cond_2f

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_2f
    new-instance v0, Lcom/bbm/ui/gp;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/ui/gp;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1e
.end method

.method private static a(Lcom/bbm/ui/gp;Lcom/bbm/d/ei;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/ui/gp",
            "<",
            "Lcom/bbm/d/ei;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/bbm/d/ei;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bbm/ui/gp;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ei;

    iget-wide v3, v0, Lcom/bbm/d/ei;->e:J

    iget-wide v5, p1, Lcom/bbm/d/ei;->e:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_20

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    :cond_20
    iget-object v0, p0, Lcom/bbm/ui/gp;->a:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/gp",
            "<",
            "Lcom/bbm/d/ei;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    const-wide/16 v3, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bbm/ui/c/ao;->a:Lcom/bbm/ui/c/am;

    invoke-static {v0}, Lcom/bbm/ui/c/am;->b(Lcom/bbm/ui/c/am;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {}, Lcom/bbm/util/bd;->a()J

    move-result-wide v6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ei;

    iget-wide v1, v0, Lcom/bbm/d/ei;->e:J

    sub-long v1, v6, v1

    cmp-long v9, v1, v3

    if-lez v9, :cond_3f

    const-wide/32 v9, 0x5265c00

    div-long/2addr v1, v9

    const-wide/16 v9, 0x1

    add-long/2addr v1, v9

    :goto_36
    invoke-static {v1, v2, v5}, Lcom/bbm/ui/c/ao;->a(JLjava/util/List;)Lcom/bbm/ui/gp;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bbm/ui/c/ao;->a(Lcom/bbm/ui/gp;Lcom/bbm/d/ei;)V

    goto :goto_1b

    :cond_3e
    return-object v5

    :cond_3f
    move-wide v1, v3

    goto :goto_36
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
