.class public Lch/boye/httpclientandroidlib/client/utils/Rfc3492Idn;
.super Ljava/lang/Object;
.source "Rfc3492Idn.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/utils/Idn;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field private static final ACE_PREFIX:Ljava/lang/String; = "xn--"

.field private static final base:I = 0x24

.field private static final damp:I = 0x2bc

.field private static final delimiter:C = '-'

.field private static final initial_bias:I = 0x48

.field private static final initial_n:I = 0x80

.field private static final skew:I = 0x26

.field private static final tmax:I = 0x1a

.field private static final tmin:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adapt(IIZ)I
    .registers 7

    if-eqz p3, :cond_11

    div-int/lit16 p1, p1, 0x2bc

    :goto_4
    div-int v0, p1, p2

    add-int/2addr p1, v0

    const/4 v0, 0x0

    :goto_8
    const/16 v1, 0x1c7

    if-le p1, v1, :cond_14

    div-int/lit8 p1, p1, 0x23

    add-int/lit8 v0, v0, 0x24

    goto :goto_8

    :cond_11
    div-int/lit8 p1, p1, 0x2

    goto :goto_4

    :cond_14
    mul-int/lit8 v1, p1, 0x24

    add-int/lit8 v2, p1, 0x26

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private digit(C)I
    .registers 5

    const/16 v0, 0x41

    if-lt p1, v0, :cond_b

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_b

    add-int/lit8 v0, p1, -0x41

    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x61

    if-lt p1, v0, :cond_16

    const/16 v0, 0x7a

    if-gt p1, v0, :cond_16

    add-int/lit8 v0, p1, -0x61

    goto :goto_a

    :cond_16
    const/16 v0, 0x30

    if-lt p1, v0, :cond_23

    const/16 v0, 0x39

    if-gt p1, v0, :cond_23

    add-int/lit8 v0, p1, -0x30

    add-int/lit8 v0, v0, 0x1a

    goto :goto_a

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "illegal digit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x80

    const/16 v0, 0x48

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x2d

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8b

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move v3, v1

    move v1, v2

    :goto_27
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_86

    const/16 v4, 0x24

    move v5, v6

    move v7, v1

    :goto_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5d

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v8}, Lch/boye/httpclientandroidlib/client/utils/Rfc3492Idn;->digit(C)I

    move-result v10

    mul-int v8, v10, v5

    add-int/2addr v7, v8

    add-int/lit8 v8, v0, 0x1

    if-gt v4, v8, :cond_53

    move v8, v6

    :goto_4b
    if-lt v10, v8, :cond_5d

    rsub-int/lit8 v8, v8, 0x24

    mul-int/2addr v5, v8

    add-int/lit8 v4, v4, 0x24

    goto :goto_31

    :cond_53
    add-int/lit8 v8, v0, 0x1a

    if-lt v4, v8, :cond_5a

    const/16 v8, 0x1a

    goto :goto_4b

    :cond_5a
    sub-int v8, v4, v0

    goto :goto_4b

    :cond_5d
    sub-int v4, v7, v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    if-nez v1, :cond_84

    move v0, v6

    :goto_68
    invoke-direct {p0, v4, v5, v0}, Lch/boye/httpclientandroidlib/client/utils/Rfc3492Idn;->adapt(IIZ)I

    move-result v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    div-int v1, v7, v1

    add-int/2addr v3, v1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int v1, v7, v1

    int-to-char v4, v3

    invoke-virtual {v9, v1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_84
    move v0, v2

    goto :goto_68

    :cond_86
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8b
    move v3, v1

    move v1, v2

    goto :goto_27
.end method

.method public toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v0, "."

    invoke-direct {v2, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_25

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_25
    const-string v3, "xn--"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/client/utils/Rfc3492Idn;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
