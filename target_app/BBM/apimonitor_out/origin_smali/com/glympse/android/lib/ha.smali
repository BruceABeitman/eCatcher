.class Lcom/glympse/android/lib/ha;
.super Lcom/glympse/android/lib/fj;
.source "RefreshAccount.java"


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/core/GPrimitive;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/glympse/android/lib/fj;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/core/GPrimitive;)V

    return-void
.end method


# virtual methods
.method public process()Z
    .registers 8

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/ha;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLinkedAccountsManager()Lcom/glympse/android/api/GLinkedAccountsManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/ha;->pE:Lcom/glympse/android/lib/fk;

    iget-object v2, v2, Lcom/glympse/android/lib/fk;->hf:Ljava/lang/String;

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/glympse/android/lib/ha;->pE:Lcom/glympse/android/lib/fk;

    iget-object v2, v2, Lcom/glympse/android/lib/fk;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/glympse/android/lib/ha;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;

    iget-object v3, p0, Lcom/glympse/android/lib/ha;->pE:Lcom/glympse/android/lib/fk;

    iget-object v3, v3, Lcom/glympse/android/lib/fk;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;

    invoke-interface {v0, v2, v3}, Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;->refreshComplete(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V

    move v0, v1

    :goto_27
    return v0

    :cond_28
    new-instance v2, Lcom/glympse/android/lib/fl;

    iget-object v3, p0, Lcom/glympse/android/lib/ha;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;

    invoke-interface {v3}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/glympse/android/lib/fl;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setState(I)V

    iget-object v3, p0, Lcom/glympse/android/lib/ha;->pE:Lcom/glympse/android/lib/fk;

    iget-object v3, v3, Lcom/glympse/android/lib/fk;->hg:Ljava/lang/String;

    const-string v4, "invalid_argument"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    new-instance v1, Lcom/glympse/android/lib/hk;

    iget-object v3, p0, Lcom/glympse/android/lib/ha;->pE:Lcom/glympse/android/lib/fk;

    iget-object v3, v3, Lcom/glympse/android/lib/fk;->hg:Ljava/lang/String;

    iget-object v4, p0, Lcom/glympse/android/lib/ha;->pE:Lcom/glympse/android/lib/fk;

    iget-object v4, v4, Lcom/glympse/android/lib/fk;->hh:Ljava/lang/String;

    invoke-direct {v1, v5, v3, v4}, Lcom/glympse/android/lib/hk;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setError(Lcom/glympse/android/api/GServerError;)V

    :goto_52
    iget-object v1, p0, Lcom/glympse/android/lib/ha;->pD:Lcom/glympse/android/lib/GLinkedAccountPrivate;

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;->refreshFailed(Lcom/glympse/android/lib/GLinkedAccountPrivate;Lcom/glympse/android/lib/GLinkedAccountPrivate;)V

    const/4 v0, 0x0

    goto :goto_27

    :cond_59
    iget-object v3, p0, Lcom/glympse/android/lib/ha;->pE:Lcom/glympse/android/lib/fk;

    iget-object v3, v3, Lcom/glympse/android/lib/fk;->hg:Ljava/lang/String;

    const-string v4, "not_linked"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2, v6}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setState(I)V

    new-instance v1, Lcom/glympse/android/lib/hk;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/glympse/android/lib/ha;->pE:Lcom/glympse/android/lib/fk;

    iget-object v4, v4, Lcom/glympse/android/lib/fk;->hg:Ljava/lang/String;

    iget-object v5, p0, Lcom/glympse/android/lib/ha;->pE:Lcom/glympse/android/lib/fk;

    iget-object v5, v5, Lcom/glympse/android/lib/fk;->hh:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lcom/glympse/android/lib/hk;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setError(Lcom/glympse/android/api/GServerError;)V

    goto :goto_52

    :cond_7a
    iget-object v3, p0, Lcom/glympse/android/lib/ha;->pE:Lcom/glympse/android/lib/fk;

    iget-object v3, v3, Lcom/glympse/android/lib/fk;->hg:Ljava/lang/String;

    const-string v4, "link_mismatch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    new-instance v1, Lcom/glympse/android/lib/hk;

    iget-object v3, p0, Lcom/glympse/android/lib/ha;->pE:Lcom/glympse/android/lib/fk;

    iget-object v3, v3, Lcom/glympse/android/lib/fk;->hg:Ljava/lang/String;

    iget-object v4, p0, Lcom/glympse/android/lib/ha;->pE:Lcom/glympse/android/lib/fk;

    iget-object v4, v4, Lcom/glympse/android/lib/fk;->hh:Ljava/lang/String;

    invoke-direct {v1, v6, v3, v4}, Lcom/glympse/android/lib/hk;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setError(Lcom/glympse/android/api/GServerError;)V

    goto :goto_52

    :cond_97
    iget-object v3, p0, Lcom/glympse/android/lib/ha;->pE:Lcom/glympse/android/lib/fk;

    iget-object v3, v3, Lcom/glympse/android/lib/fk;->hg:Ljava/lang/String;

    const-string v4, "link_failed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    new-instance v1, Lcom/glympse/android/lib/hk;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/glympse/android/lib/ha;->pE:Lcom/glympse/android/lib/fk;

    iget-object v4, v4, Lcom/glympse/android/lib/fk;->hg:Ljava/lang/String;

    iget-object v5, p0, Lcom/glympse/android/lib/ha;->pE:Lcom/glympse/android/lib/fk;

    iget-object v5, v5, Lcom/glympse/android/lib/fk;->hh:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v5}, Lcom/glympse/android/lib/hk;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setError(Lcom/glympse/android/api/GServerError;)V

    goto :goto_52

    :cond_b5
    new-instance v3, Lcom/glympse/android/lib/hk;

    iget-object v4, p0, Lcom/glympse/android/lib/ha;->pE:Lcom/glympse/android/lib/fk;

    iget-object v4, v4, Lcom/glympse/android/lib/fk;->hg:Ljava/lang/String;

    iget-object v5, p0, Lcom/glympse/android/lib/ha;->pE:Lcom/glympse/android/lib/fk;

    iget-object v5, v5, Lcom/glympse/android/lib/fk;->hh:Ljava/lang/String;

    invoke-direct {v3, v1, v4, v5}, Lcom/glympse/android/lib/hk;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->setError(Lcom/glympse/android/api/GServerError;)V

    goto :goto_52
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 3

    const-string v0, "users/self/linked_accounts/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/glympse/android/lib/ha;->mA:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/refresh"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    return v0
.end method
