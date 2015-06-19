.class public Lch/boye/httpclientandroidlib/ProtocolException;
.super Lch/boye/httpclientandroidlib/HttpException;
.source "ProtocolException.java"


# static fields
.field private static final serialVersionUID:J = -0x1dbf7e88f4e951c2L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/HttpException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
