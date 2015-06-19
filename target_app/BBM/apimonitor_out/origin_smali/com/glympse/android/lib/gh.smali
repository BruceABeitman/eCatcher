.class Lcom/glympse/android/lib/gh;
.super Ljava/lang/Object;
.source "NotificationCenter.java"

# interfaces
.implements Lcom/glympse/android/lib/GNotificationCenter;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private hE:Lcom/glympse/android/lib/CommonSink;

.field private nr:Lcom/glympse/android/hal/GSharedPreferences;

.field private qG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/glympse/android/hal/HalFactory;->openSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Lcom/glympse/android/hal/GSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/gh;->nr:Lcom/glympse/android/hal/GSharedPreferences;

    new-instance v0, Lcom/glympse/android/lib/CommonSink;

    const-string v1, "Notifications"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/glympse/android/lib/gh;->hE:Lcom/glympse/android/lib/CommonSink;

    const-string v0, "sync_flags_v2"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/gh;->qG:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    const-string v1, "code"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    :goto_11
    return-object v0

    :cond_12
    iget-object v2, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v2, :cond_28

    new-instance v2, Lcom/glympse/android/lib/ej;

    const/4 v3, 0x6

    invoke-direct {v2, v3, v0, v0, v0}, Lcom/glympse/android/lib/ej;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, p2}, Lcom/glympse/android/lib/GInvitePrivate;->setText(Ljava/lang/String;)V

    invoke-interface {v2, p3}, Lcom/glympse/android/lib/GInvitePrivate;->setAddress(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v2}, Lcom/glympse/android/lib/GGlympsePrivate;->decodeInvite(Ljava/lang/String;ILcom/glympse/android/api/GInvite;)Lcom/glympse/android/api/GEventSink;

    :cond_28
    move-object v0, v1

    goto :goto_11
.end method

.method private cs()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->okToPost()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isActive()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTicketProtocol()Lcom/glympse/android/lib/GTicketProtocol;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketProtocol;->refreshInvites()V

    :cond_1e
    iget-object v0, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->doPost()V

    goto :goto_c
.end method

.method private ct()I
    .registers 6

    const-wide/16 v3, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->nr:Lcom/glympse/android/hal/GSharedPreferences;

    iget-object v1, p0, Lcom/glympse/android/lib/gh;->qG:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v4}, Lcom/glympse/android/hal/GSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/glympse/android/lib/gh;->nr:Lcom/glympse/android/hal/GSharedPreferences;

    iget-object v2, p0, Lcom/glympse/android/lib/gh;->qG:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/glympse/android/hal/GSharedPreferences;->putLong(Ljava/lang/String;J)V

    return v0
.end method

