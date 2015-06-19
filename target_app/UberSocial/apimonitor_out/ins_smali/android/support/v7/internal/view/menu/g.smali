.class  Landroid/support/v7/internal/view/menu/g;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v7/internal/view/menu/ac;
.field final synthetic a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
.method private constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/g;-><init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;)V
return-void
.end method
.method public a(Landroid/support/v7/internal/view/menu/n;Z)V
.registers 5
instance-of v0, p1, Landroid/support/v7/internal/view/menu/ah;
if-eqz v0, :cond_e
check-cast p1, Landroid/support/v7/internal/view/menu/ah;
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ah;->q()Landroid/support/v7/internal/view/menu/n;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/n;->b(Z)V
:cond_e
return-void
.end method
.method public b(Landroid/support/v7/internal/view/menu/n;)Z
.registers 5
const/4 v2, 0x0
if-nez p1, :cond_4
:goto_3
return v2
:cond_4
iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
check-cast p1, Landroid/support/v7/internal/view/menu/ah;
invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ah;->getItem()Landroid/view/MenuItem;
move-result-object v1
invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I
move-result v1
iput v1, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->b:I
goto :goto_3
.end method