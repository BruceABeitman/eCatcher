.class  Landroid/support/v4/app/FragmentManagerImpl$1;
.super Ljava/lang/Object;
.source "FragmentManager.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v4/app/FragmentManagerImpl;
.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$1;->this$0:Landroid/support/v4/app/FragmentManagerImpl;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$1;->this$0:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
return-void
.end method