.class final Lcom/instagram/cliffjumper/edit/photo/a/ab;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;


# direct methods
.method private constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/ab;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v0

    invoke-static {p3}, Lcom/instagram/filterkit/e/d;->a(I)Lcom/instagram/filterkit/e/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/c/c;->a(Lcom/instagram/filterkit/e/c;)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 7

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    new-instance v1, Lcom/instagram/filterkit/c/e;

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/instagram/filterkit/a/c;

    invoke-direct {v3, p1}, Lcom/instagram/filterkit/a/c;-><init>(Landroid/view/SurfaceHolder;)V

    iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v4}, Lcom/instagram/cliffjumper/edit/photo/a/a;->p(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/photo/a/x;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/instagram/filterkit/c/e;-><init>(Landroid/content/Context;Lcom/instagram/filterkit/a/c;Lcom/instagram/filterkit/c/b;)V

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;Lcom/instagram/filterkit/c/c;)Lcom/instagram/filterkit/c/c;

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/instagram/filterkit/c/c;->a(Lcom/instagram/filterkit/filter/IgFilter;)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->v(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->v(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/filterkit/c/c;->b()V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ab;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;Lcom/instagram/filterkit/c/c;)Lcom/instagram/filterkit/c/c;

    return-void
.end method
