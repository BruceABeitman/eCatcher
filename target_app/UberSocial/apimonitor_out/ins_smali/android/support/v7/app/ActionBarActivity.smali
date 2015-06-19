.class public Landroid/support/v7/app/ActionBarActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"
.implements Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;
.implements Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
.implements Landroid/support/v7/app/a;
.field  a:Landroid/support/v7/app/f;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
return-void
.end method
.method public a()Landroid/support/v7/app/ActionBar;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0}, Landroid/support/v7/app/f;->b()Landroid/support/v7/app/ActionBar;
move-result-object v0
return-object v0
.end method
.method public a(Landroid/support/v7/b/b;)Landroid/support/v7/b/a;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->a(Landroid/support/v7/b/b;)Landroid/support/v7/b/a;
move-result-object v0
return-object v0
.end method
.method public a(Landroid/support/v4/app/TaskStackBuilder;)V
.registers 2
invoke-virtual {p1, p0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;
return-void
.end method
.method public a(Landroid/support/v7/b/a;)V
.registers 2
return-void
.end method
.method  a(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;)V
return-void
.end method
.method  a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 3
invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method public a(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->a(Z)V
return-void
.end method
.method public a(I)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->b(I)Z
move-result v0
return v0
.end method
.method  a(ILandroid/view/Menu;)Z
.registers 4
invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z
move-result v0
return v0
.end method
.method  a(ILandroid/view/MenuItem;)Z
.registers 4
invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method  a(ILandroid/view/View;Landroid/view/Menu;)Z
.registers 5
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
move-result v0
return v0
.end method
.method public a(Landroid/content/Intent;)Z
.registers 3
invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z
move-result v0
return v0
.end method
.method  a(Landroid/view/View;Landroid/view/Menu;)Z
.registers 4
invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
move-result v0
return v0
.end method
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/f;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method  b(I)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setContentView(I)V
return-void
.end method
.method public b(Landroid/content/Intent;)V
.registers 2
invoke-static {p0, p1}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V
return-void
.end method
.method public b(Landroid/support/v4/app/TaskStackBuilder;)V
.registers 2
return-void
.end method
.method public b(Landroid/support/v7/b/a;)V
.registers 2
return-void
.end method
.method  b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 3
invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method public b(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->b(Z)V
return-void
.end method
.method public b()Z
.registers 3
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->getSupportParentActivityIntent()Landroid/content/Intent;
move-result-object v0
if-eqz v0, :cond_27
invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->a(Landroid/content/Intent;)Z
move-result v1
if-eqz v1, :cond_23
invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->a(Landroid/support/v4/app/TaskStackBuilder;)V
invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->b(Landroid/support/v4/app/TaskStackBuilder;)V
invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V
:try_start_19
invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
:try_end_1c
.catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1c} :catch_1e
:goto_1c
const/4 v0, 0x1
:goto_1d
return v0
:catch_1e
move-exception v0
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->finish()V
goto :goto_1c
:cond_23
invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarActivity;->b(Landroid/content/Intent;)V
goto :goto_1c
:cond_27
const/4 v0, 0x0
goto :goto_1d
.end method
.method public c()V
.registers 1
return-void
.end method
.method public c(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->d(I)V
return-void
.end method
.method public c(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->c(Z)V
return-void
.end method
.method public final getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0}, Landroid/support/v7/app/f;->h()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
move-result-object v0
return-object v0
.end method
.method public getMenuInflater()Landroid/view/MenuInflater;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0}, Landroid/support/v7/app/f;->c()Landroid/view/MenuInflater;
move-result-object v0
return-object v0
.end method
.method public getSupportParentActivityIntent()Landroid/content/Intent;
.registers 2
invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public onBackPressed()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0}, Landroid/support/v7/app/f;->g()Z
move-result v0
if-nez v0, :cond_b
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V
:cond_b
return-void
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->a(Landroid/content/res/Configuration;)V
return-void
.end method
.method public final onContentChanged()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0}, Landroid/support/v7/app/f;->j()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Landroid/support/v7/app/ActionBarActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {p0}, Landroid/support/v7/app/f;->a(Landroid/support/v7/app/ActionBarActivity;)Landroid/support/v7/app/f;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->a(Landroid/os/Bundle;)V
const-string v1, " - Landroid/support/v7/app/ActionBarActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/f;->a(ILandroid/view/Menu;)Z
move-result v0
return v0
.end method
.method public onCreatePanelView(I)Landroid/view/View;
.registers 3
if-nez p1, :cond_9
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->c(I)Landroid/view/View;
move-result-object v0
:goto_8
return-object v0
:cond_9
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelView(I)Landroid/view/View;
move-result-object v0
goto :goto_8
.end method
.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
.registers 6
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/f;->a(ILandroid/view/MenuItem;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->a()Landroid/support/v7/app/ActionBar;
move-result-object v0
invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I
move-result v1
const v2, 0x102002c
if-ne v1, v2, :cond_26
if-eqz v0, :cond_26
invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->g()I
move-result v0
and-int/lit8 v0, v0, 0x4
if-eqz v0, :cond_26
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->b()Z
move-result v0
goto :goto_9
:cond_26
const/4 v0, 0x0
goto :goto_9
.end method
.method protected onPostResume()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0}, Landroid/support/v7/app/f;->e()V
return-void
.end method
.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/f;->a(Landroid/view/View;Landroid/view/Menu;)Z
move-result v0
return v0
.end method
.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
.registers 5
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/app/f;->a(ILandroid/view/View;Landroid/view/Menu;)Z
move-result v0
return v0
.end method
.method protected onStop()V
.registers 3
const-string v1, " + Landroid/support/v7/app/ActionBarActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0}, Landroid/support/v7/app/f;->d()V
const-string v1, " - Landroid/support/v7/app/ActionBarActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->a(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setContentView(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->a(I)V
return-void
.end method
.method public setContentView(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1}, Landroid/support/v7/app/f;->a(Landroid/view/View;)V
return-void
.end method
.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/f;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method public supportInvalidateOptionsMenu()V
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_9
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V
:cond_9
iget-object v0, p0, Landroid/support/v7/app/ActionBarActivity;->a:Landroid/support/v7/app/f;
invoke-virtual {v0}, Landroid/support/v7/app/f;->f()V
return-void
.end method