.class public Lcom/pinguo/camera360/lib/devmode/activity/DevModeActivity;
.super Landroid/app/ListActivity;
.source "DevModeActivity.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/pinguo/camera360/lib/devmode/activity/DevModeActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/devmode/activity/DevModeActivity;->getListView()Landroid/widget/ListView;
move-result-object v3
const/4 v0, 0x0
:try_start_8
new-instance v1, Lcom/pinguo/camera360/lib/devmode/activity/DevModeActivity$MyAdapter;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/lib/devmode/activity/DevModeActivity$MyAdapter;-><init>(Landroid/content/Context;)V
:try_start_d
:try_end_d
.catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_15
invoke-virtual {v3, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
:try_end_10
.catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_28
move-object v0, v1
:goto_11
invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
const-string v1, " - Lcom/pinguo/camera360/lib/devmode/activity/DevModeActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_15
move-exception v2
:goto_16
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
new-instance v4, Landroid/widget/TextView;
invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
const-string/jumbo v5, "\u4fe1\u606f\u521d\u59cb\u5316\u5931\u8d25\uff01\uff01"
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
goto :goto_11
:catch_28
move-exception v2
move-object v0, v1
goto :goto_16
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/lib/devmode/activity/DevModeActivity; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;
move-result-object v2
if-nez v2, :cond_7
:goto_6
const-string v1, " - Lcom/pinguo/camera360/lib/devmode/activity/DevModeActivity; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_7
invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/devmode/activity/DevModeActivity$MyAdapter;
new-instance v1, Landroid/content/Intent;
invoke-virtual {v0, p3}, Lcom/pinguo/camera360/lib/devmode/activity/DevModeActivity$MyAdapter;->getItem(I)Ljava/lang/Class;
move-result-object v2
invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/lib/devmode/activity/DevModeActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_6
.end method