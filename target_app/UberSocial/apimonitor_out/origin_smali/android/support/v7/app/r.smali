.class Landroid/support/v7/app/r;
.super Landroid/support/v7/b/a;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/o;


# instance fields
.field final synthetic a:Landroid/support/v7/app/q;

.field private b:Landroid/support/v7/b/b;

.field private c:Landroid/support/v7/internal/view/menu/n;

.field private d:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/q;Landroid/support/v7/b/b;)V
    .registers 5

    iput-object p1, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-direct {p0}, Landroid/support/v7/b/a;-><init>()V

    iput-object p2, p0, Landroid/support/v7/app/r;->b:Landroid/support/v7/b/b;

    new-instance v0, Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {p1}, Landroid/support/v7/app/q;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/menu/n;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->a(I)Landroid/support/v7/internal/view/menu/n;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/r;->c:Landroid/support/v7/internal/view/menu/n;

    iget-object v0, p0, Landroid/support/v7/app/r;->c:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/support/v7/internal/view/menu/o;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuInflater;
    .registers 3

    new-instance v0, Landroid/support/v7/internal/view/f;

    iget-object v1, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-virtual {v1}, Landroid/support/v7/app/q;->p()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/f;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->b(Landroid/support/v7/app/q;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/r;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/r;->b:Landroid/support/v7/b/b;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/app/r;->d()V

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->e(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a()Z

    goto :goto_4
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;Z)V
    .registers 3

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/r;->b:Landroid/support/v7/b/b;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/app/r;->d()V

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->e(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a()Z

    goto :goto_4
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->e(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v7/app/r;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->e(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v7/b/a;->a(Z)V

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->e(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/ah;)Z
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/app/r;->b:Landroid/support/v7/b/b;

    if-nez v1, :cond_7

    const/4 v0, 0x0

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ah;->hasVisibleItems()Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_6
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/r;->b:Landroid/support/v7/b/b;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/app/r;->b:Landroid/support/v7/b/b;

    invoke-interface {v0, p0, p2}, Landroid/support/v7/b/b;->a(Landroid/support/v7/b/a;Landroid/view/MenuItem;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b()Landroid/view/Menu;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/r;->c:Landroid/support/v7/internal/view/menu/n;

    return-object v0
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->b(Landroid/support/v7/app/q;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/r;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Landroid/support/v7/internal/view/menu/ah;)V
    .registers 2

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->e(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    iget-object v0, v0, Landroid/support/v7/app/q;->i:Landroid/support/v7/app/r;

    if-eq v0, p0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->c(Landroid/support/v7/app/q;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-static {v1}, Landroid/support/v7/app/q;->d(Landroid/support/v7/app/q;)Z

    move-result v1

    invoke-static {v0, v1, v2}, Landroid/support/v7/app/q;->a(ZZZ)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    iput-object p0, v0, Landroid/support/v7/app/q;->j:Landroid/support/v7/b/a;

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    iget-object v1, p0, Landroid/support/v7/app/r;->b:Landroid/support/v7/b/b;

    iput-object v1, v0, Landroid/support/v7/app/q;->k:Landroid/support/v7/b/b;

    :goto_25
    iput-object v3, p0, Landroid/support/v7/app/r;->b:Landroid/support/v7/b/b;

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-virtual {v0, v2}, Landroid/support/v7/app/q;->g(Z)V

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->e(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->g()V

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->f(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ActionBarView;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    iput-object v3, v0, Landroid/support/v7/app/q;->i:Landroid/support/v7/app/r;

    goto :goto_8

    :cond_45
    iget-object v0, p0, Landroid/support/v7/app/r;->b:Landroid/support/v7/b/b;

    invoke-interface {v0, p0}, Landroid/support/v7/b/b;->a(Landroid/support/v7/b/a;)V

    goto :goto_25
.end method

.method public d()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/r;->c:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->h()V

    :try_start_5
    iget-object v0, p0, Landroid/support/v7/app/r;->b:Landroid/support/v7/b/b;

    iget-object v1, p0, Landroid/support/v7/app/r;->c:Landroid/support/v7/internal/view/menu/n;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/b/b;->b(Landroid/support/v7/b/a;Landroid/view/Menu;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    iget-object v0, p0, Landroid/support/v7/app/r;->c:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->i()V

    return-void

    :catchall_12
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/app/r;->c:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/n;->i()V

    throw v0
.end method

.method public e()Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/r;->c:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/n;->h()V

    :try_start_5
    iget-object v0, p0, Landroid/support/v7/app/r;->b:Landroid/support/v7/b/b;

    iget-object v1, p0, Landroid/support/v7/app/r;->c:Landroid/support/v7/internal/view/menu/n;

    invoke-interface {v0, p0, v1}, Landroid/support/v7/b/b;->a(Landroid/support/v7/b/a;Landroid/view/Menu;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_13

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/r;->c:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/n;->i()V

    return v0

    :catchall_13
    move-exception v0

    iget-object v1, p0, Landroid/support/v7/app/r;->c:Landroid/support/v7/internal/view/menu/n;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/n;->i()V

    throw v0
.end method

.method public f()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->e(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->e(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/r;->a:Landroid/support/v7/app/q;

    invoke-static {v0}, Landroid/support/v7/app/q;->e(Landroid/support/v7/app/q;)Landroid/support/v7/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->i()Z

    move-result v0

    return v0
.end method

.method public i()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/r;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/app/r;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
