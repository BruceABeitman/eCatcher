.class Lcom/glympse/android/lib/ka;
.super Lcom/glympse/android/lib/j;
.source "UserUpdate.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private jx:Lcom/glympse/android/lib/l;

.field private nP:Ljava/lang/String;

.field private oz:Lcom/glympse/android/lib/GUserPrivate;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GUserPrivate;)V
    .registers 4

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/ka;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    iput-object p2, p0, Lcom/glympse/android/lib/ka;->oz:Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {p2}, Lcom/glympse/android/lib/GUserPrivate;->getNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/ka;->nP:Ljava/lang/String;

    new-instance v0, Lcom/glympse/android/lib/l;

    invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ka;->jx:Lcom/glympse/android/lib/l;

    iget-object v0, p0, Lcom/glympse/android/lib/ka;->jx:Lcom/glympse/android/lib/l;

    iput-object v0, p0, Lcom/glympse/android/lib/ka;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/l;

    invoke-direct {v0}, Lcom/glympse/android/lib/l;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/ka;->jx:Lcom/glympse/android/lib/l;

    iget-object v0, p0, Lcom/glympse/android/lib/ka;->jx:Lcom/glympse/android/lib/l;

    iput-object v0, p0, Lcom/glympse/android/lib/ka;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public process()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/ka;->jx:Lcom/glympse/android/lib/l;

    iget-object v0, v0, Lcom/glympse/android/lib/l;->hf:Ljava/lang/String;

    const-string v2, "ok"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/glympse/android/lib/ka;->nP:Ljava/lang/String;

    iget-object v2, p0, Lcom/glympse/android/lib/ka;->oz:Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v2}, Lcom/glympse/android/lib/GUserPrivate;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/glympse/android/lib/ka;->oz:Lcom/glympse/android/lib/GUserPrivate;

    invoke-interface {v0, v1}, Lcom/glympse/android/lib/GUserPrivate;->setNicknameSynced(Z)V

    iget-object v0, p0, Lcom/glympse/android/lib/ka;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getUserManager()Lcom/glympse/android/api/GUserManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GUserManagerPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GUserManagerPrivate;->save()V

    :cond_2b
    move v0, v1

    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 3

    const-string v0, "users/self/update?name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/ka;->nP:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/glympse/android/lib/ka;->nP:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    const/4 v0, 0x1

    return v0
.end method
