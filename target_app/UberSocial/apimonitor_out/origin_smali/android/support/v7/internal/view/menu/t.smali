.class Landroid/support/v7/internal/view/menu/t;
.super Landroid/view/ActionProvider;
.source "SourceFile"


# instance fields
.field final a:Landroid/support/v4/view/ActionProvider;

.field final synthetic b:Landroid/support/v7/internal/view/menu/s;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/s;Landroid/support/v4/view/ActionProvider;)V
    .registers 5

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/t;->b:Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {p2}, Landroid/support/v4/view/ActionProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v4/view/ActionProvider;

    invoke-static {p1}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/support/v7/internal/view/menu/s;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v4/view/ActionProvider;

    new-instance v1, Landroid/support/v7/internal/view/menu/t$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/view/menu/t$1;-><init>(Landroid/support/v7/internal/view/menu/t;Landroid/support/v7/internal/view/menu/s;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->setVisibilityListener(Landroid/support/v4/view/ActionProvider$VisibilityListener;)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->b:Landroid/support/v7/internal/view/menu/s;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/support/v7/internal/view/menu/s;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->b:Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/s;->c()Z

    :cond_d
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v4/view/ActionProvider;

    invoke-virtual {v0}, Landroid/support/v4/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v4/view/ActionProvider;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/t;->b:Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v1, p1}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    return-void
.end method
