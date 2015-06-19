.class public Lch/boye/httpclientandroidlib/conn/ConnectionPoolTimeoutException;
.super Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException;
.source "ConnectionPoolTimeoutException.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6d9e70d19be2ee88L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/conn/ConnectTimeoutException;-><init>(Ljava/lang/String;)V

    return-void
.end method
