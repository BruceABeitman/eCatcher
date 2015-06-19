.class public final Lorg/apache/b/a/g/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:Ljava/nio/charset/Charset; = null

.field public static final e:Ljava/nio/charset/Charset; = null

.field public static final f:Ljava/nio/charset/Charset; = null

.field public static final g:Ljava/lang/String; = "\r\n"

.field public static final h:I = 0xd

.field public static final i:I = 0xa

.field public static final j:I = 0x20

.field public static final k:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "US-ASCII"

    invoke-static {v0}, Lorg/apache/b/a/g/c;->e(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/b/a/g/f;->d:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Lorg/apache/b/a/g/c;->e(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/b/a/g/f;->e:Ljava/nio/charset/Charset;

    sget-object v0, Lorg/apache/b/a/g/f;->d:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/apache/b/a/g/f;->f:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(C)Z
    .registers 2

    const v0, 0xff80

    and-int/2addr v0, p0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, v0

    :goto_10
    if-ge v1, v2, :cond_20

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/b/a/g/f;->a(C)Z

    move-result v3

    if-nez v3, :cond_1d

    :goto_1c
    return v0

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_20
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method public static b(C)Z
    .registers 2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_10

    const/16 v0, 0x9

    if-eq p0, v0, :cond_10

    const/16 v0, 0xd

    if-eq p0, v0, :cond_10

    const/16 v0, 0xa

    if-ne p0, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
