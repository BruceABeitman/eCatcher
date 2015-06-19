.class final Lcom/bbm/ui/activities/dp;
.super Lcom/bbm/d/b/q;
.source "ChannelReportsActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/d/b/q",
        "<",
        "Lcom/bbm/ui/gp",
        "<",
        "Lcom/bbm/ui/activities/ea;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/ChannelReportsActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ChannelReportsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-direct {p0}, Lcom/bbm/d/b/q;-><init>()V

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
            "Lcom/bbm/ui/activities/ea;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    new-instance v1, Lcom/bbm/ui/gp;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bbm/ui/gp;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/bbm/ui/gp;

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/bbm/ui/gp;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v4

    iget-object v5, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-virtual {v5}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bbm/d/a;->G(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bbm/ui/activities/ChannelReportsActivity;->a(Lcom/bbm/ui/activities/ChannelReportsActivity;Lcom/bbm/j/w;)Lcom/bbm/j/w;

    iget-object v0, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v4

    iget-object v5, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-virtual {v5}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bbm/d/a;->F(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b(Lcom/bbm/ui/activities/ChannelReportsActivity;Lcom/bbm/j/w;)Lcom/bbm/j/w;

    iget-object v0, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->a(Lcom/bbm/ui/activities/ChannelReportsActivity;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b(Lcom/bbm/ui/activities/ChannelReportsActivity;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->c(Lcom/bbm/ui/activities/ChannelReportsActivity;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_90

    iget-object v0, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->d(Lcom/bbm/ui/activities/ChannelReportsActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->c(Lcom/bbm/ui/activities/ChannelReportsActivity;)Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    move-result-object v0

    iget-object v4, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {v4}, Lcom/bbm/ui/activities/ChannelReportsActivity;->d(Lcom/bbm/ui/activities/ChannelReportsActivity;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setEmptyView(Landroid/view/View;)V

    :cond_90
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->a(Lcom/bbm/ui/activities/ChannelReportsActivity;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_aa
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fa;

    new-instance v7, Lcom/bbm/ui/activities/ea;

    iget-object v8, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v9, v0, Lcom/bbm/d/fa;->b:Ljava/lang/String;

    const-string v10, ""

    invoke-direct {v7, v8, v9, v10}, Lcom/bbm/ui/activities/ea;-><init>(Lcom/bbm/ui/activities/ChannelReportsActivity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/bbm/ui/gp;->a:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_c6
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "id"

    iget-object v9, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-virtual {v9}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v0, Lcom/bbm/d/fa;->b:Ljava/lang/String;

    invoke-static {v9, v0}, Lcom/bbm/util/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_df
    .catch Lorg/json/JSONException; {:try_start_c6 .. :try_end_df} :catch_e0

    goto :goto_aa

    :catch_e0
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_aa

    :cond_e5
    iget-object v0, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b(Lcom/bbm/ui/activities/ChannelReportsActivity;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_132

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fb;

    new-instance v6, Lcom/bbm/ui/activities/ea;

    iget-object v7, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v8, v0, Lcom/bbm/d/fb;->c:Ljava/lang/String;

    iget-object v9, v0, Lcom/bbm/d/fb;->b:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9}, Lcom/bbm/ui/activities/ea;-><init>(Lcom/bbm/ui/activities/ChannelReportsActivity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v2, Lcom/bbm/ui/gp;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_111
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "id"

    iget-object v8, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-virtual {v8}, Lcom/bbm/ui/activities/ChannelReportsActivity;->b()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/bbm/d/fb;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/bbm/d/fb;->b:Ljava/lang/String;

    invoke-static {v8, v9, v0}, Lcom/bbm/util/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12c
    .catch Lorg/json/JSONException; {:try_start_111 .. :try_end_12c} :catch_12d

    goto :goto_f5

    :catch_12d
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_f5

    :cond_132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ChannelReportsActivity;->c:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->I:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "post"

    invoke-static {v5, v1}, Lcom/bbm/d/z;->c(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/da;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/d/da;->a(Ljava/lang/String;)Lcom/bbm/d/da;

    new-instance v2, Lcom/bbm/ui/activities/dq;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/dq;-><init>(Lcom/bbm/ui/activities/dp;)V

    iget-object v5, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-virtual {v2, v0, v5}, Lcom/bbm/ui/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ChannelReportsActivity;->c:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->I:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "comment"

    invoke-static {v4, v1}, Lcom/bbm/d/z;->c(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/da;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/d/da;->a(Ljava/lang/String;)Lcom/bbm/d/da;

    new-instance v2, Lcom/bbm/ui/activities/dr;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/dr;-><init>(Lcom/bbm/ui/activities/dp;)V

    iget-object v4, p0, Lcom/bbm/ui/activities/dp;->a:Lcom/bbm/ui/activities/ChannelReportsActivity;

    invoke-virtual {v2, v0, v4}, Lcom/bbm/ui/d/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    return-object v3
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
