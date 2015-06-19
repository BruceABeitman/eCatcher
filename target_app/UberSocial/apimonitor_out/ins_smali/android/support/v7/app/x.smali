.class  Landroid/support/v7/app/x;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/app/ActionBar$OnNavigationListener;
.field private final a:Landroid/support/v7/app/c;
.method public constructor <init>(Landroid/support/v7/app/c;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/app/x;->a:Landroid/support/v7/app/c;
return-void
.end method
.method public onNavigationItemSelected(IJ)Z
.registers 5
iget-object v0, p0, Landroid/support/v7/app/x;->a:Landroid/support/v7/app/c;
invoke-interface {v0, p1, p2, p3}, Landroid/support/v7/app/c;->a(IJ)Z
move-result v0
return v0
.end method