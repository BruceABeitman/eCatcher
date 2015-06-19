.class Lcom/glympse/android/lib/ii;
.super Lcom/glympse/android/lib/j;
.source "TicketHandoff.java"


# instance fields
.field protected _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private gI:Ljava/lang/String;

.field private jv:Ljava/lang/String;

.field private oh:Lcom/glympse/android/lib/GTicketPrivate;

.field private td:Lcom/glympse/android/lib/iu;

.field private tf:Ljava/lang/String;

.field private tg:Lcom/glympse/android/core/GPrimitive;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
    .registers 6

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/ii;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/ii;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    if-nez p2, :cond_1c

    const/4 v0, 0x0

    :goto_a
    iput-object v0, p0, Lcom/glympse/android/lib/ii;->jv:Ljava/lang/String;

    iput-object p3, p0, Lcom/glympse/android/lib/ii;->tf:Ljava/lang/String;

    iput-object p4, p0, Lcom/glympse/android/lib/ii;->tg:Lcom/glympse/android/core/GPrimitive;

    new-instance v0, Lcom/glympse/android/lib/iu;

    invoke-direct {v0}, Lcom/glympse/android/lib/iu;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ii;->td:Lcom/glympse/android/lib/iu;

    iget-object v0, p0, Lcom/glympse/android/lib/ii;->td:Lcom/glympse/android/lib/iu;

    iput-object v0, p0, Lcom/glympse/android/lib/ii;->hc:Lcom/glympse/android/lib/k;

    return-void

    :cond_1c
    invoke-interface {p2}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method


# virtual methods
.method public cancel()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/iu;

    invoke-direct {v0}, Lcom/glympse/android/lib/iu;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ii;->td:Lcom/glympse/android/lib/iu;

    iget-object v0, p0, Lcom/glympse/android/lib/ii;->td:Lcom/glympse/android/lib/iu;

    iput-object v0, p0, Lcom/glympse/android/lib/ii;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public post()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/ii;->gI:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/glympse/android/lib/ii;->gI:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/glympse/android/lib/Primitive;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/glympse/android/lib/Primitive;-><init>(I)V

    const-string v1, "provider"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/glympse/android/lib/ii;->tf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/glympse/android/lib/ii;->tg:Lcom/glympse/android/core/GPrimitive;

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ii;->gI:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/ii;->gI:Ljava/lang/String;

    goto :goto_a
.end method

.method public process()Z
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/glympse/android/lib/ii;->td:Lcom/glympse/android/lib/iu;

    iget-object v1, v1, Lcom/glympse/android/lib/iu;->hf:Ljava/lang/String;

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/glympse/android/lib/ii;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GTicketPrivate;->getParent()Lcom/glympse/android/lib/GTicketParent;

    move-result-object v1

    if-nez v1, :cond_16

    :goto_15
    return v0

    :cond_16
    iget-object v1, p0, Lcom/glympse/android/lib/ii;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ii;->td:Lcom/glympse/android/lib/iu;

    iget-object v2, v2, Lcom/glympse/android/lib/iu;->tm:Lcom/glympse/android/lib/ip;

    iget-object v2, v2, Lcom/glympse/android/lib/ip;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/ii;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1, v2, v3, v0, v0}, Lcom/glympse/android/lib/GTicketPrivate;->merge(Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/lib/GGlympsePrivate;ZZ)V

    goto :goto_15

    :cond_24
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 3

    const-string v0, "tickets/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/ii;->jv:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/set_ownership?properties=true&invites=true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0
.end method
