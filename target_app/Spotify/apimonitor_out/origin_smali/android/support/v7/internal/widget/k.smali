.class final Landroid/support/v7/internal/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;B)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/k;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->e(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_44

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a()Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/j;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/j;->e()Landroid/support/v7/internal/widget/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/d;->a(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/j;->e()Landroid/support/v7/internal/widget/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/d;->b(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_43

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_43
    :goto_43
    return-void

    :cond_44
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->f(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_5e

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;Z)Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->g(Landroid/support/v7/internal/widget/ActivityChooserView;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V

    goto :goto_43

    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final onDismiss()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->h(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->h(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_11
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Landroid/support/v4/view/l;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Landroid/support/v4/view/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/l;->a(Z)V

    :cond_1f
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/j;

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/j;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_68

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_13
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V

    :cond_1b
    :goto_1b
    return-void

    :pswitch_1c
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a()Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->d(Landroid/support/v7/internal/widget/ActivityChooserView;)Z

    move-result v0

    if-eqz v0, :cond_39

    if-lez p3, :cond_1b

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/j;->e()Landroid/support/v7/internal/widget/d;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/d;->c(I)V

    goto :goto_1b

    :cond_39
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/j;->f()Z

    move-result v0

    if-eqz v0, :cond_64

    :goto_45
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/j;->e()Landroid/support/v7/internal/widget/d;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/d;->b(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1b

    :cond_64
    add-int/lit8 p3, p3, 0x1

    goto :goto_45

    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_13
    .end packed-switch
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->e(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_26

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/j;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/j;->getCount()I

    move-result v0

    if-lez v0, :cond_25

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0, v2}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;Z)Z

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->g(Landroid/support/v7/internal/widget/ActivityChooserView;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V

    :cond_25
    return v2

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
