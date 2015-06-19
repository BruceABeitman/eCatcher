.class public Lch/boye/httpclientandroidlib/conn/ssl/StrictHostnameVerifier;
.super Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;
.source "StrictHostnameVerifier.java"


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

    const-string v0, "STRICT"

    return-object v0
.end method

.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/conn/ssl/StrictHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method
