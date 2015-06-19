.class public Lco/vine/android/NotificationSettingsFragment;
.super Lco/vine/android/BaseArrayListFragment;
.source "NotificationSettingsFragment.java"
.field private mFetched:Z
.field private mSucceeded:Z
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Lco/vine/android/BaseArrayListFragment;-><init>()V
iput-boolean v0, p0, Lco/vine/android/NotificationSettingsFragment;->mFetched:Z
iput-boolean v0, p0, Lco/vine/android/NotificationSettingsFragment;->mSucceeded:Z
return-void
.end method
.method static synthetic access$002(Lco/vine/android/NotificationSettingsFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/NotificationSettingsFragment;->mFetched:Z
return p1
.end method
.method static synthetic access$102(Lco/vine/android/NotificationSettingsFragment;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/NotificationSettingsFragment;->mSucceeded:Z
return p1
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lco/vine/android/NotificationSettingsFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onCreate(Landroid/os/Bundle;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/NotificationSettingsFragment;->mRefreshable:Z
new-instance v0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;
invoke-direct {v0, p0}, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;-><init>(Lco/vine/android/NotificationSettingsFragment;)V
iput-object v0, p0, Lco/vine/android/NotificationSettingsFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lco/vine/android/NotificationSettingsFragment;->setHasOptionsMenu(Z)V
const-string v1, " - Lco/vine/android/NotificationSettingsFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/NotificationSettingsFragment; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v3, 0x7f0a0245
const/4 v2, 0x1
iget-boolean v1, p0, Lco/vine/android/NotificationSettingsFragment;->mSucceeded:Z
if-eqz v1, :cond_1c
const v1, 0x7f100012
invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v1
invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
:cond_1c
const-string v1, " - Lco/vine/android/NotificationSettingsFragment; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/NotificationSettingsFragment; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v1
packed-switch v1, :pswitch_data_24
invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v1
:goto_b
move v2, v1
const-string v1, " - Lco/vine/android/NotificationSettingsFragment; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
:pswitch_c
iget-object v1, p0, Lco/vine/android/NotificationSettingsFragment;->mAdapter:Landroid/widget/BaseAdapter;
if-eqz v1, :cond_21
iget-object v1, p0, Lco/vine/android/NotificationSettingsFragment;->mAdapter:Landroid/widget/BaseAdapter;
check-cast v1, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;
invoke-virtual {v1}, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;->getMap()Ljava/util/HashMap;
move-result-object v0
iget-object v1, p0, Lco/vine/android/NotificationSettingsFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v1, v0}, Lco/vine/android/client/AppController;->saveNotificationSettings(Ljava/util/HashMap;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lco/vine/android/NotificationSettingsFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;
:cond_21
const/4 v1, 0x1
goto :goto_b
nop
:pswitch_data_24
.packed-switch 0x7f0a0245
:pswitch_c
.end packed-switch
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lco/vine/android/NotificationSettingsFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseArrayListFragment;->onResume()V
iget-object v0, p0, Lco/vine/android/NotificationSettingsFragment;->mListView:Landroid/widget/ListView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V
iget-object v0, p0, Lco/vine/android/NotificationSettingsFragment;->mListView:Landroid/widget/ListView;
check-cast v0, Lcom/twitter/android/widget/RefreshableListView;
invoke-virtual {v0}, Lcom/twitter/android/widget/RefreshableListView;->disablePTR()V
iget-boolean v0, p0, Lco/vine/android/NotificationSettingsFragment;->mFetched:Z
if-nez v0, :cond_1d
iget-object v0, p0, Lco/vine/android/NotificationSettingsFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v0}, Lco/vine/android/client/AppController;->fetchNotificationSettings()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/NotificationSettingsFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;
:cond_1d
const-string v1, " - Lco/vine/android/NotificationSettingsFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 7
const/4 v3, 0x0
invoke-super {p0, p1, p2}, Lco/vine/android/BaseArrayListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
invoke-virtual {p0}, Lco/vine/android/NotificationSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
const v2, 0x7f030063
invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
new-instance v1, Lco/vine/android/NotificationSettingsFragment$1;
invoke-direct {v1, p0}, Lco/vine/android/NotificationSettingsFragment$1;-><init>(Lco/vine/android/NotificationSettingsFragment;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lco/vine/android/NotificationSettingsFragment;->mListView:Landroid/widget/ListView;
const/4 v2, 0x0
invoke-virtual {v1, v0, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
return-void
.end method