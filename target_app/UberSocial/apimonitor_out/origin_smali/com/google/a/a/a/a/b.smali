.class public Lcom/google/a/a/a/a/b;
.super Lcom/google/a/a/a/a/d;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "-_.*"

.field public static final b:Ljava/lang/String; = "-_.!~*\'()@:$&,;="

.field public static final c:Ljava/lang/String; = "-_.!~*\'()@:$,;/?:"

.field private static final d:[C

.field private static final e:[C


# instance fields
.field private final f:Z

.field private final g:[Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    sput-object v0, Lcom/google/a/a/a/a/b;->d:[C

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/a/a/a/a/b;->e:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Lcom/google/a/a/a/a/d;-><init>()V

    const-string v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    if-eqz p2, :cond_25

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "plusForSpace cannot be specified when space is a \'safe\' character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'%\' character cannot be specified as \'safe\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    iput-boolean p2, p0, Lcom/google/a/a/a/a/b;->f:Z

    invoke-static {p1}, Lcom/google/a/a/a/a/b;->b(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/a/b;->g:[Z

    return-void
.end method

.method private static b(Ljava/lang/String;)[Z
    .registers 9

    const/16 v3, 0x7a

    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v1, v0

    move v2, v3

    :goto_b
    if-ge v1, v5, :cond_16

    aget-char v6, v4, v1

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_16
    add-int/lit8 v1, v2, 0x1

    new-array v2, v1, [Z

    const/16 v1, 0x30

    :goto_1c
    const/16 v5, 0x39

    if-gt v1, v5, :cond_25

    aput-boolean v7, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_25
    const/16 v1, 0x41

    :goto_27
    const/16 v5, 0x5a

    if-gt v1, v5, :cond_30

    aput-boolean v7, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_30
    const/16 v1, 0x61

    :goto_32
    if-gt v1, v3, :cond_39

    aput-boolean v7, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_39
    array-length v1, v4

    :goto_3a
    if-ge v0, v1, :cond_43

    aget-char v3, v4, v0

    aput-boolean v7, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_43
    return-object v2
.end method


# virtual methods
.method protected a(Ljava/lang/CharSequence;II)I
    .registers 6

    :goto_0
    if-ge p2, p3, :cond_11

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/google/a/a/a/a/b;->g:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lcom/google/a/a/a/a/b;->g:[Z

    aget-boolean v0, v1, v0

    if-nez v0, :cond_12

    :cond_11
    return p2

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_1a

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/google/a/a/a/a/b;->g:[Z

    array-length v3, v3

    if-ge v2, v3, :cond_16

    iget-object v3, p0, Lcom/google/a/a/a/a/b;->g:[Z

    aget-boolean v2, v3, v2

    if-nez v2, :cond_1b

    :cond_16
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a/a/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_1a
    return-object p1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method protected a(I)[C
    .registers 9

    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x25

    iget-object v0, p0, Lcom/google/a/a/a/a/b;->g:[Z

    array-length v0, v0

    if-ge p1, v0, :cond_13

    iget-object v0, p0, Lcom/google/a/a/a/a/b;->g:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    :goto_12
    return-object v0

    :cond_13
    const/16 v0, 0x20

    if-ne p1, v0, :cond_1e

    iget-boolean v0, p0, Lcom/google/a/a/a/a/b;->f:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/google/a/a/a/a/b;->d:[C

    goto :goto_12

    :cond_1e
    const/16 v0, 0x7f

    if-gt p1, v0, :cond_37

    new-array v0, v3, [C

    aput-char v2, v0, v1

    sget-object v1, Lcom/google/a/a/a/a/b;->e:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    sget-object v1, Lcom/google/a/a/a/a/b;->e:[C

    ushr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    goto :goto_12

    :cond_37
    const/16 v0, 0x7ff

    if-gt p1, v0, :cond_6d

    const/4 v0, 0x6

    new-array v0, v0, [C

    aput-char v2, v0, v1

    aput-char v2, v0, v3

    const/4 v1, 0x5

    sget-object v2, Lcom/google/a/a/a/a/b;->e:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 v1, p1, 0x4

    const/4 v2, 0x4

    sget-object v3, Lcom/google/a/a/a/a/b;->e:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x2

    sget-object v2, Lcom/google/a/a/a/a/b;->e:[C

    and-int/lit8 v3, v1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v6

    ushr-int/lit8 v1, v1, 0x4

    sget-object v2, Lcom/google/a/a/a/a/b;->e:[C

    or-int/lit8 v1, v1, 0xc

    aget-char v1, v2, v1

    aput-char v1, v0, v5

    goto :goto_12

    :cond_6d
    const v0, 0xffff

    if-gt p1, v0, :cond_ba

    const/16 v0, 0x9

    new-array v0, v0, [C

    aput-char v2, v0, v1

    const/16 v1, 0x45

    aput-char v1, v0, v5

    aput-char v2, v0, v3

    const/4 v1, 0x6

    aput-char v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/a/a/a/a/b;->e:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 v1, p1, 0x4

    const/4 v2, 0x7

    sget-object v3, Lcom/google/a/a/a/a/b;->e:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x2

    const/4 v2, 0x5

    sget-object v3, Lcom/google/a/a/a/a/b;->e:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    sget-object v3, Lcom/google/a/a/a/a/b;->e:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x2

    sget-object v2, Lcom/google/a/a/a/a/b;->e:[C

    aget-char v1, v2, v1

    aput-char v1, v0, v6

    goto/16 :goto_12

    :cond_ba
    const v0, 0x10ffff

    if-gt p1, v0, :cond_127

    const/16 v0, 0xc

    new-array v0, v0, [C

    aput-char v2, v0, v1

    const/16 v1, 0x46

    aput-char v1, v0, v5

    aput-char v2, v0, v3

    const/4 v1, 0x6

    aput-char v2, v0, v1

    const/16 v1, 0x9

    aput-char v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/a/a/a/a/b;->e:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    ushr-int/lit8 v1, p1, 0x4

    const/16 v2, 0xa

    sget-object v3, Lcom/google/a/a/a/a/b;->e:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x2

    const/16 v2, 0x8

    sget-object v3, Lcom/google/a/a/a/a/b;->e:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x4

    const/4 v2, 0x7

    sget-object v3, Lcom/google/a/a/a/a/b;->e:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x2

    const/4 v2, 0x5

    sget-object v3, Lcom/google/a/a/a/a/b;->e:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    sget-object v3, Lcom/google/a/a/a/a/b;->e:[C

    and-int/lit8 v4, v1, 0x3

    or-int/lit8 v4, v4, 0x8

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    ushr-int/lit8 v1, v1, 0x2

    sget-object v2, Lcom/google/a/a/a/a/b;->e:[C

    and-int/lit8 v1, v1, 0x7

    aget-char v1, v2, v1

    aput-char v1, v0, v6

    goto/16 :goto_12

    :cond_127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid unicode character value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
