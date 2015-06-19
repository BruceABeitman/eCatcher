.class Lcom/glympse/android/lib/hq;
.super Lcom/glympse/android/lib/j;
.source "SetVisibility.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private jx:Lcom/glympse/android/lib/l;

.field private oh:Lcom/glympse/android/lib/GTicketPrivate;

.field private sc:Ljava/lang/String;

.field private sp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GTicket;Lcom/glympse/android/core/GPrimitive;)V
    .registers 5

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/hq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    check-cast p2, Lcom/glympse/android/lib/GTicketPrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/hq;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-static {}, Lcom/glympse/android/api/GC;->TICKET_VISIBILITY_KEY_LOCATION()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/hq;->sp:Ljava/lang/String;

    invoke-static {}, Lcom/glympse/android/api/GC;->TICKET_VISIBILITY_KEY_CONTEXT()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/hq;->sc:Ljava/lang/String;

    new-instance v0, Lcom/glympse/android/lib/l;

    invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/hq;->jx:Lcom/glympse/android/lib/l;

    iget-object v0, p0, Lcom/glympse/android/lib/hq;->jx:Lcom/glympse/android/lib/l;

    iput-object v0, p0, Lcom/glympse/android/lib/hq;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/l;

    invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/hq;->jx:Lcom/glympse/android/lib/l;

    iget-object v0, p0, Lcom/glympse/android/lib/hq;->jx:Lcom/glympse/android/lib/l;

    iput-object v0, p0, Lcom/glympse/android/lib/hq;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public process()Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/hq;->jx:Lcom/glympse/android/lib/l;

    iget-object v0, v0, Lcom/glympse/android/lib/l;->hf:Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 3

    const-string v0, "tickets/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/hq;->oh:Lcom/glympse/android/lib/GTicketPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/set_visibility?location="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/hq;->sp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/hq;->sc:Ljava/lang/String;

    if-eqz v0, :cond_2a

    const-string v0, "&context="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/hq;->sc:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    const/4 v0, 0x1

    return v0
.end method
