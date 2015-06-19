.class Lcom/glympse/android/lib/in;
.super Lcom/glympse/android/lib/k;
.source "TicketParsers.java"


# instance fields
.field private mp:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GInvitePrivate;",
            ">;"
        }
    .end annotation
.end field

.field private oi:Lcom/glympse/android/lib/GInvitePrivate;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;Lcom/glympse/android/hal/GVector;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/glympse/android/lib/json/GJsonHandlerStack;",
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/GInvitePrivate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/in;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    iput-object p2, p0, Lcom/glympse/android/lib/in;->mp:Lcom/glympse/android/hal/GVector;

    return-void
.end method


# virtual methods
.method public endObject(I)Z
    .registers 4

    packed-switch p1, :pswitch_data_16

    :goto_3
    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_5
    iget-object v0, p0, Lcom/glympse/android/lib/in;->mp:Lcom/glympse/android/hal/GVector;

    iget-object v1, p0, Lcom/glympse/android/lib/in;->oi:Lcom/glympse/android/lib/GInvitePrivate;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glympse/android/lib/in;->oi:Lcom/glympse/android/lib/GInvitePrivate;

    goto :goto_3

    :pswitch_10
    iget-object v0, p0, Lcom/glympse/android/lib/in;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V

    goto :goto_3

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_10
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_128

    :cond_5
    :goto_5
    return v3

    :pswitch_6
    iget-object v0, p0, Lcom/glympse/android/lib/in;->he:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/in;->oi:Lcom/glympse/android/lib/GInvitePrivate;

    invoke-static {v0}, Lcom/glympse/android/lib/TicketCode;->cleanupInviteCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GInvitePrivate;->setCode(Ljava/lang/String;)V

    goto :goto_5

    :cond_1e
    iget-object v0, p0, Lcom/glympse/android/lib/in;->he:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/glympse/android/lib/in;->oi:Lcom/glympse/android/lib/GInvitePrivate;

    invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setUrl(Ljava/lang/String;)V

    goto :goto_5

    :cond_32
    iget-object v0, p0, Lcom/glympse/android/lib/in;->he:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/glympse/android/lib/in;->oi:Lcom/glympse/android/lib/GInvitePrivate;

    invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setText(Ljava/lang/String;)V

    goto :goto_5

    :cond_46
    iget-object v0, p0, Lcom/glympse/android/lib/in;->he:Ljava/lang/String;

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getString(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/in;->oi:Lcom/glympse/android/lib/GInvitePrivate;

    invoke-static {v0}, Lcom/glympse/android/lib/ej;->u(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GInvitePrivate;->setState(I)V

    goto :goto_5

    :cond_5e
    iget-object v0, p0, Lcom/glympse/android/lib/in;->he:Ljava/lang/String;

    const-string v1, "created"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/glympse/android/lib/in;->oi:Lcom/glympse/android/lib/GInvitePrivate;

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GInvitePrivate;->setCreatedTime(J)V

    goto :goto_5

    :cond_72
    iget-object v0, p0, Lcom/glympse/android/lib/in;->he:Ljava/lang/String;

    const-string v1, "last_view"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    iget-object v0, p0, Lcom/glympse/android/lib/in;->oi:Lcom/glympse/android/lib/GInvitePrivate;

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GInvitePrivate;->setLastViewTime(J)V

    goto :goto_5

    :cond_86
    iget-object v0, p0, Lcom/glympse/android/lib/in;->he:Ljava/lang/String;

    const-string v1, "viewers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    iget-object v0, p0, Lcom/glympse/android/lib/in;->oi:Lcom/glympse/android/lib/GInvitePrivate;

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setViewers(I)V

    goto/16 :goto_5

    :cond_9c
    iget-object v0, p0, Lcom/glympse/android/lib/in;->he:Ljava/lang/String;

    const-string v1, "viewing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/glympse/android/lib/in;->oi:Lcom/glympse/android/lib/GInvitePrivate;

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setViewing(I)V

    goto/16 :goto_5

    :cond_b2
    iget-object v0, p0, Lcom/glympse/android/lib/in;->he:Ljava/lang/String;

    const-string v1, "visible"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/glympse/android/lib/in;->oi:Lcom/glympse/android/lib/GInvitePrivate;

    invoke-interface {v0, v3}, Lcom/glympse/android/lib/GInvitePrivate;->setVisible(Z)V

    goto/16 :goto_5

    :pswitch_cf
    iget-object v0, p0, Lcom/glympse/android/lib/in;->he:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    invoke-virtual {p2, v3}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getString(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/lib/in;->oi:Lcom/glympse/android/lib/GInvitePrivate;

    invoke-static {v0}, Lcom/glympse/android/lib/ej;->t(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GInvitePrivate;->setType(I)V

    goto/16 :goto_5

    :cond_e8
    iget-object v0, p0, Lcom/glympse/android/lib/in;->he:Ljava/lang/String;

    const-string v1, "subtype"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fd

    iget-object v0, p0, Lcom/glympse/android/lib/in;->oi:Lcom/glympse/android/lib/GInvitePrivate;

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setSubtype(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_fd
    iget-object v0, p0, Lcom/glympse/android/lib/in;->he:Ljava/lang/String;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/glympse/android/lib/in;->oi:Lcom/glympse/android/lib/GInvitePrivate;

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setName(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_112
    iget-object v0, p0, Lcom/glympse/android/lib/in;->he:Ljava/lang/String;

    const-string v1, "address"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/glympse/android/lib/in;->oi:Lcom/glympse/android/lib/GInvitePrivate;

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GInvitePrivate;->setAddress(Ljava/lang/String;)V

    goto/16 :goto_5

    nop

    :pswitch_data_128
    .packed-switch 0x3
        :pswitch_6
        :pswitch_cf
    .end packed-switch
.end method

.method public startObject(I)Z
    .registers 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_a

    new-instance v0, Lcom/glympse/android/lib/ej;

    invoke-direct {v0}, Lcom/glympse/android/lib/ej;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/in;->oi:Lcom/glympse/android/lib/GInvitePrivate;

    :cond_a
    const/4 v0, 0x1

    return v0
.end method
