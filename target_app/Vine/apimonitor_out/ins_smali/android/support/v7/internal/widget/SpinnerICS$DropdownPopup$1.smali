.class  Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup$1;
.super Ljava/lang/Object;
.source "SpinnerICS.java"
.implements Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;
.field final synthetic this$1:Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;
.field final synthetic val$this$0:Landroid/support/v7/internal/widget/SpinnerICS;
.method constructor <init>(Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;Landroid/support/v7/internal/widget/SpinnerICS;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup$1;->this$1:Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;
iput-object p2, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup$1;->val$this$0:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup$1; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup$1;->this$1:Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;
iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;
invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/SpinnerICS;->setSelection(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup$1;->this$1:Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;
iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;
iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerICS;->mOnItemClickListener:Landroid/support/v7/internal/widget/AdapterViewICS$OnItemClickListener;
if-eqz v0, :cond_20
iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup$1;->this$1:Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;
iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->this$0:Landroid/support/v7/internal/widget/SpinnerICS;
iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup$1;->this$1:Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;
#getter for: Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;
invoke-static {v1}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->access$100(Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;)Landroid/widget/ListAdapter;
move-result-object v1
invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v1
invoke-virtual {v0, p2, p3, v1, v2}, Landroid/support/v7/internal/widget/SpinnerICS;->performItemClick(Landroid/view/View;IJ)Z
:cond_20
iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup$1;->this$1:Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup;->dismiss()V
const-string v1, " - Landroid/support/v7/internal/widget/SpinnerICS$DropdownPopup$1; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method