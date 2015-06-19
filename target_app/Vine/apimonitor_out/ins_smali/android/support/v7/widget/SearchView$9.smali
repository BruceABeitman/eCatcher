.class  Landroid/support/v7/widget/SearchView$9;
.super Ljava/lang/Object;
.source "SearchView.java"
.implements Landroid/widget/TextView$OnEditorActionListener;
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView$9;->this$0:Landroid/support/v7/widget/SearchView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
.registers 5
iget-object v0, p0, Landroid/support/v7/widget/SearchView$9;->this$0:Landroid/support/v7/widget/SearchView;
#calls: Landroid/support/v7/widget/SearchView;->onSubmitQuery()V
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$900(Landroid/support/v7/widget/SearchView;)V
const/4 v0, 0x1
return v0
.end method