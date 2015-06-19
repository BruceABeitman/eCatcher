.class  Landroid/support/v4/app/Fragment$1;
.super Ljava/lang/Object;
.source "Fragment.java"
.implements Landroid/support/v4/app/FragmentContainer;
.field final synthetic this$0:Landroid/support/v4/app/Fragment;
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/app/Fragment$1;->this$0:Landroid/support/v4/app/Fragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public findViewById(I)Landroid/view/View;
.registers 4
iget-object v0, p0, Landroid/support/v4/app/Fragment$1;->this$0:Landroid/support/v4/app/Fragment;
iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-nez v0, :cond_f
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "Fragment does not have a view"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
iget-object v0, p0, Landroid/support/v4/app/Fragment$1;->this$0:Landroid/support/v4/app/Fragment;
iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
return-object v0
.end method