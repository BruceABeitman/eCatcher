.class Lcom/glympse/android/lib/cq;
.super Ljava/lang/Object;
.source "Group.java"

# interfaces
.implements Lcom/glympse/android/lib/GGroupPrivate;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private _name:Ljava/lang/String;

.field private cb:I

.field private hE:Lcom/glympse/android/lib/CommonSink;

.field private hm:Ljava/lang/String;

.field private mh:Z

.field private mi:Ljava/lang/String;

.field private mj:Lcom/glympse/android/api/GImage;

.field private mk:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GGroupMember;",
            ">;"
        }
    .end annotation
.end field

.field private ml:Z

.field private mm:Lcom/glympse/android/lib/cr;

.field private mn:Lcom/glympse/android/lib/cs;

.field private mo:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/glympse/android/api/GGroupMember;",
            ">;"
        }
    .end annotation
.end field

.field private mp:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/api/GInvite;",
            ">;"
        }
    .end annotation
.end field

.field private mq:J


# direct methods
.method public constructor <init>(Z)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/glympse/android/lib/cq;->mh:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/cq;->hm:Ljava/lang/String;

    iput v1, p0, Lcom/glympse/android/lib/cq;->cb:I

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/cq;->mk:Lcom/glympse/android/hal/GVector;

    iput-boolean v1, p0, Lcom/glympse/android/lib/cq;->ml:Z

    new-instance v0, Lcom/glympse/android/lib/di;

    invoke-direct {v0}, Lcom/glympse/android/lib/di;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/cq;->mo:Ljava/util/Comparator;

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/cq;->mp:Lcom/glympse/android/hal/GVector;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/glympse/android/lib/cq;->mq:J

    new-instance v0, Lcom/glympse/android/lib/CommonSink;

    const-string v1, "Group"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/CommonSink;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/glympse/android/lib/cq;->hE:Lcom/glympse/android/lib/CommonSink;

    return-void
.end method

.method private a(Lcom/glympse/android/lib/GGroupMemberPrivate;Ljava/lang/String;)V
    .registers 7

    const/16 v3, 0xa

    const/4 v0, 0x0

    if-eqz p2, :cond_1d

    invoke-interface {p1}, Lcom/glympse/android/lib/GGroupMemberPrivate;->getUser()Lcom/glympse/android/api/GUser;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/glympse/android/api/GHistoryManager;->findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    :cond_1d
    :goto_1d
    invoke-interface {p1}, Lcom/glympse/android/lib/GGroupMemberPrivate;->getTicket()Lcom/glympse/android/api/GTicket;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v2, 0x400

    invoke-virtual {p0, v1, v3, v2, p1}, Lcom/glympse/android/lib/cq;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    :cond_2a
    invoke-interface {p1, p2}, Lcom/glympse/android/lib/GGroupMemberPrivate;->setInviteCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/glympse/android/lib/GGroupMemberPrivate;->setTicket(Lcom/glympse/android/api/GTicket;J)V

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v1, 0x200

    invoke-virtual {p0, v0, v3, v1, p1}, Lcom/glympse/android/lib/cq;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void

    :cond_3e
    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupManagerPrivate;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v0, v1, p1, p2}, Lcom/glympse/android/lib/GGroupManagerPrivate;->viewTicket(Lcom/glympse/android/lib/GGroupPrivate;Lcom/glympse/android/lib/GGroupMemberPrivate;Ljava/lang/String;)Lcom/glympse/android/lib/GTicketPrivate;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/glympse/android/lib/cq;->mm:Lcom/glympse/android/lib/cr;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GTicketPrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    goto :goto_1d
.end method

.method private bI()V
    .registers 3

    iget-boolean v0, p0, Lcom/glympse/android/lib/cq;->ml:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glympse/android/lib/cq;->ml:Z

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->mk:Lcom/glympse/android/hal/GVector;

    iget-object v1, p0, Lcom/glympse/android/lib/cq;->mo:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->sort(Ljava/util/Comparator;)V

    goto :goto_4
.end method

.method private bK()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/cq;->mn:Lcom/glympse/android/lib/cs;

    return-void
.end method

