.class final Lcom/bbm/ui/activities/zn;
.super Ljava/lang/Object;
.source "NewListItemActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/b/k;
.field final synthetic b:Lcom/bbm/ui/activities/zl;
.method constructor <init>(Lcom/bbm/ui/activities/zl;Lcom/bbm/ui/b/k;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/zn;->b:Lcom/bbm/ui/activities/zl;
iput-object p2, p0, Lcom/bbm/ui/activities/zn;->a:Lcom/bbm/ui/b/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/zn; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "mItemCategory onSpinnerItemClicked Dialog Right Button Clicked"
const-class v1, Lcom/bbm/ui/activities/NewListItemActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/zn;->a:Lcom/bbm/ui/b/k;
invoke-virtual {v0}, Lcom/bbm/ui/b/k;->c()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/zn;->b:Lcom/bbm/ui/activities/zl;
iget-object v1, v1, Lcom/bbm/ui/activities/zl;->a:Lcom/bbm/ui/activities/NewListItemActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/NewListItemActivity;->n:Lcom/bbm/ui/l;
invoke-virtual {v1, v0}, Lcom/bbm/ui/l;->b(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_37
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v2, 0x1
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v2, p0, Lcom/bbm/ui/activities/zn;->b:Lcom/bbm/ui/activities/zl;
iget-object v2, v2, Lcom/bbm/ui/activities/zl;->a:Lcom/bbm/ui/activities/NewListItemActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/NewListItemActivity;->n:Lcom/bbm/ui/l;
invoke-virtual {v2, v0, v1}, Lcom/bbm/ui/l;->a(Ljava/lang/String;Ljava/util/ArrayList;)V
:cond_37
iget-object v1, p0, Lcom/bbm/ui/activities/zn;->b:Lcom/bbm/ui/activities/zl;
iget-object v1, v1, Lcom/bbm/ui/activities/zl;->a:Lcom/bbm/ui/activities/NewListItemActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/NewListItemActivity;->n:Lcom/bbm/ui/l;
invoke-virtual {v1, v0}, Lcom/bbm/ui/l;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/zn;->b:Lcom/bbm/ui/activities/zl;
iget-object v0, v0, Lcom/bbm/ui/activities/zl;->a:Lcom/bbm/ui/activities/NewListItemActivity;
iget-object v0, v0, Lcom/bbm/ui/activities/NewListItemActivity;->h:Landroid/widget/Spinner;
iget-object v1, p0, Lcom/bbm/ui/activities/zn;->b:Lcom/bbm/ui/activities/zl;
iget-object v1, v1, Lcom/bbm/ui/activities/zl;->a:Lcom/bbm/ui/activities/NewListItemActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/NewListItemActivity;->n:Lcom/bbm/ui/l;
iget v1, v1, Lcom/bbm/ui/l;->a:I
invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/zn;->a:Lcom/bbm/ui/b/k;
invoke-virtual {v0}, Lcom/bbm/ui/b/k;->dismiss()V
const-string v1, " - Lcom/bbm/ui/activities/zn; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method