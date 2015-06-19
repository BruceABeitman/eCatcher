.class public Lcom/facebook/katana/RequestsActivity;
.super Lcom/facebook/katana/FacebookListActivity;
.source "RequestsActivity.java"
.field private mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/facebook/katana/FacebookListActivity;-><init>()V
new-instance v0, Lcom/facebook/katana/RequestsActivity$1;
invoke-direct {v0, p0}, Lcom/facebook/katana/RequestsActivity$1;-><init>(Lcom/facebook/katana/RequestsActivity;)V
iput-object v0, p0, Lcom/facebook/katana/RequestsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
return-void
.end method
.method static synthetic access$10(Lcom/facebook/katana/RequestsActivity;)Lcom/facebook/katana/binding/AppSession;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/RequestsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
return-object v0
.end method
.method public bridge synthetic facebookOnBackPressed()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->facebookOnBackPressed()Z
move-result v0
return v0
.end method
.method public bridge synthetic finish()V
.registers 1
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->finish()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/facebook/katana/RequestsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->onCreate(Landroid/os/Bundle;)V
const v2, 0x7f03003c
invoke-virtual {p0, v2}, Lcom/facebook/katana/RequestsActivity;->setContentView(I)V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v2
iput-object v2, p0, Lcom/facebook/katana/RequestsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v2, p0, Lcom/facebook/katana/RequestsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v2, :cond_1b
invoke-virtual {p0}, Lcom/facebook/katana/RequestsActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
invoke-static {p0, v2}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;Landroid/content/Intent;)V
:goto_1a
const-string v1, " - Lcom/facebook/katana/RequestsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1b
iget-object v2, p0, Lcom/facebook/katana/RequestsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v3, p0, Lcom/facebook/katana/RequestsActivity;->mAppSessionListener:Lcom/facebook/katana/binding/AppSessionListener;
invoke-virtual {v2, v3}, Lcom/facebook/katana/binding/AppSession;->addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
iget-object v2, p0, Lcom/facebook/katana/RequestsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v2}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
move-result-object v2
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J
move-result-wide v0
iget-object v2, p0, Lcom/facebook/katana/RequestsActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-virtual {v2, p0, v0, v1}, Lcom/facebook/katana/binding/AppSession;->getFriendRequests(Landroid/content/Context;J)Ljava/lang/String;
goto :goto_1a
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/facebook/katana/RequestsActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onDestroy()V
invoke-virtual {p0}, Lcom/facebook/katana/RequestsActivity;->getListView()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/facebook/katana/RequestsAdapter;
if-eqz v0, :cond_12
invoke-virtual {v0}, Lcom/facebook/katana/RequestsAdapter;->onDestroy()V
:cond_12
const-string v1, " - Lcom/facebook/katana/RequestsActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public bridge synthetic onSearchRequested()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookListActivity;->onSearchRequested()Z
move-result v0
return v0
.end method
.method public bridge synthetic startActivity(Landroid/content/Intent;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookListActivity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method public bridge synthetic titleBarClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->titleBarClickHandler(Landroid/view/View;)V
return-void
.end method
.method public bridge synthetic titleBarPrimaryActionClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->titleBarPrimaryActionClickHandler(Landroid/view/View;)V
return-void
.end method
.method public bridge synthetic titleBarSearchClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookListActivity;->titleBarSearchClickHandler(Landroid/view/View;)V
return-void
.end method