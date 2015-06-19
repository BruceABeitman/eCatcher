.class  Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;
.super Landroid/support/v7/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"
.field final synthetic this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
.registers 7
iput-object p1, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
iget-object v0, p1, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
return-void
.end method
.method public onDismiss()V
.registers 3
invoke-super {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->onDismiss()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
iget-object v0, v0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close()V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;->this$0:Landroid/support/v7/internal/view/menu/ActionMenuPresenter;
const/4 v1, 0x0
#setter for: Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;
invoke-static {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuPresenter;->access$102(Landroid/support/v7/internal/view/menu/ActionMenuPresenter;Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;)Landroid/support/v7/internal/view/menu/ActionMenuPresenter$OverflowPopup;
return-void
.end method