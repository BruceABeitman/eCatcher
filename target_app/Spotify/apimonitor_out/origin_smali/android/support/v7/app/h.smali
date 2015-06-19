.class Landroid/support/v7/app/h;
.super Landroid/support/v7/app/d;
.source "SourceFile"


# instance fields
.field d:Landroid/view/Menu;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/app/d;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/app/ActionBar;
    .registers 4

    new-instance v0, Landroid/support/v7/app/o;

    iget-object v1, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v2, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/o;-><init>(Landroid/app/Activity;Landroid/support/v7/app/a;)V

    return-object v0
.end method

.method a(Landroid/content/Context;Landroid/view/ActionMode;)Landroid/support/v7/internal/view/b;
    .registers 4

    new-instance v0, Landroid/support/v7/internal/view/b;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/internal/view/b;-><init>(Landroid/content/Context;Landroid/view/ActionMode;)V

    return-object v0
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->a(I)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    const/4 v2, 0x1

    const-string v0, "splitActionBarWhenNarrow"

    invoke-virtual {p0}, Landroid/support/v7/app/h;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setUiOptions(II)V

    :cond_16
    invoke-super {p0, p1}, Landroid/support/v7/app/d;->a(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/support/v7/app/h;->b:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->requestWindowFeature(I)Z

    :cond_24
    iget-boolean v0, p0, Landroid/support/v7/app/h;->c:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->requestWindowFeature(I)Z

    :cond_2f
    iget-object v0, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    new-instance v2, Landroid/support/v7/app/i;

    invoke-direct {v2, p0, v1}, Landroid/support/v7/app/i;-><init>(Landroid/support/v7/app/h;Landroid/view/Window$Callback;)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public final a(Landroid/view/ActionMode;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {p0}, Landroid/support/v7/app/h;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/app/h;->a(Landroid/content/Context;Landroid/view/ActionMode;)Landroid/support/v7/internal/view/b;

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public final a(ILandroid/view/Menu;)Z
    .registers 5

    if-eqz p1, :cond_6

    const/16 v0, 0x8

    if-ne p1, v0, :cond_19

    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/h;->d:Landroid/view/Menu;

    if-nez v0, :cond_10

    invoke-static {p2}, Landroid/support/v7/internal/view/menu/ae;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/h;->d:Landroid/view/Menu;

    :cond_10
    iget-object v0, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v1, p0, Landroid/support/v7/app/h;->d:Landroid/view/Menu;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/Menu;)Z

    move-result v0

    :goto_18
    return v0

    :cond_19
    iget-object v0, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_18
.end method

.method public final a(ILandroid/view/MenuItem;)Z
    .registers 4

    if-nez p1, :cond_6

    invoke-static {p2}, Landroid/support/v7/internal/view/menu/ae;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p2

    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final a(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 6

    if-eqz p1, :cond_6

    const/16 v0, 0x8

    if-ne p1, v0, :cond_f

    :cond_6
    iget-object v0, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    iget-object v1, p0, Landroid/support/v7/app/h;->d:Landroid/view/Menu;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/ActionBarActivity;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_e
.end method

.method public final b(I)Landroid/view/View;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Landroid/view/ActionMode;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {p0}, Landroid/support/v7/app/h;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/app/h;->a(Landroid/content/Context;Landroid/view/ActionMode;)Landroid/support/v7/internal/view/b;

    return-void
.end method

.method public final b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final d()V
    .registers 1

    return-void
.end method

.method public final e()V
    .registers 1

    return-void
.end method

.method public final f()V
    .registers 1

    return-void
.end method

.method public final g()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/h;->d:Landroid/view/Menu;

    return-void
.end method

.method public final h()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method final i()I
    .registers 2

    const v0, 0x101030b

    return v0
.end method

.method public final j()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/h;->a:Landroid/support/v7/app/ActionBarActivity;

    return-void
.end method
