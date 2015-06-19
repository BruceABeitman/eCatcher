.class public final Lorg/codehaus/jackson/io/NumberInput;
.super Ljava/lang/Object;


# static fields
.field static final L_BILLION:J = 0x3b9aca00L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final parseInt([CII)I
    .registers 8

    const/16 v4, 0x30

    aget-char v0, p0, p1

    sub-int/2addr v0, v4

    add-int v1, p2, p1

    add-int/lit8 v2, p1, 0x1

    if-ge v2, v1, :cond_57

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_57

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_57

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_57

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_57

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_57

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_57

    mul-int/lit8 v0, v0, 0xa

    aget-char v3, p0, v2

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_57

    mul-int/lit8 v0, v0, 0xa

    aget-char v1, p0, v2

    sub-int/2addr v1, v4

    add-int/2addr v0, v1

    :cond_57
    return v0
.end method

.method public static final parseLong([CII)J
    .registers 9

    const/16 v5, 0x9

    sub-int v0, p2, v5

    invoke-static {p0, p1, v0}, Lorg/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x3b9aca00

    mul-long/2addr v1, v3

    add-int/2addr v0, p1

    invoke-static {p0, v0, v5}, Lorg/codehaus/jackson/io/NumberInput;->parseInt([CII)I

    move-result v0

    int-to-long v3, v0

    add-long v0, v1, v3

    return-wide v0
.end method
