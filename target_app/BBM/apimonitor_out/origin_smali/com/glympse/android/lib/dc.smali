.class Lcom/glympse/android/lib/dc;
.super Lcom/glympse/android/lib/j;
.source "GroupJoin.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private mD:Ljava/lang/String;

.field private mE:Lcom/glympse/android/lib/dl;

.field private ms:Lcom/glympse/android/lib/GGroupPrivate;

.field private mu:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;)V
    .registers 4

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/dc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/dc;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {p2}, Lcom/glympse/android/lib/GGroupPrivate;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/dc;->mu:Ljava/lang/String;

    invoke-interface {p2}, Lcom/glympse/android/lib/GGroupPrivate;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/dc;->mD:Ljava/lang/String;

    new-instance v0, Lcom/glympse/android/lib/dl;

    invoke-direct {v0}, Lcom/glympse/android/lib/dl;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/dc;->mE:Lcom/glympse/android/lib/dl;

    iget-object v0, p0, Lcom/glympse/android/lib/dc;->mE:Lcom/glympse/android/lib/dl;

    iput-object v0, p0, Lcom/glympse/android/lib/dc;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/dl;

    invoke-direct {v0}, Lcom/glympse/android/lib/dl;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/dc;->mE:Lcom/glympse/android/lib/dl;

    iget-object v0, p0, Lcom/glympse/android/lib/dc;->mE:Lcom/glympse/android/lib/dl;

    iput-object v0, p0, Lcom/glympse/android/lib/dc;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public process()Z
    .registers 9

    const/16 v7, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/glympse/android/lib/dc;->mE:Lcom/glympse/android/lib/dl;

    iget-object v0, v0, Lcom/glympse/android/lib/dl;->hf:Ljava/lang/String;

    const-string v3, "ok"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/glympse/android/lib/dc;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGroupPrivate;->getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;

    move-result-object v0

    if-nez v0, :cond_1a

    move v1, v2

    :goto_19
    return v1

    :cond_1a
    iget-object v0, p0, Lcom/glympse/android/lib/dc;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/dc;->mE:Lcom/glympse/android/lib/dl;

    iget-wide v3, v3, Lcom/glympse/android/lib/dl;->mR:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-interface {v0, v3, v4}, Lcom/glympse/android/lib/GGroupPrivate;->setEventsNext(J)V

    iget-object v0, p0, Lcom/glympse/android/lib/dc;->mE:Lcom/glympse/android/lib/dl;

    iget-object v0, v0, Lcom/glympse/android/lib/dl;->_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7d

    iget-object v0, p0, Lcom/glympse/android/lib/dc;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/dc;->mE:Lcom/glympse/android/lib/dl;

    iget-object v1, v1, Lcom/glympse/android/lib/dl;->_name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupPrivate;->setName(Ljava/lang/String;)V

    const/high16 v0, 0x8

    :goto_3b
    iget-object v1, p0, Lcom/glympse/android/lib/dc;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGroupPrivate;->clearMembers()V

    iget-object v1, p0, Lcom/glympse/android/lib/dc;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/dc;->mE:Lcom/glympse/android/lib/dl;

    iget-object v3, v3, Lcom/glympse/android/lib/dl;->mk:Lcom/glympse/android/hal/GVector;

    invoke-interface {v1, v3}, Lcom/glympse/android/lib/GGroupPrivate;->mergeMembers(Lcom/glympse/android/hal/GVector;)V

    iget-object v1, p0, Lcom/glympse/android/lib/dc;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    const/4 v3, 0x4

    invoke-interface {v1, v3}, Lcom/glympse/android/lib/GGroupPrivate;->setState(I)V

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/glympse/android/lib/dc;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/dc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v4, p0, Lcom/glympse/android/lib/dc;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v1, v3, v7, v0, v4}, Lcom/glympse/android/lib/GGroupPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    move v1, v2

    goto :goto_19

    :cond_5d
    iget-object v0, p0, Lcom/glympse/android/lib/dc;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    const/16 v2, 0x8

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GGroupPrivate;->setState(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/dc;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/dc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/high16 v3, 0x4

    iget-object v4, p0, Lcom/glympse/android/lib/dc;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v0, v2, v7, v3, v4}, Lcom/glympse/android/lib/GGroupPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/dc;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupManagerPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/dc;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GGroupManagerPrivate;->removeGroup(Lcom/glympse/android/lib/GGroupPrivate;)V

    goto :goto_19

    :cond_7d
    move v0, v1

    goto :goto_3b
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 3

    const-string v0, "groups/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/dc;->mu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/join?invite="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/dc;->mD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0
.end method

.method public userAgent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
