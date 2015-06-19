.class final Lcom/bbm/ui/c/bs;
.super Ljava/lang/Object;
.source "ContactsFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Ljava/util/List;
.field final synthetic b:Lcom/bbm/ui/b/i;
.field final synthetic c:Lcom/bbm/ui/c/bm;
.method constructor <init>(Lcom/bbm/ui/c/bm;Ljava/util/List;Lcom/bbm/ui/b/i;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/c/bs;->c:Lcom/bbm/ui/c/bm;
iput-object p2, p0, Lcom/bbm/ui/c/bs;->a:Ljava/util/List;
iput-object p3, p0, Lcom/bbm/ui/c/bs;->b:Lcom/bbm/ui/b/i;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/bs; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "DeleteContactDialog RightButton Clicked"
const-class v1, Lcom/bbm/ui/c/bm;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/c/bs;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_35
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gp;
iget-object v2, p0, Lcom/bbm/ui/c/bs;->c:Lcom/bbm/ui/c/bm;
invoke-static {v2}, Lcom/bbm/ui/c/bm;->e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;
move-result-object v2
iget-object v0, v0, Lcom/bbm/d/gp;->A:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/d/z;->c(Ljava/lang/String;)Lcom/bbm/d/bj;
move-result-object v0
iget-object v3, p0, Lcom/bbm/ui/c/bs;->b:Lcom/bbm/ui/b/i;
iget-object v3, v3, Lcom/bbm/ui/b/i;->e:Landroid/widget/CheckBox;
invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z
move-result v3
invoke-virtual {v0, v3}, Lcom/bbm/d/bj;->a(Z)Lcom/bbm/d/bj;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
goto :goto_d
:cond_35
iget-object v0, p0, Lcom/bbm/ui/c/bs;->b:Lcom/bbm/ui/b/i;
invoke-virtual {v0}, Lcom/bbm/ui/b/i;->dismiss()V
const-string v1, " - Lcom/bbm/ui/c/bs; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method