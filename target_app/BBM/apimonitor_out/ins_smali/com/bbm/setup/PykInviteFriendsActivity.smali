.class public Lcom/bbm/setup/PykInviteFriendsActivity;
.super Lcom/bbm/setup/r;
.source "PykInviteFriendsActivity.java"
.field  a:Lcom/bbm/util/dc;
.field private b:Lcom/bbm/ui/a/r;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/setup/r;-><init>()V
invoke-static {}, Lcom/bbm/util/bn;->a()Lcom/bbm/util/bn;
move-result-object v0
iput-object v0, p0, Lcom/bbm/setup/PykInviteFriendsActivity;->a:Lcom/bbm/util/dc;
return-void
.end method
.method public onBackPressed()V
.registers 1
invoke-super {p0}, Lcom/bbm/setup/r;->onBackPressed()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/bbm/setup/PykInviteFriendsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, -0x1
const/4 v4, 0x0
const v0, 0x7f030057
invoke-virtual {p0, v0}, Lcom/bbm/setup/PykInviteFriendsActivity;->setContentView(I)V
new-instance v0, Lcom/bbm/i/b;
invoke-static {}, Lcom/bbm/Alaska;->x()Lcom/bbm/j/r;
move-result-object v1
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/bbm/i/b;-><init>(Lcom/bbm/j/r;Lcom/bbm/d;)V
invoke-virtual {v0}, Lcom/bbm/i/b;->h()V
const v1, 0x7f0e0371
invoke-virtual {p0, v1}, Lcom/bbm/setup/PykInviteFriendsActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/bbm/setup/PykInviteFriendsActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v2
invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V
new-instance v2, Lcom/bbm/ui/SimpleCenteredActionBar;
invoke-direct {v2, p0, v1}, Lcom/bbm/ui/SimpleCenteredActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/bbm/setup/PykInviteFriendsActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v1
new-instance v3, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v3, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v2, 0x10
invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V
new-instance v1, Lcom/bbm/ui/a/r;
iget-object v2, p0, Lcom/bbm/setup/PykInviteFriendsActivity;->a:Lcom/bbm/util/dc;
new-instance v3, Lcom/bbm/util/b/f;
invoke-direct {v3}, Lcom/bbm/util/b/f;-><init>()V
invoke-static {v3, p0}, Lcom/bbm/util/b/d;->a(Lcom/bbm/util/b/f;Landroid/app/Activity;)Lcom/bbm/util/b/d;
move-result-object v3
invoke-direct {v1, p0, v0, v2, v3}, Lcom/bbm/ui/a/r;-><init>(Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;Lcom/bbm/util/b/d;)V
iput-object v1, p0, Lcom/bbm/setup/PykInviteFriendsActivity;->b:Lcom/bbm/ui/a/r;
const v0, 0x7f0a02e5
invoke-virtual {p0, v0}, Lcom/bbm/setup/PykInviteFriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V
invoke-virtual {v0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setHorizontalSpacing(I)V
invoke-virtual {v0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVerticalSpacing(I)V
iget-object v1, p0, Lcom/bbm/setup/PykInviteFriendsActivity;->b:Lcom/bbm/ui/a/r;
invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V
new-instance v1, Lcom/bbm/setup/p;
invoke-direct {v1, p0}, Lcom/bbm/setup/p;-><init>(Lcom/bbm/setup/PykInviteFriendsActivity;)V
invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
iget-object v1, p0, Lcom/bbm/setup/PykInviteFriendsActivity;->b:Lcom/bbm/ui/a/r;
invoke-virtual {v1}, Lcom/bbm/ui/a/r;->getCount()I
move-result v1
iput v1, v0, Lcom/bbm/c/c;->aj:I
const v0, 0x7f0a02e7
invoke-virtual {p0, v0}, Lcom/bbm/setup/PykInviteFriendsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/bbm/setup/q;
invoke-direct {v1, p0}, Lcom/bbm/setup/q;-><init>(Lcom/bbm/setup/PykInviteFriendsActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-super {p0, p1}, Lcom/bbm/setup/r;->onCreate(Landroid/os/Bundle;)V
const-string v1, " - Lcom/bbm/setup/PykInviteFriendsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/setup/PykInviteFriendsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
sget-object v1, Lcom/bbm/c/n;->ap:Lcom/bbm/c/n;
invoke-virtual {v0, v1}, Lcom/bbm/c/c;->c(Lcom/bbm/c/n;)V
invoke-super {p0}, Lcom/bbm/setup/r;->onPause()V
iget-object v0, p0, Lcom/bbm/setup/PykInviteFriendsActivity;->b:Lcom/bbm/ui/a/r;
invoke-virtual {v0}, Lcom/bbm/ui/a/r;->e()V
const-string v1, " - Lcom/bbm/setup/PykInviteFriendsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 4
const-string v1, " + Lcom/bbm/setup/PykInviteFriendsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/setup/r;->onResume()V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
sget-object v1, Lcom/bbm/c/n;->ap:Lcom/bbm/c/n;
invoke-virtual {v0, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/n;)V
iget-object v0, p0, Lcom/bbm/setup/PykInviteFriendsActivity;->b:Lcom/bbm/ui/a/r;
iget-object v0, v0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V
invoke-static {}, Lcom/bbm/Alaska;->h()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "has_shown_pyk_invite"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
const-string v1, " - Lcom/bbm/setup/PykInviteFriendsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method