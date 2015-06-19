.class Lcom/glympse/android/lib/ir;
.super Lcom/glympse/android/lib/j;
.source "TicketUpdate.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private hm:Ljava/lang/String;

.field private oh:Lcom/glympse/android/lib/GTicketPrivate;

.field private sL:I

.field private tk:Lcom/glympse/android/lib/is;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;)V
    .registers 4

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/ir;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/ir;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {p2}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ir;->hm:Ljava/lang/String;

    invoke-interface {p2}, Lcom/glympse/android/lib/GTicketPrivate;->getDurationRaw()I

    move-result v0

    iput v0, p0, Lcom/glympse/android/lib/ir;->sL:I

    new-instance v0, Lcom/glympse/android/lib/is;

    invoke-direct {v0}, Lcom/glympse/android/lib/is;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ir;->tk:Lcom/glympse/android/lib/is;

    iget-object v0, p0, Lcom/glympse/android/lib/ir;->tk:Lcom/glympse/android/lib/is;

    iput-object v0, p0, Lcom/glympse/android/lib/ir;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/is;

    invoke-direct {v0}, Lcom/glympse/android/lib/is;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ir;->tk:Lcom/glympse/android/lib/is;

    iget-object v0, p0, Lcom/glympse/android/lib/ir;->tk:Lcom/glympse/android/lib/is;

    iput-object v0, p0, Lcom/glympse/android/lib/ir;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public process()Z
    .registers 7

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/glympse/android/lib/ir;->tk:Lcom/glympse/android/lib/is;

    iget-object v1, v1, Lcom/glympse/android/lib/is;->hf:Ljava/lang/String;

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/glympse/android/lib/ir;->tk:Lcom/glympse/android/lib/is;

    iget-wide v1, v1, Lcom/glympse/android/lib/is;->im:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/glympse/android/lib/ir;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ir;->tk:Lcom/glympse/android/lib/is;

    iget-wide v2, v2, Lcom/glympse/android/lib/is;->im:J

    invoke-interface {v1, v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->setStartTime(J)V

    :cond_20
    iget-object v1, p0, Lcom/glympse/android/lib/ir;->tk:Lcom/glympse/android/lib/is;

    iget-wide v1, v1, Lcom/glympse/android/lib/is;->sK:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/glympse/android/lib/ir;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ir;->tk:Lcom/glympse/android/lib/is;

    iget-wide v2, v2, Lcom/glympse/android/lib/is;->sK:J

    invoke-interface {v1, v2, v3, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setExpireTime(JZ)V

    :cond_31
    iget-object v1, p0, Lcom/glympse/android/lib/ir;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ir;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/4 v3, 0x4

    const/16 v4, 0x10

    iget-object v5, p0, Lcom/glympse/android/lib/ir;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/glympse/android/lib/GTicketPrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    iget-object v1, p0, Lcom/glympse/android/lib/ir;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ir;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    const/high16 v3, 0x8

    iget-object v4, p0, Lcom/glympse/android/lib/ir;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    :goto_48
    return v0

    :cond_49
    iget-object v1, p0, Lcom/glympse/android/lib/ir;->tk:Lcom/glympse/android/lib/is;

    iget-object v1, v1, Lcom/glympse/android/lib/is;->hg:Ljava/lang/String;

    const-string v2, "ticket_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/glympse/android/lib/ir;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ir;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v2}, Lcom/glympse/android/lib/GGlympsePrivate;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-interface {v1, v2, v3, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setExpireTime(JZ)V

    goto :goto_48

    :cond_64
    const/4 v0, 0x0

    goto :goto_48
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 3

    const-string v0, "tickets/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/ir;->hm:Ljava/lang/String;

    if-nez v0, :cond_1a

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_e
    const-string v0, "/update?duration="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/glympse/android/lib/ir;->sL:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0

    :cond_1a
    iget-object v0, p0, Lcom/glympse/android/lib/ir;->hm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e
.end method
