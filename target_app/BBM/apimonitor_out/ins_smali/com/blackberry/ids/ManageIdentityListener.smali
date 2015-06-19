.class  Lcom/blackberry/ids/ManageIdentityListener;
.super Ljava/lang/Object;
.source "ManageIdentityListener.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static manageIdentityFailed(Landroid/content/Context;Lcom/blackberry/ids/RequestId;ILjava/lang/String;)V
.registers 7
const-string v0, "ManageIdentityListener sending MANAGE_IDENTITY_FAILED request_id=%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "com.blackberry.ids.MANAGE_IDENTITY_FAILED"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "com.blackberry.ids.REQUEST_ID"
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.RESULT"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.INFO"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public static manageIdentitySucceeded(Landroid/content/Context;Lcom/blackberry/ids/RequestId;I)V
.registers 6
const-string v0, "ManageIdentityListener sending MANAGE_IDENTITY_SUCCEEDED request_id=%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "com.blackberry.ids.MANAGE_IDENTITY_SUCCEEDED"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "com.blackberry.ids.REQUEST_ID"
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.LEVEL"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public static start(Landroid/content/Context;Lcom/blackberry/ids/IManageIdentityCallback;Lcom/blackberry/ids/IFailureCallback;Ljava/lang/Runnable;)V
.registers 7
new-instance v0, Lcom/blackberry/ids/ManageIdentityListener$1;
invoke-direct {v0, p1, p3, p2}, Lcom/blackberry/ids/ManageIdentityListener$1;-><init>(Lcom/blackberry/ids/IManageIdentityCallback;Ljava/lang/Runnable;Lcom/blackberry/ids/IFailureCallback;)V
new-instance v1, Landroid/content/IntentFilter;
const-string v2, "com.blackberry.ids.MANAGE_IDENTITY_SUCCEEDED"
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
new-instance v1, Landroid/content/IntentFilter;
const-string v2, "com.blackberry.ids.MANAGE_IDENTITY_FAILED"
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
const-string v0, "ManageIdentityListener registered"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method