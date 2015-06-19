.class final Landroid/support/v7/widget/SearchView$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/support/v7/widget/SearchView;
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView$1;->a:Landroid/support/v7/widget/SearchView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/SearchView$1;->a:Landroid/support/v7/widget/SearchView;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "input_method"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
if-eqz v0, :cond_17
sget-object v1, Landroid/support/v7/widget/SearchView;->a:Landroid/support/v7/widget/a;
iget-object v2, p0, Landroid/support/v7/widget/SearchView$1;->a:Landroid/support/v7/widget/SearchView;
invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/a;->a(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
:cond_17
return-void
.end method