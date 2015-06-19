.class Lcom/glympse/android/lib/cx;
.super Lcom/glympse/android/lib/k;
.source "GroupEventsParser.java"


# instance fields
.field public S:Lcom/glympse/android/hal/GVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/glympse/android/hal/GVector",
            "<",
            "Lcom/glympse/android/lib/cz;",
            ">;"
        }
    .end annotation
.end field

.field public my:J

.field public mz:Lcom/glympse/android/lib/cz;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/glympse/android/lib/cx;->my:J

    new-instance v0, Lcom/glympse/android/hal/GVector;

    invoke-direct {v0}, Lcom/glympse/android/hal/GVector;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/cx;->S:Lcom/glympse/android/hal/GVector;

    return-void
.end method


# virtual methods
.method public endObject(I)Z
    .registers 4

    packed-switch p1, :pswitch_data_1e

    :cond_3
    :goto_3
    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_5
    iget-object v0, p0, Lcom/glympse/android/lib/cx;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V

    goto :goto_3

    :pswitch_b
    iget-object v0, p0, Lcom/glympse/android/lib/cx;->mz:Lcom/glympse/android/lib/cz;

    iget-object v0, v0, Lcom/glympse/android/lib/cz;->mA:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/glympse/android/lib/cx;->S:Lcom/glympse/android/hal/GVector;

    iget-object v1, p0, Lcom/glympse/android/lib/cx;->mz:Lcom/glympse/android/lib/cz;

    invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    nop

    :pswitch_data_1e
    .packed-switch 0x2
        :pswitch_5
        :pswitch_3
        :pswitch_b
    .end packed-switch
.end method

.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
    .registers 6

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_50

    :cond_4
    :goto_4
    :pswitch_4
    return v2

    :pswitch_5
    iget-object v0, p0, Lcom/glympse/android/lib/cx;->he:Ljava/lang/String;

    const-string v1, "next"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/cx;->my:J

    goto :goto_4

    :pswitch_16
    iget-object v0, p0, Lcom/glympse/android/lib/cx;->he:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/glympse/android/lib/cx;->mz:Lcom/glympse/android/lib/cz;

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/glympse/android/lib/cz;->mA:Ljava/lang/String;

    goto :goto_4

    :cond_29
    iget-object v0, p0, Lcom/glympse/android/lib/cx;->he:Ljava/lang/String;

    const-string v1, "member"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/glympse/android/lib/cx;->mz:Lcom/glympse/android/lib/cz;

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/glympse/android/lib/cz;->mB:Ljava/lang/String;

    goto :goto_4

    :cond_3c
    iget-object v0, p0, Lcom/glympse/android/lib/cx;->he:Ljava/lang/String;

    const-string v1, "invite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/glympse/android/lib/cx;->mz:Lcom/glympse/android/lib/cz;

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/glympse/android/lib/cz;->js:Ljava/lang/String;

    goto :goto_4

    nop

    :pswitch_data_50
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_16
    .end packed-switch
.end method

.method public startObject(I)Z
    .registers 4

    packed-switch p1, :pswitch_data_16

    :goto_3
    const/4 v0, 0x1

    return v0

    :pswitch_5
    new-instance v0, Lcom/glympse/android/lib/cy;

    invoke-direct {v0}, Lcom/glympse/android/lib/cy;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/cx;->mz:Lcom/glympse/android/lib/cz;

    iget-object v0, p0, Lcom/glympse/android/lib/cx;->mz:Lcom/glympse/android/lib/cz;

    invoke-static {}, Lcom/glympse/android/hal/Helpers;->emptyString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/glympse/android/lib/cz;->js:Ljava/lang/String;

    goto :goto_3

    nop

    :pswitch_data_16
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method
