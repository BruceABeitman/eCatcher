.class Landroid/support/v7/internal/view/menu/t;
.super Landroid/view/ActionProvider;
.source "SourceFile"


# instance fields
.field final a:Landroid/support/v4/view/l;

.field final synthetic b:Landroid/support/v7/internal/view/menu/s;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/s;Landroid/support/v4/view/l;)V
    .registers 5

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/t;->b:Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {p2}, Landroid/support/v4/view/l;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v4/view/l;

    invoke-static {p1}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/support/v7/internal/view/menu/s;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v4/view/l;

    new-instance v1, Landroid/support/v7/internal/view/menu/t$1;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/internal/view/menu/t$1;-><init>(Landroid/support/v7/internal/view/menu/t;Landroid/support/v7/internal/view/menu/s;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/l;->a(Landroid/support/v4/view/n;)V

    :cond_1b
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v4/view/l;

    const/4 v0, 0x0

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
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v4/view/l;

    invoke-virtual {v0}, Landroid/support/v4/view/l;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v4/view/l;

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->a:Landroid/support/v4/view/l;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/t;->b:Landroid/support/v7/internal/view/menu/s;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/view/SubMenu;)Landroid/view/SubMenu;

    return-void
.end method
