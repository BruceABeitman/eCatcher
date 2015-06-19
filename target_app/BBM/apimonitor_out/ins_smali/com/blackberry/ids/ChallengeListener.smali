.class  Lcom/blackberry/ids/ChallengeListener;
.super Ljava/lang/Object;
.source "ChallengeListener.java"
.field public static final EXTRA_CHALLENGE_CODE:Ljava/lang/String; = "com.blackberry.ids.EXTRA_CHALLENGE_CODE"
.field public static final EXTRA_NONCE:Ljava/lang/String; = "com.blackberry.ids.EXTRA_NONCE"
.field public static final EXTRA_REQ_TOKEN:Ljava/lang/String; = "com.blackberry.ids.EXTRA_REQ_TOKEN"
.field public static final EXTRA_SERVER_ENTROPY:Ljava/lang/String; = "com.blackberry.ids.EXTRA_SERVER_ENTROPY"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static challengeFailed(Landroid/content/Context;Lcom/blackberry/ids/RequestId;ILjava/lang/String;)V
.registers 7
const-string v0, "ChallengeListener sending CHALLENGE_FAILED request_id=%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "com.blackberry.ids.CHALLENGE_FAILED"
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
.method public static challengeSucceeded(Landroid/content/Context;Lcom/blackberry/ids/RequestId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 11
const-string v0, "ChallengeListener sending CHALLENGE_SUCCEEDED request_id=%s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "com.blackberry.ids.CHALLENGE_SUCCEEDED"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "com.blackberry.ids.REQUEST_ID"
invoke-virtual {p1}, Lcom/blackberry/ids/RequestId;->getRequestId()I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.LEVEL"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.EXTRA_NONCE"
invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.EXTRA_SERVER_ENTROPY"
invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.EXTRA_REQ_TOKEN"
invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.EXTRA_CHALLENGE_CODE"
invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
const-string v1, "com.blackberry.ids.BBMDN"
invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public static start(Landroid/content/Context;Lcom/blackberry/ids/IChallengeCallback;Lcom/blackberry/ids/IFailureCallback;)V
.registers 6
new-instance v0, Lcom/blackberry/ids/ChallengeListener$1;
invoke-direct {v0, p1, p2}, Lcom/blackberry/ids/ChallengeListener$1;-><init>(Lcom/blackberry/ids/IChallengeCallback;Lcom/blackberry/ids/IFailureCallback;)V
new-instance v1, Landroid/content/IntentFilter;
const-string v2, "com.blackberry.ids.CHALLENGE_SUCCEEDED"
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
new-instance v1, Landroid/content/IntentFilter;
const-string v2, "com.blackberry.ids.CHALLENGE_FAILED"
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
const-string v0, "ChallengeListener registered"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method