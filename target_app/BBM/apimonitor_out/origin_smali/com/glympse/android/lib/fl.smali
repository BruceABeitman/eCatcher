.class Lcom/glympse/android/lib/fl;
.super Ljava/lang/Object;
.source "LinkedAccount.java"

# interfaces
.implements Lcom/glympse/android/lib/GLinkedAccountPrivate;


# instance fields
.field private _name:Ljava/lang/String;

.field private cb:I

.field private gK:Ljava/lang/String;

.field private hm:Ljava/lang/String;

.field private mA:Ljava/lang/String;

.field private ob:Lcom/glympse/android/api/GServerError;

.field private pF:I

.field private pG:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/fl;->mA:Ljava/lang/String;

    iput v0, p0, Lcom/glympse/android/lib/fl;->cb:I

    iput v0, p0, Lcom/glympse/android/lib/fl;->pF:I

    iput v0, p0, Lcom/glympse/android/lib/fl;->pG:I

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/fl;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/glympse/android/api/GServerError;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/fl;->ob:Lcom/glympse/android/api/GServerError;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/fl;->hm:Ljava/lang/String;

    return-object v0
.end method

.method public getLogin()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/fl;->pG:I

    return v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/fl;->cb:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Lcom/glympse/android/lib/fl;->pF:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/fl;->mA:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/lib/fl;->gK:Ljava/lang/String;

    return-object v0
.end method

.method public merge(Lcom/glympse/android/lib/GLinkedAccountPrivate;)V
    .registers 4

    iget-object v0, p0, Lcom/glympse/android/lib/fl;->mA:Ljava/lang/String;

    invoke-interface {p1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/hal/Helpers;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-interface {p1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->getState()I

    move-result v0

    if-eqz v0, :cond_15

    iput v0, p0, Lcom/glympse/android/lib/fl;->cb:I

    :cond_15
    invoke-interface {p1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->getStatus()I

    move-result v0

    if-eqz v0, :cond_1d

    iput v0, p0, Lcom/glympse/android/lib/fl;->pF:I

    :cond_1d
    invoke-interface {p1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_25

    iput-object v0, p0, Lcom/glympse/android/lib/fl;->hm:Ljava/lang/String;

    :cond_25
    invoke-interface {p1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->getUserName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    iput-object v0, p0, Lcom/glympse/android/lib/fl;->gK:Ljava/lang/String;

    :cond_2d
    invoke-interface {p1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_35

    iput-object v0, p0, Lcom/glympse/android/lib/fl;->_name:Ljava/lang/String;

    :cond_35
    invoke-interface {p1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->getLogin()I

    move-result v0

    if-eqz v0, :cond_3d

    iput v0, p0, Lcom/glympse/android/lib/fl;->pG:I

    :cond_3d
    invoke-interface {p1}, Lcom/glympse/android/lib/GLinkedAccountPrivate;->getError()Lcom/glympse/android/api/GServerError;

    move-result-object v0

    if-eqz v0, :cond_c

    iput-object v0, p0, Lcom/glympse/android/lib/fl;->ob:Lcom/glympse/android/api/GServerError;

    goto :goto_c
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/fl;->_name:Ljava/lang/String;

    return-void
.end method

.method public setError(Lcom/glympse/android/api/GServerError;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/fl;->ob:Lcom/glympse/android/api/GServerError;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/fl;->hm:Ljava/lang/String;

    return-void
.end method

.method public setLogin(I)V
    .registers 2

    iput p1, p0, Lcom/glympse/android/lib/fl;->pG:I

    return-void
.end method

.method public setState(I)V
    .registers 2

    iput p1, p0, Lcom/glympse/android/lib/fl;->cb:I

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    iput p1, p0, Lcom/glympse/android/lib/fl;->pF:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/fl;->mA:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/glympse/android/lib/fl;->gK:Ljava/lang/String;

    return-void
.end method
