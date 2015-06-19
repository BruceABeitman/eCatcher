.class Lcom/glympse/android/lib/dm;
.super Lcom/glympse/android/lib/j;
.source "GroupView.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private mE:Lcom/glympse/android/lib/dl;

.field private ms:Lcom/glympse/android/lib/GGroupPrivate;

.field private mu:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;)V
    .registers 4

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/dm;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/dm;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    iget-object v0, p0, Lcom/glympse/android/lib/dm;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGroupPrivate;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/dm;->mu:Ljava/lang/String;

    new-instance v0, Lcom/glympse/android/lib/dl;

    invoke-direct {v0}, Lcom/glympse/android/lib/dl;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/dm;->mE:Lcom/glympse/android/lib/dl;

    iget-object v0, p0, Lcom/glympse/android/lib/dm;->mE:Lcom/glympse/android/lib/dl;

    iput-object v0, p0, Lcom/glympse/android/lib/dm;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public static a(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;Lcom/glympse/android/lib/dl;)V
    .registers 8

    invoke-interface {p1}, Lcom/glympse/android/lib/GGroupPrivate;->getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-interface {p1}, Lcom/glympse/android/lib/GGroupPrivate;->getState()I

    move-result v2

    if-ne v1, v2, :cond_11

    const/16 v0, 0x100

    :cond_11
    iget-wide v1, p2, Lcom/glympse/android/lib/dl;->mR:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-interface {p1, v1, v2}, Lcom/glympse/android/lib/GGroupPrivate;->setEventsNext(J)V

    iget-object v1, p2, Lcom/glympse/android/lib/dl;->_name:Ljava/lang/String;

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    iget-object v1, p2, Lcom/glympse/android/lib/dl;->_name:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/glympse/android/lib/GGroupPrivate;->setName(Ljava/lang/String;)V

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    :cond_29
    iget-object v1, p2, Lcom/glympse/android/lib/dl;->mk:Lcom/glympse/android/hal/GVector;

    invoke-interface {p1, v1}, Lcom/glympse/android/lib/GGroupPrivate;->mergeMembers(Lcom/glympse/android/hal/GVector;)V

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Lcom/glympse/android/lib/GGroupPrivate;->setState(I)V

    if-eqz v0, :cond_6

    const/16 v1, 0xa

    invoke-interface {p1, p0, v1, v0, p1}, Lcom/glympse/android/lib/GGroupPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_6
.end method


# virtual methods
.method public cancel()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/dl;

    invoke-direct {v0}, Lcom/glympse/android/lib/dl;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/dm;->mE:Lcom/glympse/android/lib/dl;

    iget-object v0, p0, Lcom/glympse/android/lib/dm;->mE:Lcom/glympse/android/lib/dl;

    iput-object v0, p0, Lcom/glympse/android/lib/dm;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public process()Z
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/dm;->mE:Lcom/glympse/android/lib/dl;

    iget-object v0, v0, Lcom/glympse/android/lib/dl;->hf:Ljava/lang/String;

    const-string v2, "ok"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/glympse/android/lib/dm;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/dm;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/dm;->mE:Lcom/glympse/android/lib/dl;

    invoke-static {v0, v2, v3}, Lcom/glympse/android/lib/dm;->a(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;Lcom/glympse/android/lib/dl;)V

    move v0, v1

    :goto_17
    return v0

    :cond_18
    iget-object v0, p0, Lcom/glympse/android/lib/dm;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupPrivate;->setState(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/dm;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupManagerPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/dm;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GGroupManagerPrivate;->removeGroup(Lcom/glympse/android/lib/GGroupPrivate;)V

    iget-object v0, p0, Lcom/glympse/android/lib/dm;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/dm;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/glympse/android/lib/dm;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v0, v2, v3, v1, v4}, Lcom/glympse/android/lib/GGroupPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_17
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 3

    const-string v0, "groups/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/dm;->mu:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    return v0
.end method
