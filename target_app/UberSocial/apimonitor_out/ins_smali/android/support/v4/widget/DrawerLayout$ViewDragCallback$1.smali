.class  Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;->this$1:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback$1;->this$1:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
#calls: Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->peekDrawer()V
invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->access$000(Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;)V
return-void
.end method