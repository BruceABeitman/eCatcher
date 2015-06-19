.class Lcom/glympse/android/lib/ex;
.super Lcom/glympse/android/lib/j;
.source "InviteUpdate.java"


# instance fields
.field private jx:Lcom/glympse/android/lib/l;

.field private oX:Lcom/glympse/android/api/GInvite;

.field private oY:I

.field private om:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/api/GInvite;)V
    .registers 4

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p2, p0, Lcom/glympse/android/lib/ex;->oX:Lcom/glympse/android/api/GInvite;

    iget-object v0, p0, Lcom/glympse/android/lib/ex;->oX:Lcom/glympse/android/api/GInvite;

    invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ex;->om:Ljava/lang/String;

    iget-object v0, p0, Lcom/glympse/android/lib/ex;->oX:Lcom/glympse/android/api/GInvite;

    invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getState()I

    move-result v0

    iput v0, p0, Lcom/glympse/android/lib/ex;->oY:I

    new-instance v0, Lcom/glympse/android/lib/l;

    invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ex;->jx:Lcom/glympse/android/lib/l;

    iget-object v0, p0, Lcom/glympse/android/lib/ex;->jx:Lcom/glympse/android/lib/l;

    iput-object v0, p0, Lcom/glympse/android/lib/ex;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/l;

    invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ex;->jx:Lcom/glympse/android/lib/l;

    iget-object v0, p0, Lcom/glympse/android/lib/ex;->jx:Lcom/glympse/android/lib/l;

    iput-object v0, p0, Lcom/glympse/android/lib/ex;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public process()Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/ex;->jx:Lcom/glympse/android/lib/l;

    iget-object v0, v0, Lcom/glympse/android/lib/l;->hf:Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 4

    const-string v0, "invites/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/ex;->om:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/update?status="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    iget v1, p0, Lcom/glympse/android/lib/ex;->oY:I

    if-ne v0, v1, :cond_1b

    const-string v0, "sent"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_19
    const/4 v0, 0x1

    return v0

    :cond_1b
    const-string v0, "failed"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19
.end method
