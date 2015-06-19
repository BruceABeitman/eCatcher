.class Lcom/glympse/android/lib/jy;
.super Lcom/glympse/android/lib/j;
.source "UserTickets.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private kZ:Z

.field private nR:J

.field private uB:Z

.field private uC:Z

.field private uD:Lcom/glympse/android/lib/jz;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;ZZJ)V
    .registers 7

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/jy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-boolean p2, p0, Lcom/glympse/android/lib/jy;->uB:Z

    iput-boolean p3, p0, Lcom/glympse/android/lib/jy;->uC:Z

    iget-object v0, p0, Lcom/glympse/android/lib/jy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->areSiblingTicketsAllowed()Z

    move-result v0

    iput-boolean v0, p0, Lcom/glympse/android/lib/jy;->kZ:Z

    iput-wide p4, p0, Lcom/glympse/android/lib/jy;->nR:J

    new-instance v0, Lcom/glympse/android/lib/jz;

    invoke-direct {v0}, Lcom/glympse/android/lib/jz;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jy;->uD:Lcom/glympse/android/lib/jz;

    iget-object v0, p0, Lcom/glympse/android/lib/jy;->uD:Lcom/glympse/android/lib/jz;

    iput-object v0, p0, Lcom/glympse/android/lib/jy;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/jz;

    invoke-direct {v0}, Lcom/glympse/android/lib/jz;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jy;->uD:Lcom/glympse/android/lib/jz;

    iget-object v0, p0, Lcom/glympse/android/lib/jy;->uD:Lcom/glympse/android/lib/jz;

    iput-object v0, p0, Lcom/glympse/android/lib/jy;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public process()Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/jy;->uD:Lcom/glympse/android/lib/jz;

    iget-object v0, v0, Lcom/glympse/android/lib/jz;->hf:Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/glympse/android/lib/jy;->uD:Lcom/glympse/android/lib/jz;

    iget-object v0, v0, Lcom/glympse/android/lib/jz;->uE:Lcom/glympse/android/lib/eh;

    iget-wide v1, p0, Lcom/glympse/android/lib/jy;->nR:J

    iput-wide v1, v0, Lcom/glympse/android/lib/eh;->nR:J

    iget-object v0, p0, Lcom/glympse/android/lib/jy;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GHistoryManagerPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/jy;->uD:Lcom/glympse/android/lib/jz;

    iget-object v1, v1, Lcom/glympse/android/lib/jz;->uE:Lcom/glympse/android/lib/eh;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GHistoryManagerPrivate;->syncedWithServer(Lcom/glympse/android/lib/eh;)V

    const/4 v0, 0x1

    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 10

    const/16 v3, 0x3f

    const/16 v2, 0x26

    const/4 v1, 0x1

    const-string v0, "users/self/tickets"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iget-boolean v4, p0, Lcom/glympse/android/lib/jy;->uC:Z

    if-eqz v4, :cond_15

    const-string v0, "?invites=true&properties=true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_15
    iget-boolean v4, p0, Lcom/glympse/android/lib/jy;->uB:Z

    if-nez v4, :cond_25

    if-eqz v0, :cond_4d

    move v0, v2

    :goto_1c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "state=active"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_25
    iget-boolean v4, p0, Lcom/glympse/android/lib/jy;->kZ:Z

    if-eqz v4, :cond_35

    if-eqz v0, :cond_4f

    move v0, v2

    :goto_2c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "siblings=true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :cond_35
    iget-wide v4, p0, Lcom/glympse/android/lib/jy;->nR:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_53

    if-eqz v0, :cond_51

    :goto_3f
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "min_end_time="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/glympse/android/lib/jy;->nR:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_4c
    return v1

    :cond_4d
    move v0, v3

    goto :goto_1c

    :cond_4f
    move v0, v3

    goto :goto_2c

    :cond_51
    move v2, v3

    goto :goto_3f

    :cond_53
    move v1, v0

    goto :goto_4c
.end method
