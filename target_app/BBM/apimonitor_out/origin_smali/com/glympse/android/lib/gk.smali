.class Lcom/glympse/android/lib/gk;
.super Lcom/glympse/android/lib/dg;
.source "NullGroupMember.java"


# direct methods
.method public constructor <init>(Lcom/glympse/android/api/GUser;Lcom/glympse/android/api/GTicket;)V
    .registers 4

    invoke-direct {p0}, Lcom/glympse/android/lib/dg;-><init>()V

    invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/gk;->mB:Ljava/lang/String;

    iput-object p1, p0, Lcom/glympse/android/lib/gk;->mM:Lcom/glympse/android/api/GUser;

    iput-object p2, p0, Lcom/glympse/android/lib/gk;->jy:Lcom/glympse/android/api/GTicket;

    return-void
.end method


# virtual methods
.method public getTicket()Lcom/glympse/android/api/GTicket;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/gk;->mM:Lcom/glympse/android/api/GUser;

    invoke-interface {v0}, Lcom/glympse/android/api/GUser;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/glympse/android/lib/gk;->mM:Lcom/glympse/android/api/GUser;

    check-cast v0, Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;

    move-result-object v0

    if-nez v0, :cond_15

    move-object v0, v1

    :goto_14
    return-object v0

    :cond_15
    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/core/GArray;->length()I

    move-result v2

    if-lez v2, :cond_2b

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/api/GTicket;

    goto :goto_14

    :cond_2b
    move-object v0, v1

    goto :goto_14

    :cond_2d
    iget-object v0, p0, Lcom/glympse/android/lib/gk;->mM:Lcom/glympse/android/api/GUser;

    check-cast v0, Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->getActiveStandalone()Lcom/glympse/android/api/GTicket;

    move-result-object v0

    goto :goto_14
.end method

.method public setTicket(Lcom/glympse/android/api/GTicket;J)V
    .registers 4

    iput-object p1, p0, Lcom/glympse/android/lib/gk;->jy:Lcom/glympse/android/api/GTicket;

    return-void
.end method

.method public setUser(Lcom/glympse/android/api/GUser;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/gk;->mM:Lcom/glympse/android/api/GUser;

    return-void
.end method
