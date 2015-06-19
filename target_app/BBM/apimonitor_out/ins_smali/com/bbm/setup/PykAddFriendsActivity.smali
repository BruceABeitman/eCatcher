.class public Lcom/bbm/setup/PykAddFriendsActivity;
.super Lcom/bbm/setup/r;
.source "PykAddFriendsActivity.java"
.field private a:Lcom/bbm/util/dc;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/setup/r;-><init>()V
invoke-static {}, Lcom/bbm/util/bn;->a()Lcom/bbm/util/bn;
move-result-object v0
iput-object v0, p0, Lcom/bbm/setup/PykAddFriendsActivity;->a:Lcom/bbm/util/dc;
return-void
.end method
.method public onBackPressed()V
.registers 1
invoke-super {p0}, Lcom/bbm/setup/r;->onBackPressed()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/bbm/setup/PykAddFriendsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, -0x1
invoke-super {p0, p1}, Lcom/bbm/setup/r;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030059
invoke-virtual {p0, v0}, Lcom/bbm/setup/PykAddFriendsActivity;->setContentView(I)V
new-instance v0, Lcom/bbm/i/b;
invoke-static {}, Lcom/bbm/Alaska;->x()Lcom/bbm/j/r;
move-result-object v1
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/bbm/i/b;-><init>(Lcom/bbm/j/r;Lcom/bbm/d;)V
new-instance v1, Lcom/bbm/ui/c/ey;
iget-object v2, p0, Lcom/bbm/setup/PykAddFriendsActivity;->a:Lcom/bbm/util/dc;
invoke-static {p0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;
move-result-object v3
invoke-direct {v1, v2, v0, v3}, Lcom/bbm/ui/c/ey;-><init>(Lcom/bbm/util/dc;Lcom/bbm/i/b;Lcom/bbm/h/aq;)V
new-instance v0, Lcom/bbm/setup/o;
invoke-direct {v0, p0}, Lcom/bbm/setup/o;-><init>(Lcom/bbm/setup/PykAddFriendsActivity;)V
iput-object v0, v1, Lcom/bbm/ui/c/ey;->a:Landroid/view/View$OnClickListener;
const v0, 0x7f0e0372
invoke-virtual {p0, v0}, Lcom/bbm/setup/PykAddFriendsActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/bbm/setup/PykAddFriendsActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V
new-instance v2, Lcom/bbm/ui/SimpleCenteredActionBar;
invoke-direct {v2, p0, v0}, Lcom/bbm/ui/SimpleCenteredActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/bbm/setup/PykAddFriendsActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
new-instance v3, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v3, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v2, 0x10
invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V
invoke-virtual {p0}, Lcom/bbm/setup/PykAddFriendsActivity;->getFragmentManager()Landroid/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;
move-result-object v0
const v2, 0x7f0a02f4
const-string v3, "tag_pyk_invite_friends_fragment"
invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
invoke-virtual {p0}, Lcom/bbm/setup/PykAddFriendsActivity;->isFinishing()Z
move-result v1
if-nez v1, :cond_67
invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I
:cond_67
const-string v1, " - Lcom/bbm/setup/PykAddFriendsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/setup/PykAddFriendsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
sget-object v1, Lcom/bbm/c/n;->ao:Lcom/bbm/c/n;
invoke-virtual {v0, v1}, Lcom/bbm/c/c;->c(Lcom/bbm/c/n;)V
invoke-super {p0}, Lcom/bbm/setup/r;->onPause()V
const-string v1, " - Lcom/bbm/setup/PykAddFriendsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 4
const-string v1, " + Lcom/bbm/setup/PykAddFriendsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/setup/r;->onResume()V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
sget-object v1, Lcom/bbm/c/n;->ao:Lcom/bbm/c/n;
invoke-virtual {v0, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/n;)V
invoke-static {}, Lcom/bbm/Alaska;->h()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "has_shown_pyk_add"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
const-string v1, " - Lcom/bbm/setup/PykAddFriendsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method