.class  Lco/vine/android/ConversationActivity$RealTimeChatReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConversationActivity.java"
.field final synthetic this$0:Lco/vine/android/ConversationActivity;
.method private constructor <init>(Lco/vine/android/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/ConversationActivity$RealTimeChatReceiver;->this$0:Lco/vine/android/ConversationActivity;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lco/vine/android/ConversationActivity;Lco/vine/android/ConversationActivity$1;)V
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/ConversationActivity$RealTimeChatReceiver;-><init>(Lco/vine/android/ConversationActivity;)V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 11
const-wide/16 v6, 0x0
const-string v4, "co.vine.android.service.mergeSelfNewMessage"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_33
const-string v4, "message_id"
invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v2
const-string v4, "conversation_id"
invoke-virtual {p2, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v0
cmp-long v4, v2, v6
if-lez v4, :cond_33
cmp-long v4, v0, v6
if-lez v4, :cond_33
iget-object v4, p0, Lco/vine/android/ConversationActivity$RealTimeChatReceiver;->this$0:Lco/vine/android/ConversationActivity;
#getter for: Lco/vine/android/ConversationActivity;->mClient:Lco/vine/android/VineWebSocketClient;
invoke-static {v4}, Lco/vine/android/ConversationActivity;->access$200(Lco/vine/android/ConversationActivity;)Lco/vine/android/VineWebSocketClient;
move-result-object v4
if-eqz v4, :cond_33
iget-object v4, p0, Lco/vine/android/ConversationActivity$RealTimeChatReceiver;->this$0:Lco/vine/android/ConversationActivity;
#getter for: Lco/vine/android/ConversationActivity;->mClient:Lco/vine/android/VineWebSocketClient;
invoke-static {v4}, Lco/vine/android/ConversationActivity;->access$200(Lco/vine/android/ConversationActivity;)Lco/vine/android/VineWebSocketClient;
move-result-object v4
invoke-virtual {v4, v0, v1, v2, v3}, Lco/vine/android/VineWebSocketClient;->alertNewPrivateMessage(JJ)V
:cond_33
return-void
.end method