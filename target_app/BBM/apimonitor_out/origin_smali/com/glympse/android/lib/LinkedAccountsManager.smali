.class public Lcom/glympse/android/lib/LinkedAccountsManager;
.super Ljava/lang/Object;
.source "LinkedAccountsManager.java"

# interfaces
.implements Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private hE:Lcom/glympse/android/lib/CommonSink;

.field private jO:Lcom/glympse/android/lib/hw;

.field private jw:Lcom/glympse/android/core/GPrimitive;

.field private nd:Z

.field private pH:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GLinkedAccount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/glympse/android/lib/CommonSink;

    const-string v1, "LinkedAccountsManager"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->hE:Lcom/glympse/android/lib/CommonSink;

    new-instance v0, Lcom/glympse/android/lib/hw;

    invoke-direct {v0}, Lcom/glympse/android/lib/hw;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->jO:Lcom/glympse/android/lib/hw;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->nd:Z

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    return-void
.end method

.method private a(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;IZ)V
    .registers 7

    invoke-interface {p1, p2}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->merge(Lcom/glympse/android/lib/GLinkedAccountPrivate;)V

    if-eqz p4, :cond_a

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z

    :cond_a
    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1, p3, p1}, Lcom/glympse/android/lib/LinkedAccountsManager;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public static createEvernoteAccountProfile(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
    .registers 4

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    const-string v1, "type"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/glympse/android/api/GC;->LINKED_ACCOUNT_TYPE_EVERNOTE()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "token"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createFacebookAccountProfile(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
    .registers 4

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    const-string v1, "type"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/glympse/android/api/GC;->LINKED_ACCOUNT_TYPE_FACEBOOK()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "token"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createGoogleAccountProfile(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
    .registers 4

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    const-string v1, "type"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/glympse/android/api/GC;->LINKED_ACCOUNT_TYPE_GOOGLE()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "token"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createGoogleServerAuthorizationProfile(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
    .registers 4

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    const-string v1, "type"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/glympse/android/api/GC;->LINKED_ACCOUNT_TYPE_GOOGLE()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "code"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createTwitterAccountProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
    .registers 7

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    const-string v1, "type"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/glympse/android/api/GC;->LINKED_ACCOUNT_TYPE_TWITTER()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "consumer_key"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "consumer_secret"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oauth_token"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "oauth_token_secret"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private load()Lcom/glympse/android/core/GPrimitive;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->jO:Lcom/glympse/android/lib/hw;

    invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->load()Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    :cond_e
    return-object v0
.end method

.method private save()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->jO:Lcom/glympse/android/lib/hw;

    iget-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->jw:Lcom/glympse/android/core/GPrimitive;

    invoke-virtual {v0, v1}, Lcom/glympse/android/lib/hw;->save(Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public associateContext(JLjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V

    return-void
.end method

.method public canSend(Lcom/glympse/android/api/GInvite;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v2, :cond_8

    if-nez p1, :cond_a

    :cond_8
    move v0, v1

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-interface {p1}, Lcom/glympse/android/api/GInvite;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_3e

    move v0, v1

    goto :goto_9

    :sswitch_13
    const-string v2, "twitter"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/glympse/android/lib/LinkedAccountsManager;->getAccount(Ljava/lang/String;)Lcom/glympse/android/api/GLinkedAccount;

    move-result-object v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_9

    :sswitch_21
    const-string v2, "facebook"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/glympse/android/lib/LinkedAccountsManager;->getAccount(Ljava/lang/String;)Lcom/glympse/android/api/GLinkedAccount;

    move-result-object v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_9

    :sswitch_2f
    const-string v2, "evernote"

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/glympse/android/lib/LinkedAccountsManager;->getAccount(Ljava/lang/String;)Lcom/glympse/android/api/GLinkedAccount;

    move-result-object v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_9

    nop

    :sswitch_data_3e
    .sparse-switch
        0x4 -> :sswitch_13
        0x5 -> :sswitch_21
        0xa -> :sswitch_2f
    .end sparse-switch
.end method

.method public clearContext(J)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V

    return-void
.end method

.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V

    return-void
.end method

.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/api/GEventSink;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/glympse/android/lib/CommonSink;->eventsOccurred(Lcom/glympse/android/api/GEventSink;Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public getAccount(Ljava/lang/String;)Lcom/glympse/android/api/GLinkedAccount;
    .registers 7

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_11
    if-ge v2, v3, :cond_29

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GLinkedAccount;

    invoke-interface {v0}, Lcom/glympse/android/api/GLinkedAccount;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    :cond_29
    move-object v0, v1

    goto :goto_8
.end method

.method public getAccountProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->jw:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v1, p1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1, p2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    goto :goto_5
.end method

.method public getAccounts()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GLinkedAccount;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    return-object v0
.end method

.method public getContext(J)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->hE:Lcom/glympse/android/lib/CommonSink;

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

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getCount(Z)I
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v3

    move v2, v0

    move v1, v0

    :goto_9
    if-ge v2, v3, :cond_2d

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GLinkedAccount;

    invoke-interface {v0}, Lcom/glympse/android/api/GLinkedAccount;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1d

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2e

    :cond_1d
    if-eqz p1, :cond_26

    invoke-interface {v0}, Lcom/glympse/android/api/GLinkedAccount;->getLogin()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2e

    :cond_26
    add-int/lit8 v0, v1, 0x1

    :goto_28
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_9

    :cond_2d
    return v1

    :cond_2e
    move v0, v1

    goto :goto_28
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

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;

    move-result-object v0

    return-object v0
.end method

.method public hasContext(J)Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z

    move-result v0

    return v0
.end method

.method public isSynced()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->nd:Z

    return v0
.end method

.method public link(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/api/GLinkedAccount;
    .registers 8

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p2, :cond_6

    const-string v1, "type"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, p1}, Lcom/glympse/android/lib/LinkedAccountsManager;->getAccount(Ljava/lang/String;)Lcom/glympse/android/api/GLinkedAccount;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GLinkedAccountPrivate;

    if-nez v0, :cond_6

    new-instance v0, Lcom/glympse/android/lib/fl;

    invoke-direct {v0, p1}, Lcom/glympse/android/lib/fl;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setState(I)V

    iget-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v1

    new-instance v2, Lcom/glympse/android/lib/fj;

    iget-object v3, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {v2, v3, v0, p2}, Lcom/glympse/android/lib/fj;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/core/GPrimitive;)V

    invoke-interface {v1, v2, v4}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V

    goto :goto_6
.end method

.method public linkComplete(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-interface {p2}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->getLogin()I

    move-result v0

    if-ne v1, v0, :cond_19

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfigPrivate()Lcom/glympse/android/lib/GConfigPrivate;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GConfigPrivate;->setAccountsLinked(Z)V

    :cond_19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/glympse/android/lib/LinkedAccountsManager;->a(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;IZ)V

    goto :goto_9
.end method

.method public linkFailed(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/glympse/android/lib/LinkedAccountsManager;->a(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;IZ)V

    goto :goto_8
.end method

.method public listComplete(Lcom/glympse/android/hal/GVector;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GLinkedAccount;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v5, Lcom/glympse/android/hal/GVector;

    invoke-direct {v5}, Lcom/glympse/android/hal/GVector;-><init>()V

    invoke-virtual {p1}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v6

    move v4, v3

    :goto_c
    if-ge v4, v6, :cond_36

    invoke-virtual {p1, v4}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GLinkedAccountPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/glympse/android/lib/LinkedAccountsManager;->getAccount(Ljava/lang/String;)Lcom/glympse/android/api/GLinkedAccount;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GLinkedAccountPrivate;

    if-nez v1, :cond_27

    invoke-virtual {v5, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    :goto_23
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_c

    :cond_27
    iget-object v7, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v7, v1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z

    invoke-virtual {v5, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setState(I)V

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->merge(Lcom/glympse/android/lib/GLinkedAccountPrivate;)V

    goto :goto_23

    :cond_36
    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v4

    move v1, v3

    :goto_3d
    if-ge v1, v4, :cond_54

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GLinkedAccountPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->getState()I

    move-result v6

    if-ne v6, v2, :cond_50

    invoke-virtual {v5, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    :cond_50
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3d

    :cond_54
    iput-object v5, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    iput-boolean v2, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->nd:Z

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-lez v0, :cond_75

    move v0, v2

    :goto_61
    iget-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfigPrivate()Lcom/glympse/android/lib/GConfigPrivate;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GConfigPrivate;->setAccountsLinked(Z)V

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v1, 0xd

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/glympse/android/lib/LinkedAccountsManager;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void

    :cond_75
    move v0, v3

    goto :goto_61
.end method

.method public listFailed(Lcom/glympse/android/api/GServerError;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v1, 0xd

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/glympse/android/lib/LinkedAccountsManager;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public refresh(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)Lcom/glympse/android/api/GLinkedAccount;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p2, :cond_5

    const-string v1, "type"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/glympse/android/lib/LinkedAccountsManager;->getAccount(Ljava/lang/String;)Lcom/glympse/android/api/GLinkedAccount;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GLinkedAccountPrivate;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setState(I)V

    iget-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v1

    new-instance v2, Lcom/glympse/android/lib/ha;

    iget-object v3, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {v2, v3, v0, p2}, Lcom/glympse/android/lib/ha;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/core/GPrimitive;)V

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V

    goto :goto_5
.end method

.method public refresh()Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    iget-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v1

    new-instance v2, Lcom/glympse/android/lib/fn;

    iget-object v3, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {v2, v3}, Lcom/glympse/android/lib/fn;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;)V

    invoke-interface {v1, v2, v0}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V

    goto :goto_6
.end method

.method public refreshComplete(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/glympse/android/lib/LinkedAccountsManager;->a(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;IZ)V

    goto :goto_8
.end method

.method public refreshFailed(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-interface {p2}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->getError()Lcom/glympse/android/api/GServerError;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GServerError;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_21

    const/4 v0, 0x1

    :goto_15
    const/16 v1, 0x20

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/glympse/android/lib/LinkedAccountsManager;->a(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;IZ)V

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setError(Lcom/glympse/android/api/GServerError;)V

    goto :goto_8

    :cond_21
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public setAccountProperty(Ljava/lang/String;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->jw:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0, p1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-nez v0, :cond_26

    new-instance v0, Lcom/glympse/android/lib/Primitive;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    iget-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->jw:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v1, p1, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    :cond_26
    invoke-interface {v0, p2, p3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    invoke-direct {p0}, Lcom/glympse/android/lib/LinkedAccountsManager;->save()V

    goto :goto_4
.end method

.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 7

    iput-object p1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->jO:Lcom/glympse/android/lib/hw;

    iget-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getPrefix()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "linked_accounts_v2"

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/glympse/android/lib/hw;->a(Lcom/glympse/android/hal/GContextHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/glympse/android/lib/LinkedAccountsManager;->load()Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->jw:Lcom/glympse/android/core/GPrimitive;

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfigPrivate()Lcom/glympse/android/lib/GConfigPrivate;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->areAccountsLinked()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/glympse/android/lib/LinkedAccountsManager;->refresh()Z

    :cond_2f
    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->jw:Lcom/glympse/android/core/GPrimitive;

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->jO:Lcom/glympse/android/lib/hw;

    invoke-virtual {v0}, Lcom/glympse/android/lib/hw;->stop()V

    iput-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    return-void
.end method

.method public unlink(Ljava/lang/String;)Lcom/glympse/android/api/GLinkedAccount;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0, p1}, Lcom/glympse/android/lib/LinkedAccountsManager;->getAccount(Ljava/lang/String;)Lcom/glympse/android/api/GLinkedAccount;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GLinkedAccountPrivate;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setState(I)V

    iget-object v1, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v1

    new-instance v2, Lcom/glympse/android/lib/jc;

    iget-object v3, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-direct {v2, v3, v0}, Lcom/glympse/android/lib/jc;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/glympse/android/lib/GServerPost;->invokeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;Z)V

    goto :goto_5
.end method

.method public unlinkComplete(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/glympse/android/lib/LinkedAccountsManager;->a(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;IZ)V

    goto :goto_8
.end method

.method public unlinkFailed(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/LinkedAccountsManager;->pH:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/glympse/android/lib/LinkedAccountsManager;->a(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;IZ)V

    goto :goto_8
.end method