.method private bL()Z
    .registers 13

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GConfig;->getMaximumTicketDuration()I

    move-result v0

    iget-object v2, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J

    move-result-wide v2

    int-to-long v4, v0

    sub-long v4, v2, v4

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;

    move-result-object v6

    invoke-interface {v6}, Lcom/glympse/android/core/GArray;->length()I

    move-result v7

    move v3, v1

    :goto_23
    if-ge v3, v7, :cond_68

    invoke-interface {v6, v3}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GTicket;

    invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getExpireTime()J

    move-result-wide v8

    cmp-long v2, v8, v4

    if-ltz v2, :cond_68

    invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;

    move-result-object v8

    invoke-interface {v8}, Lcom/glympse/android/core/GArray;->length()I

    move-result v9

    move v2, v1

    :goto_3c
    if-ge v2, v9, :cond_64

    invoke-interface {v8, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GInvite;

    const/4 v10, 0x7

    invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getType()I

    move-result v11

    if-ne v10, v11, :cond_60

    const/4 v10, 0x4

    invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getState()I

    move-result v11

    if-ne v10, v11, :cond_60

    invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/glympse/android/lib/cq;->_name:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const/4 v0, 0x1

    :goto_5f
    return v0

    :cond_60
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3c

    :cond_64
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_23

    :cond_68
    move v0, v1

    goto :goto_5f
.end method


# virtual methods
.method public addListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public addMember(Lcom/glympse/android/lib/GGroupMemberPrivate;)V
    .registers 5

    invoke-interface {p1}, Lcom/glympse/android/lib/GGroupMemberPrivate;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->mk:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/glympse/android/lib/GGroupMemberPrivate;->getUser()Lcom/glympse/android/api/GUser;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserPrivate;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GUserManagerPrivate;->extractFromCache(Ljava/lang/String;Z)Lcom/glympse/android/lib/GUserPrivate;

    move-result-object v2

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserManagerPrivate;->findUserByUserId(Ljava/lang/String;)Lcom/glympse/android/api/GUser;

    move-result-object v1

    if-nez v1, :cond_27

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GUserManagerPrivate;->addUser(Lcom/glympse/android/lib/GUserPrivate;)V

    :cond_27
    invoke-interface {p1, v2}, Lcom/glympse/android/lib/GGroupMemberPrivate;->setUser(Lcom/glympse/android/api/GUser;)V

    :cond_2a
    invoke-interface {p1}, Lcom/glympse/android/lib/GGroupMemberPrivate;->getInviteCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-direct {p0, p1, v0}, Lcom/glympse/android/lib/cq;->a(Lcom/glympse/android/lib/GGroupMemberPrivate;Ljava/lang/String;)V

    :cond_37
    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v1, 0xa

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/glympse/android/lib/cq;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    return-void
.end method

.method public associateContext(JLjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2, p3}, Lcom/glympse/android/lib/CommonSink;->associateContext(JLjava/lang/Object;)V

    return-void
.end method

.method protected bJ()V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/glympse/android/lib/cq;->mn:Lcom/glympse/android/lib/cs;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/glympse/android/lib/cq;->ml:Z

    if-nez v0, :cond_4

    new-instance v1, Lcom/glympse/android/lib/cs;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/cq;

    invoke-direct {v1, v0}, Lcom/glympse/android/lib/cs;-><init>(Lcom/glympse/android/lib/cq;)V

    iput-object v1, p0, Lcom/glympse/android/lib/cq;->mn:Lcom/glympse/android/lib/cs;

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHandler()Lcom/glympse/android/core/GHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/cq;->mn:Lcom/glympse/android/lib/cs;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method public clearContext(J)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->clearContext(J)V

    return-void
.end method

.method public clearInvites()V
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->mp:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V

    return-void
.end method

.method public clearMembers()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/glympse/android/lib/cq;->mk:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v0

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->mk:Lcom/glympse/android/hal/GVector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupMemberPrivate;

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/cq;->removeMember(Lcom/glympse/android/lib/GGroupMemberPrivate;)V

    goto :goto_0

    :cond_15
    return-void
.end method

.method public decode(Lcom/glympse/android/core/GPrimitive;)V
    .registers 3

    const-string v0, "pub"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getBool(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/glympse/android/lib/cq;->mh:Z

    const-string v0, "id"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/cq;->hm:Ljava/lang/String;

    const-string v0, "nm"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/cq;->_name:Ljava/lang/String;

    return-void
.end method

.method public deriveContext(Lcom/glympse/android/api/GEventSink;)V
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->deriveContext(Lcom/glympse/android/api/GEventSink;)V

    return-void
.end method

.method public encode(Lcom/glympse/android/core/GPrimitive;I)V
    .registers 5

    const-string v0, "pub"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/glympse/android/lib/cq;->mh:Z

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->hm:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "id"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/cq;->hm:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    const-string v0, "nm"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/cq;->_name:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    return-void
.end method

.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 11

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->hE:Lcom/glympse/android/lib/CommonSink;

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

.method public findMemberByUserId(Ljava/lang/String;)Lcom/glympse/android/api/GGroupMember;
    .registers 8

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :cond_8
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/glympse/android/lib/cq;->mk:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_11
    if-ge v2, v3, :cond_2f

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->mk:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupMemberPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGroupMemberPrivate;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2b

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_2b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_11

    :cond_2f
    move-object v0, v1

    goto :goto_8
.end method

.method public getAvatar()Lcom/glympse/android/api/GImage;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->mj:Lcom/glympse/android/api/GImage;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->mi:Ljava/lang/String;

    return-object v0
.end method

.method public getContext(J)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->hE:Lcom/glympse/android/lib/CommonSink;

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

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getContextKeys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getEventsNext()J
    .registers 3

    iget-wide v0, p0, Lcom/glympse/android/lib/cq;->mq:J

    return-wide v0
.end method

.method public getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->hm:Ljava/lang/String;

    return-object v0
.end method

.method public getInvites()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GInvite;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->mp:Lcom/glympse/android/hal/GVector;

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

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0}, Lcom/glympse/android/lib/CommonSink;->getListeners()Lcom/glympse/android/core/GArray;

    move-result-object v0

    return-object v0
.end method

.method public getMembers()Lcom/glympse/android/core/GArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/glympse/android/core/GArray",
            "<",
            "Lcom/glympse/android/api/GGroupMember;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/glympse/android/lib/cq;->bI()V

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->mk:Lcom/glympse/android/hal/GVector;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/cq;->cb:I

    return v0
.end method

.method public hasContext(J)Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1, p2}, Lcom/glympse/android/lib/CommonSink;->hasContext(J)Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .registers 2

    iget-boolean v0, p0, Lcom/glympse/android/lib/cq;->mh:Z

    return v0
