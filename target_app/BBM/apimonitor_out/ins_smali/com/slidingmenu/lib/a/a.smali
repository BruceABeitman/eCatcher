.class public abstract Lcom/slidingmenu/lib/a/a;
.super Lcom/bbm/ui/activities/ajy;
.source "SlidingActivity.java"
.field public E:Lcom/slidingmenu/lib/a/c;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V
new-instance v0, Lcom/bbm/ui/voice/o;
invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V
invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/a/a;->a(Lcom/bbm/ui/activities/aka;)V
return-void
.end method
.method public final a(Lcom/slidingmenu/lib/a/b;)V
.registers 3
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iput-object p1, v0, Lcom/slidingmenu/lib/a/c;->h:Lcom/slidingmenu/lib/a/b;
return-void
.end method
.method public final a(Lcom/slidingmenu/lib/i;)V
.registers 3
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/SlidingMenu;->setOnClosedListener(Lcom/slidingmenu/lib/i;)V
return-void
.end method
.method public final a(Lcom/slidingmenu/lib/k;)V
.registers 3
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/SlidingMenu;->setOnOpenedListener(Lcom/slidingmenu/lib/k;)V
return-void
.end method
.method public findViewById(I)Landroid/view/View;
.registers 5
const/4 v1, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->findViewById(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_8
:cond_7
:goto_7
return-object v0
:cond_8
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v2, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
if-eqz v2, :cond_1a
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_7
:cond_1a
move-object v0, v1
goto :goto_7
:cond_1c
move-object v0, v1
goto :goto_7
.end method
.method public final n()V
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->a()Z
move-result v1
if-eqz v1, :cond_f
invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
:goto_e
return-void
:cond_f
invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->a(Z)V
goto :goto_e
.end method
.method public final o()V
.registers 3
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowWidth(I)V
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->b(Z)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lcom/slidingmenu/lib/a/c;
invoke-direct {v0, p0}, Lcom/slidingmenu/lib/a/c;-><init>(Landroid/app/Activity;)V
iput-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v1, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v1, Lcom/slidingmenu/lib/a/c;->a:Landroid/app/Activity;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v2, 0x7f030101
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/slidingmenu/lib/SlidingMenu;
iput-object v0, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
return-void
.end method
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 6
const/4 v0, 0x1
iget-object v1, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
const/4 v2, 0x4
if-ne p1, v2, :cond_17
iget-object v2, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v2}, Lcom/slidingmenu/lib/SlidingMenu;->a()Z
move-result v2
if-eqz v2, :cond_17
iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v0}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
move v1, v0
:goto_14
if-eqz v1, :cond_28
:goto_16
return v0
:cond_17
const/16 v2, 0x52
if-ne p1, v2, :cond_26
iget-object v2, v1, Lcom/slidingmenu/lib/a/c;->h:Lcom/slidingmenu/lib/a/b;
if-eqz v2, :cond_26
iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->h:Lcom/slidingmenu/lib/a/b;
invoke-interface {v1}, Lcom/slidingmenu/lib/a/b;->a()V
move v1, v0
goto :goto_14
:cond_26
const/4 v1, 0x0
goto :goto_14
:cond_28
invoke-super {p0, p1, p2}, Lcom/bbm/ui/activities/ajy;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_16
.end method
.method public onPostCreate(Landroid/os/Bundle;)V
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onPostCreate(Landroid/os/Bundle;)V
iget-object v2, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v3, v2, Lcom/slidingmenu/lib/a/c;->d:Landroid/view/View;
if-eqz v3, :cond_f
iget-object v3, v2, Lcom/slidingmenu/lib/a/c;->c:Landroid/view/View;
if-nez v3, :cond_17
:cond_f
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Both setBehindContentView must be called in onCreate in addition to setContentView."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
iput-boolean v0, v2, Lcom/slidingmenu/lib/a/c;->f:Z
iget-object v3, v2, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
iget-object v4, v2, Lcom/slidingmenu/lib/a/c;->a:Landroid/app/Activity;
iget-boolean v5, v2, Lcom/slidingmenu/lib/a/c;->g:Z
if-eqz v5, :cond_22
move v0, v1
:cond_22
invoke-virtual {v3, v4, v0}, Lcom/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;I)V
if-eqz p1, :cond_41
const-string v0, "SlidingActivityHelper.open"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v1
const-string v0, "SlidingActivityHelper.secondary"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
:goto_33
new-instance v3, Landroid/os/Handler;
invoke-direct {v3}, Landroid/os/Handler;-><init>()V
new-instance v4, Lcom/slidingmenu/lib/a/d;
invoke-direct {v4, v2, v1, v0}, Lcom/slidingmenu/lib/a/d;-><init>(Lcom/slidingmenu/lib/a/c;ZZ)V
invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
:cond_41
move v0, v1
goto :goto_33
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
const-string v1, "SlidingActivityHelper.open"
iget-object v2, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v2}, Lcom/slidingmenu/lib/SlidingMenu;->a()Z
move-result v2
invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, "SlidingActivityHelper.secondary"
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->b()Z
move-result v0
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
return-void
.end method
.method public setBehindContentView(Landroid/view/View;)V
.registers 4
const/4 v1, -0x1
new-instance v0, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iput-object p1, v0, Lcom/slidingmenu/lib/a/c;->d:Landroid/view/View;
iget-object v1, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->d:Landroid/view/View;
invoke-virtual {v1, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setMenu(Landroid/view/View;)V
return-void
.end method
.method public setContentView(I)V
.registers 4
invoke-virtual {p0}, Lcom/slidingmenu/lib/a/a;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/a/a;->setContentView(Landroid/view/View;)V
return-void
.end method
.method public setContentView(Landroid/view/View;)V
.registers 4
const/4 v1, -0x1
new-instance v0, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {p0, p1, v0}, Lcom/slidingmenu/lib/a/a;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/bbm/ui/activities/ajy;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-boolean v1, v0, Lcom/slidingmenu/lib/a/c;->e:Z
if-nez v1, :cond_b
iput-object p1, v0, Lcom/slidingmenu/lib/a/c;->c:Landroid/view/View;
:cond_b
return-void
.end method