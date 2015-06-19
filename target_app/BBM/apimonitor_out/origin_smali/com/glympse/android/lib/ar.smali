.class Lcom/glympse/android/lib/ar;
.super Lcom/glympse/android/lib/j;
.source "DataAppend.java"


# instance fields
.field protected _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private gI:Ljava/lang/String;

.field protected jv:Ljava/lang/String;

.field protected jw:Lcom/glympse/android/core/GPrimitive;

.field protected jx:Lcom/glympse/android/lib/l;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
    .registers 5

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/ar;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/ar;->jv:Ljava/lang/String;

    iput-object p3, p0, Lcom/glympse/android/lib/ar;->jw:Lcom/glympse/android/core/GPrimitive;

    new-instance v0, Lcom/glympse/android/lib/l;

    invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ar;->jx:Lcom/glympse/android/lib/l;

    iget-object v0, p0, Lcom/glympse/android/lib/ar;->jx:Lcom/glympse/android/lib/l;

    iput-object v0, p0, Lcom/glympse/android/lib/ar;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/l;

    invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ar;->jx:Lcom/glympse/android/lib/l;

    iget-object v0, p0, Lcom/glympse/android/lib/ar;->jx:Lcom/glympse/android/lib/l;

    iput-object v0, p0, Lcom/glympse/android/lib/ar;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public post()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/ar;->gI:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/glympse/android/lib/ar;->gI:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/glympse/android/lib/ar;->jw:Lcom/glympse/android/core/GPrimitive;

    iget-object v1, p0, Lcom/glympse/android/lib/ar;->jw:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v1}, Lcom/glympse/android/core/GPrimitive;->size()I

    move-result v1

    mul-int/lit16 v1, v1, 0x80

    invoke-static {v0, v1}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ar;->gI:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/ar;->gI:Ljava/lang/String;

    goto :goto_a
.end method

.method public process()Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/ar;->jx:Lcom/glympse/android/lib/l;

    iget-object v0, v0, Lcom/glympse/android/lib/l;->hf:Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/glympse/android/lib/ar;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GServerPost;->rememberEvents(I)V

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 4

    const-string v0, "tickets/append_data"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/ar;->jv:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_e
    if-eqz v0, :cond_1a

    const-string v1, "?ids="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/glympse/android/lib/ar;->jv:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_e
.end method
