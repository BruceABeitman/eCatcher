.class public Lch/boye/httpclientandroidlib/conn/ssl/AllowAllHostnameVerifier;
.super Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;
.source "AllowAllHostnameVerifier.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "ALLOW_ALL"

    return-object v0
.end method

.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method
