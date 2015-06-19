.class  Landroid/support/v7/app/ActionBarActivityDelegateBase$1;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;
.method constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$1;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$1;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateBase;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->supportInvalidateOptionsMenu()V
return-void
.end method