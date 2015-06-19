.class Lcom/glympse/android/lib/jm;
.super Lcom/glympse/android/lib/j;
.source "UserEcho.java"


# instance fields
.field private jx:Lcom/glympse/android/lib/l;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p2, p0, Lcom/glympse/android/lib/jm;->l:Ljava/lang/String;

    new-instance v0, Lcom/glympse/android/lib/l;

    invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jm;->jx:Lcom/glympse/android/lib/l;

    iget-object v0, p0, Lcom/glympse/android/lib/jm;->jx:Lcom/glympse/android/lib/l;

    iput-object v0, p0, Lcom/glympse/android/lib/jm;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/l;

    invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/jm;->jx:Lcom/glympse/android/lib/l;

    iget-object v0, p0, Lcom/glympse/android/lib/jm;->jx:Lcom/glympse/android/lib/l;

    iput-object v0, p0, Lcom/glympse/android/lib/jm;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public process()Z
    .registers 3

    iget-object v0, p0, Lcom/glympse/android/lib/jm;->jx:Lcom/glympse/android/lib/l;

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
    .registers 3

    const-string v0, "users/self/echo?data="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/jm;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0
.end method
