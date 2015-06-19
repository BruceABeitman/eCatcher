.class  Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionMenuPresenter.java"
.implements Landroid/support/v7/internal/view/menu/ActionMenuView$ActionMenuChildView;
.field final synthetic this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;)V
.registers 6
const/4 v2, 0x1
iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
const/4 v0, 0x0
sget v1, Landroid/support/v7/appcompat/R$attr;->actionOverflowButtonStyle:I
invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V
invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V
invoke-virtual {p0, v2}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V
return-void
.end method
.method public needsDividerAfter()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public needsDividerBefore()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public performClick()Z
.registers 3
const/4 v1, 0x1
invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z
move-result v0
if-eqz v0, :cond_8
:goto_7
return v1
:cond_8
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z
goto :goto_7
.end method