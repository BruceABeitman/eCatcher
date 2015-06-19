.class final Landroid/support/v7/internal/widget/ActionBarView$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v7/internal/widget/p;
.field final synthetic a:Landroid/support/v7/internal/widget/ActionBarView;
.method constructor <init>(Landroid/support/v7/internal/widget/ActionBarView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView$1;->a:Landroid/support/v7/internal/widget/ActionBarView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$1;->a:Landroid/support/v7/internal/widget/ActionBarView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/app/b;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$1;->a:Landroid/support/v7/internal/widget/ActionBarView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActionBarView;->a(Landroid/support/v7/internal/widget/ActionBarView;)Landroid/support/v7/app/b;
move-result-object v0
invoke-interface {v0, p1}, Landroid/support/v7/app/b;->b_(I)Z
:cond_11
return-void
.end method