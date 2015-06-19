.class Lcom/glympse/android/lib/jz;
.super Lcom/glympse/android/lib/k;
.source "UserTickets.java"


# instance fields
.field private tm:Lcom/glympse/android/lib/ip;

.field public uE:Lcom/glympse/android/lib/eh;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V

    new-instance v0, Lcom/glympse/android/lib/eh;

    invoke-direct {v0}, Lcom/glympse/android/lib/eh;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jz;->uE:Lcom/glympse/android/lib/eh;

    return-void
.end method

.method private cU()V
    .registers 6

    iget-object v0, p0, Lcom/glympse/android/lib/jz;->tm:Lcom/glympse/android/lib/ip;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/glympse/android/lib/jz;->tm:Lcom/glympse/android/lib/ip;

    iget-object v0, v0, Lcom/glympse/android/lib/ip;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/glympse/android/lib/jz;->uE:Lcom/glympse/android/lib/eh;

    iget-object v2, v2, Lcom/glympse/android/lib/eh;->ne:Lcom/glympse/android/hal/GVector;

    invoke-virtual {v2, v0}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/glympse/android/lib/jz;->uE:Lcom/glympse/android/lib/eh;

    iget-object v2, v2, Lcom/glympse/android/lib/eh;->nS:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->isMine()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/glympse/android/lib/jz;->uE:Lcom/glympse/android/lib/eh;

    iget-object v1, p0, Lcom/glympse/android/lib/jz;->uE:Lcom/glympse/android/lib/eh;

    iget-wide v1, v1, Lcom/glympse/android/lib/eh;->nh:J

    iget-object v3, p0, Lcom/glympse/android/lib/jz;->tm:Lcom/glympse/android/lib/ip;

    iget-wide v3, v3, Lcom/glympse/android/lib/ip;->nh:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/glympse/android/lib/eh;->nh:J

    goto :goto_4
.end method


# virtual methods
.method public endArray(I)Z
    .registers 3

    const/4 v0, 0x3

    if-ne v0, p1, :cond_6

    invoke-direct {p0}, Lcom/glympse/android/lib/jz;->cU()V

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public endObject(I)Z
    .registers 4

    const/4 v1, 0x1

    if-ne v1, p1, :cond_8

    iget-object v0, p0, Lcom/glympse/android/lib/jz;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V

    :cond_8
    return v1
.end method

.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
    .registers 6

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_4a

    :cond_4
    :goto_4
    return v2

    :pswitch_5
    iget-object v0, p0, Lcom/glympse/android/lib/jz;->he:Ljava/lang/String;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/jz;->hf:Ljava/lang/String;

    goto :goto_4

    :pswitch_16
    iget-object v0, p0, Lcom/glympse/android/lib/jz;->he:Ljava/lang/String;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/jz;->_time:J

    goto :goto_4

    :cond_27
    iget-object v0, p0, Lcom/glympse/android/lib/jz;->he:Ljava/lang/String;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/jz;->hg:Ljava/lang/String;

    goto :goto_4

    :cond_38
    iget-object v0, p0, Lcom/glympse/android/lib/jz;->he:Ljava/lang/String;

    const-string v1, "error_detail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/jz;->hh:Ljava/lang/String;

    goto :goto_4

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_16
    .end packed-switch
.end method

.method public startObject(I)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_17

    invoke-direct {p0}, Lcom/glympse/android/lib/jz;->cU()V

    new-instance v0, Lcom/glympse/android/lib/ip;

    iget-object v1, p0, Lcom/glympse/android/lib/jz;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/ip;-><init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;)V

    iput-object v0, p0, Lcom/glympse/android/lib/jz;->tm:Lcom/glympse/android/lib/ip;

    iget-object v0, p0, Lcom/glympse/android/lib/jz;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    iget-object v1, p0, Lcom/glympse/android/lib/jz;->tm:Lcom/glympse/android/lib/ip;

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;I)V

    :cond_17
    return v2
.end method
