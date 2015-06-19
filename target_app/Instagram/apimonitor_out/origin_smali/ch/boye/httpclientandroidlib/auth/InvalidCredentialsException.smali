.class public Lch/boye/httpclientandroidlib/auth/InvalidCredentialsException;
.super Lch/boye/httpclientandroidlib/auth/AuthenticationException;
.source "InvalidCredentialsException.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4315d4e060e4b928L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
