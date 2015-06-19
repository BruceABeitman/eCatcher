.class public Lch/boye/httpclientandroidlib/cookie/CookieIdentityComparator;
.super Ljava/lang/Object;
.source "CookieIdentityComparator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lch/boye/httpclientandroidlib/cookie/Cookie;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3dfc6d99bbaa936cL


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/Cookie;)I
    .registers 7

    const/16 v2, 0x2e

    const/4 v3, -0x1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_25

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3c

    const-string v0, ""

    :cond_19
    :goto_19
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_56

    const-string v1, ""

    :cond_21
    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :cond_25
    if-nez v0, :cond_3b

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2f

    const-string v0, "/"

    :cond_2f
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_37

    const-string v1, "/"

    :cond_37
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_3b
    return v0

    :cond_3c
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v3, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".local"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_56
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".local"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_21
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lch/boye/httpclientandroidlib/cookie/Cookie;

    check-cast p2, Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/cookie/CookieIdentityComparator;->compare(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/Cookie;)I

    move-result v0

    return v0
.end method
