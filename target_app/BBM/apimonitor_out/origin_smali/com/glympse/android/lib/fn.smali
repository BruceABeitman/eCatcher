.class Lcom/glympse/android/lib/fn;
.super Lcom/glympse/android/lib/j;
.source "ListAccounts.java"


# instance fields
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field private pI:Lcom/glympse/android/lib/fo;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;)V
    .registers 3

    invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/fn;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    new-instance v0, Lcom/glympse/android/lib/fo;

    invoke-direct {v0}, Lcom/glympse/android/lib/fo;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/fn;->pI:Lcom/glympse/android/lib/fo;

    iget-object v0, p0, Lcom/glympse/android/lib/fn;->pI:Lcom/glympse/android/lib/fo;

    iput-object v0, p0, Lcom/glympse/android/lib/fn;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    new-instance v0, Lcom/glympse/android/lib/fo;

    invoke-direct {v0}, Lcom/glympse/android/lib/fo;-><init>()V

    iput-object v0, p0, Lcom/glympse/android/lib/fn;->pI:Lcom/glympse/android/lib/fo;

    iget-object v0, p0, Lcom/glympse/android/lib/fn;->pI:Lcom/glympse/android/lib/fo;

    iput-object v0, p0, Lcom/glympse/android/lib/fn;->hc:Lcom/glympse/android/lib/k;

    return-void
.end method

.method public process()Z
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/glympse/android/lib/fn;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getLinkedAccountsManager()Lcom/glympse/android/api/GLinkedAccountsManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;

    iget-object v2, p0, Lcom/glympse/android/lib/fn;->pI:Lcom/glympse/android/lib/fo;

    iget-object v2, v2, Lcom/glympse/android/lib/fo;->hf:Ljava/lang/String;

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/glympse/android/lib/fn;->pI:Lcom/glympse/android/lib/fo;

    iget-object v2, v2, Lcom/glympse/android/lib/fo;->pH:Lcom/glympse/android/hal/GVector;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/glympse/android/lib/fn;->pI:Lcom/glympse/android/lib/fo;

    iget-object v2, v2, Lcom/glympse/android/lib/fo;->pH:Lcom/glympse/android/hal/GVector;

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;->listComplete(Lcom/glympse/android/hal/GVector;)V

    move v0, v1

    :goto_23
    return v0

    :cond_24
    new-instance v2, Lcom/glympse/android/lib/hk;

    iget-object v3, p0, Lcom/glympse/android/lib/fn;->pI:Lcom/glympse/android/lib/fo;

    iget-object v3, v3, Lcom/glympse/android/lib/fo;->hg:Ljava/lang/String;

    iget-object v4, p0, Lcom/glympse/android/lib/fn;->pI:Lcom/glympse/android/lib/fo;

    iget-object v4, v4, Lcom/glympse/android/lib/fo;->hh:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Lcom/glympse/android/lib/hk;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/glympse/android/lib/GLinkedAccountsManagerPrivate;->listFailed(Lcom/glympse/android/api/GServerError;)V

    const/4 v0, 0x0

    goto :goto_23
.end method

.method public url(Ljava/lang/StringBuilder;)Z
    .registers 3

    const-string v0, "users/self/linked_accounts"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    return v0
.end method
