.class public final Lorg/apache/log4j/i/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final b:Lorg/apache/log4j/i/i;


# instance fields
.field private final c:I

.field private final d:I

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_16

    sput-object v0, Lorg/apache/log4j/i/i;->a:[C

    new-instance v0, Lorg/apache/log4j/i/i;

    const v1, 0x7fffffff

    invoke-direct {v0, v2, v2, v1}, Lorg/apache/log4j/i/i;-><init>(ZII)V

    sput-object v0, Lorg/apache/log4j/i/i;->b:Lorg/apache/log4j/i/i;

    return-void

    nop

    :array_16
    .array-data 0x2
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x20t 0x0t
    .end array-data
.end method

.method public constructor <init>(ZII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/log4j/i/i;->e:Z

    iput p2, p0, Lorg/apache/log4j/i/i;->c:I

    iput p3, p0, Lorg/apache/log4j/i/i;->d:I

    return-void
.end method

.method public static a()Lorg/apache/log4j/i/i;
    .registers 1

    sget-object v0, Lorg/apache/log4j/i/i;->b:Lorg/apache/log4j/i/i;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/StringBuffer;)V
    .registers 6

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, p1

    iget v1, p0, Lorg/apache/log4j/i/i;->d:I

    if-le v0, v1, :cond_14

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/i/i;->d:I

    sub-int/2addr v0, v1

    invoke-virtual {p2, p1, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget v1, p0, Lorg/apache/log4j/i/i;->c:I

    if-ge v0, v1, :cond_13

    iget-boolean v1, p0, Lorg/apache/log4j/i/i;->e:Z

    if-eqz v1, :cond_34

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/i/i;->c:I

    add-int/2addr v1, p1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    :goto_26
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_13

    const/16 v1, 0x20

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_34
    iget v1, p0, Lorg/apache/log4j/i/i;->c:I

    sub-int v0, v1, v0

    :goto_38
    const/16 v1, 0x8

    if-le v0, v1, :cond_44

    sget-object v1, Lorg/apache/log4j/i/i;->a:[C

    invoke-virtual {p2, p1, v1}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x8

    goto :goto_38

    :cond_44
    sget-object v1, Lorg/apache/log4j/i/i;->a:[C

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v1, v2, v0}, Ljava/lang/StringBuffer;->insert(I[CII)Ljava/lang/StringBuffer;

    goto :goto_13
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lorg/apache/log4j/i/i;->e:Z

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lorg/apache/log4j/i/i;->c:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lorg/apache/log4j/i/i;->d:I

    return v0
.end method
