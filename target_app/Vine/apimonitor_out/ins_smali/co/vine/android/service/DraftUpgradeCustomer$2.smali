.class  Lco/vine/android/service/DraftUpgradeCustomer$2;
.super Ljava/lang/Object;
.source "DraftUpgradeCustomer.java"
.implements Landroid/content/ServiceConnection;
.field final synthetic this$0:Lco/vine/android/service/DraftUpgradeCustomer;
.method constructor <init>(Lco/vine/android/service/DraftUpgradeCustomer;)V
.registers 2
iput-object p1, p0, Lco/vine/android/service/DraftUpgradeCustomer$2;->this$0:Lco/vine/android/service/DraftUpgradeCustomer;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/service/DraftUpgradeCustomer$2; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/service/DraftUpgradeCustomer$2;->this$0:Lco/vine/android/service/DraftUpgradeCustomer;
new-instance v1, Landroid/os/Messenger;
invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
iput-object v1, v0, Lco/vine/android/service/DraftUpgradeCustomer;->mService:Landroid/os/Messenger;
iget-object v0, p0, Lco/vine/android/service/DraftUpgradeCustomer$2;->this$0:Lco/vine/android/service/DraftUpgradeCustomer;
const/4 v1, 0x1
#setter for: Lco/vine/android/service/DraftUpgradeCustomer;->mBound:Z
invoke-static {v0, v1}, Lco/vine/android/service/DraftUpgradeCustomer;->access$102(Lco/vine/android/service/DraftUpgradeCustomer;Z)Z
iget-object v0, p0, Lco/vine/android/service/DraftUpgradeCustomer$2;->this$0:Lco/vine/android/service/DraftUpgradeCustomer;
#getter for: Lco/vine/android/service/DraftUpgradeCustomer;->mIsCountRequested:Z
invoke-static {v0}, Lco/vine/android/service/DraftUpgradeCustomer;->access$200(Lco/vine/android/service/DraftUpgradeCustomer;)Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lco/vine/android/service/DraftUpgradeCustomer$2;->this$0:Lco/vine/android/service/DraftUpgradeCustomer;
invoke-virtual {v0}, Lco/vine/android/service/DraftUpgradeCustomer;->requestCount()V
:cond_1c
const-string v1, " - Lco/vine/android/service/DraftUpgradeCustomer$2; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/service/DraftUpgradeCustomer$2; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/service/DraftUpgradeCustomer$2;->this$0:Lco/vine/android/service/DraftUpgradeCustomer;
const/4 v1, 0x0
iput-object v1, v0, Lco/vine/android/service/DraftUpgradeCustomer;->mService:Landroid/os/Messenger;
iget-object v0, p0, Lco/vine/android/service/DraftUpgradeCustomer$2;->this$0:Lco/vine/android/service/DraftUpgradeCustomer;
const/4 v1, 0x0
#setter for: Lco/vine/android/service/DraftUpgradeCustomer;->mBound:Z
invoke-static {v0, v1}, Lco/vine/android/service/DraftUpgradeCustomer;->access$102(Lco/vine/android/service/DraftUpgradeCustomer;Z)Z
const-string v1, " - Lco/vine/android/service/DraftUpgradeCustomer$2; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method