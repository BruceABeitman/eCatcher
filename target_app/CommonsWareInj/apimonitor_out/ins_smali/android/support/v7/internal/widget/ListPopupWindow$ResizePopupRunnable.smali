.class  Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v7/internal/widget/ListPopupWindow;
.method private constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ListPopupWindow;Landroid/support/v7/internal/widget/ListPopupWindow$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/support/v7/internal/widget/ListPopupWindow;)V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;
#getter for: Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$700(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
move-result-object v0
if-eqz v0, :cond_3d
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;
#getter for: Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$700(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getCount()I
move-result v0
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;
#getter for: Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-static {v1}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$700(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getChildCount()I
move-result v1
if-le v0, v1, :cond_3d
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;
#getter for: Landroid/support/v7/internal/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$700(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow$DropDownListView;->getChildCount()I
move-result v0
iget-object v1, p0, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;
iget v1, v1, Landroid/support/v7/internal/widget/ListPopupWindow;->mListItemExpandMaximum:I
if-gt v0, v1, :cond_3d
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;
#getter for: Landroid/support/v7/internal/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-static {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->access$800(Landroid/support/v7/internal/widget/ListPopupWindow;)Landroid/widget/PopupWindow;
move-result-object v0
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/support/v7/internal/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ListPopupWindow;->show()V
:cond_3d
return-void
.end method