.end method

.method public leave()V
    .registers 4

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/glympse/android/lib/cq;->cb:I

    if-ne v2, v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupManagerPrivate;

    iget-boolean v1, p0, Lcom/glympse/android/lib/cq;->mh:Z

    if-eqz v1, :cond_23

    const/4 v1, 0x6

    iput v1, p0, Lcom/glympse/android/lib/cq;->cb:I

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupManagerPrivate;->removeGroup(Lcom/glympse/android/lib/GGroupPrivate;)V

    goto :goto_9

    :cond_23
    iput v2, p0, Lcom/glympse/android/lib/cq;->cb:I

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupManagerPrivate;->leaveGroup(Lcom/glympse/android/lib/GGroupPrivate;)V

    goto :goto_9
.end method

.method public mergeMember(Lcom/glympse/android/lib/GGroupMemberPrivate;Lcom/glympse/android/lib/GGroupMemberPrivate;)V
    .registers 4

    invoke-interface {p2}, Lcom/glympse/android/lib/GGroupMemberPrivate;->getInviteCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/glympse/android/lib/cq;->mergeMember(Lcom/glympse/android/lib/GGroupMemberPrivate;Ljava/lang/String;)V

    return-void
.end method

.method public mergeMember(Lcom/glympse/android/lib/GGroupMemberPrivate;Ljava/lang/String;)V
    .registers 4

    invoke-interface {p1}, Lcom/glympse/android/lib/GGroupMemberPrivate;->getTicket()Lcom/glympse/android/api/GTicket;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    if-nez v0, :cond_e

    if-eqz p2, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/glympse/android/lib/cq;->a(Lcom/glympse/android/lib/GGroupMemberPrivate;Ljava/lang/String;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    if-nez p2, :cond_15

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/glympse/android/lib/cq;->a(Lcom/glympse/android/lib/GGroupMemberPrivate;Ljava/lang/String;)V

    goto :goto_d

    :cond_15
    invoke-interface {p1}, Lcom/glympse/android/lib/GGroupMemberPrivate;->getInviteCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/glympse/android/lib/cq;->a(Lcom/glympse/android/lib/GGroupMemberPrivate;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public mergeMembers(Lcom/glympse/android/hal/GVector;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GGroupMemberPrivate;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v5, Lcom/glympse/android/hal/GVector;

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->mk:Lcom/glympse/android/hal/GVector;

    invoke-direct {v5, v0}, Lcom/glympse/android/hal/GVector;-><init>(Lcom/glympse/android/hal/GVector;)V

    invoke-virtual {p1}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v6

    move v4, v2

    :goto_d
    if-ge v4, v6, :cond_44

    invoke-virtual {p1, v4}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupMemberPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGroupMemberPrivate;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v8

    move v3, v2

    :goto_1e
    if-ge v3, v8, :cond_59

    invoke-virtual {v5, v3}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GGroupMemberPrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGroupMemberPrivate;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_40

    invoke-virtual {p0, v1, v0}, Lcom/glympse/android/lib/cq;->mergeMember(Lcom/glympse/android/lib/GGroupMemberPrivate;Lcom/glympse/android/lib/GGroupMemberPrivate;)V

    invoke-virtual {v5, v3}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V

    const/4 v1, 0x1

    :goto_37
    if-nez v1, :cond_3c

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/cq;->addMember(Lcom/glympse/android/lib/GGroupMemberPrivate;)V

    :cond_3c
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_d

    :cond_40
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1e

    :cond_44
    invoke-virtual {v5}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v3

    move v1, v2

    :goto_49
    if-ge v1, v3, :cond_58

    invoke-virtual {v5, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupMemberPrivate;

    invoke-virtual {p0, v0}, Lcom/glympse/android/lib/cq;->removeMember(Lcom/glympse/android/lib/GGroupMemberPrivate;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_49

    :cond_58
    return-void

    :cond_59
    move v1, v2

    goto :goto_37
.end method

.method public modify(Ljava/lang/String;Lcom/glympse/android/api/GImage;)V
    .registers 3

    iput-object p1, p0, Lcom/glympse/android/lib/cq;->_name:Ljava/lang/String;

    iput-object p2, p0, Lcom/glympse/android/lib/cq;->mj:Lcom/glympse/android/api/GImage;

    return-void
.end method

.method protected orderChanged()V
    .registers 5

    invoke-direct {p0}, Lcom/glympse/android/lib/cq;->bK()V

    iget-boolean v0, p0, Lcom/glympse/android/lib/cq;->ml:Z

    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glympse/android/lib/cq;->ml:Z

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v1, 0xa

    const/16 v2, 0x40

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/glympse/android/lib/cq;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_7
.end method

.method public removeListener(Lcom/glympse/android/api/GEventListener;)Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->hE:Lcom/glympse/android/lib/CommonSink;

    invoke-virtual {v0, p1}, Lcom/glympse/android/lib/CommonSink;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    move-result v0

    return v0
.end method

.method public removeMember(Lcom/glympse/android/lib/GGroupMemberPrivate;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->mk:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->removeElement(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/glympse/android/lib/GGroupMemberPrivate;->getTicket()Lcom/glympse/android/api/GTicket;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v1, p0, Lcom/glympse/android/lib/cq;->mm:Lcom/glympse/android/lib/cr;

    invoke-interface {v0, v1}, Lcom/glympse/android/api/GTicket;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    :cond_11
    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/glympse/android/lib/cq;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    :cond_1e
    invoke-interface {p1, v3}, Lcom/glympse/android/lib/GGroupMemberPrivate;->setUser(Lcom/glympse/android/api/GUser;)V

    invoke-interface {p1, v3}, Lcom/glympse/android/lib/GGroupMemberPrivate;->setInviteCode(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-interface {p1, v3, v0, v1}, Lcom/glympse/android/lib/GGroupMemberPrivate;->setTicket(Lcom/glympse/android/api/GTicket;J)V

    return-void
.end method

.method public send(Lcom/glympse/android/api/GInvite;Ljava/lang/String;)Z
    .registers 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    move v0, v1

    :goto_5
    return v0

    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/glympse/android/lib/GInvitePrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setState(I)V

    invoke-interface {v0, p2}, Lcom/glympse/android/lib/GInvitePrivate;->setMessage(Ljava/lang/String;)V

    iget v2, p0, Lcom/glympse/android/lib/cq;->cb:I

    packed-switch v2, :pswitch_data_60

    :pswitch_14
    move v0, v1

    goto :goto_5

    :pswitch_16
    iget-object v0, p0, Lcom/glympse/android/lib/cq;->mp:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    move v0, v3

    goto :goto_5

    :pswitch_1d
    iget-object v2, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_5

    :cond_23
    iget-object v1, p0, Lcom/glympse/android/lib/cq;->mp:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/glympse/android/lib/cq;->bL()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GGroupManagerPrivate;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v1, v2, v0}, Lcom/glympse/android/lib/GGroupManagerPrivate;->createInvite(Lcom/glympse/android/lib/GGroupPrivate;Lcom/glympse/android/lib/GInvitePrivate;)V

    :cond_3f
    move v0, v3

    goto :goto_5

    :pswitch_41
    iget-object v2, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v2, :cond_47

    move v0, v1

    goto :goto_5

    :cond_47
    iget-object v1, p0, Lcom/glympse/android/lib/cq;->mp:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v1, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GGroupManagerPrivate;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v1, v2, v0}, Lcom/glympse/android/lib/GGroupManagerPrivate;->createInvite(Lcom/glympse/android/lib/GGroupPrivate;Lcom/glympse/android/lib/GInvitePrivate;)V

    move v0, v3

    goto :goto_5

    nop

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_16
        :pswitch_14
        :pswitch_1d
        :pswitch_14
        :pswitch_41
    .end packed-switch
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/cq;->mi:Ljava/lang/String;

    return-void
.end method

.method public setEventsNext(J)V
    .registers 3

    iput-wide p1, p0, Lcom/glympse/android/lib/cq;->mq:J

    return-void
.end method

.method public setGlympse(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_15

    new-instance v1, Lcom/glympse/android/lib/cr;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/cq;

    invoke-direct {v1, v0}, Lcom/glympse/android/lib/cr;-><init>(Lcom/glympse/android/lib/cq;)V

    iput-object v1, p0, Lcom/glympse/android/lib/cq;->mm:Lcom/glympse/android/lib/cr;

    :goto_14
    return-void

    :cond_15
    invoke-virtual {p0}, Lcom/glympse/android/lib/cq;->clearMembers()V

    iput-object v1, p0, Lcom/glympse/android/lib/cq;->mm:Lcom/glympse/android/lib/cr;

    iput-object v1, p0, Lcom/glympse/android/lib/cq;->mn:Lcom/glympse/android/lib/cs;

    goto :goto_14
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/cq;->hm:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/cq;->_name:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .registers 8

    iget v0, p0, Lcom/glympse/android/lib/cq;->cb:I

    if-eq p1, v0, :cond_1e

    iput p1, p0, Lcom/glympse/android/lib/cq;->cb:I

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupManagerPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGroupManagerPrivate;->checkServerSyncComplete()V

    :cond_15
    const/4 v0, 0x4

    iget v1, p0, Lcom/glympse/android/lib/cq;->cb:I

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_1f

    :cond_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/glympse/android/lib/cq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupManagerPrivate;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GGroupPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/cq;->mp:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v2}, Lcom/glympse/android/hal/GVector;->length()I

    move-result v4

    const/4 v2, 0x0

    move v3, v2

    :goto_35
    if-ge v3, v4, :cond_1e

    iget-object v2, p0, Lcom/glympse/android/lib/cq;->mp:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v2, v3}, Lcom/glympse/android/hal/GVector;->at(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/glympse/android/lib/GInvitePrivate;

    invoke-interface {v2}, Lcom/glympse/android/lib/GInvitePrivate;->getState()I

    move-result v5

    if-nez v5, :cond_48

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GGroupManagerPrivate;->createInvite(Lcom/glympse/android/lib/GGroupPrivate;Lcom/glympse/android/lib/GInvitePrivate;)V

    :cond_48
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_35
.end method

.method public startTracking(I)V
    .registers 2

    return-void
.end method

.method public stopTracking(I)V
    .registers 2

    return-void
.end method