.method private g(Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/lib/GUserMessage;
    .registers 13

    const/4 v7, 0x0

    const-string v0, "id"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "data"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    invoke-static {v8}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    if-nez v0, :cond_1f

    :cond_1d
    move-object v0, v7

    :goto_1e
    return-object v0

    :cond_1f
    const-string v1, "t"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "pid"

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "n"

    invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "v"

    invoke-static {v6}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v6

    const-wide/16 v9, 0x0

    cmp-long v0, v9, v1

    if-eqz v0, :cond_51

    if-eqz v5, :cond_51

    if-nez v6, :cond_53

    :cond_51
    move-object v0, v7

    goto :goto_1e

    :cond_53
    new-instance v0, Lcom/glympse/android/lib/at;

    invoke-direct/range {v0 .. v6}, Lcom/glympse/android/lib/at;-><init>(JJLjava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    iget-object v1, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GUserManagerPrivate;

    const/4 v2, 0x1

    invoke-interface {v1, v8, v2}, Lcom/glympse/android/lib/GUserManagerPrivate;->extractFromCache(Ljava/lang/String;Z)Lcom/glympse/android/lib/GUserPrivate;

    move-result-object v2

    if-nez v2, :cond_6d

    move-object v0, v7

    goto :goto_1e

    :cond_6d
    new-instance v1, Lcom/glympse/android/lib/jv;

    invoke-direct {v1, v2, v0}, Lcom/glympse/android/lib/jv;-><init>(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GDataRow;)V

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const v3, 0x10002

    const/16 v4, 0x1000

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    move-object v0, v1

    goto :goto_1e

    :cond_80
    new-instance v2, Lcom/glympse/android/lib/jj;

    invoke-direct {v2}, Lcom/glympse/android/lib/jj;-><init>()V

    invoke-interface {v2, v8}, Lcom/glympse/android/lib/GUserPrivate;->setId(Ljava/lang/String;)V

    new-instance v1, Lcom/glympse/android/lib/jv;

    invoke-direct {v1, v2, v0}, Lcom/glympse/android/lib/jv;-><init>(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GDataRow;)V

    move-object v0, v1

    goto :goto_1e
.end method

.method private h(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/Long;
    .registers 9

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string v1, "flags"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object v0, v2

    :goto_13
    return-object v0

    :cond_14
    const-string v3, ","

    invoke-static {v1, v3}, Lcom/glympse/android/hal/Helpers;->split(Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/hal/GVector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v5

    move v3, v0

    move v1, v0

    :goto_20
    if-ge v3, v5, :cond_4d

    invoke-virtual {v4, v3}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "profile"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    or-int/lit8 v0, v1, 0x1

    :goto_32
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_20

    :cond_37
    const-string v6, "history"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    or-int/lit8 v0, v1, 0x2

    goto :goto_32

    :cond_42
    const-string v6, "linked_accounts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    or-int/lit8 v0, v1, 0x4

    goto :goto_32

    :cond_4d
    if-nez v1, :cond_51

    move-object v0, v2

    goto :goto_13

    :cond_51
    invoke-virtual {p0, v1}, Lcom/glympse/android/lib/gh;->sync(I)V

    int-to-long v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_13

    :cond_5a
    move v0, v1

    goto :goto_32
.end method

.method private i(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
    .registers 6

    const-string v0, "data"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x0

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    iget-object v1, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->isPushEchoingEbabled()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v1

    new-instance v2, Lcom/glympse/android/lib/jm;

    iget-object v3, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {v2, v3, v0}, Lcom/glympse/android/lib/jm;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V

    goto :goto_11
.end method

.method private r(I)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->nr:Lcom/glympse/android/hal/GSharedPreferences;

    iget-object v1, p0, Lcom/glympse/android/lib/gh;->qG:Ljava/lang/String;

    int-to-long v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/hal/GSharedPreferences;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method private s(I)V
    .registers 4

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserManagerPrivate;->getSelf()Lcom/glympse/android/api/GUser;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserManagerPrivate;->refreshUser(Lcom/glympse/android/lib/GUserPrivate;)V

    :cond_15
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getTicketProtocol()Lcom/glympse/android/lib/GTicketProtocol;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketProtocol;->refreshInvites()V

    :cond_22
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLinkedAccountsManager()Lcom/glympse/android/api/GLinkedAccountsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GLinkedAccountsManager;->refresh()Z

    :cond_2f
    return-void
.end method


# virtual methods
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public associateContext(JLjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V

    return-void
.end method

.method public clearContext(J)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V

    return-void
.end method

.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V

    return-void
.end method

.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/glympse/android/lib/CommonSink;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public getContext(J)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->getContext(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getContextKeys()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getListeners()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GEventListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;

    move-result-object v0

    return-object v0
.end method

.method public handle(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/glympse/android/lib/gh;->handle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-static {p1}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v1, "type"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    const-string v4, "n_invite"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-direct {p0, v2, p1, p2}, Lcom/glympse/android/lib/gh;->a(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    :goto_2e
    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const v3, 0x10006

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/glympse/android/lib/gh;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_7

    :cond_39
    const-string v4, "n_group"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    const-string v4, "n_viewer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-direct {p0}, Lcom/glympse/android/lib/gh;->cs()V

    const/4 v0, 0x4

    goto :goto_2e

    :cond_4e
    const-string v4, "n_data_value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5f

    invoke-direct {p0, v2}, Lcom/glympse/android/lib/gh;->g(Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/lib/GUserMessage;

    move-result-object v1

    if-eqz v1, :cond_2e

    const/16 v0, 0x8

    goto :goto_2e

    :cond_5f
    const-string v4, "n_refresh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-direct {p0, v2}, Lcom/glympse/android/lib/gh;->h(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2e

    const/16 v0, 0x10

    goto :goto_2e

    :cond_70
    const-string v4, "n_echo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-direct {p0, v2}, Lcom/glympse/android/lib/gh;->i(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    const/16 v0, 0x20

    goto :goto_2e
.end method

.method public hasContext(J)Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public setActive(Z)V
    .registers 3

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/glympse/android/lib/gh;->ct()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/gh;->s(I)V

    :cond_9
    return-void
.end method

.method public skipSync(I)V
    .registers 7

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->nr:Lcom/glympse/android/hal/GSharedPreferences;

    iget-object v1, p0, Lcom/glympse/android/lib/gh;->qG:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/hal/GSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/glympse/android/lib/gh;->nr:Lcom/glympse/android/hal/GSharedPreferences;

    iget-object v2, p0, Lcom/glympse/android/lib/gh;->qG:Ljava/lang/String;

    int-to-long v3, v0

    invoke-interface {v1, v2, v3, v4}, Lcom/glympse/android/hal/GSharedPreferences;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 3

    iput-object p1, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {p0}, Lcom/glympse/android/lib/gh;->ct()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/gh;->s(I)V

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-void
.end method

.method public sync(I)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isActive()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/glympse/android/lib/gh;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GHistoryManager;->anyActive(Z)Z

    move-result v0

    if-nez v0, :cond_25

    :cond_21
    invoke-direct {p0, p1}, Lcom/glympse/android/lib/gh;->r(I)V

    :goto_24
    return-void

    :cond_25
    invoke-direct {p0, p1}, Lcom/glympse/android/lib/gh;->s(I)V

    goto :goto_24
.end method
