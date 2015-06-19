.class public Lco/vine/android/client/RealTimeChatController;
.super Ljava/lang/Object;
.source "RealTimeChatController.java"

# interfaces
.implements Lco/vine/android/service/VineServiceConnection$ServiceResponseHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "RTCController"

.field private static sInstance:Lco/vine/android/client/RealTimeChatController;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/client/AppSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceConnection:Lco/vine/android/service/VineServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lco/vine/android/service/VineServiceConnection;

    invoke-direct {v0, p1, p0}, Lco/vine/android/service/VineServiceConnection;-><init>(Landroid/content/Context;Lco/vine/android/service/VineServiceConnection$ServiceResponseHandler;)V

    iput-object v0, p0, Lco/vine/android/client/RealTimeChatController;->mServiceConnection:Lco/vine/android/service/VineServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lco/vine/android/service/RealTimeChatService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lco/vine/android/client/RealTimeChatController;->mServiceConnection:Lco/vine/android/service/VineServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/client/RealTimeChatController;->mListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lco/vine/android/client/RealTimeChatController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createServiceBundle()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    :try_start_6
    invoke-direct {p0, v2}, Lco/vine/android/client/RealTimeChatController;->getActiveSession(Z)Lco/vine/android/client/Session;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lco/vine/android/client/RealTimeChatController;->injectServiceBundle(Landroid/os/Bundle;Lco/vine/android/client/Session;)Landroid/os/Bundle;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_f

    move-result-object v0

    :goto_e
    return-object v0

    :catch_f
    move-exception v1

    const-string v2, "Failed to get active session."

    invoke-static {v2}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V

    goto :goto_e
.end method

.method private executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;
    .registers 5

    const-string v0, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lco/vine/android/client/RealTimeChatController;->mServiceConnection:Lco/vine/android/service/VineServiceConnection;

    invoke-virtual {v0, p1, p2}, Lco/vine/android/service/VineServiceConnection;->queueAndExecute(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getActiveSession(Z)Lco/vine/android/client/Session;
    .registers 3

    iget-object v0, p0, Lco/vine/android/client/RealTimeChatController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lco/vine/android/client/VineAccountHelper;->getActiveSession(Landroid/content/Context;Z)Lco/vine/android/client/Session;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lco/vine/android/client/RealTimeChatController;
    .registers 3

    sget-object v0, Lco/vine/android/client/RealTimeChatController;->sInstance:Lco/vine/android/client/RealTimeChatController;

    if-nez v0, :cond_f

    new-instance v0, Lco/vine/android/client/RealTimeChatController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/vine/android/client/RealTimeChatController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lco/vine/android/client/RealTimeChatController;->sInstance:Lco/vine/android/client/RealTimeChatController;

    :cond_f
    sget-object v0, Lco/vine/android/client/RealTimeChatController;->sInstance:Lco/vine/android/client/RealTimeChatController;

    return-object v0
.end method

.method private injectServiceBundle(Landroid/os/Bundle;Lco/vine/android/client/Session;)Landroid/os/Bundle;
    .registers 6

    const-string v0, "s_key"

    invoke-virtual {p2}, Lco/vine/android/client/Session;->getSessionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "s_owner_id"

    invoke-virtual {p2}, Lco/vine/android/client/Session;->getUserId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "a_name"

    invoke-virtual {p2}, Lco/vine/android/client/Session;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "email"

    invoke-virtual {p2}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public addListener(Lco/vine/android/client/AppSessionListener;)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/client/RealTimeChatController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lco/vine/android/client/RealTimeChatController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method public connectChatService()Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Lco/vine/android/client/RealTimeChatController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respond"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/RealTimeChatController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public disconnect()V
    .registers 4

    const-string v1, "RTCController"

    const-string v2, "RTCController disconnect() hit"

    invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lco/vine/android/client/RealTimeChatController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "respond"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/RealTimeChatController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    return-void
.end method

.method public handleServiceResponse(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    const-string v2, "rid"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/client/RealTimeChatController;->mServiceConnection:Lco/vine/android/service/VineServiceConnection;

    invoke-virtual {v2, v1}, Lco/vine/android/service/VineServiceConnection;->remove(Ljava/lang/String;)Lco/vine/android/service/PendingAction;

    move-result-object v0

    invoke-virtual {p0, p1, p4}, Lco/vine/android/client/RealTimeChatController;->notifyListeners(ILandroid/os/Bundle;)V

    return-void
.end method

.method public notifyListeners(ILandroid/os/Bundle;)V
    .registers 8

    packed-switch p1, :pswitch_data_96

    :cond_3
    :pswitch_3
    return-void

    :pswitch_4
    iget-object v4, p0, Lco/vine/android/client/RealTimeChatController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v3}, Lco/vine/android/client/AppSessionListener;->onWebSocketConnectComplete()V

    goto :goto_a

    :pswitch_1a
    iget-object v4, p0, Lco/vine/android/client/RealTimeChatController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v3}, Lco/vine/android/client/AppSessionListener;->onSubscribeConversationComplete()V

    goto :goto_20

    :pswitch_30
    const-string v4, "is_typing"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v4, p0, Lco/vine/android/client/RealTimeChatController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v3, v2}, Lco/vine/android/client/AppSessionListener;->onUpdateTypingStateComplete(Z)V

    goto :goto_3c

    :pswitch_4c
    iget-object v4, p0, Lco/vine/android/client/RealTimeChatController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v3}, Lco/vine/android/client/AppSessionListener;->onWebSocketDisconnected()V

    goto :goto_52

    :pswitch_62
    iget-object v4, p0, Lco/vine/android/client/RealTimeChatController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    invoke-virtual {v3}, Lco/vine/android/client/AppSessionListener;->onWebSocketError()V

    goto :goto_68

    :pswitch_78
    const-string v4, "data"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lco/vine/android/client/RealTimeChatController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_84
    :goto_84
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/client/AppSessionListener;

    if-eqz v0, :cond_84

    invoke-virtual {v3, v0}, Lco/vine/android/client/AppSessionListener;->onReceiveRTCMessage(Ljava/util/ArrayList;)V

    goto :goto_84

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_1a
        :pswitch_3
        :pswitch_4c
        :pswitch_62
        :pswitch_30
        :pswitch_3
        :pswitch_78
    .end packed-switch
.end method

.method public notifyNewPrivateMessage(JJ)Ljava/lang/String;
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "last_message_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 v1, 0x8

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/RealTimeChatController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public reconnectChatService()Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lco/vine/android/client/RealTimeChatController;->createServiceBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/RealTimeChatController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public removeListener(Lco/vine/android/client/AppSessionListener;)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/client/RealTimeChatController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public subscribeConversation(J)Ljava/lang/String;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/RealTimeChatController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateTypingState(JZ)Ljava/lang/String;
    .registers 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "is_typing"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Lco/vine/android/client/RealTimeChatController;->executeServiceAction(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
