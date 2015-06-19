.class final Lcom/bbm/ui/activities/td;
.super Ljava/lang/Object;
.source "GroupSelectNewAdminActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/td;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 11
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/td; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {p2}, Landroid/view/View;->isActivated()Z
move-result v0
if-nez v0, :cond_74
move v0, v1
:goto_9
invoke-virtual {p2, v0}, Landroid/view/View;->setActivated(Z)V
invoke-virtual {p2}, Landroid/view/View;->isActivated()Z
move-result v0
if-eqz v0, :cond_76
iget-object v0, p0, Lcom/bbm/ui/activities/td;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->b(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Ljava/util/List;
move-result-object v0
iget-object v3, p0, Lcom/bbm/ui/activities/td;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->a(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Lcom/bbm/ui/activities/th;
move-result-object v3
invoke-virtual {v3, p3}, Lcom/bbm/ui/activities/th;->getItem(I)Ljava/lang/Object;
move-result-object v3
invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_25
iget-object v0, p0, Lcom/bbm/ui/activities/td;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->c(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
move-result-object v3
iget-object v0, p0, Lcom/bbm/ui/activities/td;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->b(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_8a
move v0, v1
:goto_38
invoke-virtual {v3, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/td;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->c(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
move-result-object v3
iget-object v0, p0, Lcom/bbm/ui/activities/td;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->b(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_8c
iget-object v0, p0, Lcom/bbm/ui/activities/td;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v4, 0x7f0e00e9
invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
new-array v1, v1, [Ljava/lang/Object;
iget-object v4, p0, Lcom/bbm/ui/activities/td;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->b(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Ljava/util/List;
move-result-object v4
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_70
invoke-virtual {v3, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setTitle(Ljava/lang/String;)V
const-string v1, " - Lcom/bbm/ui/activities/td; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_74
move v0, v2
goto :goto_9
:cond_76
iget-object v0, p0, Lcom/bbm/ui/activities/td;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->b(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Ljava/util/List;
move-result-object v0
iget-object v3, p0, Lcom/bbm/ui/activities/td;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->a(Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;)Lcom/bbm/ui/activities/th;
move-result-object v3
invoke-virtual {v3, p3}, Lcom/bbm/ui/activities/th;->getItem(I)Ljava/lang/Object;
move-result-object v3
invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
goto :goto_25
:cond_8a
move v0, v2
goto :goto_38
:cond_8c
iget-object v0, p0, Lcom/bbm/ui/activities/td;->a:Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupSelectNewAdminActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e00e8
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_70
.end method