.class public Lch/boye/httpclientandroidlib/cookie/CookiePathComparator;
.super Ljava/lang/Object;
.source "CookiePathComparator.java"

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
.field private static final serialVersionUID:J = 0x68695b9a07ff953aL


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private normalizePath(Lch/boye/httpclientandroidlib/cookie/Cookie;)Ljava/lang/String;
    .registers 4

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "/"

    :cond_8
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_23
    return-object v0
.end method


# virtual methods
.method public compare(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/Cookie;)I
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/cookie/CookiePathComparator;->normalizePath(Lch/boye/httpclientandroidlib/cookie/Cookie;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/cookie/CookiePathComparator;->normalizePath(Lch/boye/httpclientandroidlib/cookie/Cookie;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v0, -0x1

    goto :goto_f

    :cond_18
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto :goto_f
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lch/boye/httpclientandroidlib/cookie/Cookie;

    check-cast p2, Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/cookie/CookiePathComparator;->compare(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/Cookie;)I

    move-result v0

    return v0
.end method
