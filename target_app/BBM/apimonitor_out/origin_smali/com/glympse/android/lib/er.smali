.class Lcom/glympse/android/lib/er;
.super Lcom/glympse/android/lib/json/JsonHandlerBasic;
.source "InviteRequestParser.java"


# instance fields
.field private _name:Ljava/lang/String;

.field private ew:Ljava/lang/String;

.field private hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

.field private he:Ljava/lang/String;

.field private mA:Ljava/lang/String;

.field private mQ:I

.field private oA:Z

.field private oB:Z

.field private oC:D

.field private oD:D

.field public oh:Lcom/glympse/android/lib/GTicketPrivate;

.field public oz:Lcom/glympse/android/lib/GUserPrivate;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;I)V
    .registers 7

    const-wide/high16 v2, 0x7ff8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonHandlerBasic;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/er;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    iput p2, p0, Lcom/glympse/android/lib/er;->mQ:I

    new-instance v0, Lcom/glympse/android/lib/jj;

    invoke-direct {v0}, Lcom/glympse/android/lib/jj;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/er;->oz:Lcom/glympse/android/lib/GUserPrivate;

    new-instance v0, Lcom/glympse/android/lib/hz;

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/hz;-><init>(Z)V

    iput-object v0, p0, Lcom/glympse/android/lib/er;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iput-boolean v1, p0, Lcom/glympse/android/lib/er;->oA:Z

    iput-boolean v1, p0, Lcom/glympse/android/lib/er;->oB:Z

    iput-wide v2, p0, Lcom/glympse/android/lib/er;->oC:D

    iput-wide v2, p0, Lcom/glympse/android/lib/er;->oD:D

    return-void
.end method


# virtual methods
.method public endObject(I)Z
    .registers 9

    const/4 v0, 0x4

    if-ne v0, p1, :cond_33

    iget-boolean v0, p0, Lcom/glympse/android/lib/er;->oA:Z

    if-eqz v0, :cond_19

    iget-object v6, p0, Lcom/glympse/android/lib/er;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    new-instance v0, Lcom/glympse/android/lib/gw;

    iget-wide v1, p0, Lcom/glympse/android/lib/er;->oC:D

    iget-wide v3, p0, Lcom/glympse/android/lib/er;->oD:D

    iget-object v5, p0, Lcom/glympse/android/lib/er;->_name:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/glympse/android/lib/gw;-><init>(DDLjava/lang/String;)V

    invoke-interface {v6, v0}, Lcom/glympse/android/lib/GTicketPrivate;->setDestination(Lcom/glympse/android/api/GPlace;)V

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0

    :cond_19
    iget-boolean v0, p0, Lcom/glympse/android/lib/er;->oB:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/glympse/android/lib/er;->mA:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/lib/ej;->t(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/glympse/android/lib/er;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    new-instance v2, Lcom/glympse/android/lib/ej;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/glympse/android/lib/er;->_name:Ljava/lang/String;

    iget-object v5, p0, Lcom/glympse/android/lib/er;->ew:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/glympse/android/lib/ej;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/glympse/android/lib/GTicketPrivate;->addInvite(Lcom/glympse/android/api/GInvite;)Z

    goto :goto_17

    :cond_33
    iget v0, p0, Lcom/glympse/android/lib/er;->mQ:I

    if-ne p1, v0, :cond_17

    iget-object v0, p0, Lcom/glympse/android/lib/er;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V

    goto :goto_17
.end method

.method public endPair(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
    .registers 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_e0

    :cond_5
    :goto_5
    return v3

    :pswitch_6
    iget-object v0, p0, Lcom/glympse/android/lib/er;->he:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/glympse/android/lib/er;->oz:Lcom/glympse/android/lib/GUserPrivate;

    invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserPrivate;->setId(Ljava/lang/String;)V

    goto :goto_5

    :cond_1a
    iget-object v0, p0, Lcom/glympse/android/lib/er;->he:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/glympse/android/lib/er;->oz:Lcom/glympse/android/lib/GUserPrivate;

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserPrivate;->setNicknameCore(Ljava/lang/String;)V

    goto :goto_5

    :cond_2e
    iget-object v0, p0, Lcom/glympse/android/lib/er;->he:Ljava/lang/String;

    const-string v1, "avatar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/glympse/android/lib/er;->oz:Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserPrivate;->getAvatar()Lcom/glympse/android/api/GImage;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GImagePrivate;

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GImagePrivate;->setUrl(Ljava/lang/String;)V

    goto :goto_5

    :cond_48
    iget-object v0, p0, Lcom/glympse/android/lib/er;->he:Ljava/lang/String;

    const-string v1, "duration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/glympse/android/lib/er;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setDuration(I)V

    goto :goto_5

    :cond_5d
    iget-object v0, p0, Lcom/glympse/android/lib/er;->he:Ljava/lang/String;

    const-string v1, "end_time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/glympse/android/lib/er;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/lib/GTicketPrivate;->setExpireTime(JZ)V

    goto :goto_5

    :cond_71
    iget-object v0, p0, Lcom/glympse/android/lib/er;->he:Ljava/lang/String;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/glympse/android/lib/er;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GTicketPrivate;->setMessage(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_85
    iget-object v0, p0, Lcom/glympse/android/lib/er;->he:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/er;->_name:Ljava/lang/String;

    goto/16 :goto_5

    :cond_97
    iget-object v0, p0, Lcom/glympse/android/lib/er;->he:Ljava/lang/String;

    const-string v1, "lat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/er;->oC:D

    goto/16 :goto_5

    :cond_a9
    iget-object v0, p0, Lcom/glympse/android/lib/er;->he:Ljava/lang/String;

    const-string v1, "lng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/er;->oD:D

    goto/16 :goto_5

    :cond_bb
    iget-object v0, p0, Lcom/glympse/android/lib/er;->he:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cd

    invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/er;->mA:Ljava/lang/String;

    goto/16 :goto_5

    :cond_cd
    iget-object v0, p0, Lcom/glympse/android/lib/er;->he:Ljava/lang/String;

    const-string v1, "address"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/er;->ew:Ljava/lang/String;

    goto/16 :goto_5

    nop

    :pswitch_data_e0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_85
    .end packed-switch
.end method

.method public startObject(I)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_16

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/er;->_name:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/er;->he:Ljava/lang/String;

    const-string v1, "destination"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iput-boolean v2, p0, Lcom/glympse/android/lib/er;->oA:Z

    iput-boolean v3, p0, Lcom/glympse/android/lib/er;->oB:Z

    :cond_16
    :goto_16
    return v2

    :cond_17
    iget-object v0, p0, Lcom/glympse/android/lib/er;->he:Ljava/lang/String;

    const-string v1, "recipient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iput-boolean v3, p0, Lcom/glympse/android/lib/er;->oA:Z

    iput-boolean v2, p0, Lcom/glympse/android/lib/er;->oB:Z

    goto :goto_16
.end method

.method public startPair(ILjava/lang/String;)Z
    .registers 4

    iput-object p2, p0, Lcom/glympse/android/lib/er;->he:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method
