.class final Lcom/fasterxml/jackson/a/e/b;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# instance fields
.field protected final a:Lcom/fasterxml/jackson/a/e/f;

.field protected final b:Lcom/fasterxml/jackson/a/e/b;

.field private final c:I


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/a/e/f;Lcom/fasterxml/jackson/a/e/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/a/e/b;->a:Lcom/fasterxml/jackson/a/e/f;

    iput-object p2, p0, Lcom/fasterxml/jackson/a/e/b;->b:Lcom/fasterxml/jackson/a/e/b;

    if-nez p2, :cond_d

    const/4 v0, 0x1

    :goto_a
    iput v0, p0, Lcom/fasterxml/jackson/a/e/b;->c:I

    return-void

    :cond_d
    iget v0, p2, Lcom/fasterxml/jackson/a/e/b;->c:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/a/e/b;->c:I

    return v0
.end method

.method public final a(III)Lcom/fasterxml/jackson/a/e/f;
    .registers 7

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e/b;->a:Lcom/fasterxml/jackson/a/e/f;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/e/f;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_13

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e/b;->a:Lcom/fasterxml/jackson/a/e/f;

    invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/a/e/f;->a(II)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e/b;->a:Lcom/fasterxml/jackson/a/e/f;

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/fasterxml/jackson/a/e/b;->b:Lcom/fasterxml/jackson/a/e/b;

    move-object v1, v0

    :goto_16
    if-eqz v1, :cond_2a

    iget-object v0, v1, Lcom/fasterxml/jackson/a/e/b;->a:Lcom/fasterxml/jackson/a/e/f;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/e/f;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_26

    invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/a/e/f;->a(II)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_26
    iget-object v0, v1, Lcom/fasterxml/jackson/a/e/b;->b:Lcom/fasterxml/jackson/a/e/b;

    move-object v1, v0

    goto :goto_16

    :cond_2a
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final a(I[II)Lcom/fasterxml/jackson/a/e/f;
    .registers 7

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e/b;->a:Lcom/fasterxml/jackson/a/e/f;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/e/f;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_13

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e/b;->a:Lcom/fasterxml/jackson/a/e/f;

    invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/a/e/f;->a([II)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/fasterxml/jackson/a/e/b;->a:Lcom/fasterxml/jackson/a/e/f;

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/fasterxml/jackson/a/e/b;->b:Lcom/fasterxml/jackson/a/e/b;

    move-object v1, v0

    :goto_16
    if-eqz v1, :cond_2a

    iget-object v0, v1, Lcom/fasterxml/jackson/a/e/b;->a:Lcom/fasterxml/jackson/a/e/f;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/e/f;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_26

    invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/a/e/f;->a([II)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_26
    iget-object v0, v1, Lcom/fasterxml/jackson/a/e/b;->b:Lcom/fasterxml/jackson/a/e/b;

    move-object v1, v0

    goto :goto_16

    :cond_2a
    const/4 v0, 0x0

    goto :goto_12
.end method
