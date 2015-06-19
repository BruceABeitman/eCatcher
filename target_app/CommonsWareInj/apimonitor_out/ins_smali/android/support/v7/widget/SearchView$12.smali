.class  Landroid/support/v7/widget/SearchView$12;
.super Ljava/lang/Object;
.source "SearchView.java"
.implements Landroid/text/TextWatcher;
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView$12;->this$0:Landroid/support/v7/widget/SearchView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public afterTextChanged(Landroid/text/Editable;)V
.registers 2
return-void
.end method
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
.registers 5
return-void
.end method
.method public onTextChanged(Ljava/lang/CharSequence;III)V
.registers 6
iget-object v0, p0, Landroid/support/v7/widget/SearchView$12;->this$0:Landroid/support/v7/widget/SearchView;
#calls: Landroid/support/v7/widget/SearchView;->onTextChanged(Ljava/lang/CharSequence;)V
invoke-static {v0, p1}, Landroid/support/v7/widget/SearchView;->access$2000(Landroid/support/v7/widget/SearchView;Ljava/lang/CharSequence;)V
return-void
.end method