.class  Landroid/support/v7/app/ActionBarImplICS$OnNavigationListenerWrapper;
.super Ljava/lang/Object;
.source "ActionBarImplICS.java"
.implements Landroid/app/ActionBar$OnNavigationListener;
.field private final mWrappedListener:Landroid/support/v7/app/ActionBar$OnNavigationListener;
.method public constructor <init>(Landroid/support/v7/app/ActionBar$OnNavigationListener;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/app/ActionBarImplICS$OnNavigationListenerWrapper;->mWrappedListener:Landroid/support/v7/app/ActionBar$OnNavigationListener;
return-void
.end method
.method public onNavigationItemSelected(IJ)Z
.registers 5
iget-object v0, p0, Landroid/support/v7/app/ActionBarImplICS$OnNavigationListenerWrapper;->mWrappedListener:Landroid/support/v7/app/ActionBar$OnNavigationListener;
invoke-interface {v0, p1, p2, p3}, Landroid/support/v7/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z
move-result v0
return v0
.end method