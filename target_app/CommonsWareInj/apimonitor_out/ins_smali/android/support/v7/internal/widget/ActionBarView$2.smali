.class  Landroid/support/v7/internal/widget/ActionBarView$2;
.super Ljava/lang/Object;
.source "ActionBarView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Landroid/support/v7/internal/widget/ActionBarView;
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView$2;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/widget/ActionBarView$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$2;->this$0:Landroid/support/v7/internal/widget/ActionBarView;
#getter for: Landroid/support/v7/internal/widget/ActionBarView;->mExpandedMenuPresenter:Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
invoke-static {v1}, Landroid/support/v7/internal/widget/ActionBarView;->access$100(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
move-result-object v1
iget-object v0, v1, Landroid/support/v7/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroid/support/v7/internal/view/menu/MenuItemImpl;
if-eqz v0, :cond_d
invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->collapseActionView()Z
:cond_d
const-string v1, " - Landroid/support/v7/internal/widget/ActionBarView$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method