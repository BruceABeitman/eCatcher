.class public Lch/boye/httpclientandroidlib/client/RedirectException;
.super Lch/boye/httpclientandroidlib/ProtocolException;
.source "RedirectException.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3d52d180ff443ddeL


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
