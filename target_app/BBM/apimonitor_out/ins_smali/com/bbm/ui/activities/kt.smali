.class final Lcom/bbm/ui/activities/kt;
.super Ljava/lang/Object;
.source "GroupAdminAddActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupAdminAddActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupAdminAddActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/kt;->a:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/kt; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/kt;->a:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->c(Lcom/bbm/ui/activities/GroupAdminAddActivity;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/ac;
invoke-virtual {p2}, Landroid/view/View;->isActivated()Z
move-result v1
if-nez v1, :cond_45
const/4 v1, 0x1
move v2, v1
:goto_14
const v1, 0x7f0a0412
invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
if-eqz v2, :cond_48
iget-object v3, p0, Lcom/bbm/ui/activities/kt;->a:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-virtual {v3}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0901ae
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
:goto_2c
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V
invoke-virtual {p2, v2}, Landroid/view/View;->setActivated(Z)V
if-eqz v2, :cond_56
iget-object v1, p0, Lcom/bbm/ui/activities/kt;->a:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->a(Lcom/bbm/ui/activities/GroupAdminAddActivity;)Ljava/util/ArrayList;
move-result-object v1
iget-object v0, v0, Lcom/bbm/g/ac;->c:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_3f
iget-object v0, p0, Lcom/bbm/ui/activities/kt;->a:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->d(Lcom/bbm/ui/activities/GroupAdminAddActivity;)V
const-string v1, " - Lcom/bbm/ui/activities/kt; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_45
const/4 v1, 0x0
move v2, v1
goto :goto_14
:cond_48
iget-object v3, p0, Lcom/bbm/ui/activities/kt;->a:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-virtual {v3}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f09000f
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
goto :goto_2c
:cond_56
iget-object v1, p0, Lcom/bbm/ui/activities/kt;->a:Lcom/bbm/ui/activities/GroupAdminAddActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->a(Lcom/bbm/ui/activities/GroupAdminAddActivity;)Ljava/util/ArrayList;
move-result-object v1
iget-object v0, v0, Lcom/bbm/g/ac;->c:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_3f
.end method