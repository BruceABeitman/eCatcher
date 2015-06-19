.class final Lcom/bbm/ui/activities/aep;
.super Ljava/lang/Object;
.source "SelectContactActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/SelectContactActivity;
.method constructor <init>(Lcom/bbm/ui/activities/SelectContactActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/aep; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->a(Lcom/bbm/ui/activities/SelectContactActivity;)Lcom/bbm/ui/activities/aex;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/bbm/ui/activities/aex;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gp;
iget-object v1, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->b(Lcom/bbm/ui/activities/SelectContactActivity;)Z
move-result v1
if-eqz v1, :cond_84
iget-object v1, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->c(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/ArrayList;
move-result-object v1
iget-object v0, v0, Lcom/bbm/d/gp;->A:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "com.bbm.selectedcontacts"
iget-object v4, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/SelectContactActivity;->c(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/ArrayList;
move-result-object v4
invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->d(Lcom/bbm/ui/activities/SelectContactActivity;)Landroid/os/Bundle;
move-result-object v1
if-eqz v1, :cond_44
const-string v1, "com.bbm.selectcontact.bundle.passthrough"
iget-object v4, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/SelectContactActivity;->d(Lcom/bbm/ui/activities/SelectContactActivity;)Landroid/os/Bundle;
move-result-object v4
invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
:cond_44
iget-object v1, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->e(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_5b
const-string v1, "com.bbm.resultadid"
iget-object v4, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/SelectContactActivity;->e(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
:cond_5b
iget-object v1, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
const/4 v4, -0x1
invoke-virtual {v1, v4, v0}, Lcom/bbm/ui/activities/SelectContactActivity;->setResult(ILandroid/content/Intent;)V
iget-object v0, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->finish()V
:goto_66
iget-object v0, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->b(Lcom/bbm/ui/activities/SelectContactActivity;)Z
move-result v0
if-nez v0, :cond_83
iget-object v0, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->h(Lcom/bbm/ui/activities/SelectContactActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->c(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
move-result v1
if-nez v1, :cond_13b
:goto_80
invoke-virtual {v0, v2}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
:cond_83
const-string v1, " - Lcom/bbm/ui/activities/aep; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_84
invoke-virtual {p2}, Landroid/view/View;->isActivated()Z
move-result v1
if-nez v1, :cond_108
move v1, v2
:goto_8b
invoke-virtual {p2, v1}, Landroid/view/View;->setActivated(Z)V
if-eqz v1, :cond_116
iget-object v1, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->f(Lcom/bbm/ui/activities/SelectContactActivity;)Z
move-result v1
if-eqz v1, :cond_10a
iget-object v1, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->g(Lcom/bbm/ui/activities/SelectContactActivity;)Z
move-result v1
if-nez v1, :cond_ad
iget-object v1, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->c(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/ArrayList;
move-result-object v1
invoke-static {v0}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_ad
:goto_ad
iget-object v0, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->h(Lcom/bbm/ui/activities/SelectContactActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v4, 0x7f0e0651
invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
new-array v4, v2, [Ljava/lang/Object;
iget-object v5, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v5}, Lcom/bbm/ui/activities/SelectContactActivity;->c(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/ArrayList;
move-result-object v5
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v3
invoke-static {v1, v4}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setTitle(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->j(Lcom/bbm/ui/activities/SelectContactActivity;)Lcom/bbm/ui/FooterActionBar;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->c(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v4, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/SelectContactActivity;->i(Lcom/bbm/ui/activities/SelectContactActivity;)Lcom/bbm/d/b/n;
move-result-object v4
invoke-virtual {v4}, Lcom/bbm/d/b/n;->f()Ljava/util/List;
move-result-object v4
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v4
if-ge v0, v4, :cond_139
move v0, v2
:goto_fa
invoke-virtual {v1, v3, v0}, Lcom/bbm/ui/FooterActionBar;->setActionEnabled(IZ)V
iget-object v0, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/SelectContactActivity;->a(Lcom/bbm/ui/activities/SelectContactActivity;)Lcom/bbm/ui/activities/aex;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/activities/aex;->notifyDataSetChanged()V
goto/16 :goto_66
:cond_108
move v1, v3
goto :goto_8b
:cond_10a
iget-object v1, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->c(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/ArrayList;
move-result-object v1
iget-object v0, v0, Lcom/bbm/d/gp;->A:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_ad
:cond_116
iget-object v1, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->f(Lcom/bbm/ui/activities/SelectContactActivity;)Z
move-result v1
if-eqz v1, :cond_12c
iget-object v1, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->c(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/ArrayList;
move-result-object v1
invoke-static {v0}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_ad
:cond_12c
iget-object v1, p0, Lcom/bbm/ui/activities/aep;->a:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->c(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/ArrayList;
move-result-object v1
iget-object v0, v0, Lcom/bbm/d/gp;->A:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto/16 :goto_ad
:cond_139
move v0, v3
goto :goto_fa
:cond_13b
move v2, v3
goto/16 :goto_80
.end method