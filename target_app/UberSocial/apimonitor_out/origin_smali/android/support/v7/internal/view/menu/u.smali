.class Landroid/support/v7/internal/view/menu/u;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# instance fields
.field final a:Landroid/support/v7/b/c;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v0, p1

    check-cast v0, Landroid/support/v7/b/c;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/u;->a:Landroid/support/v7/b/c;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/u;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method a()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->a:Landroid/support/v7/b/c;

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public onActionViewCollapsed()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->a:Landroid/support/v7/b/c;

    invoke-interface {v0}, Landroid/support/v7/b/c;->b()V

    return-void
.end method

.method public onActionViewExpanded()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/u;->a:Landroid/support/v7/b/c;

    invoke-interface {v0}, Landroid/support/v7/b/c;->a()V

    return-void
.end method
