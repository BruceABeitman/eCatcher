.class  Landroid/support/v4/widget/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v4/widget/ViewDragHelper;
.method constructor <init>(Landroid/support/v4/widget/ViewDragHelper;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/widget/ViewDragHelper$2;->this$0:Landroid/support/v4/widget/ViewDragHelper;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper$2;->this$0:Landroid/support/v4/widget/ViewDragHelper;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V
return-void
.end method