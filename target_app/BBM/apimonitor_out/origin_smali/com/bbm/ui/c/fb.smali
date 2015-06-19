.class final Lcom/bbm/ui/c/fb;
.super Ljava/lang/Object;
.source "PeopleYouKnowFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/ey;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/ey;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/fb;->a:Lcom/bbm/ui/c/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 11

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/fb;->a:Lcom/bbm/ui/c/ey;

    invoke-static {v0}, Lcom/bbm/ui/c/ey;->e(Lcom/bbm/ui/c/ey;)Lcom/bbm/util/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/bbm/ui/c/fb;->a:Lcom/bbm/ui/c/ey;

    invoke-static {v0}, Lcom/bbm/ui/c/ey;->a(Lcom/bbm/ui/c/ey;)Lcom/bbm/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/i/b;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_88

    iget-object v0, p0, Lcom/bbm/ui/c/fb;->a:Lcom/bbm/ui/c/ey;

    invoke-static {v0}, Lcom/bbm/ui/c/ey;->a(Lcom/bbm/ui/c/ey;)Lcom/bbm/i/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/i/b;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/gp;

    iget-object v1, v0, Lcom/bbm/ui/gp;->b:Ljava/lang/Object;

    sget-object v2, Lcom/bbm/ui/c/hj;->b:Lcom/bbm/ui/c/hj;

    if-ne v1, v2, :cond_88

    iget-object v0, v0, Lcom/bbm/ui/gp;->a:Ljava/util/List;

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, v1, Lcom/bbm/c/c;->ak:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/bbm/c/c;->ak:I

    iget-object v1, p0, Lcom/bbm/ui/c/fb;->a:Lcom/bbm/ui/c/ey;

    invoke-static {v1}, Lcom/bbm/ui/c/ey;->f(Lcom/bbm/ui/c/ey;)Lcom/bbm/h/aq;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/bbm/iceberg/j;

    iget-object v0, v7, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    iget-object v0, v7, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e04a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v5, Lcom/bbm/iceberg/j;->f:Ljava/util/List;

    const-wide/16 v2, -0x1

    iget-object v6, v5, Lcom/bbm/iceberg/j;->a:Ljava/lang/String;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/bbm/h/aq;->b(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    :cond_76
    iget-object v0, v7, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    iget-object v1, v7, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e047f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_88
    iget-object v0, p0, Lcom/bbm/ui/c/fb;->a:Lcom/bbm/ui/c/ey;

    invoke-static {v0}, Lcom/bbm/ui/c/ey;->g(Lcom/bbm/ui/c/ey;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/bbm/ui/c/fb;->a:Lcom/bbm/ui/c/ey;

    invoke-static {v0}, Lcom/bbm/ui/c/ey;->g(Lcom/bbm/ui/c/ey;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_99
    return-void
.end method
