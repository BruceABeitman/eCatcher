.class Lco/vine/android/ConversationActivity$ConversationSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversationSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ConversationActivity;


# direct methods
.method private constructor <init>(Lco/vine/android/ConversationActivity;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/ConversationActivity;Lco/vine/android/ConversationActivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/ConversationActivity$ConversationSessionListener;-><init>(Lco/vine/android/ConversationActivity;)V

    return-void
.end method

.method private showTypingIndicator(ZJ)V
    .registers 6

    iget-object v0, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    new-instance v1, Lco/vine/android/ConversationActivity$ConversationSessionListener$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lco/vine/android/ConversationActivity$ConversationSessionListener$1;-><init>(Lco/vine/android/ConversationActivity$ConversationSessionListener;ZJ)V

    invoke-virtual {v0, v1}, Lco/vine/android/ConversationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 8

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1e

    iget-object v0, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    #getter for: Lco/vine/android/ConversationActivity;->mDirectUserId:J
    invoke-static {v0}, Lco/vine/android/ConversationActivity;->access$1100(Lco/vine/android/ConversationActivity;)J

    move-result-wide v0

    cmp-long v0, v0, p4

    if-nez v0, :cond_1e

    iget-object v0, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    iget-object v0, v0, Lco/vine/android/ConversationActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    iget-object v0, v0, Lco/vine/android/ConversationActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0a0241

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    :cond_1e
    return-void
.end method

.method public onGetConversationRemoteIdComplete(J)V
    .registers 7

    iget-object v0, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    #setter for: Lco/vine/android/ConversationActivity;->mConversationId:J
    invoke-static {v0, p1, p2}, Lco/vine/android/ConversationActivity;->access$902(Lco/vine/android/ConversationActivity;J)J

    iget-object v0, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    #calls: Lco/vine/android/ConversationActivity;->clientIsActive()Z
    invoke-static {v0}, Lco/vine/android/ConversationActivity;->access$1000(Lco/vine/android/ConversationActivity;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string v0, "ConvActivity;RTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscribing to conversation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    #getter for: Lco/vine/android/ConversationActivity;->mConversationId:J
    invoke-static {v2}, Lco/vine/android/ConversationActivity;->access$900(Lco/vine/android/ConversationActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    #getter for: Lco/vine/android/ConversationActivity;->mClient:Lco/vine/android/VineWebSocketClient;
    invoke-static {v0}, Lco/vine/android/ConversationActivity;->access$200(Lco/vine/android/ConversationActivity;)Lco/vine/android/VineWebSocketClient;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    #getter for: Lco/vine/android/ConversationActivity;->mConversationId:J
    invoke-static {v1}, Lco/vine/android/ConversationActivity;->access$900(Lco/vine/android/ConversationActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lco/vine/android/VineWebSocketClient;->subscribeConversation(J)V

    :cond_3a
    return-void
.end method

.method public onReceiveRTCMessage(Ljava/util/ArrayList;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineRTCConversation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lco/vine/android/api/VineRTCConversation;

    iget-wide v3, v11, Lco/vine/android/api/VineRTCConversation;->conversationId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    #getter for: Lco/vine/android/ConversationActivity;->mConversationId:J
    invoke-static {v5}, Lco/vine/android/ConversationActivity;->access$900(Lco/vine/android/ConversationActivity;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    iget-object v0, v11, Lco/vine/android/api/VineRTCConversation;->participants:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_26
    :goto_26
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lco/vine/android/api/VineRTCParticipant;

    move-object/from16 v0, v17

    iget-wide v0, v0, Lco/vine/android/api/VineRTCParticipant;->userId:J

    move-wide/from16 v19, v0

    move-object/from16 v0, v17

    iget-boolean v3, v0, Lco/vine/android/api/VineRTCParticipant;->isTyping:Z

    if-eqz v3, :cond_92

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v3, v1, v2}, Lco/vine/android/ConversationActivity$ConversationSessionListener;->showTypingIndicator(ZJ)V

    :goto_46
    move-object/from16 v0, v17

    iget-wide v15, v0, Lco/vine/android/api/VineRTCParticipant;->lastMessageId:J

    const-wide/16 v3, 0x0

    cmp-long v3, v15, v3

    if-lez v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    #getter for: Lco/vine/android/ConversationActivity;->mLastMessageId:J
    invoke-static {v3}, Lco/vine/android/ConversationActivity;->access$1200(Lco/vine/android/ConversationActivity;)J

    move-result-wide v3

    cmp-long v3, v15, v3

    if-lez v3, :cond_89

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    iget-object v3, v3, Lco/vine/android/ConversationActivity;->mAppController:Lco/vine/android/client/AppController;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    #getter for: Lco/vine/android/ConversationActivity;->mConversationRowId:J
    invoke-static {v8}, Lco/vine/android/ConversationActivity;->access$1300(Lco/vine/android/ConversationActivity;)J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lco/vine/android/client/AppController;->fetchConversation(IZJJZ)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    invoke-virtual {v3}, Lco/vine/android/ConversationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "conversationFragment"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v12

    instance-of v3, v12, Lco/vine/android/ConversationFragment;

    if-eqz v3, :cond_89

    check-cast v12, Lco/vine/android/ConversationFragment;

    invoke-virtual {v12}, Lco/vine/android/ConversationFragment;->onNewMessage()V

    :cond_89
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    move-wide v0, v15

    #setter for: Lco/vine/android/ConversationActivity;->mLastMessageId:J
    invoke-static {v3, v0, v1}, Lco/vine/android/ConversationActivity;->access$1202(Lco/vine/android/ConversationActivity;J)J

    goto :goto_26

    :cond_92
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v3, v1, v2}, Lco/vine/android/ConversationActivity$ConversationSessionListener;->showTypingIndicator(ZJ)V

    goto :goto_46

    :cond_9b
    return-void
.end method

.method public onWebSocketConnectComplete()V
    .registers 5

    iget-object v0, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    #getter for: Lco/vine/android/ConversationActivity;->mConversationId:J
    invoke-static {v0}, Lco/vine/android/ConversationActivity;->access$900(Lco/vine/android/ConversationActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_39

    const-string v0, "ConvActivity;RTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subscribing to conversation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    #getter for: Lco/vine/android/ConversationActivity;->mConversationId:J
    invoke-static {v2}, Lco/vine/android/ConversationActivity;->access$900(Lco/vine/android/ConversationActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    #getter for: Lco/vine/android/ConversationActivity;->mClient:Lco/vine/android/VineWebSocketClient;
    invoke-static {v0}, Lco/vine/android/ConversationActivity;->access$200(Lco/vine/android/ConversationActivity;)Lco/vine/android/VineWebSocketClient;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    #getter for: Lco/vine/android/ConversationActivity;->mConversationId:J
    invoke-static {v1}, Lco/vine/android/ConversationActivity;->access$900(Lco/vine/android/ConversationActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lco/vine/android/VineWebSocketClient;->subscribeConversation(J)V

    :cond_39
    return-void
.end method

.method public onWebSocketDisconnected()V
    .registers 4

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lco/vine/android/ConversationActivity$ConversationSessionListener;->showTypingIndicator(ZJ)V

    iget-object v0, p0, Lco/vine/android/ConversationActivity$ConversationSessionListener;->this$0:Lco/vine/android/ConversationActivity;

    #calls: Lco/vine/android/ConversationActivity;->reconnectWithBackoff()V
    invoke-static {v0}, Lco/vine/android/ConversationActivity;->access$600(Lco/vine/android/ConversationActivity;)V

    return-void
.end method
