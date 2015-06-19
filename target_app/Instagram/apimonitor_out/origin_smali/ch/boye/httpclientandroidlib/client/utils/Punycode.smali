.class public Lch/boye/httpclientandroidlib/client/utils/Punycode;
.super Ljava/lang/Object;
.source "Punycode.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final impl:Lch/boye/httpclientandroidlib/client/utils/Idn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    :try_start_0
    new-instance v0, Lch/boye/httpclientandroidlib/client/utils/JdkIdn;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/client/utils/JdkIdn;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_8

    :goto_5
    sput-object v0, Lch/boye/httpclientandroidlib/client/utils/Punycode;->impl:Lch/boye/httpclientandroidlib/client/utils/Idn;

    return-void

    :catch_8
    move-exception v0

    new-instance v0, Lch/boye/httpclientandroidlib/client/utils/Rfc3492Idn;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/client/utils/Rfc3492Idn;-><init>()V

    goto :goto_5
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lch/boye/httpclientandroidlib/client/utils/Punycode;->impl:Lch/boye/httpclientandroidlib/client/utils/Idn;

    invoke-interface {v0, p0}, Lch/boye/httpclientandroidlib/client/utils/Idn;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
