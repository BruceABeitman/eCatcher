.class public abstract Lcom/bbm/ui/activities/ajy;
.super Landroid/support/v4/app/h;
.source "WatchedActivity.java"
.field public final D:Ljava/util/ArrayList;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/h;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/ajy;->D:Ljava/util/ArrayList;
new-instance v0, Lcom/bbm/ui/activities/xq;
invoke-direct {v0}, Lcom/bbm/ui/activities/xq;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ajy;->a(Lcom/bbm/ui/activities/aka;)V
return-void
.end method
.method public final a(Lcom/bbm/ui/activities/aka;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/ajy;->D:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/bbm/ui/activities/ajy;->D:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_8
.end method
.method public finish()V
.registers 3
invoke-super {p0}, Landroid/support/v4/app/h;->finish()V
iget-object v0, p0, Lcom/bbm/ui/activities/ajy;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/aka;
invoke-interface {v0, p0}, Lcom/bbm/ui/activities/aka;->c(Lcom/bbm/ui/activities/ajy;)V
goto :goto_9
:cond_19
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 6
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/h;->onActivityResult(IILandroid/content/Intent;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ajy;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/aka;
invoke-interface {v0, p0, p1, p2}, Lcom/bbm/ui/activities/aka;->a(Lcom/bbm/ui/activities/ajy;II)V
goto :goto_9
:cond_19
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/h;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/ajy;->getPackageName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/cw;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ajy;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_10
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_20
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/aka;
invoke-interface {v0, p0}, Lcom/bbm/ui/activities/aka;->a(Lcom/bbm/ui/activities/ajy;)V
goto :goto_10
:cond_20
return-void
.end method
.method public onDestroy()V
.registers 3
invoke-super {p0}, Landroid/support/v4/app/h;->onDestroy()V
iget-object v0, p0, Lcom/bbm/ui/activities/ajy;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/aka;
invoke-interface {v0}, Lcom/bbm/ui/activities/aka;->b()V
goto :goto_9
:cond_19
return-void
.end method
.method public onPause()V
.registers 3
invoke-super {p0}, Landroid/support/v4/app/h;->onPause()V
iget-object v0, p0, Lcom/bbm/ui/activities/ajy;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/aka;
invoke-interface {v0}, Lcom/bbm/ui/activities/aka;->a()V
goto :goto_9
:cond_19
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/c/c;->b()V
return-void
.end method
.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/h;->onRestoreInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ajy;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/aka;
invoke-interface {v0, p0, p1}, Lcom/bbm/ui/activities/aka;->a(Lcom/bbm/ui/activities/ajy;Landroid/os/Bundle;)V
goto :goto_9
:cond_19
return-void
.end method
.method public onResume()V
.registers 3
invoke-super {p0}, Landroid/support/v4/app/h;->onResume()V
iget-object v0, p0, Lcom/bbm/ui/activities/ajy;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/aka;
invoke-interface {v0, p0}, Lcom/bbm/ui/activities/aka;->b(Lcom/bbm/ui/activities/ajy;)V
goto :goto_9
:cond_19
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/c/c;->a()V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->b()V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/h;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ajy;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/aka;
invoke-interface {v0, p0, p1}, Lcom/bbm/ui/activities/aka;->b(Lcom/bbm/ui/activities/ajy;Landroid/os/Bundle;)V
goto :goto_9
:cond_19
return-void
.end method
.method protected onStart()V
.registers 3
invoke-super {p0}, Landroid/support/v4/app/h;->onStart()V
iget-object v0, p0, Lcom/bbm/ui/activities/ajy;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/aka;
invoke-interface {v0}, Lcom/bbm/ui/activities/aka;->c()V
goto :goto_9
:cond_19
return-void
.end method
.method protected onStop()V
.registers 3
invoke-super {p0}, Landroid/support/v4/app/h;->onStop()V
iget-object v0, p0, Lcom/bbm/ui/activities/ajy;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/aka;
invoke-interface {v0, p0}, Lcom/bbm/ui/activities/aka;->d(Lcom/bbm/ui/activities/ajy;)V
goto :goto_9
:cond_19
return-void
.end method
.method public startActivity(Landroid/content/Intent;)V
.registers 7
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "android.intent.action.VIEW"
invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_51
invoke-virtual {p0}, Lcom/bbm/ui/activities/ajy;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
if-eqz v0, :cond_51
const/16 v1, 0x40
invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v0
const-class v1, Lcom/bbm/ui/activities/OpenInBbmActivity;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_22
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_51
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/pm/ResolveInfo;
iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;
if-eqz v0, :cond_22
const-string v4, "android.intent.action.VIEW"
invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_22
const-string v4, "android.intent.category.BROWSABLE"
invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_22
const-class v0, Lcom/bbm/ui/activities/OpenInBbmActivity;
invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
:cond_51
invoke-super {p0, p1}, Landroid/support/v4/app/h;->startActivity(Landroid/content/Intent;)V
return-void
.end method