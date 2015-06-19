.class final Lcom/bbm/b/am;
.super Lcom/bbm/j/u;
.source "SponsoredInviteViewTracker.java"


# instance fields
.field final synthetic a:Lcom/bbm/util/eq;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/bbm/b/al;


# direct methods
.method constructor <init>(Lcom/bbm/b/al;Lcom/bbm/util/eq;Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/b/am;->d:Lcom/bbm/b/al;

    iput-object p2, p0, Lcom/bbm/b/am;->a:Lcom/bbm/util/eq;

    iput-object p3, p0, Lcom/bbm/b/am;->b:Landroid/view/View;

    iput-object p4, p0, Lcom/bbm/b/am;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bbm/b/am;->a:Lcom/bbm/util/eq;

    invoke-virtual {v2}, Lcom/bbm/util/eq;->a()I

    move-result v2

    iget-object v3, p0, Lcom/bbm/b/am;->a:Lcom/bbm/util/eq;

    invoke-virtual {v3}, Lcom/bbm/util/eq;->b()I

    move-result v3

    sub-int v4, v3, v2

    const/4 v5, 0x2

    new-array v5, v5, [I

    iget-object v6, p0, Lcom/bbm/b/am;->b:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v5, v5, v0

    iget-object v6, p0, Lcom/bbm/b/am;->b:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int v7, v5, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v2, v3, v2

    if-lez v2, :cond_5a

    if-eq v2, v6, :cond_32

    if-ne v2, v4, :cond_5a

    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ADS: Ad invite marked as viewed - id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bbm/b/am;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;

    move-result-object v1

    sget-object v2, Lcom/bbm/b/ai;->b:Lcom/bbm/b/ai;

    sget-object v3, Lcom/bbm/b/aj;->a:Lcom/bbm/b/aj;

    iget-object v4, p0, Lcom/bbm/b/am;->c:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/bbm/b/v;->a(Lcom/bbm/b/ai;Lcom/bbm/b/aj;Ljava/lang/String;)Lcom/bbm/b/ah;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V

    :goto_59
    return v0

    :cond_5a
    move v0, v1

    goto :goto_59
.end method
