.class  Landroid/support/v7/widget/SearchView$4;
.super Ljava/lang/Object;
.source "SearchView.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onFocusChange(Landroid/view/View;Z)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/widget/SearchView$4; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;
#getter for: Landroid/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$200(Landroid/support/v7/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;
#getter for: Landroid/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$200(Landroid/support/v7/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;
invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V
:cond_13
const-string v1, " - Landroid/support/v7/widget/SearchView$4; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method