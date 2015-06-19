.class final Lcom/bbm/ui/activities/aji;
.super Ljava/lang/Object;
.source "ViewChannelPostActivity.java"
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/aji;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/aji; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
iget-object v0, p0, Lcom/bbm/ui/activities/aji;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->e(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/a/k;
move-result-object v0
if-eqz v0, :cond_78
if-lez p3, :cond_78
iget-object v2, p0, Lcom/bbm/ui/activities/aji;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iget-object v0, p0, Lcom/bbm/ui/activities/aji;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->e(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/a/k;
move-result-object v0
add-int/lit8 v3, p3, -0x1
invoke-virtual {v0, v3}, Lcom/bbm/ui/a/k;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/el;
invoke-static {v2, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Lcom/bbm/d/el;)Lcom/bbm/d/el;
invoke-virtual {p2}, Landroid/view/View;->getId()I
move-result v0
const v2, 0x7f0a012b
if-eq v0, v2, :cond_30
invoke-virtual {p2}, Landroid/view/View;->getId()I
move-result v0
const v2, 0x7f0a0122
if-ne v0, v2, :cond_79
:cond_30
iget-object v0, p0, Lcom/bbm/ui/activities/aji;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0, p2}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Landroid/view/View;)Landroid/view/View;
:goto_35
iget-object v0, p0, Lcom/bbm/ui/activities/aji;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->f(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Landroid/widget/EditText;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V
iget-object v0, p0, Lcom/bbm/ui/activities/aji;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/EmoticonInputPanel;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z
iget-object v0, p0, Lcom/bbm/ui/activities/aji;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0, p3}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/activities/ViewChannelPostActivity;I)I
iget-object v0, p0, Lcom/bbm/ui/activities/aji;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->e(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/a/k;
move-result-object v0
add-int/lit8 v2, p3, -0x1
invoke-virtual {v0, v2}, Lcom/bbm/ui/a/k;->getItemViewType(I)I
move-result v0
if-nez v0, :cond_89
move v0, v1
:goto_5b
iget-object v2, p0, Lcom/bbm/ui/activities/aji;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
iget-object v3, p0, Lcom/bbm/ui/activities/aji;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v3, v2, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Lcom/bbm/ui/c/fm;Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/aji;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->o()V
iget-object v0, p0, Lcom/bbm/ui/activities/aji;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->e(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/ui/a/k;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/activities/aji;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->g(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Landroid/view/View;
move-result-object v2
invoke-virtual {v0, v2, p3}, Lcom/bbm/ui/a/k;->a(Landroid/view/View;I)V
:cond_78
move v2, v1
const-string v1, " - Lcom/bbm/ui/activities/aji; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
:cond_79
iget-object v2, p0, Lcom/bbm/ui/activities/aji;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-static {v2, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Landroid/view/View;)Landroid/view/View;
goto :goto_35
:cond_89
const/4 v0, 0x0
goto :goto_5b
.end method