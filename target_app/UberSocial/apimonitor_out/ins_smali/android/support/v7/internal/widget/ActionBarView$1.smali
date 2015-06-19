.class  Landroid/support/v7/internal/widget/ActionBarView$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v7/internal/widget/t;
.field final synthetic a:Landroid/support/v7/internal/widget/ActionBarView;
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView$1;->a:Landroid/support/v7/internal/widget/ActionBarView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Landroid/support/v7/internal/widget/n;)V
.registers 2
return-void
.end method
.method public a(Landroid/support/v7/internal/widget/n;Landroid/view/View;IJ)V
.registers 7
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$1;->a:Landroid/support/v7/internal/widget/ActionBarView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/app/c;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$1;->a:Landroid/support/v7/internal/widget/ActionBarView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/app/c;
move-result-object v0
invoke-interface {v0, p3, p4, p5}, Landroid/support/v7/app/c;->a(IJ)Z
:cond_11
return-void
.end method