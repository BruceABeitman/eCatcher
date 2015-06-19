.class public Lco/vine/android/SupportListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SupportListActivity.java"
.field protected mAdapter:Landroid/widget/ListAdapter;
.field private mFinishedStart:Z
.field private mHandler:Landroid/os/Handler;
.field protected mList:Landroid/widget/ListView;
.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;
.field private mRequestFocus:Ljava/lang/Runnable;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lco/vine/android/SupportListActivity;->mHandler:Landroid/os/Handler;
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/SupportListActivity;->mFinishedStart:Z
new-instance v0, Lco/vine/android/SupportListActivity$1;
invoke-direct {v0, p0}, Lco/vine/android/SupportListActivity$1;-><init>(Lco/vine/android/SupportListActivity;)V
iput-object v0, p0, Lco/vine/android/SupportListActivity;->mRequestFocus:Ljava/lang/Runnable;
new-instance v0, Lco/vine/android/SupportListActivity$2;
invoke-direct {v0, p0}, Lco/vine/android/SupportListActivity$2;-><init>(Lco/vine/android/SupportListActivity;)V
iput-object v0, p0, Lco/vine/android/SupportListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;
return-void
.end method
.method private ensureList()V
.registers 2
iget-object v0, p0, Lco/vine/android/SupportListActivity;->mList:Landroid/widget/ListView;
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
const v0, 0x1090014
invoke-virtual {p0, v0}, Lco/vine/android/SupportListActivity;->setContentView(I)V
goto :goto_4
.end method
.method public getListAdapter()Landroid/widget/ListAdapter;
.registers 2
iget-object v0, p0, Lco/vine/android/SupportListActivity;->mAdapter:Landroid/widget/ListAdapter;
return-object v0
.end method
.method public getListView()Landroid/widget/ListView;
.registers 2
invoke-direct {p0}, Lco/vine/android/SupportListActivity;->ensureList()V
iget-object v0, p0, Lco/vine/android/SupportListActivity;->mList:Landroid/widget/ListView;
return-object v0
.end method
.method public getSelectedItemId()J
.registers 3
iget-object v0, p0, Lco/vine/android/SupportListActivity;->mList:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J
move-result-wide v0
return-wide v0
.end method
.method public getSelectedItemPosition()I
.registers 2
iget-object v0, p0, Lco/vine/android/SupportListActivity;->mList:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I
move-result v0
return v0
.end method
.method public onContentChanged()V
.registers 4
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onContentChanged()V
const v1, 0x1020004
invoke-virtual {p0, v1}, Lco/vine/android/SupportListActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
const v1, 0x102000a
invoke-virtual {p0, v1}, Lco/vine/android/SupportListActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ListView;
iput-object v1, p0, Lco/vine/android/SupportListActivity;->mList:Landroid/widget/ListView;
iget-object v1, p0, Lco/vine/android/SupportListActivity;->mList:Landroid/widget/ListView;
if-nez v1, :cond_21
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"
invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:cond_21
if-eqz v0, :cond_28
iget-object v1, p0, Lco/vine/android/SupportListActivity;->mList:Landroid/widget/ListView;
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
:cond_28
iget-object v1, p0, Lco/vine/android/SupportListActivity;->mList:Landroid/widget/ListView;
iget-object v2, p0, Lco/vine/android/SupportListActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-boolean v1, p0, Lco/vine/android/SupportListActivity;->mFinishedStart:Z
if-eqz v1, :cond_38
iget-object v1, p0, Lco/vine/android/SupportListActivity;->mAdapter:Landroid/widget/ListAdapter;
invoke-virtual {p0, v1}, Lco/vine/android/SupportListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V
:cond_38
iget-object v1, p0, Lco/vine/android/SupportListActivity;->mHandler:Landroid/os/Handler;
iget-object v2, p0, Lco/vine/android/SupportListActivity;->mRequestFocus:Ljava/lang/Runnable;
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
const/4 v1, 0x1
iput-boolean v1, p0, Lco/vine/android/SupportListActivity;->mFinishedStart:Z
return-void
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lco/vine/android/SupportListActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/SupportListActivity;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lco/vine/android/SupportListActivity;->mRequestFocus:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V
const-string v1, " - Lco/vine/android/SupportListActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/SupportListActivity; onListItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lco/vine/android/SupportListActivity; onListItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lco/vine/android/SupportListActivity; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
.parameter
.end parameter
invoke-direct {p0}, Lco/vine/android/SupportListActivity;->ensureList()V
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V
const-string v1, " - Lco/vine/android/SupportListActivity; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public setListAdapter(Landroid/widget/ListAdapter;)V
.registers 3
monitor-enter p0
:try_start_1
invoke-direct {p0}, Lco/vine/android/SupportListActivity;->ensureList()V
iput-object p1, p0, Lco/vine/android/SupportListActivity;->mAdapter:Landroid/widget/ListAdapter;
iget-object v0, p0, Lco/vine/android/SupportListActivity;->mList:Landroid/widget/ListView;
invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
monitor-exit p0
return-void
:catchall_d
move-exception v0
monitor-exit p0
:try_end_f
.catchall {:try_start_1 .. :try_end_f} :catchall_d
throw v0
.end method
.method public setSelection(I)V
.registers 3
iget-object v0, p0, Lco/vine/android/SupportListActivity;->mList:Landroid/widget/ListView;
invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V
return-void
.end method