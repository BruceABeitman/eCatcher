.class final Lcom/bbm/util/et;
.super Lcom/bbm/j/k;
.source "UpdatesFragmentUtil.java"


# instance fields
.field final synthetic a:Lcom/bbm/j/t;

.field final synthetic b:Lcom/bbm/util/eq;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/bbm/util/es;


# direct methods
.method constructor <init>(Lcom/bbm/util/es;Lcom/bbm/j/t;Lcom/bbm/util/eq;Landroid/view/View;)V
    .registers 6

    iput-object p1, p0, Lcom/bbm/util/et;->d:Lcom/bbm/util/es;

    iput-object p2, p0, Lcom/bbm/util/et;->a:Lcom/bbm/j/t;

    iput-object p3, p0, Lcom/bbm/util/et;->b:Lcom/bbm/util/eq;

    iput-object p4, p0, Lcom/bbm/util/et;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 8

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/bbm/util/et;->a:Lcom/bbm/j/t;

    invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/bbm/util/et;->b:Lcom/bbm/util/eq;

    invoke-virtual {v0}, Lcom/bbm/util/eq;->a()I

    move-result v0

    iget-object v1, p0, Lcom/bbm/util/et;->b:Lcom/bbm/util/eq;

    invoke-virtual {v1}, Lcom/bbm/util/eq;->b()I

    move-result v1

    sub-int v2, v1, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    iget-object v4, p0, Lcom/bbm/util/et;->c:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v3, v6

    iget-object v4, p0, Lcom/bbm/util/et;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int v5, v3, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int v0, v1, v0

    if-lez v0, :cond_6e

    if-eq v0, v4, :cond_3f

    if-ne v0, v2, :cond_6e

    :cond_3f
    iget-object v0, p0, Lcom/bbm/util/et;->d:Lcom/bbm/util/es;

    iget-boolean v1, v0, Lcom/bbm/util/es;->b:Z

    if-nez v1, :cond_6d

    iput-boolean v6, v0, Lcom/bbm/util/es;->b:Z

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/bbm/util/es;->a:Ljava/util/Timer;

    iget-object v1, v0, Lcom/bbm/util/es;->a:Ljava/util/Timer;

    new-instance v2, Lcom/bbm/util/eu;

    invoke-direct {v2, v0}, Lcom/bbm/util/eu;-><init>(Lcom/bbm/util/es;)V

    invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;

    move-result-object v0

    const-string v3, "viewThreshold"

    invoke-virtual {v0, v3}, Lcom/bbm/b/q;->a(Ljava/lang/String;)Lcom/bbm/util/bl;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;

    const-string v3, "value"

    const/16 v4, 0x5dc

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_6d
    :goto_6d
    return-void

    :cond_6e
    iget-object v0, p0, Lcom/bbm/util/et;->d:Lcom/bbm/util/es;

    invoke-static {v0}, Lcom/bbm/util/es;->a(Lcom/bbm/util/es;)V

    goto :goto_6d
.end method
