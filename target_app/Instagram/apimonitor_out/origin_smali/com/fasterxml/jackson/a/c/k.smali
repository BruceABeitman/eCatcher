.class public final Lcom/fasterxml/jackson/a/c/k;
.super Ljava/io/Writer;
.source "SegmentedStringWriter.java"


# instance fields
.field protected final a:Lcom/fasterxml/jackson/a/g/o;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/a/g/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Lcom/fasterxml/jackson/a/g/o;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/a/g/o;-><init>(Lcom/fasterxml/jackson/a/g/a;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/g/o;->a()V

    return-object v0
.end method

.method public final append(C)Ljava/io/Writer;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/c/k;->write(I)V

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .registers 6

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/fasterxml/jackson/a/g/o;->a(Ljava/lang/String;II)V

    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .registers 8

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/fasterxml/jackson/a/g/o;->a(Ljava/lang/String;II)V

    return-object p0
.end method

.method public final bridge synthetic append(C)Ljava/lang/Appendable;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/c/k;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/c/k;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/c/k;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .registers 1

    return-void
.end method

.method public final flush()V
    .registers 1

    return-void
.end method

.method public final write(I)V
    .registers 4

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/g/o;->a(C)V

    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/fasterxml/jackson/a/g/o;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public final write(Ljava/lang/String;II)V
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/a/g/o;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public final write([C)V
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/fasterxml/jackson/a/g/o;->c([CII)V

    return-void
.end method

.method public final write([CII)V
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/a/g/o;->c([CII)V

    return-void
.end method