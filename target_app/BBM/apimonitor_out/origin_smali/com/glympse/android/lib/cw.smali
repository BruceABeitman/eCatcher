.class Lcom/glympse/android/lib/cw;
.super Lcom/glympse/android/lib/k;
.source "GroupEvents.java"


# instance fields
.field public mw:Lcom/glympse/android/lib/dl;

.field public mx:Lcom/glympse/android/lib/cx;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/glympse/android/lib/k;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/glympse/android/lib/cv$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/glympse/android/lib/cw;-><init>()V

    return-void
.end method


# virtual methods
.method public endObject(I)Z
    .registers 4

    const/4 v1, 0x1

    if-ne v1, p1, :cond_8

    iget-object v0, p0, Lcom/glympse/android/lib/cw;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->popHandler()V

    :cond_8
    return v1
.end method

.method public primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
    .registers 6

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_a6

    :cond_4
    :goto_4
    return v2

    :pswitch_5
    iget-object v0, p0, Lcom/glympse/android/lib/cw;->he:Ljava/lang/String;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/cw;->hf:Ljava/lang/String;

    goto :goto_4

    :pswitch_16
    iget-object v0, p0, Lcom/glympse/android/lib/cw;->he:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    new-instance v0, Lcom/glympse/android/lib/dl;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/dl;-><init>(I)V

    iput-object v0, p0, Lcom/glympse/android/lib/cw;->mw:Lcom/glympse/android/lib/dl;

    iget-object v0, p0, Lcom/glympse/android/lib/cw;->mw:Lcom/glympse/android/lib/dl;

    iget-object v1, p0, Lcom/glympse/android/lib/cw;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    iput-object v1, v0, Lcom/glympse/android/lib/dl;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    iget-object v0, p0, Lcom/glympse/android/lib/cw;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    iget-object v1, p0, Lcom/glympse/android/lib/cw;->mw:Lcom/glympse/android/lib/dl;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;)V

    goto :goto_4

    :cond_42
    const-string v1, "events"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    new-instance v0, Lcom/glympse/android/lib/cx;

    invoke-direct {v0}, Lcom/glympse/android/lib/cx;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/cw;->mx:Lcom/glympse/android/lib/cx;

    iget-object v0, p0, Lcom/glympse/android/lib/cw;->mx:Lcom/glympse/android/lib/cx;

    iget-object v1, p0, Lcom/glympse/android/lib/cw;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    iput-object v1, v0, Lcom/glympse/android/lib/cx;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    iget-object v0, p0, Lcom/glympse/android/lib/cw;->hd:Lcom/glympse/android/lib/json/GJsonHandlerStack;

    iget-object v1, p0, Lcom/glympse/android/lib/cw;->mx:Lcom/glympse/android/lib/cx;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/json/GJsonHandlerStack;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;)V

    goto :goto_4

    :cond_5f
    const-string v0, "failure"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/cw;->hf:Ljava/lang/String;

    const-string v0, "group"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/cw;->hg:Ljava/lang/String;

    goto :goto_4

    :cond_70
    iget-object v0, p0, Lcom/glympse/android/lib/cw;->he:Ljava/lang/String;

    const-string v1, "time"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-virtual {p2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glympse/android/lib/cw;->_time:J

    goto :goto_4

    :cond_81
    iget-object v0, p0, Lcom/glympse/android/lib/cw;->he:Ljava/lang/String;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/cw;->hg:Ljava/lang/String;

    goto/16 :goto_4

    :cond_93
    iget-object v0, p0, Lcom/glympse/android/lib/cw;->he:Ljava/lang/String;

    const-string v1, "error_detail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v2}, Lcom/glympse/android/lib/json/GJsonPrimitive;->ownString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/cw;->hh:Ljava/lang/String;

    goto/16 :goto_4

    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_5
        :pswitch_16
    .end packed-switch
.end method
