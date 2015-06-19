.class Lcom/glympse/android/lib/cv;
.super Lcom/glympse/android/lib/j;
.source "GroupEvents.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private mq:J

.field private ms:Lcom/glympse/android/lib/GGroupPrivate;

.field private mu:Ljava/lang/String;

.field private mv:Lcom/glympse/android/lib/cw;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;)V
    .registers 5

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/cv;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/cv;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {p2}, Lcom/glympse/android/lib/GGroupPrivate;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/cv;->mu:Ljava/lang/String;

    invoke-interface {p2}, Lcom/glympse/android/lib/GGroupPrivate;->getEventsNext()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/cv;->mq:J

    new-instance v0, Lcom/glympse/android/lib/cw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/cw;-><init>(Lcom/glympse/android/lib/cv$1;)V

    iput-object v0, p0, Lcom/glympse/android/lib/cv;->mv:Lcom/glympse/android/lib/cw;

    iget-object v0, p0, Lcom/glympse/android/lib/cv;->mv:Lcom/glympse/android/lib/cw;

    iput-object v0, p0, Lcom/glympse/android/lib/cv;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method private a(Lcom/glympse/android/lib/cx;)V
    .registers 8

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/glympse/android/lib/cv;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGroupPrivate;->getGlympse()Lcom/glympse/android/lib/GGlympsePrivate;

    move-result-object v0

    if-nez v0, :cond_a

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/glympse/android/lib/cv;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    iget-wide v1, p1, Lcom/glympse/android/lib/cx;->my:J

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GGroupPrivate;->setEventsNext(J)V

    iget-object v0, p1, Lcom/glympse/android/lib/cx;->S:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_19
    if-ge v2, v3, :cond_9

    iget-object v0, p1, Lcom/glympse/android/lib/cx;->S:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/cz;

    iget-object v1, v0, Lcom/glympse/android/lib/cz;->mA:Ljava/lang/String;

    const-string v4, "join"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[GroupEvent.join] Group: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/glympse/android/lib/cv;->mu:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " User: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/glympse/android/lib/cz;->mB:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Invite: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/glympse/android/lib/cz;->js:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v1, Lcom/glympse/android/lib/dg;

    invoke-direct {v1}, Lcom/glympse/android/lib/dg;-><init>()V

    iget-object v4, v0, Lcom/glympse/android/lib/cz;->mB:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/glympse/android/lib/GGroupMemberPrivate;->setUserId(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/glympse/android/lib/cz;->js:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGroupMemberPrivate;->setInviteCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/cv;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupPrivate;->addMember(Lcom/glympse/android/lib/GGroupMemberPrivate;)V

    :cond_6d
    :goto_6d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_19

    :cond_71
    iget-object v1, v0, Lcom/glympse/android/lib/cz;->mA:Ljava/lang/String;

    const-string v4, "leave"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[GroupEvent.leave] Group: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/glympse/android/lib/cv;->mu:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " User: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/glympse/android/lib/cz;->mB:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/glympse/android/lib/cv;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    iget-object v0, v0, Lcom/glympse/android/lib/cz;->mB:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGroupPrivate;->findMemberByUserId(Ljava/lang/String;)Lcom/glympse/android/api/GGroupMember;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GGroupMemberPrivate;

    if-eqz v0, :cond_6d

    iget-object v1, p0, Lcom/glympse/android/lib/cv;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGroupPrivate;->removeMember(Lcom/glympse/android/lib/GGroupMemberPrivate;)V

    goto :goto_6d

    :cond_ad
    iget-object v1, v0, Lcom/glympse/android/lib/cz;->mA:Ljava/lang/String;

    const-string v4, "invite"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c1

    iget-object v1, v0, Lcom/glympse/android/lib/cz;->mA:Ljava/lang/String;

    const-string v4, "swap"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    :cond_c1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[GroupEvent."

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/glympse/android/lib/cz;->mA:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] Group: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/glympse/android/lib/cv;->mu:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " User: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/glympse/android/lib/cz;->mB:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " Invite: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/glympse/android/lib/cz;->js:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/glympse/android/lib/cv;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    iget-object v4, v0, Lcom/glympse/android/lib/cz;->mB:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/glympse/android/lib/GGroupPrivate;->findMemberByUserId(Ljava/lang/String;)Lcom/glympse/android/api/GGroupMember;

    move-result-object v1

    check-cast v1, Lcom/glympse/android/lib/GGroupMemberPrivate;

    if-nez v1, :cond_11b

    new-instance v1, Lcom/glympse/android/lib/dg;

    invoke-direct {v1}, Lcom/glympse/android/lib/dg;-><init>()V

    iget-object v4, v0, Lcom/glympse/android/lib/cz;->mB:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/glympse/android/lib/GGroupMemberPrivate;->setUserId(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/glympse/android/lib/cz;->js:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGroupMemberPrivate;->setInviteCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/cv;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupPrivate;->addMember(Lcom/glympse/android/lib/GGroupMemberPrivate;)V

    goto/16 :goto_6d

    :cond_11b
    iget-object v4, p0, Lcom/glympse/android/lib/cv;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    iget-object v0, v0, Lcom/glympse/android/lib/cz;->js:Ljava/lang/String;

    invoke-interface {v4, v1, v0}, Lcom/glympse/android/lib/GGroupPrivate;->mergeMember(Lcom/glympse/android/lib/GGroupMemberPrivate;Ljava/lang/String;)V

    goto/16 :goto_6d
.end method


# virtual methods
.method public cancel()V
    .registers 3

    new-instance v0, Lcom/glympse/android/lib/cw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/cw;-><init>(Lcom/glympse/android/lib/cv$1;)V

    iput-object v0, p0, Lcom/glympse/android/lib/cv;->mv:Lcom/glympse/android/lib/cw;

    iget-object v0, p0, Lcom/glympse/android/lib/cv;->mv:Lcom/glympse/android/lib/cw;

    iput-object v0, p0, Lcom/glympse/android/lib/cv;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public process()Z
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/cv;->mv:Lcom/glympse/android/lib/cw;

    iget-object v0, v0, Lcom/glympse/android/lib/cw;->hf:Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/glympse/android/lib/cv;->mv:Lcom/glympse/android/lib/cw;

    iget-object v0, v0, Lcom/glympse/android/lib/cw;->mw:Lcom/glympse/android/lib/dl;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/glympse/android/lib/cv;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v1, p0, Lcom/glympse/android/lib/cv;->ms:Lcom/glympse/android/lib/GGroupPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/cv;->mv:Lcom/glympse/android/lib/cw;

    iget-object v2, v2, Lcom/glympse/android/lib/cw;->mw:Lcom/glympse/android/lib/dl;

    invoke-static {v0, v1, v2}, Lcom/glympse/android/lib/dm;->a(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GGroupPrivate;Lcom/glympse/android/lib/dl;)V

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    iget-object v0, p0, Lcom/glympse/android/lib/cv;->mv:Lcom/glympse/android/lib/cw;

    iget-object v0, v0, Lcom/glympse/android/lib/cw;->mx:Lcom/glympse/android/lib/cx;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/glympse/android/lib/cv;->mv:Lcom/glympse/android/lib/cw;

    iget-object v0, v0, Lcom/glympse/android/lib/cw;->mx:Lcom/glympse/android/lib/cx;

    invoke-direct {p0, v0}, Lcom/glympse/android/lib/cv;->a(Lcom/glympse/android/lib/cx;)V

    goto :goto_1d

    :cond_2d
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 4

    const-string v0, "groups/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/cv;->mu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/events?next="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/glympse/android/lib/cv;->mq:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0
.end method
