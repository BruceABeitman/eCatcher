.class public abstract Lorg/apache/log4j/i/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lorg/apache/log4j/i/v;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/log4j/i/y;

    invoke-direct {v0}, Lorg/apache/log4j/i/y;-><init>()V

    sput-object v0, Lorg/apache/log4j/i/v;->a:Lorg/apache/log4j/i/v;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/apache/log4j/i/v;
    .registers 1

    sget-object v0, Lorg/apache/log4j/i/v;->a:Lorg/apache/log4j/i/v;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lorg/apache/log4j/i/v;
    .registers 10

    const/16 v8, 0x39

    const/16 v7, 0x30

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lorg/apache/log4j/i/v;->a:Lorg/apache/log4j/i/v;

    :goto_17
    return-object v0

    :cond_18
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3c

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_b9

    const/4 v0, 0x1

    :goto_27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3d

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v7, :cond_3d

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v8, :cond_3d

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_3c
    move v0, v1

    :cond_3d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_56

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4f

    new-instance v0, Lorg/apache/log4j/i/x;

    invoke-direct {v0, v1}, Lorg/apache/log4j/i/x;-><init>(I)V

    goto :goto_17

    :cond_4f
    new-instance v0, Lorg/apache/log4j/i/w;

    neg-int v1, v1

    invoke-direct {v0, v1}, Lorg/apache/log4j/i/w;-><init>(I)V

    goto :goto_17

    :cond_56
    new-instance v5, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_5d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_92

    if-ltz v0, :cond_92

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_98

    const v3, 0x7fffffff

    add-int/lit8 v2, v0, 0x1

    :goto_72
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_b7

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x2e

    if-ne v2, v6, :cond_81

    move v2, v1

    :cond_81
    :goto_81
    new-instance v6, Lorg/apache/log4j/i/aa;

    invoke-direct {v6, v3, v2}, Lorg/apache/log4j/i/aa;-><init>(IC)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "."

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b0

    :cond_92
    new-instance v0, Lorg/apache/log4j/i/z;

    invoke-direct {v0, v5}, Lorg/apache/log4j/i/z;-><init>(Ljava/util/List;)V

    goto :goto_17

    :cond_98
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v7, :cond_ad

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v8, :cond_ad

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v3, v2, -0x30

    add-int/lit8 v2, v0, 0x1

    goto :goto_72

    :cond_ad
    move v2, v0

    move v3, v1

    goto :goto_72

    :cond_b0
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    :cond_b3
    sget-object v0, Lorg/apache/log4j/i/v;->a:Lorg/apache/log4j/i/v;

    goto/16 :goto_17

    :cond_b7
    move v2, v1

    goto :goto_81

    :cond_b9
    move v0, v1

    goto/16 :goto_27
.end method


# virtual methods
.method public abstract a(ILjava/lang/StringBuffer;)V
.end method
