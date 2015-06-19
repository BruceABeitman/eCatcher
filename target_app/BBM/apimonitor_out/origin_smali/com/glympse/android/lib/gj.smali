.class Lcom/glympse/android/lib/gj;
.super Ljava/lang/Object;
.source "NullGroup.java"

# interfaces
.implements Lcom/glympse/android/api/GEventListener;


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private qJ:Lcom/glympse/android/lib/gi;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/gi;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/gj;->qJ:Lcom/glympse/android/lib/gi;

    return-void
.end method

.method private a(Lcom/glympse/android/api/GUser;)V
    .registers 4

    new-instance v0, Lcom/glympse/android/lib/gk;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/glympse/android/lib/gk;-><init>(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GTicket;)V

    iget-object v1, p0, Lcom/glympse/android/lib/gj;->qJ:Lcom/glympse/android/lib/gi;

    invoke-virtual {v1, v0}, Lcom/glympse/android/lib/gi;->addMember(Lcom/glympse/android/lib/GGroupMemberPrivate;)V

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    invoke-interface {p1, v0}, Lcom/glympse/android/api/GUser;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    return-void
.end method

.method private b(Lcom/glympse/android/api/GUser;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/glympse/android/lib/gj;->c(Lcom/glympse/android/api/GUser;)Lcom/glympse/android/api/GGroupMember;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupMemberPrivate;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/glympse/android/lib/gj;->qJ:Lcom/glympse/android/lib/gi;

    invoke-virtual {v1, v0}, Lcom/glympse/android/lib/gi;->removeMember(Lcom/glympse/android/lib/GGroupMemberPrivate;)V

    :cond_d
    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    invoke-interface {p1, v0}, Lcom/glympse/android/api/GUser;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    return-void
.end method

.method private c(Lcom/glympse/android/api/GUser;)Lcom/glympse/android/api/GGroupMember;
    .registers 7

    iget-object v0, p0, Lcom/glympse/android/lib/gj;->qJ:Lcom/glympse/android/lib/gi;

    invoke-virtual {v0}, Lcom/glympse/android/lib/gi;->getMembers()Lcom/glympse/android/core/GArray;

    move-result-object v2

    invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v3, :cond_1f

    invoke-interface {v2, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GGroupMember;

    invoke-interface {v0}, Lcom/glympse/android/api/GGroupMember;->getUser()Lcom/glympse/android/api/GUser;

    move-result-object v4

    if-ne p1, v4, :cond_1b

    :goto_1a
    return-object v0

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1a
.end method


# virtual methods
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
    .registers 9

    const/16 v3, 0xa

    const v0, 0x10002

    if-ne v0, p2, :cond_35

    and-int/lit8 v0, p3, 0x20

    if-eqz v0, :cond_20

    check-cast p4, Lcom/glympse/android/api/GUser;

    invoke-direct {p0, p4}, Lcom/glympse/android/lib/gj;->a(Lcom/glympse/android/api/GUser;)V

    iget-object v0, p0, Lcom/glympse/android/lib/gj;->qJ:Lcom/glympse/android/lib/gi;

    invoke-virtual {v0}, Lcom/glympse/android/lib/gi;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/glympse/android/api/GUserManager;->startTracking(Lcom/glympse/android/api/GUser;)I

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_2a

    check-cast p4, Lcom/glympse/android/api/GUser;

    invoke-direct {p0, p4}, Lcom/glympse/android/lib/gj;->b(Lcom/glympse/android/api/GUser;)V

    goto :goto_1f

    :cond_2a
    const/high16 v0, 0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/glympse/android/lib/gj;->qJ:Lcom/glympse/android/lib/gi;

    invoke-virtual {v0}, Lcom/glympse/android/lib/gi;->orderChanged()V

    goto :goto_1f

    :cond_35
    const/4 v0, 0x3

    if-ne v0, p2, :cond_1f

    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_4e

    check-cast p4, Lcom/glympse/android/api/GUser;

    invoke-direct {p0, p4}, Lcom/glympse/android/lib/gj;->c(Lcom/glympse/android/api/GUser;)Lcom/glympse/android/api/GGroupMember;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupMemberPrivate;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/glympse/android/lib/gj;->qJ:Lcom/glympse/android/lib/gi;

    const/16 v2, 0x400

    invoke-virtual {v1, p1, v3, v2, v0}, Lcom/glympse/android/lib/gi;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_1f

    :cond_4e
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1f

    check-cast p4, Lcom/glympse/android/api/GUser;

    invoke-direct {p0, p4}, Lcom/glympse/android/lib/gj;->c(Lcom/glympse/android/api/GUser;)Lcom/glympse/android/api/GGroupMember;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupMemberPrivate;

    if-eqz v0, :cond_1f

    iget-object v1, p0, Lcom/glympse/android/lib/gj;->qJ:Lcom/glympse/android/lib/gi;

    const/16 v2, 0x200

    invoke-virtual {v1, p1, v3, v2, v0}, Lcom/glympse/android/lib/gi;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_1f
.end method

.method public start(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 6

    iput-object p1, p0, Lcom/glympse/android/lib/gj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/gj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserManagerPrivate;->getStandaloneUsers()Lcom/glympse/android/core/GArray;

    move-result-object v2

    invoke-interface {v2}, Lcom/glympse/android/core/GArray;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    if-ge v1, v3, :cond_23

    invoke-interface {v2, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GUser;

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/gj;->a(Lcom/glympse/android/api/GUser;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_23
    iget-object v1, p0, Lcom/glympse/android/lib/gj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    return-void
.end method

.method public stop()V
    .registers 6

    iget-object v1, p0, Lcom/glympse/android/lib/gj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    iget-object v0, p0, Lcom/glympse/android/lib/gj;->qJ:Lcom/glympse/android/lib/gi;

    invoke-virtual {v0}, Lcom/glympse/android/lib/gi;->getMembers()Lcom/glympse/android/core/GArray;

    move-result-object v3

    invoke-interface {v3}, Lcom/glympse/android/core/GArray;->length()I

    move-result v4

    if-lez v4, :cond_34

    invoke-static {p0}, Lcom/glympse/android/hal/Helpers;->wrapThis(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GEventListener;

    const/4 v1, 0x0

    move v2, v1

    :goto_1f
    if-ge v2, v4, :cond_34

    invoke-interface {v3, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/api/GGroupMember;

    invoke-interface {v1}, Lcom/glympse/android/api/GGroupMember;->getUser()Lcom/glympse/android/api/GUser;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-interface {v1, v0}, Lcom/glympse/android/api/GUser;->removeListener(Lcom/glympse/android/api/GEventListener;)Z

    :cond_30
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1f

    :cond_34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/gj;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    return-void
.end method
