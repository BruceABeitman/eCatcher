.class public Lcom/glympse/android/lib/iu;
.super Lcom/glympse/android/lib/k;
.source "TicketView.java"


# instance fields
.field public tm:Lcom/glympse/android/lib/ip;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V

    return-void
.end method


# virtual methods
.method public endObject(I)Z
    .registers 4

    const/4 v1, 0x1

    if-ne v1, p1, :cond_8

    iget-object v0, p0, Lcom/glympse/android/lib/iu;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V

    :cond_8
    return v1
.end method

.method public bridge synthetic endPair(I)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/glympse/android/lib/k;->endPair(I)Z

    move-result v0

    return v0
.end method

.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
    .registers 6

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_4a

    :cond_4
    :goto_4
    return v2

    :pswitch_5
    iget-object v0, p0, Lcom/glympse/android/lib/iu;->he:Ljava/lang/String;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/iu;->hf:Ljava/lang/String;

    goto :goto_4

    :pswitch_16
    iget-object v0, p0, Lcom/glympse/android/lib/iu;->he:Ljava/lang/String;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/iu;->_time:J

    goto :goto_4

    :cond_27
    iget-object v0, p0, Lcom/glympse/android/lib/iu;->he:Ljava/lang/String;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/iu;->hg:Ljava/lang/String;

    goto :goto_4

    :cond_38
    iget-object v0, p0, Lcom/glympse/android/lib/iu;->he:Ljava/lang/String;

    const-string v1, "error_detail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/iu;->hh:Ljava/lang/String;

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

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1e

    iget-object v0, p0, Lcom/glympse/android/lib/iu;->he:Ljava/lang/String;

    const-string v1, "response"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/glympse/android/lib/ip;

    iget-object v1, p0, Lcom/glympse/android/lib/iu;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/ip;-><init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;)V

    iput-object v0, p0, Lcom/glympse/android/lib/iu;->tm:Lcom/glympse/android/lib/ip;

    iget-object v0, p0, Lcom/glympse/android/lib/iu;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    iget-object v1, p0, Lcom/glympse/android/lib/iu;->tm:Lcom/glympse/android/lib/ip;

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;I)V

    :cond_1e
    return v2
.end method

.method public bridge synthetic startPair(ILjava/lang/String;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/glympse/android/lib/k;->startPair(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method
