.class Lcom/glympse/android/lib/cu;
.super Lcom/glympse/android/lib/k;
.source "GroupCreate.java"


# instance fields
.field public mu:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glympse/android/lib/ct$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/glympse/android/lib/cu;-><init>()V

    return-void
.end method


# virtual methods
.method public endObject(I)Z
    .registers 4

    const/4 v1, 0x1

    if-ne v1, p1, :cond_8

    iget-object v0, p0, Lcom/glympse/android/lib/cu;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V

    :cond_8
    return v1
.end method

.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
    .registers 6

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_5a

    :cond_4
    :goto_4
    return v2

    :pswitch_5
    iget-object v0, p0, Lcom/glympse/android/lib/cu;->he:Ljava/lang/String;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/cu;->hf:Ljava/lang/String;

    goto :goto_4

    :pswitch_16
    iget-object v0, p0, Lcom/glympse/android/lib/cu;->he:Ljava/lang/String;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/cu;->mu:Ljava/lang/String;

    goto :goto_4

    :cond_27
    iget-object v0, p0, Lcom/glympse/android/lib/cu;->he:Ljava/lang/String;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/cu;->_time:J

    goto :goto_4

    :cond_38
    iget-object v0, p0, Lcom/glympse/android/lib/cu;->he:Ljava/lang/String;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/cu;->hg:Ljava/lang/String;

    goto :goto_4

    :cond_49
    iget-object v0, p0, Lcom/glympse/android/lib/cu;->he:Ljava/lang/String;

    const-string v1, "error_detail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/cu;->hh:Ljava/lang/String;

    goto :goto_4

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_16
    .end packed-switch
.end method
