.class public Lch/boye/httpclientandroidlib/impl/auth/BasicSchemeFactory;
.super Ljava/lang/Object;
.source "BasicSchemeFactory.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/auth/AuthSchemeFactory;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/auth/AuthScheme;
    .registers 3

    new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/BasicScheme;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/auth/BasicScheme;-><init>()V

    return-object v0
.end method
