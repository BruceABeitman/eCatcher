.class public Lcom/lenovo/sharesdk/ShareWrapper;
.super Ljava/lang/Object;
.source "ShareWrapper.java"
.field private static b:Lcom/lenovo/sharesdk/ShareWrapper;
.field  a:Lcom/lenovo/channel/base/IUserListener;
.field private final c:Landroid/content/Context;
.field private final d:Lcom/lenovo/anyshare/sdk/internal/cj;
.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
.registers 13
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->e:Ljava/util/concurrent/atomic/AtomicBoolean;
new-instance v0, Lcom/lenovo/sharesdk/ShareWrapper$1;
invoke-direct {v0, p0}, Lcom/lenovo/sharesdk/ShareWrapper$1;-><init>(Lcom/lenovo/sharesdk/ShareWrapper;)V
iput-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->a:Lcom/lenovo/channel/base/IUserListener;
iput-object p1, p0, Lcom/lenovo/sharesdk/ShareWrapper;->c:Landroid/content/Context;
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->a:Lcom/lenovo/channel/base/IUserListener;
invoke-static {v0}, Lcom/lenovo/sharesdk/ShareManager;->addUserListener(Lcom/lenovo/channel/base/IUserListener;)V
new-instance v2, Lcom/lenovo/sharesdk/ShareWrapper$2;
invoke-direct {v2, p0}, Lcom/lenovo/sharesdk/ShareWrapper$2;-><init>(Lcom/lenovo/sharesdk/ShareWrapper;)V
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cj;
new-instance v3, Lcom/lenovo/tonesdk/ToneSender;
invoke-direct {v3, p1}, Lcom/lenovo/tonesdk/ToneSender;-><init>(Landroid/content/Context;)V
new-instance v4, Lcom/lenovo/tonesdk/ToneReceiver;
invoke-direct {v4}, Lcom/lenovo/tonesdk/ToneReceiver;-><init>()V
move-object v1, p1
move-object v5, p2
move v6, p3
move v7, p4
invoke-direct/range {v0 .. v7}, Lcom/lenovo/anyshare/sdk/internal/cj;-><init>(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/cb;Lcom/lenovo/tonesdk/IToneSender;Lcom/lenovo/tonesdk/IToneReceiver;Ljava/lang/String;IZ)V
iput-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bz$a;->b:Lcom/lenovo/anyshare/sdk/internal/bz$a;
invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/bz$a;)V
const-string/jumbo v0, "SDK.ShareWrapper"
const-string/jumbo v1, "ShareService Created"
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method static synthetic a(Lcom/lenovo/sharesdk/ShareWrapper;)Lcom/lenovo/anyshare/sdk/internal/cj;
.registers 2
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
return-object v0
.end method
.method private a()V
.registers 3
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->a:Lcom/lenovo/channel/base/IUserListener;
invoke-static {v0}, Lcom/lenovo/sharesdk/ShareManager;->removeUserListener(Lcom/lenovo/channel/base/IUserListener;)V
invoke-static {}, Lcom/lenovo/sharesdk/ShareManager;->destroy()V
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bz$a;->a:Lcom/lenovo/anyshare/sdk/internal/bz$a;
invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/bz$a;)V
:goto_f
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cj;->b()Z
move-result v0
if-eqz v0, :cond_28
const-string/jumbo v0, "SDK.ShareWrapper"
const-string/jumbo v1, "destroy: is in switching mode."
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
const-wide/16 v0, 0x32
:try_start_22
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:try_end_25
.catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_26
goto :goto_f
:catch_26
move-exception v0
goto :goto_f
:cond_28
const-string/jumbo v0, "SDK.ShareWrapper"
const-string/jumbo v1, "destroyed"
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method static synthetic b(Lcom/lenovo/sharesdk/ShareWrapper;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->c:Landroid/content/Context;
return-object v0
.end method
.method public static declared-synchronized createInstance(Landroid/content/Context;Ljava/lang/String;IZ)V
.registers 6
const-class v1, Lcom/lenovo/sharesdk/ShareWrapper;
monitor-enter v1
:try_start_3
invoke-static {p0, p1, p2}, Lcom/lenovo/sharesdk/ShareManager;->init(Landroid/content/Context;Ljava/lang/String;I)V
new-instance v0, Lcom/lenovo/sharesdk/ShareWrapper;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/lenovo/sharesdk/ShareWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V
sput-object v0, Lcom/lenovo/sharesdk/ShareWrapper;->b:Lcom/lenovo/sharesdk/ShareWrapper;
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_f
monitor-exit v1
return-void
:catchall_f
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static dataCollection(Landroid/content/Context;)V
.registers 3
const-string/jumbo v0, "SDK.ShareWrapper"
const-string/jumbo v1, "dispatch data collection!"
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0}, Lcom/lenovo/sharesdk/ShareManager;->a(Landroid/content/Context;)V
invoke-static {}, Lcom/lenovo/sharesdk/ShareManager;->a()V
return-void
.end method
.method public static declared-synchronized destroyInstance()V
.registers 2
const-class v1, Lcom/lenovo/sharesdk/ShareWrapper;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/lenovo/sharesdk/ShareWrapper;->b:Lcom/lenovo/sharesdk/ShareWrapper;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
sget-object v0, Lcom/lenovo/sharesdk/ShareWrapper;->b:Lcom/lenovo/sharesdk/ShareWrapper;
invoke-direct {v0}, Lcom/lenovo/sharesdk/ShareWrapper;->a()V
const/4 v0, 0x0
sput-object v0, Lcom/lenovo/sharesdk/ShareWrapper;->b:Lcom/lenovo/sharesdk/ShareWrapper;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-void
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized getInstance()Lcom/lenovo/sharesdk/ShareWrapper;
.registers 2
const-class v0, Lcom/lenovo/sharesdk/ShareWrapper;
monitor-enter v0
:try_start_3
sget-object v1, Lcom/lenovo/sharesdk/ShareWrapper;->b:Lcom/lenovo/sharesdk/ShareWrapper;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_7
monitor-exit v0
return-object v1
:catchall_7
move-exception v1
monitor-exit v0
throw v1
.end method
.method public acceptUser(Ljava/lang/String;Z)V
.registers 3
invoke-static {p1, p2}, Lcom/lenovo/sharesdk/ShareManager;->acceptUser(Ljava/lang/String;Z)V
return-void
.end method
.method public addClientToneListener(Lcom/lenovo/network/base/IApClientToneListener;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/network/base/IApClientToneListener;)V
return-void
.end method
.method public addNetworkStatusListener(Lcom/lenovo/network/base/INetworkStatusListener;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/network/base/INetworkStatusListener;)V
return-void
.end method
.method public addReceiveListener(Lcom/lenovo/channel/base/IShareReceiveListener;)V
.registers 2
invoke-static {p1}, Lcom/lenovo/sharesdk/ShareManager;->addRecieveListener(Lcom/lenovo/channel/base/IShareReceiveListener;)V
return-void
.end method
.method public addSendListener(Lcom/lenovo/channel/base/IShareSendListener;)V
.registers 2
invoke-static {p1}, Lcom/lenovo/sharesdk/ShareManager;->addSendListener(Lcom/lenovo/channel/base/IShareSendListener;)V
return-void
.end method
.method public addUserListener(Lcom/lenovo/channel/base/IUserListener;)V
.registers 2
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/i;->a(Lcom/lenovo/channel/base/IUserListener;)V
return-void
.end method
.method public cancelShareRecord(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-static {p1, p2}, Lcom/lenovo/sharesdk/ShareManager;->cancelShareRecord(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public connect(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Ljava/lang/String;)Lcom/lenovo/network/base/Device;
return-void
.end method
.method public createCollectionShareRecord(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
.registers 4
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->c:Landroid/content/Context;
invoke-static {v0, p1, p2}, Lcom/lenovo/sharesdk/ShareManager;->createCollectionShareRecord(Landroid/content/Context;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
move-result-object v0
return-object v0
.end method
.method public createShareRecords(Ljava/util/List;)Ljava/util/List;
.registers 3
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->c:Landroid/content/Context;
invoke-static {v0, p1}, Lcom/lenovo/sharesdk/ShareManager;->createShareRecords(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public disconnect()V
.registers 2
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cj;->v()V
return-void
.end method
.method public enableToneReceiver(Z)V
.registers 3
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/cj;->b(Z)V
return-void
.end method
.method public enableToneSender(Z)V
.registers 3
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Z)V
return-void
.end method
.method public getLocalUser()Lcom/lenovo/channel/base/UserInfo;
.registers 2
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->a()Lcom/lenovo/channel/base/UserInfo;
move-result-object v0
return-object v0
.end method
.method public getSelfSsid()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cj;->d()Lcom/lenovo/network/base/Device;
move-result-object v0
invoke-virtual {v0}, Lcom/lenovo/network/base/Device;->getId()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getServerSsid()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cj;->c()Lcom/lenovo/network/base/Device;
move-result-object v0
invoke-virtual {v0}, Lcom/lenovo/network/base/Device;->getId()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getServerUserId()Ljava/lang/String;
.registers 4
const/4 v2, 0x0
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_18
const/4 v1, 0x1
:goto_c
invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/lenovo/channel/base/UserInfo;
iget-object v1, v1, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
return-object v1
:cond_18
move v1, v2
goto :goto_c
.end method
.method public getServerUserName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cj;->c()Lcom/lenovo/network/base/Device;
move-result-object v0
invoke-virtual {v0}, Lcom/lenovo/network/base/Device;->getNickname()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getUser(Ljava/lang/String;)Lcom/lenovo/channel/base/UserInfo;
.registers 3
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/i;->b(Ljava/lang/String;)Lcom/lenovo/channel/base/UserInfo;
move-result-object v0
return-object v0
.end method
.method public isConnected()Z
.registers 2
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public isHostEnabled()Z
.registers 2
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cj;->u()Z
move-result v0
return v0
.end method
.method public isSupportAP()Z
.registers 2
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->a()Z
move-result v0
return v0
.end method
.method public listOnlineUsers()Ljava/util/List;
.registers 2
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->c()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/lenovo/sharesdk/ShareWrapper; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string/jumbo v0, "Pause"
invoke-static {v0}, Lcom/lenovo/sharesdk/ShareManager;->a(Ljava/lang/String;)V
const-string v1, " - Lcom/lenovo/sharesdk/ShareWrapper; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/lenovo/sharesdk/ShareWrapper; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string/jumbo v0, "Resume"
invoke-static {v0}, Lcom/lenovo/sharesdk/ShareManager;->a(Ljava/lang/String;)V
const-string v1, " - Lcom/lenovo/sharesdk/ShareWrapper; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public pause()V
.registers 2
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cj;->e()V
return-void
.end method
.method public removeClientToneListener(Lcom/lenovo/network/base/IApClientToneListener;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/cj;->b(Lcom/lenovo/network/base/IApClientToneListener;)V
return-void
.end method
.method public removeNetworkStatusListener(Lcom/lenovo/network/base/INetworkStatusListener;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/cj;->b(Lcom/lenovo/network/base/INetworkStatusListener;)V
return-void
.end method
.method public removeReceiveListener(Lcom/lenovo/channel/base/IShareReceiveListener;)V
.registers 2
invoke-static {p1}, Lcom/lenovo/sharesdk/ShareManager;->removeRecieveListener(Lcom/lenovo/channel/base/IShareReceiveListener;)V
return-void
.end method
.method public removeSendListener(Lcom/lenovo/channel/base/IShareSendListener;)V
.registers 2
invoke-static {p1}, Lcom/lenovo/sharesdk/ShareManager;->removeSendListener(Lcom/lenovo/channel/base/IShareSendListener;)V
return-void
.end method
.method public removeUserListener(Lcom/lenovo/channel/base/IUserListener;)V
.registers 2
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/i;->b(Lcom/lenovo/channel/base/IUserListener;)V
return-void
.end method
.method public resume()V
.registers 2
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cj;->f()V
return-void
.end method
.method public sendCollection(Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;Ljava/lang/String;)V
.registers 3
invoke-static {p1, p2}, Lcom/lenovo/sharesdk/ShareManager;->sendCollection(Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;Ljava/lang/String;)V
return-void
.end method
.method public sendItems(Ljava/util/List;Ljava/lang/String;)V
.registers 3
invoke-static {p1, p2}, Lcom/lenovo/sharesdk/ShareManager;->sendItems(Ljava/util/List;Ljava/lang/String;)V
return-void
.end method
.method public setConfigParams(II)V
.registers 3
invoke-static {p1, p2}, Lcom/lenovo/sharesdk/ShareManager;->setConfigParams(II)V
return-void
.end method
.method public setLocalUser(Ljava/lang/String;I)V
.registers 4
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0, p1, p2}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Ljava/lang/String;I)V
invoke-static {p1, p2}, Lcom/lenovo/sharesdk/ShareManager;->setLocalUser(Ljava/lang/String;I)V
return-void
.end method
.method public setRemoteFileStore(Lcom/lenovo/channel/base/IRemoteFileStore;)V
.registers 2
invoke-static {p1}, Lcom/lenovo/sharesdk/ShareManager;->setRemoteFileStore(Lcom/lenovo/channel/base/IRemoteFileStore;)V
return-void
.end method
.method public startClient(Z)V
.registers 4
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->e:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Z)V
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->e:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/cj;->e(Z)V
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bz$a;->c:Lcom/lenovo/anyshare/sdk/internal/bz$a;
invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/bz$a;)V
return-void
.end method
.method public startHost(Z)V
.registers 4
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
invoke-virtual {v0, p1}, Lcom/lenovo/anyshare/sdk/internal/cj;->e(Z)V
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bz$a;->d:Lcom/lenovo/anyshare/sdk/internal/bz$a;
invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/bz$a;)V
return-void
.end method
.method public stopClient()V
.registers 3
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->e:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->e:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bz$a;->b:Lcom/lenovo/anyshare/sdk/internal/bz$a;
invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/bz$a;)V
return-void
.end method
.method public stopHost()V
.registers 3
iget-object v0, p0, Lcom/lenovo/sharesdk/ShareWrapper;->d:Lcom/lenovo/anyshare/sdk/internal/cj;
sget-object v1, Lcom/lenovo/anyshare/sdk/internal/bz$a;->b:Lcom/lenovo/anyshare/sdk/internal/bz$a;
invoke-virtual {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cj;->a(Lcom/lenovo/anyshare/sdk/internal/bz$a;)V
return-void
.end method