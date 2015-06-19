.class public abstract Lcom/instagram/api/j/j;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lch/boye/httpclientandroidlib/StatusLine;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public final a(Lch/boye/httpclientandroidlib/StatusLine;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/api/j/j;->a:Lch/boye/httpclientandroidlib/StatusLine;

    return-void
.end method

.method public abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Z)V
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract b(Ljava/lang/String;)Z
.end method

.method public final c()Lch/boye/httpclientandroidlib/StatusLine;
    .registers 2

    iget-object v0, p0, Lcom/instagram/api/j/j;->a:Lch/boye/httpclientandroidlib/StatusLine;

    return-object v0
.end method

.method public abstract c(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final d()Ljava/lang/Integer;
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/api/j/j;->c()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/instagram/api/j/j;->c()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final e()I
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/api/j/j;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/instagram/api/j/k;->b:I

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Lcom/instagram/api/j/j;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_1a

    sget v0, Lcom/instagram/api/j/k;->c:I

    goto :goto_8

    :cond_1a
    sget v0, Lcom/instagram/api/j/k;->d:I

    goto :goto_8

    :cond_1d
    iget-boolean v0, p0, Lcom/instagram/api/j/j;->b:Z

    if-eqz v0, :cond_24

    sget v0, Lcom/instagram/api/j/k;->d:I

    goto :goto_8

    :cond_24
    sget v0, Lcom/instagram/api/j/k;->a:I

    goto :goto_8
.end method

.method public final f()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/api/j/j;->e()I

    move-result v0

    sget v1, Lcom/instagram/api/j/k;->a:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, p0, Lcom/instagram/api/j/j;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public abstract g()Z
.end method

.method public abstract h()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract i()Ljava/lang/String;
.end method

.method public abstract j()Z
.end method

.method public abstract k()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/api/b/b;",
            ">;"
        }
    .end annotation
.end method

.method public abstract l()Lcom/fasterxml/jackson/databind/JsonNode;
.end method

.method public abstract m()Ljava/lang/String;
.end method

.method public abstract n()Z
.end method
