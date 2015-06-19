.class  Landroid/support/v7/widget/SearchView$10;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/support/v7/widget/SearchView;
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/widget/SearchView$10; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->e(Landroid/support/v7/widget/SearchView;)Landroid/view/View;
move-result-object v0
if-ne p1, v0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->f(Landroid/support/v7/widget/SearchView;)V
:cond_d
:goto_d
const-string v1, " - Landroid/support/v7/widget/SearchView$10; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_e
iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->g(Landroid/support/v7/widget/SearchView;)Landroid/widget/ImageView;
move-result-object v0
if-ne p1, v0, :cond_1c
iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->h(Landroid/support/v7/widget/SearchView;)V
goto :goto_d
:cond_1c
iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->i(Landroid/support/v7/widget/SearchView;)Landroid/view/View;
move-result-object v0
if-ne p1, v0, :cond_2a
iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->j(Landroid/support/v7/widget/SearchView;)V
goto :goto_d
:cond_2a
iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->k(Landroid/support/v7/widget/SearchView;)Landroid/view/View;
move-result-object v0
if-ne p1, v0, :cond_38
iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->l(Landroid/support/v7/widget/SearchView;)V
goto :goto_d
:cond_38
iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->m(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;
move-result-object v0
if-ne p1, v0, :cond_d
iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v0}, Landroid/support/v7/widget/SearchView;->n(Landroid/support/v7/widget/SearchView;)V
goto :goto_d
.end method