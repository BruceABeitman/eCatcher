.class Lcom/glympse/android/lib/ct;
.super Lcom/glympse/android/lib/j;
.source "GroupCreate.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private ms:Lcom/glympse/android/lib/GGroupPrivate;

.field private mt:Lcom/glympse/android/lib/cu;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;)V
    .registers 5

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/ct;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/ct;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    new-instance v0, Lcom/glympse/android/lib/cu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/cu;-><init>(Lcom/glympse/android/lib/ct$1;)V

    iput-object v0, p0, Lcom/glympse/android/lib/ct;->mt:Lcom/glympse/android/lib/cu;

    iget-object v0, p0, Lcom/glympse/android/lib/ct;->mt:Lcom/glympse/android/lib/cu;

    iput-object v0, p0, Lcom/glympse/android/lib/ct;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    new-instance v0, Lcom/glympse/android/lib/cu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/cu;-><init>(Lcom/glympse/android/lib/ct$1;)V

    iput-object v0, p0, Lcom/glympse/android/lib/ct;->mt:Lcom/glympse/android/lib/cu;

    iget-object v0, p0, Lcom/glympse/android/lib/ct;->mt:Lcom/glympse/android/lib/cu;

    iput-object v0, p0, Lcom/glympse/android/lib/ct;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public process()Z
    .registers 7

    const/16 v5, 0xa

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/glympse/android/lib/ct;->mt:Lcom/glympse/android/lib/cu;

    iget-object v1, v1, Lcom/glympse/android/lib/cu;->hf:Ljava/lang/String;

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/glympse/android/lib/ct;->mt:Lcom/glympse/android/lib/cu;

    iget-object v1, v1, Lcom/glympse/android/lib/cu;->mu:Ljava/lang/String;

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/glympse/android/lib/ct;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGroupPrivate;->getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;

    move-result-object v1

    if-nez v1, :cond_22

    :goto_21
    return v0

    :cond_22
    iget-object v1, p0, Lcom/glympse/android/lib/ct;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ct;->mt:Lcom/glympse/android/lib/cu;

    iget-object v2, v2, Lcom/glympse/android/lib/cu;->mu:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/glympse/android/lib/GGroupPrivate;->setId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/glympse/android/lib/ct;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/glympse/android/lib/GGroupPrivate;->setState(I)V

    iget-object v1, p0, Lcom/glympse/android/lib/ct;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ct;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/high16 v3, 0x10

    iget-object v4, p0, Lcom/glympse/android/lib/ct;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v1, v2, v5, v3, v4}, Lcom/glympse/android/lib/GGroupPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_21

    :cond_3d
    iget-object v0, p0, Lcom/glympse/android/lib/ct;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupPrivate;->setState(I)V

    iget-object v0, p0, Lcom/glympse/android/lib/ct;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/ct;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/high16 v2, 0x4

    iget-object v3, p0, Lcom/glympse/android/lib/ct;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v0, v1, v5, v2, v3}, Lcom/glympse/android/lib/GGroupPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/glympse/android/lib/ct;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getGroupManager()Lcom/glympse/android/api/GGroupManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupManagerPrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/ct;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupManagerPrivate;->removeGroup(Lcom/glympse/android/lib/GGroupPrivate;)V

    const/4 v0, 0x0

    goto :goto_21
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 4

    const-string v0, "users/self/create_group?public="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/ct;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGroupPrivate;->isPublic()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "true"

    :goto_f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/ct;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGroupPrivate;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    const-string v1, "&name="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    const/4 v0, 0x1

    return v0

    :cond_28
    const-string v0, "false"

    goto :goto_f
.end method

.method public userAgent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
