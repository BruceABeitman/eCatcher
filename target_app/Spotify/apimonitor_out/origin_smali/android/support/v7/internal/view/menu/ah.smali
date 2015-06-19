.class final Landroid/support/v7/internal/view/menu/ah;
.super Landroid/support/v7/internal/view/menu/af;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/a/a/c;


# direct methods
.method constructor <init>(Landroid/view/SubMenu;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/af;-><init>(Landroid/view/Menu;)V

    return-void
.end method


# virtual methods
.method public final clearHeader()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ah;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0}, Landroid/view/SubMenu;->clearHeader()V

    return-void
.end method

.method public final getItem()Landroid/view/MenuItem;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ah;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ah;->a(Landroid/view/MenuItem;)Landroid/support/v4/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ah;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ah;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ah;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ah;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ah;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ah;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ah;->a:Ljava/lang/Object;

    check-cast v0, Landroid/view/SubMenu;

    invoke-interface {v0, p1}, Landroid/view/SubMenu;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method
