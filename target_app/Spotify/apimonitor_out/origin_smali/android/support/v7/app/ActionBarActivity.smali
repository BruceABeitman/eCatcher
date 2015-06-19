.class public Landroid/support/v7/app/ActionBarActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/aw;
.implements Landroid/support/v4/app/g;
.implements Landroid/support/v7/app/a;


# instance fields
.field n:Landroid/support/v7/app/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private g()Z
    .registers 3

    invoke-static {p0}, Landroid/support/v4/app/ac;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-static {p0, v0}, Landroid/support/v4/app/ac;->a(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {p0}, Landroid/support/v4/app/av;->a(Landroid/content/Context;)Landroid/support/v4/app/av;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/av;->a(Landroid/app/Activity;)Landroid/support/v4/app/av;

    invoke-virtual {v0}, Landroid/support/v4/app/av;->a()V

    :try_start_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_21

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    :goto_1f
    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_24} :catch_25

    goto :goto_1f

    :catch_25
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->finish()V

    goto :goto_1f

    :cond_2a
    invoke-static {p0, v0}, Landroid/support/v4/app/ac;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_1f

    :cond_2e
    const/4 v0, 0x0

    goto :goto_20
.end method


# virtual methods
.method public final a()Landroid/support/v4/app/f;
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    new-instance v1, Landroid/support/v7/app/e;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/support/v7/app/e;-><init>(Landroid/support/v7/app/d;B)V

    return-object v1
.end method

.method final a(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V

    return-void
.end method

.method final a(Landroid/view/View;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method final a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method final a(ILandroid/view/Menu;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method final a(ILandroid/view/MenuItem;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method final a(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected final a(Landroid/view/View;Landroid/view/Menu;)Z
    .registers 6

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_f

    iget-object v0, v0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget-object v0, v0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-super {v0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->a(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_e
.end method

.method public final a_()Landroid/content/Intent;
    .registers 2

    invoke-static {p0}, Landroid/support/v4/app/ac;->a(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/d;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method final b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final f()Landroid/support/v7/app/ActionBar;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->c()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->h()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->d()V

    return-void
.end method

.method public final onContentChanged()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->j()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_16

    new-instance v0, Landroid/support/v7/app/k;

    invoke-direct {v0, p0}, Landroid/support/v7/app/k;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    :goto_b
    iput-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d;->a(Landroid/os/Bundle;)V

    return-void

    :cond_16
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_22

    new-instance v0, Landroid/support/v7/app/j;

    invoke-direct {v0, p0}, Landroid/support/v7/app/j;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_b

    :cond_22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2e

    new-instance v0, Landroid/support/v7/app/h;

    invoke-direct {v0, p0}, Landroid/support/v7/app/h;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_b

    :cond_2e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3a

    new-instance v0, Landroid/support/v7/app/g;

    invoke-direct {v0, p0}, Landroid/support/v7/app/g;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_b

    :cond_3a
    new-instance v0, Landroid/support/v7/app/f;

    invoke-direct {v0, p0}, Landroid/support/v7/app/f;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_b
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/d;->a(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .registers 3

    if-nez p1, :cond_9

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_8
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 6

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/d;->a(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_28

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_28

    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;->g()Z

    move-result v0

    goto :goto_9

    :cond_28
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected onPostResume()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->f()V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/d;->a(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->e()V

    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setContentView(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d;->a(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/d;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/d;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final x_()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_9

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->x_()V

    :cond_9
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->n:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->g()V

    return-void
.end method
