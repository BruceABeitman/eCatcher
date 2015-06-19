.class Lcom/glympse/android/lib/ig;
.super Lcom/glympse/android/lib/j;
.source "TicketExpire.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private oh:Lcom/glympse/android/lib/GTicketPrivate;

.field private te:Lcom/glympse/android/lib/ih;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GTicket;)V
    .registers 4

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/ig;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    check-cast p2, Lcom/glympse/android/lib/GTicketPrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/ig;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    new-instance v0, Lcom/glympse/android/lib/ih;

    invoke-direct {v0}, Lcom/glympse/android/lib/ih;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ig;->te:Lcom/glympse/android/lib/ih;

    iget-object v0, p0, Lcom/glympse/android/lib/ig;->te:Lcom/glympse/android/lib/ih;

    iput-object v0, p0, Lcom/glympse/android/lib/ig;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/ih;

    invoke-direct {v0}, Lcom/glympse/android/lib/ih;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ig;->te:Lcom/glympse/android/lib/ih;

    iget-object v0, p0, Lcom/glympse/android/lib/ig;->te:Lcom/glympse/android/lib/ih;

    iput-object v0, p0, Lcom/glympse/android/lib/ig;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public process()Z
    .registers 7

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/glympse/android/lib/ig;->te:Lcom/glympse/android/lib/ih;

    iget-object v1, v1, Lcom/glympse/android/lib/ih;->hf:Ljava/lang/String;

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/glympse/android/lib/ig;->te:Lcom/glympse/android/lib/ih;

    iget-wide v1, v1, Lcom/glympse/android/lib/ih;->sK:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/glympse/android/lib/ig;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ig;->te:Lcom/glympse/android/lib/ih;

    iget-wide v2, v2, Lcom/glympse/android/lib/ih;->sK:J

    invoke-interface {v1, v2, v3, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setExpireTime(JZ)V

    :cond_20
    :goto_20
    return v0

    :cond_21
    iget-object v1, p0, Lcom/glympse/android/lib/ig;->te:Lcom/glympse/android/lib/ih;

    iget-object v1, v1, Lcom/glympse/android/lib/ih;->hg:Ljava/lang/String;

    const-string v2, "ticket_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/glympse/android/lib/ig;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ig;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-interface {v1, v2, v3, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setExpireTime(JZ)V

    goto :goto_20

    :cond_3c
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 3

    const-string v0, "tickets/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/ig;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/expire"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    return v0
.end method
