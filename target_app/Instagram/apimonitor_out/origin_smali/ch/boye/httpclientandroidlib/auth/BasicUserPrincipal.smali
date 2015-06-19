.class public final Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;
.super Ljava/lang/Object;
.source "BasicUserPrincipal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f73888eeec0fe63L


# instance fields
.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput-object p1, p0, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    instance-of v1, p1, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;

    if-eqz v1, :cond_14

    check-cast p1, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    iget-object v2, p1, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_14
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 3

    const/16 v0, 0x11

    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[principal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/auth/BasicUserPrincipal;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
