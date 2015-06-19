.class  Landroid/support/v7/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SearchView.java"
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView$6;->this$0:Landroid/support/v7/widget/SearchView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onGlobalLayout()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SearchView$6;->this$0:Landroid/support/v7/widget/SearchView;
#calls: Landroid/support/v7/widget/SearchView;->adjustDropDownSizeAndPosition()V
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->access$300(Landroid/support/v7/widget/SearchView;)V
return-void
.end method