.class Lorg/apache/log4j/i/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:C


# direct methods
.method public constructor <init>(IC)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/log4j/i/aa;->a:I

    iput-char p2, p0, Lorg/apache/log4j/i/aa;->b:C

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/StringBuffer;I)I
    .registers 6

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    sub-int v1, v0, p2

    iget v2, p0, Lorg/apache/log4j/i/aa;->a:I

    if-le v1, v2, :cond_27

    iget v1, p0, Lorg/apache/log4j/i/aa;->a:I

    add-int/2addr v1, p2

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/log4j/i/aa;->a:I

    add-int/2addr v0, p2

    iget-char v1, p0, Lorg/apache/log4j/i/aa;->b:C

    if-eqz v1, :cond_27

    iget-char v1, p0, Lorg/apache/log4j/i/aa;->b:C

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    :cond_27
    add-int/lit8 v0, v0, 0x1

    :cond_29
    return v0
.end method
