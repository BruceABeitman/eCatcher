.class final Lcom/bbm/ui/a/c;
.super Ljava/lang/Object;
.source "ChannelPostAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/a/a;


# direct methods
.method constructor <init>(Lcom/bbm/ui/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/a/c;->a:Lcom/bbm/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/View;)Ljava/lang/String;
    .registers 2

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/bbm/ui/a/j;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p0, v0

    goto :goto_0

    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/a/j;

    iget-object v0, v0, Lcom/bbm/ui/a/j;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f0a0435

    if-ne v0, v2, :cond_20

    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/bbm/ui/a/c;->a:Lcom/bbm/ui/a/a;

    invoke-static {v2}, Lcom/bbm/ui/a/a;->c(Lcom/bbm/ui/a/a;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v0, "click on comment or hype in post preview"

    const-class v2, Lcom/bbm/ui/a/a;

    invoke-static {v0, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/a/c;->a:Lcom/bbm/ui/a/a;

    invoke-static {v0, v1}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;Z)V

    :goto_1f
    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_b

    :cond_22
    if-eqz v0, :cond_48

    const-string v0, "click on post comment"

    const-class v2, Lcom/bbm/ui/a/a;

    invoke-static {v0, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "onCommentButtonClicked"

    const-class v2, Lcom/bbm/ui/a/a;

    invoke-static {v0, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/a/c;->a:Lcom/bbm/ui/a/a;

    invoke-static {v0}, Lcom/bbm/ui/a/a;->a(Lcom/bbm/ui/a/a;)Lcom/bbm/ui/activities/cn;

    move-result-object v0

    invoke-static {p1}, Lcom/bbm/ui/a/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/a/c;->a:Lcom/bbm/ui/a/a;

    invoke-static {v3}, Lcom/bbm/ui/a/a;->e(Lcom/bbm/ui/a/a;)Lcom/bbm/d/ec;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1f

    :cond_48
    const-string v0, "click on hype button"

    const-class v1, Lcom/bbm/ui/a/a;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v0, "onHypeButtonClicked"

    const-class v1, Lcom/bbm/ui/a/a;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/bbm/ui/a/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/a/d;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/a/d;-><init>(Lcom/bbm/ui/a/c;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V

    goto :goto_1f
.end method
