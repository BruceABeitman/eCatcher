.class final Lit/sephiroth/android/library/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AbsHListView;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/widget/AbsHListView;)V
    .registers 2

    iput-object p1, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    if-nez v0, :cond_99

    iget-object v0, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iput v3, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    iget-object v0, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v1, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v1, v1, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    iget-object v2, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v2, v2, Lit/sephiroth/android/library/widget/AbsHListView;->V:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lit/sephiroth/android/library/widget/AbsHListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_99

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    if-nez v1, :cond_99

    iget-object v1, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iput v4, v1, Lit/sephiroth/android/library/widget/AbsHListView;->h:I

    iget-object v1, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-boolean v1, v1, Lit/sephiroth/android/library/widget/AbsHListView;->ai:Z

    if-nez v1, :cond_a5

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    iget-object v1, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1, v3}, Lit/sephiroth/android/library/widget/AbsHListView;->setPressed(Z)V

    iget-object v1, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v1}, Lit/sephiroth/android/library/widget/AbsHListView;->e()V

    iget-object v1, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget v2, v2, Lit/sephiroth/android/library/widget/AbsHListView;->A:I

    invoke-virtual {v1, v2, v0}, Lit/sephiroth/android/library/widget/AbsHListView;->a(ILandroid/view/View;)V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->refreshDrawableState()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    iget-object v0, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->isLongClickable()Z

    move-result v2

    iget-object v0, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v0, v0, Lit/sephiroth/android/library/widget/AbsHListView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6e

    instance-of v3, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v3, :cond_6e

    if-eqz v2, :cond_9a

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_6e
    :goto_6e
    if-eqz v2, :cond_a0

    iget-object v0, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->c(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/c;

    move-result-object v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    new-instance v2, Lit/sephiroth/android/library/widget/c;

    iget-object v3, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-direct {v2, v3, v4}, Lit/sephiroth/android/library/widget/c;-><init>(Lit/sephiroth/android/library/widget/AbsHListView;B)V

    invoke-static {v0, v2}, Lit/sephiroth/android/library/widget/AbsHListView;->a(Lit/sephiroth/android/library/widget/AbsHListView;Lit/sephiroth/android/library/widget/c;)Lit/sephiroth/android/library/widget/c;

    :cond_84
    iget-object v0, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AbsHListView;->c(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/c;->a()V

    iget-object v0, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iget-object v2, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    invoke-static {v2}, Lit/sephiroth/android/library/widget/AbsHListView;->c(Lit/sephiroth/android/library/widget/AbsHListView;)Lit/sephiroth/android/library/widget/c;

    move-result-object v2

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lit/sephiroth/android/library/widget/AbsHListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_99
    :goto_99
    return-void

    :cond_9a
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_6e

    :cond_a0
    iget-object v0, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iput v5, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    goto :goto_99

    :cond_a5
    iget-object v0, p0, Lit/sephiroth/android/library/widget/d;->a:Lit/sephiroth/android/library/widget/AbsHListView;

    iput v5, v0, Lit/sephiroth/android/library/widget/AbsHListView;->F:I

    goto :goto_99
.end method
