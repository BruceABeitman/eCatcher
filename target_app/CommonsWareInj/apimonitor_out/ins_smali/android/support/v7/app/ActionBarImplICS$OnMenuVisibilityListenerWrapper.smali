.class  Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;
.super Ljava/lang/Object;
.source "ActionBarImplICS.java"
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;
.field final mWrappedListener:Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;
.method public constructor <init>(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;->mWrappedListener:Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;
return-void
.end method
.method public onMenuVisibilityChanged(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$OnMenuVisibilityListenerWrapper;->mWrappedListener:Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;
invoke-interface {v0, p1}, Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V
return-void
.end method