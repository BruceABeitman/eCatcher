.class public Lorg/apache/log4j/c/ac;
.super Lorg/apache/log4j/c/aa;
.source "SourceFile"


# instance fields
.field a:I

.field c:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;ILorg/apache/log4j/k/e;)V
    .registers 4

    invoke-direct {p0, p1, p3}, Lorg/apache/log4j/c/aa;-><init>(Ljava/io/Writer;Lorg/apache/log4j/k/e;)V

    iput p2, p0, Lorg/apache/log4j/c/ac;->a:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lorg/apache/log4j/c/ac;->c:I

    return-void
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lorg/apache/log4j/c/ac;->a:I

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/log4j/c/ac;->a:I

    iget v2, p0, Lorg/apache/log4j/c/ac;->c:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/log4j/c/aa;->write(Ljava/lang/String;)V

    return-void
.end method
