.class final Lcom/bbm/ui/activities/aju;
.super Ljava/lang/Object;
.source "ViewSubscribedChannelActivity.java"

# interfaces
.implements Lcom/bbm/j/s;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/aju;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/aju;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/aju;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->i:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    iget-object v0, p0, Lcom/bbm/ui/activities/aju;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->i:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    new-instance v1, Lcom/bbm/d/aq;

    invoke-direct {v1, v0}, Lcom/bbm/d/aq;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aju;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->i:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    new-instance v1, Lcom/bbm/d/ar;

    invoke-direct {v1, v0}, Lcom/bbm/d/ar;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aju;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_68

    iget-object v0, p0, Lcom/bbm/ui/activities/aju;->b:Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/ViewSubscribedChannelActivity;->i:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ec;

    iget-object v0, v0, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/activities/aju;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/bbm/d/z;->a(Ljava/lang/String;Ljava/util/List;)Lcom/bbm/d/av;

    move-result-object v0

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aju;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_68
    const/4 v0, 0x1

    goto :goto_11
.end method
