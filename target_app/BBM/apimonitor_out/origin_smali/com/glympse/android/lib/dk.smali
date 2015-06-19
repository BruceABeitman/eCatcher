.class Lcom/glympse/android/lib/dk;
.super Lcom/glympse/android/lib/k;
.source "GroupMemberView.java"


# instance fields
.field public mN:Lcom/glympse/android/lib/GGroupMemberPrivate;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V

    new-instance v0, Lcom/glympse/android/lib/dg;

    invoke-direct {v0}, Lcom/glympse/android/lib/dg;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/dk;->mN:Lcom/glympse/android/lib/GGroupMemberPrivate;

    return-void
.end method


# virtual methods
.method public endObject(I)Z
    .registers 3

    packed-switch p1, :pswitch_data_c

    :goto_3
    const/4 v0, 0x1

    return v0

    :pswitch_5
    iget-object v0, p0, Lcom/glympse/android/lib/dk;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V

    goto :goto_3

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
    .registers 6

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_5e

    :cond_4
    :goto_4
    return v2

    :pswitch_5
    iget-object v0, p0, Lcom/glympse/android/lib/dk;->he:Ljava/lang/String;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/dk;->hf:Ljava/lang/String;

    goto :goto_4

    :pswitch_16
    iget-object v0, p0, Lcom/glympse/android/lib/dk;->he:Ljava/lang/String;

    const-string v1, "invite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/glympse/android/lib/dk;->mN:Lcom/glympse/android/lib/GGroupMemberPrivate;

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GGroupMemberPrivate;->setInviteCode(Ljava/lang/String;)V

    goto :goto_4

    :cond_2a
    iget-object v0, p0, Lcom/glympse/android/lib/dk;->he:Ljava/lang/String;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/dk;->_time:J

    goto :goto_4

    :cond_3b
    iget-object v0, p0, Lcom/glympse/android/lib/dk;->he:Ljava/lang/String;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/dk;->hg:Ljava/lang/String;

    goto :goto_4

    :cond_4c
    iget-object v0, p0, Lcom/glympse/android/lib/dk;->he:Ljava/lang/String;

    const-string v1, "error_detail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/dk;->hh:Ljava/lang/String;

    goto :goto_4

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_16
    .end packed-switch
.end method
