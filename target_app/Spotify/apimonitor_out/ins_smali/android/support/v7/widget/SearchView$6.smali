.class final Landroid/support/v7/widget/SearchView$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/support/v7/widget/SearchView;
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView$6;->a:Landroid/support/v7/widget/SearchView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/SearchView$6;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->b(Landroid/support/v7/widget/SearchView;)Landroid/support/v4/widget/b;
move-result-object v0
if-eqz v0, :cond_1c
iget-object v0, p0, Landroid/support/v7/widget/SearchView$6;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->b(Landroid/support/v7/widget/SearchView;)Landroid/support/v4/widget/b;
move-result-object v0
instance-of v0, v0, Landroid/support/v7/widget/e;
if-eqz v0, :cond_1c
iget-object v0, p0, Landroid/support/v7/widget/SearchView$6;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->b(Landroid/support/v7/widget/SearchView;)Landroid/support/v4/widget/b;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v4/widget/b;->a(Landroid/database/Cursor;)V
:cond_1c
return-void
.end method