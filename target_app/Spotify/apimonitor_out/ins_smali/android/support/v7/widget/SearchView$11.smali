.class final Landroid/support/v7/widget/SearchView$11;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnKeyListener;
.field final synthetic a:Landroid/support/v7/widget/SearchView;
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView$11;->a:Landroid/support/v7/widget/SearchView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/widget/SearchView$11; onKey "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Landroid/support/v7/widget/SearchView$11;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v2}, Landroid/support/v7/widget/SearchView;->o(Landroid/support/v7/widget/SearchView;)Landroid/app/SearchableInfo;
move-result-object v2
if-nez v2, :cond_b
:cond_a
:goto_a
move v2, v0
const-string v1, " - Landroid/support/v7/widget/SearchView$11; onKey"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_b
iget-object v2, p0, Landroid/support/v7/widget/SearchView$11;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v2}, Landroid/support/v7/widget/SearchView;->m(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z
move-result v2
if-eqz v2, :cond_2b
iget-object v2, p0, Landroid/support/v7/widget/SearchView$11;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v2}, Landroid/support/v7/widget/SearchView;->m(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_2b
iget-object v0, p0, Landroid/support/v7/widget/SearchView$11;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v0, p2, p3}, Landroid/support/v7/widget/SearchView;->a(Landroid/support/v7/widget/SearchView;ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_a
:cond_2b
iget-object v2, p0, Landroid/support/v7/widget/SearchView$11;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v2}, Landroid/support/v7/widget/SearchView;->m(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;
move-result-object v2
invoke-static {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->a(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Z
move-result v2
if-nez v2, :cond_a
invoke-static {p3}, Landroid/support/v4/view/s;->b(Landroid/view/KeyEvent;)Z
move-result v2
if-eqz v2, :cond_a
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v2
if-ne v2, v1, :cond_a
const/16 v2, 0x42
if-ne p2, v2, :cond_a
invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V
iget-object v0, p0, Landroid/support/v7/widget/SearchView$11;->a:Landroid/support/v7/widget/SearchView;
iget-object v2, p0, Landroid/support/v7/widget/SearchView$11;->a:Landroid/support/v7/widget/SearchView;
invoke-static {v2}, Landroid/support/v7/widget/SearchView;->m(Landroid/support/v7/widget/SearchView;)Landroid/support/v7/widget/SearchView$SearchAutoComplete;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/support/v7/widget/SearchView;->a(Landroid/support/v7/widget/SearchView;Ljava/lang/String;)V
move v0, v1
goto :goto_a
.end method