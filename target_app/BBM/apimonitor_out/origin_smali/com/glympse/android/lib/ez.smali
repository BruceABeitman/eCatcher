.class public Lcom/glympse/android/lib/ez;
.super Lcom/glympse/android/lib/k;
.source "InviteView.java"


# instance fields
.field public ph:Lcom/glympse/android/lib/es;

.field public pi:Lcom/glympse/android/lib/eo;

.field public pj:Lcom/glympse/android/lib/er;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V

    return-void
.end method


# virtual methods
.method public endObject(I)Z
    .registers 4

    const/4 v1, 0x1

    if-ne v1, p1, :cond_8

    iget-object v0, p0, Lcom/glympse/android/lib/ez;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V

    :cond_8
    return v1
.end method

.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
    .registers 6

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_b6

    :cond_4
    :goto_4
    return v2

    :pswitch_5
    iget-object v0, p0, Lcom/glympse/android/lib/ez;->he:Ljava/lang/String;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ez;->hf:Ljava/lang/String;

    goto :goto_4

    :pswitch_16
    iget-object v0, p0, Lcom/glympse/android/lib/ez;->he:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ticket_invite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    new-instance v0, Lcom/glympse/android/lib/es;

    iget-object v1, p0, Lcom/glympse/android/lib/ez;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-direct {v0, v1, p1}, Lcom/glympse/android/lib/es;-><init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;I)V

    iput-object v0, p0, Lcom/glympse/android/lib/ez;->ph:Lcom/glympse/android/lib/es;

    iget-object v0, p0, Lcom/glympse/android/lib/ez;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    iget-object v1, p0, Lcom/glympse/android/lib/ez;->ph:Lcom/glympse/android/lib/es;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;)V

    goto :goto_4

    :cond_3d
    const-string v1, "group_invite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    new-instance v0, Lcom/glympse/android/lib/eo;

    iget-object v1, p0, Lcom/glympse/android/lib/ez;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-direct {v0, v1, p1}, Lcom/glympse/android/lib/eo;-><init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;I)V

    iput-object v0, p0, Lcom/glympse/android/lib/ez;->pi:Lcom/glympse/android/lib/eo;

    iget-object v0, p0, Lcom/glympse/android/lib/ez;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    iget-object v1, p0, Lcom/glympse/android/lib/ez;->pi:Lcom/glympse/android/lib/eo;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;)V

    goto :goto_4

    :cond_56
    const-string v1, "ticket_request"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    new-instance v0, Lcom/glympse/android/lib/er;

    iget-object v1, p0, Lcom/glympse/android/lib/ez;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-direct {v0, v1, p1}, Lcom/glympse/android/lib/er;-><init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;I)V

    iput-object v0, p0, Lcom/glympse/android/lib/ez;->pj:Lcom/glympse/android/lib/er;

    iget-object v0, p0, Lcom/glympse/android/lib/ez;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    iget-object v1, p0, Lcom/glympse/android/lib/ez;->pj:Lcom/glympse/android/lib/er;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;)V

    goto :goto_4

    :cond_6f
    const-string v0, "failure"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ez;->hf:Ljava/lang/String;

    const-string v0, "invite_code"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ez;->hg:Ljava/lang/String;

    goto :goto_4

    :cond_80
    iget-object v0, p0, Lcom/glympse/android/lib/ez;->he:Ljava/lang/String;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/ez;->_time:J

    goto/16 :goto_4

    :cond_92
    iget-object v0, p0, Lcom/glympse/android/lib/ez;->he:Ljava/lang/String;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ez;->hg:Ljava/lang/String;

    goto/16 :goto_4

    :cond_a4
    iget-object v0, p0, Lcom/glympse/android/lib/ez;->he:Ljava/lang/String;

    const-string v1, "error_detail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ez;->hh:Ljava/lang/String;

    goto/16 :goto_4

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_5
        :pswitch_16
    .end packed-switch
.end method
