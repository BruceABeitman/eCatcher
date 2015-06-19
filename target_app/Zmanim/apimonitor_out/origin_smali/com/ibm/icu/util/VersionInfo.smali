.class public final Lcom/ibm/icu/util/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final ICU_DATA_VERSION:Ljava/lang/String; = "42b"

.field public static final ICU_VERSION:Lcom/ibm/icu/util/VersionInfo; = null

.field private static final INVALID_VERSION_NUMBER_:Ljava/lang/String; = "Invalid version number: Version number may be negative or greater than 255"

.field private static final LAST_BYTE_MASK_:I = 0xff

.field private static final MAP_:Ljava/util/HashMap;

.field public static final UCOL_BUILDER_VERSION:Lcom/ibm/icu/util/VersionInfo;

.field public static final UCOL_RUNTIME_VERSION:Lcom/ibm/icu/util/VersionInfo;

.field public static final UCOL_TAILORINGS_VERSION:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_1_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_1_0_1:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_1_1_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_1_1_5:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_2_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_2_1_2:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_2_1_5:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_2_1_8:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_2_1_9:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_3_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_3_0_1:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_3_1_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_3_1_1:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_3_2:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_4_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_4_0_1:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_4_1:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_5_0:Lcom/ibm/icu/util/VersionInfo;

.field public static final UNICODE_5_1:Lcom/ibm/icu/util/VersionInfo;

.field private static javaVersion:Lcom/ibm/icu/util/VersionInfo;


