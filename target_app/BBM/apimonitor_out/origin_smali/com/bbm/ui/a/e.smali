.class final Lcom/bbm/ui/a/e;
.super Ljava/lang/Object;
.source "ChannelPostAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/a/a;


# direct methods
.method constructor <init>(Lcom/bbm/ui/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/a/e;->a:Lcom/bbm/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    const-string v0, "mViewItemClickListener"

    const-class v1, Lcom/bbm/ui/a/a;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/a/e;->a:Lcom/bbm/ui/a/a;

    invoke-static {v0}, Lcom/bbm/ui/a/a;->c(Lcom/bbm/ui/a/a;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bbm/ui/a/e;->a:Lcom/bbm/ui/a/a;

    invoke-static {v0, v3}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;Z)V

    :goto_15
    return-void

    :cond_16
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_58

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_20
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/a/j;

    iget-object v0, v0, Lcom/bbm/ui/a/j;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/a/e;->a:Lcom/bbm/ui/a/a;

    invoke-static {v1}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;)Lcom/bbm/ui/activities/cn;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/a/e;->a:Lcom/bbm/ui/a/a;

    invoke-static {v2}, Lcom/bbm/ui/a/a;->e(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ec;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/bbm/ui/a/e;->a:Lcom/bbm/ui/a/a;

    invoke-static {v1}, Lcom/bbm/ui/a/a;->e(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ec;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    sget-object v2, Lcom/bbm/d/aj;->b:Lcom/bbm/d/aj;

    invoke-static {v1, v2}, Lcom/bbm/d/z;->a(Ljava/lang/String;Lcom/bbm/d/aj;)Lcom/bbm/d/ai;

    move-result-object v1

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {v1, v0}, Lcom/bbm/d/ai;->a(Ljava/lang/String;)Lcom/bbm/d/ai;

    :cond_50
    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    goto :goto_15

    :cond_58
    move-object v0, p1

    goto :goto_20
.end method
