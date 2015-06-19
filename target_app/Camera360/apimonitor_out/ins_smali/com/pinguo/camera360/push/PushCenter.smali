.class public Lcom/pinguo/camera360/push/PushCenter;
.super Ljava/lang/Object;
.source "PushCenter.java"
.field private static final TAG:Ljava/lang/String; = "newpush"
.field private cm:Landroid/net/ConnectivityManager;
.field private serviceRef:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/push/PushCenter;->serviceRef:Ljava/lang/ref/WeakReference;
iput-object v1, p0, Lcom/pinguo/camera360/push/PushCenter;->cm:Landroid/net/ConnectivityManager;
iput-object p1, p0, Lcom/pinguo/camera360/push/PushCenter;->serviceRef:Ljava/lang/ref/WeakReference;
if-nez p1, :cond_f
iput-object v1, p0, Lcom/pinguo/camera360/push/PushCenter;->cm:Landroid/net/ConnectivityManager;
:cond_e
:goto_e
return-void
:cond_f
invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-eqz v0, :cond_e
const-string/jumbo v1, "connectivity"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/net/ConnectivityManager;
iput-object v1, p0, Lcom/pinguo/camera360/push/PushCenter;->cm:Landroid/net/ConnectivityManager;
goto :goto_e
.end method
.method private dealNotify(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;)I
.registers 9
invoke-virtual {p2}, Lcom/pinguo/camera360/push/PushBean;->getType()I
move-result v1
new-instance v3, Ljava/util/Random;
invoke-direct {v3}, Ljava/util/Random;-><init>()V
const v4, 0x78ffffff
invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I
move-result v0
const-string/jumbo v3, "newpush"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "notifyId: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v3, "newpush"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "pushType: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v2, 0x2
packed-switch v1, :pswitch_data_e8
:goto_40
return v2
:pswitch_41
invoke-static {p1, p2, v0}, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean;->notity(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;I)I
move-result v2
goto :goto_40
:pswitch_46
const-string/jumbo v3, "newpush"
const-string/jumbo v4, "web push"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/push/PushCenter;->network()Z
move-result v3
if-eqz v3, :cond_5e
const/4 v3, 0x2
invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushWeb(I)V
invoke-static {p1, p2, v0}, Lcom/pinguo/camera360/push/business/web/PushWebBean;->notify(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;I)V
const/4 v2, 0x1
goto :goto_40
:cond_5e
const/4 v2, 0x0
goto :goto_40
:pswitch_60
const-string/jumbo v3, "newpush"
const-string/jumbo v4, "dialog push"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/push/PushCenter;->network()Z
move-result v3
if-eqz v3, :cond_78
const/4 v3, 0x3
invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushDialog(I)V
invoke-static {p1, p2, v0}, Lcom/pinguo/camera360/push/business/dialog/PushDialogBean;->notify(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;I)I
move-result v2
goto :goto_40
:cond_78
const/4 v2, 0x2
goto :goto_40
:pswitch_7a
const-string/jumbo v3, "newpush"
const-string/jumbo v4, "activity push"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/push/PushCenter;->network()Z
move-result v3
if-eqz v3, :cond_92
const/4 v3, 0x4
invoke-static {v3}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Push;->pushOpenActivity(I)V
invoke-static {p1, p2, v0}, Lcom/pinguo/camera360/push/business/activity/PushActivityBean;->notify(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;I)I
move-result v2
goto :goto_40
:cond_92
const/4 v2, 0x2
goto :goto_40
:pswitch_94
const-string/jumbo v3, "newpush"
const-string/jumbo v4, "scene push"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/push/PushCenter;->network()Z
move-result v3
if-eqz v3, :cond_a8
invoke-static {p1, p2, v0}, Lcom/pinguo/camera360/push/business/scene/PushSceneBean;->notify(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;I)I
move-result v2
goto :goto_40
:cond_a8
const/4 v2, 0x0
goto :goto_40
:pswitch_aa
const-string/jumbo v3, "newpush"
const-string/jumbo v4, "theme push"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/push/PushCenter;->network()Z
move-result v3
if-eqz v3, :cond_be
invoke-static {p1, p2, v0}, Lcom/pinguo/camera360/push/business/theme/PushThemeBean;->notify(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;I)I
move-result v2
goto :goto_40
:cond_be
const/4 v2, 0x2
goto :goto_40
:pswitch_c0
const-string/jumbo v3, "newpush"
const-string/jumbo v4, "update push"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/pinguo/camera360/push/PushCenter;->network()Z
move-result v3
if-eqz v3, :cond_d5
invoke-static {p1, p2, v0}, Lcom/pinguo/camera360/push/business/update/PushUpdateBean;->notify(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;I)I
move-result v2
goto/16 :goto_40
:cond_d5
const/4 v2, 0x2
goto/16 :goto_40
:pswitch_d8
const-string/jumbo v3, "newpush"
const-string/jumbo v4, "wake up push"
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1, p2, v0}, Lcom/pinguo/camera360/push/business/wakeup/PushWakeUpBean;->notify(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;I)I
move-result v2
goto/16 :goto_40
nop
:pswitch_data_e8
.packed-switch 0x1
:pswitch_41
:pswitch_46
:pswitch_60
:pswitch_7a
:pswitch_94
:pswitch_aa
:pswitch_c0
:pswitch_d8
.end packed-switch
.end method
.method private network()Z
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/push/PushCenter;->cm:Landroid/net/ConnectivityManager;
if-eqz v1, :cond_b
iget-object v1, p0, Lcom/pinguo/camera360/push/PushCenter;->cm:Landroid/net/ConnectivityManager;
invoke-static {v1}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/net/ConnectivityManager;)Z
move-result v0
:cond_b
return v0
.end method
.method public clear()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/push/PushCenter;->serviceRef:Ljava/lang/ref/WeakReference;
iput-object v0, p0, Lcom/pinguo/camera360/push/PushCenter;->cm:Landroid/net/ConnectivityManager;
return-void
.end method
.method public dealPushMessage(Lcom/pinguo/camera360/push/PushBean;)I
.registers 5
const-string/jumbo v1, "newpush"
const-string/jumbo v2, "push center start"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/push/PushCenter;->serviceRef:Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_15
iget-object v1, p0, Lcom/pinguo/camera360/push/PushCenter;->serviceRef:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_17
:cond_15
const/4 v1, 0x0
:goto_16
return v1
:cond_17
iget-object v1, p0, Lcom/pinguo/camera360/push/PushCenter;->serviceRef:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
invoke-direct {p0, v0, p1}, Lcom/pinguo/camera360/push/PushCenter;->dealNotify(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;)I
move-result v1
goto :goto_16
.end method