# instance fields
.field private m_version_:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->MAP_:Ljava/util/HashMap;

    invoke-static {v2, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_1_0:Lcom/ibm/icu/util/VersionInfo;

    invoke-static {v2, v1, v2, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_1_0_1:Lcom/ibm/icu/util/VersionInfo;

    invoke-static {v2, v2, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_1_1_0:Lcom/ibm/icu/util/VersionInfo;

    const/4 v0, 0x5

    invoke-static {v2, v2, v0, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_1_1_5:Lcom/ibm/icu/util/VersionInfo;

    invoke-static {v3, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_2_0:Lcom/ibm/icu/util/VersionInfo;

    invoke-static {v3, v2, v3, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_2_1_2:Lcom/ibm/icu/util/VersionInfo;

    const/4 v0, 0x5

    invoke-static {v3, v2, v0, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_2_1_5:Lcom/ibm/icu/util/VersionInfo;

    const/16 v0, 0x8

    invoke-static {v3, v2, v0, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_2_1_8:Lcom/ibm/icu/util/VersionInfo;

    const/16 v0, 0x9

    invoke-static {v3, v2, v0, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_2_1_9:Lcom/ibm/icu/util/VersionInfo;

    invoke-static {v4, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_3_0:Lcom/ibm/icu/util/VersionInfo;

    invoke-static {v4, v1, v2, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_3_0_1:Lcom/ibm/icu/util/VersionInfo;

    invoke-static {v4, v2, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_3_1_0:Lcom/ibm/icu/util/VersionInfo;

    invoke-static {v4, v2, v2, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_3_1_1:Lcom/ibm/icu/util/VersionInfo;

    invoke-static {v4, v3, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_3_2:Lcom/ibm/icu/util/VersionInfo;

    invoke-static {v5, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_4_0:Lcom/ibm/icu/util/VersionInfo;

    invoke-static {v5, v1, v2, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_4_0_1:Lcom/ibm/icu/util/VersionInfo;

    invoke-static {v5, v2, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_4_1:Lcom/ibm/icu/util/VersionInfo;

    const/4 v0, 0x5

    invoke-static {v0, v1, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_5_0:Lcom/ibm/icu/util/VersionInfo;

    const/4 v0, 0x5

    invoke-static {v0, v2, v1, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UNICODE_5_1:Lcom/ibm/icu/util/VersionInfo;

    invoke-static {v5, v3, v2, v1}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->ICU_VERSION:Lcom/ibm/icu/util/VersionInfo;

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/ibm/icu/util/VersionInfo;->getInstance(I)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UCOL_RUNTIME_VERSION:Lcom/ibm/icu/util/VersionInfo;

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/ibm/icu/util/VersionInfo;->getInstance(I)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UCOL_BUILDER_VERSION:Lcom/ibm/icu/util/VersionInfo;

    invoke-static {v2}, Lcom/ibm/icu/util/VersionInfo;->getInstance(I)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/util/VersionInfo;->UCOL_TAILORINGS_VERSION:Lcom/ibm/icu/util/VersionInfo;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ibm/icu/util/VersionInfo;->m_version_:I

    return-void
.end method

.method public static getInstance(I)Lcom/ibm/icu/util/VersionInfo;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(II)Lcom/ibm/icu/util/VersionInfo;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(III)Lcom/ibm/icu/util/VersionInfo;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;
    .registers 9

    const/16 v3, 0xff

    if-ltz p0, :cond_12

    if-gt p0, v3, :cond_12

    if-ltz p1, :cond_12

    if-gt p1, v3, :cond_12

    if-ltz p2, :cond_12

    if-gt p2, v3, :cond_12

    if-ltz p3, :cond_12

    if-le p3, v3, :cond_1a

    :cond_12
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid version number: Version number may be negative or greater than 255"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1a
    invoke-static {p0, p1, p2, p3}, Lcom/ibm/icu/util/VersionInfo;->getInt(IIII)I

    move-result v2

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v3, Lcom/ibm/icu/util/VersionInfo;->MAP_:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_35

    new-instance v1, Lcom/ibm/icu/util/VersionInfo;

    invoke-direct {v1, v2}, Lcom/ibm/icu/util/VersionInfo;-><init>(I)V

    sget-object v3, Lcom/ibm/icu/util/VersionInfo;->MAP_:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    check-cast v1, Lcom/ibm/icu/util/VersionInfo;

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/VersionInfo;
    .registers 11

    const/4 v8, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    new-array v0, v8, [I

    fill-array-data v0, :array_86

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_c
    if-ge v2, v8, :cond_3c

    if-ge v4, v5, :cond_3c

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x2e

    if-ne v1, v6, :cond_1d

    add-int/lit8 v2, v2, 0x1

    :goto_1a
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1d
    const/16 v6, 0x30

    sub-int v6, v1, v6

    int-to-char v1, v6

    if-ltz v1, :cond_28

    const/16 v6, 0x9

    if-le v1, v6, :cond_30

    :cond_28
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid version number: Version number may be negative or greater than 255"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_30
    aget v6, v0, v2

    mul-int/lit8 v6, v6, 0xa

    aput v6, v0, v2

    aget v6, v0, v2

    add-int/2addr v6, v1

    aput v6, v0, v2

    goto :goto_1a

    :cond_3c
    if-eq v4, v5, :cond_5d

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid version number: String \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' exceeds version format"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5d
    const/4 v3, 0x0

    :goto_5e
    if-ge v3, v8, :cond_75

    aget v6, v0, v3

    if-ltz v6, :cond_6a

    aget v6, v0, v3

    const/16 v7, 0xff

    if-le v6, v7, :cond_72

    :cond_6a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid version number: Version number may be negative or greater than 255"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    :cond_75
    const/4 v6, 0x0

    aget v6, v0, v6

    const/4 v7, 0x1

    aget v7, v0, v7

    const/4 v8, 0x2

    aget v8, v0, v8

    const/4 v9, 0x3

    aget v9, v0, v9

    invoke-static {v6, v7, v8, v9}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v6

    return-object v6

    :array_86
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static getInt(IIII)I
    .registers 6

    shl-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0
.end method

.method public static javaVersion()Lcom/ibm/icu/util/VersionInfo;
    .registers 12

    const/16 v11, 0x2e

    sget-object v10, Lcom/ibm/icu/util/VersionInfo;->javaVersion:Lcom/ibm/icu/util/VersionInfo;

    if-nez v10, :cond_52

    const-string v10, "java.version"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_14
    array-length v10, v1

    if-ge v4, v10, :cond_29

    add-int/lit8 v5, v4, 0x1

    aget-char v0, v1, v4

    const/16 v10, 0x30

    if-lt v0, v10, :cond_23

    const/16 v10, 0x39

    if-le v0, v10, :cond_3f

    :cond_23
    if-eqz v3, :cond_3d

    const/4 v10, 0x3

    if-ne v2, v10, :cond_35

    move v4, v5

    :cond_29
    :goto_29
    if-lez v8, :cond_46

    const/4 v10, 0x1

    sub-int v10, v8, v10

    aget-char v10, v1, v10

    if-ne v10, v11, :cond_46

    add-int/lit8 v8, v8, -0x1

    goto :goto_29

    :cond_35
    const/4 v3, 0x0

    add-int/lit8 v9, v8, 0x1

    aput-char v11, v1, v8

    add-int/lit8 v2, v2, 0x1

    move v8, v9

    :cond_3d
    :goto_3d
    move v4, v5

    goto :goto_14

    :cond_3f
    const/4 v3, 0x1

    add-int/lit8 v9, v8, 0x1

    aput-char v0, v1, v8

    move v8, v9

    goto :goto_3d

    :cond_46
    new-instance v7, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v7, v1, v10, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v7}, Lcom/ibm/icu/util/VersionInfo;->getInstance(Ljava/lang/String;)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v10

    sput-object v10, Lcom/ibm/icu/util/VersionInfo;->javaVersion:Lcom/ibm/icu/util/VersionInfo;

    :cond_52
    sget-object v10, Lcom/ibm/icu/util/VersionInfo;->javaVersion:Lcom/ibm/icu/util/VersionInfo;

    return-object v10
.end method


# virtual methods
.method public compareTo(Lcom/ibm/icu/util/VersionInfo;)I
    .registers 4

    iget v0, p0, Lcom/ibm/icu/util/VersionInfo;->m_version_:I

    iget v1, p1, Lcom/ibm/icu/util/VersionInfo;->m_version_:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/ibm/icu/util/VersionInfo;

    invoke-virtual {p0, p1}, Lcom/ibm/icu/util/VersionInfo;->compareTo(Lcom/ibm/icu/util/VersionInfo;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public getMajor()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/VersionInfo;->m_version_:I

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMicro()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/VersionInfo;->m_version_:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMilli()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/VersionInfo;->m_version_:I

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getMinor()I
    .registers 2

    iget v0, p0, Lcom/ibm/icu/util/VersionInfo;->m_version_:I

    shr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/16 v2, 0x2e

    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMajor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMinor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMilli()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/ibm/icu/util/VersionInfo;->getMicro()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
