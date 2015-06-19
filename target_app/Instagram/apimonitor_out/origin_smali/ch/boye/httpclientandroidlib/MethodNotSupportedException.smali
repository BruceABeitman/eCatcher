.class public Lch/boye/httpclientandroidlib/MethodNotSupportedException;
.super Lch/boye/httpclientandroidlib/HttpException;
.source "MethodNotSupportedException.java"


# static fields
.field private static final serialVersionUID:J = 0x2eb42836ac8256c1L


# direct methods
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
