.class  Landroid/support/v4/app/ListFragment$1;
.super Ljava/lang/Object;
.source "ListFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v4/app/ListFragment;
.method constructor <init>(Landroid/support/v4/app/ListFragment;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/app/ListFragment$1;->this$0:Landroid/support/v4/app/ListFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/ListFragment$1;->this$0:Landroid/support/v4/app/ListFragment;
iget-object v0, v0, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;
iget-object v1, p0, Landroid/support/v4/app/ListFragment$1;->this$0:Landroid/support/v4/app/ListFragment;
iget-object v1, v1, Landroid/support/v4/app/ListFragment;->mList:Landroid/widget/ListView;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V
return-void
.end method