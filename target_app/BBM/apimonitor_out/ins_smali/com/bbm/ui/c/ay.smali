.class final Lcom/bbm/ui/c/ay;
.super Ljava/lang/Object;
.source "ChatsFragment.java"
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.field final synthetic a:Lcom/bbm/ui/c/at;
.method constructor <init>(Lcom/bbm/ui/c/at;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/ay;->a:Lcom/bbm/ui/c/at;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/c/ay; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
const/4 v1, 0x1
iget-object v2, p0, Lcom/bbm/ui/c/ay;->a:Lcom/bbm/ui/c/at;
invoke-static {v2}, Lcom/bbm/ui/c/at;->h(Lcom/bbm/ui/c/at;)Landroid/widget/ExpandableListView;
move-result-object v2
invoke-virtual {v2, p3}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J
move-result-wide v2
invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I
move-result v4
invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I
move-result v5
invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I
move-result v2
if-ne v4, v1, :cond_3f
iget-object v0, p0, Lcom/bbm/ui/c/ay;->a:Lcom/bbm/ui/c/at;
invoke-static {v0}, Lcom/bbm/ui/c/at;->g(Lcom/bbm/ui/c/at;)Lcom/bbm/ui/e/cd;
move-result-object v0
invoke-virtual {v0, v5, v2}, Lcom/bbm/ui/e/cd;->getChild(II)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gl;
iget-object v2, p0, Lcom/bbm/ui/c/ay;->a:Lcom/bbm/ui/c/at;
invoke-static {v2, v0}, Lcom/bbm/ui/c/at;->a(Lcom/bbm/ui/c/at;Lcom/bbm/d/gl;)Lcom/bbm/d/gl;
:goto_2b
if-eqz v1, :cond_3e
iget-object v0, p0, Lcom/bbm/ui/c/ay;->a:Lcom/bbm/ui/c/at;
invoke-virtual {v0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/MainActivity;
const v2, 0x7f0a0083
invoke-virtual {v0, v2}, Lcom/bbm/ui/activities/MainActivity;->c(I)V
invoke-virtual {v0}, Lcom/bbm/ui/activities/MainActivity;->o()V
:cond_3e
move v2, v1
const-string v1, " - Lcom/bbm/ui/c/ay; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
:cond_3f
if-nez v4, :cond_5f
iget-object v2, p0, Lcom/bbm/ui/c/ay;->a:Lcom/bbm/ui/c/at;
invoke-static {v2}, Lcom/bbm/ui/c/at;->g(Lcom/bbm/ui/c/at;)Lcom/bbm/ui/e/cd;
move-result-object v2
invoke-virtual {v2, v5}, Lcom/bbm/ui/e/cd;->getChildrenCount(I)I
move-result v2
if-nez v2, :cond_5f
iget-object v2, p0, Lcom/bbm/ui/c/ay;->a:Lcom/bbm/ui/c/at;
invoke-static {v2}, Lcom/bbm/ui/c/at;->g(Lcom/bbm/ui/c/at;)Lcom/bbm/ui/e/cd;
move-result-object v2
invoke-virtual {v2, v5, v0}, Lcom/bbm/ui/e/cd;->getChild(II)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gl;
iget-object v2, p0, Lcom/bbm/ui/c/ay;->a:Lcom/bbm/ui/c/at;
invoke-static {v2, v0}, Lcom/bbm/ui/c/at;->a(Lcom/bbm/ui/c/at;Lcom/bbm/d/gl;)Lcom/bbm/d/gl;
goto :goto_2b
:cond_5f
move v1, v0
goto :goto_2b
.end method