.class public Lco/vine/android/UsersFragment;
.super Lco/vine/android/BaseArrayListFragment;
.source "UsersFragment.java"
.field private final mHelper:Lco/vine/android/widget/UsersMemoryAdapterHelper;
.method public constructor <init>()V
.registers 5
invoke-direct {p0}, Lco/vine/android/BaseArrayListFragment;-><init>()V
new-instance v0, Lco/vine/android/widget/UsersMemoryAdapterHelper;
iget-object v1, p0, Lco/vine/android/UsersFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
const-string v2, ""
const-string v3, ""
invoke-direct {v0, p0, v1, v2, v3}, Lco/vine/android/widget/UsersMemoryAdapterHelper;-><init>(Lco/vine/android/BaseFragment;Lco/vine/android/PendingRequestHelper;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lco/vine/android/UsersFragment;->mHelper:Lco/vine/android/widget/UsersMemoryAdapterHelper;
return-void
.end method
.method public onActivityCreated(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onActivityCreated(Landroid/os/Bundle;)V
iget-object v0, p0, Lco/vine/android/UsersFragment;->mListView:Landroid/widget/ListView;
iget-object v1, p0, Lco/vine/android/UsersFragment;->mHelper:Lco/vine/android/widget/UsersMemoryAdapterHelper;
invoke-virtual {p0}, Lco/vine/android/UsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v3, p0, Lco/vine/android/UsersFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v1, v2, v3}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->getAdapter(Landroid/app/Activity;Lco/vine/android/client/AppController;)Lco/vine/android/UsersMemoryAdapter;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lco/vine/android/UsersFragment;->mListView:Landroid/widget/ListView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V
iget-object v0, p0, Lco/vine/android/UsersFragment;->mHelper:Lco/vine/android/widget/UsersMemoryAdapterHelper;
invoke-virtual {v0}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->getAppSessionListener()Lco/vine/android/client/AppSessionListener;
move-result-object v0
iput-object v0, p0, Lco/vine/android/UsersFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lco/vine/android/UsersFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onCreate(Landroid/os/Bundle;)V
iget-object v0, p0, Lco/vine/android/UsersFragment;->mHelper:Lco/vine/android/widget/UsersMemoryAdapterHelper;
invoke-virtual {p0}, Lco/vine/android/UsersFragment;->getArguments()Landroid/os/Bundle;
move-result-object v1
iget-boolean v2, p0, Lco/vine/android/UsersFragment;->mRefreshable:Z
invoke-virtual {v0, v1, p1, v2}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->onCreate(Landroid/os/Bundle;Landroid/os/Bundle;Z)V
const-string v1, " - Lco/vine/android/UsersFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/UsersFragment; onListItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/UsersFragment;->mHelper:Lco/vine/android/widget/UsersMemoryAdapterHelper;
invoke-virtual {v0, p4, p5}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->onListItemClick(J)V
const-string v1, " - Lco/vine/android/UsersFragment; onListItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lco/vine/android/UsersFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lco/vine/android/BaseArrayListFragment;->onResume()V
iget-object v0, p0, Lco/vine/android/UsersFragment;->mHelper:Lco/vine/android/widget/UsersMemoryAdapterHelper;
invoke-virtual {v0}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->onResume()V
const-string v1, " - Lco/vine/android/UsersFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lco/vine/android/UsersFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lco/vine/android/BaseArrayListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lco/vine/android/UsersFragment;->mHelper:Lco/vine/android/widget/UsersMemoryAdapterHelper;
invoke-virtual {v0, p1}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v1, " - Lco/vine/android/UsersFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onScroll(Landroid/widget/AbsListView;III)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/UsersFragment; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/UsersFragment;->mHelper:Lco/vine/android/widget/UsersMemoryAdapterHelper;
iget-object v1, p0, Lco/vine/android/UsersFragment;->mListState:Lco/vine/android/ListState;
invoke-virtual {v0, v1, p2, p3, p4}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->onScroll(Lco/vine/android/ListState;III)V
const-string v1, " - Lco/vine/android/UsersFragment; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected refresh()V
.registers 2
iget-object v0, p0, Lco/vine/android/UsersFragment;->mHelper:Lco/vine/android/widget/UsersMemoryAdapterHelper;
invoke-virtual {v0}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->refresh()V
return-void
.end method