.class public Lcom/umeng/fb/FeedbackAgent;
.super Ljava/lang/Object;
.source "FeedbackAgent.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/umeng/fb/model/Store;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/umeng/fb/FeedbackAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/FeedbackAgent;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/fb/FeedbackAgent;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/umeng/fb/FeedbackAgent;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/fb/model/Store;->getInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/FeedbackAgent;->c:Lcom/umeng/fb/model/Store;

    return-void
.end method

.method static synthetic a(Lcom/umeng/fb/FeedbackAgent;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/umeng/fb/FeedbackAgent;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/fb/FeedbackAgent;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/umeng/fb/FeedbackAgent;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/umeng/fb/FeedbackAgent;->b:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/umeng/fb/FeedbackAgent;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/fb/FeedbackAgent;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/fb/b/e;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/umeng/fb/FeedbackAgent;->b:Landroid/content/Context;

    const-class v4, Lcom/umeng/fb/ConversationActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/umeng/fb/FeedbackAgent;->b:Landroid/content/Context;

    invoke-static {v3, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/umeng/fb/FeedbackAgent;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/umeng/fb/FeedbackAgent;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/fb/b/b;->c(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public getAllConversationIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/fb/FeedbackAgent;->c:Lcom/umeng/fb/model/Store;

    invoke-virtual {v0}, Lcom/umeng/fb/model/Store;->getAllConversationIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConversationById(Ljava/lang/String;)Lcom/umeng/fb/model/Conversation;
    .registers 3

    iget-object v0, p0, Lcom/umeng/fb/FeedbackAgent;->c:Lcom/umeng/fb/model/Store;

    invoke-virtual {v0, p1}, Lcom/umeng/fb/model/Store;->getConversationById(Ljava/lang/String;)Lcom/umeng/fb/model/Conversation;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultConversation()Lcom/umeng/fb/model/Conversation;
    .registers 5

    invoke-virtual {p0}, Lcom/umeng/fb/FeedbackAgent;->getAllConversationIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1d

    :cond_d
    sget-object v0, Lcom/umeng/fb/FeedbackAgent;->a:Ljava/lang/String;

    const-string/jumbo v1, "getDefaultConversation: No conversation saved locally. Create a new one."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/umeng/fb/model/Conversation;

    iget-object v1, p0, Lcom/umeng/fb/FeedbackAgent;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/fb/model/Conversation;-><init>(Landroid/content/Context;)V

    :goto_1c
    return-object v0

    :cond_1d
    sget-object v1, Lcom/umeng/fb/FeedbackAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getDefaultConversation: There are "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " saved locally, use the first one by default."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/umeng/fb/FeedbackAgent;->getConversationById(Ljava/lang/String;)Lcom/umeng/fb/model/Conversation;

    move-result-object v0

    goto :goto_1c
.end method

.method public getUserInfo()Lcom/umeng/fb/model/UserInfo;
    .registers 2

    iget-object v0, p0, Lcom/umeng/fb/FeedbackAgent;->c:Lcom/umeng/fb/model/Store;

    invoke-virtual {v0}, Lcom/umeng/fb/model/Store;->getUserInfo()Lcom/umeng/fb/model/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfoLastUpdateAt()J
    .registers 3

    iget-object v0, p0, Lcom/umeng/fb/FeedbackAgent;->c:Lcom/umeng/fb/model/Store;

    invoke-virtual {v0}, Lcom/umeng/fb/model/Store;->getUserInfoLastUpdateAt()J

    move-result-wide v0

    return-wide v0
.end method

.method public setUserInfo(Lcom/umeng/fb/model/UserInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/umeng/fb/FeedbackAgent;->c:Lcom/umeng/fb/model/Store;

    invoke-virtual {v0, p1}, Lcom/umeng/fb/model/Store;->saveUserInfo(Lcom/umeng/fb/model/UserInfo;)V

    return-void
.end method

.method public startFeedbackActivity()V
    .registers 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/umeng/fb/FeedbackAgent;->b:Landroid/content/Context;

    const-class v2, Lcom/umeng/fb/ConversationActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/umeng/fb/FeedbackAgent;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public sync()V
    .registers 3

    new-instance v0, Lcom/umeng/fb/k;

    invoke-direct {v0, p0}, Lcom/umeng/fb/k;-><init>(Lcom/umeng/fb/FeedbackAgent;)V

    invoke-virtual {p0}, Lcom/umeng/fb/FeedbackAgent;->getDefaultConversation()Lcom/umeng/fb/model/Conversation;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/fb/model/Conversation;->sync(Lcom/umeng/fb/model/Conversation$SyncListener;)V

    return-void
.end method
