.class public Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;
.super Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;
.source "BasicClientCookie2.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/cookie/SetCookie2;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b7a571e07b044e1L


# instance fields
.field private commentURL:Ljava/lang/String;

.field private discard:Z

.field private ports:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->ports:[I

    if-eqz v1, :cond_14

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->ports:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->ports:[I

    :cond_14
    return-object v0
.end method

.method public getCommentURL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->commentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPorts()[I
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->ports:[I

    return-object v0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .registers 3

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->discard:Z

    if-nez v0, :cond_a

    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->isExpired(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isPersistent()Z
    .registers 2

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->discard:Z

    if-nez v0, :cond_c

    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public setCommentURL(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->commentURL:Ljava/lang/String;

    return-void
.end method

.method public setDiscard(Z)V
    .registers 2

    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->discard:Z

    return-void
.end method

.method public setPorts([I)V
    .registers 2

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/cookie/BasicClientCookie2;->ports:[I

    return-void
.end method
