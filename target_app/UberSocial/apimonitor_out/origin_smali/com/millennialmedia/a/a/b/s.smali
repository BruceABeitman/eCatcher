.class public final Lcom/millennialmedia/a/a/b/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/millennialmedia/a/a/d/a;)Lcom/millennialmedia/a/a/m;
    .registers 3

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    const/4 v1, 0x0

    sget-object v0, Lcom/millennialmedia/a/a/b/a/p;->P:Lcom/millennialmedia/a/a/aa;

    invoke-virtual {v0, p0}, Lcom/millennialmedia/a/a/aa;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/m;
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Lcom/millennialmedia/a/a/d/e; {:try_start_1 .. :try_end_d} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_d} :catch_28

    :goto_d
    return-object v0

    :catch_e
    move-exception v0

    if-eqz v1, :cond_14

    sget-object v0, Lcom/millennialmedia/a/a/o;->a:Lcom/millennialmedia/a/a/o;

    goto :goto_d

    :cond_14
    new-instance v1, Lcom/millennialmedia/a/a/w;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1a
    move-exception v0

    new-instance v1, Lcom/millennialmedia/a/a/w;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_21
    move-exception v0

    new-instance v1, Lcom/millennialmedia/a/a/n;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/n;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_28
    move-exception v0

    new-instance v1, Lcom/millennialmedia/a/a/w;

    invoke-direct {v1, v0}, Lcom/millennialmedia/a/a/w;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/Appendable;)Ljava/io/Writer;
    .registers 3

    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/Writer;

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcom/millennialmedia/a/a/b/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/millennialmedia/a/a/b/t;-><init>(Ljava/lang/Appendable;Lcom/millennialmedia/a/a/b/s$1;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static a(Lcom/millennialmedia/a/a/m;Lcom/millennialmedia/a/a/d/d;)V
    .registers 3

    sget-object v0, Lcom/millennialmedia/a/a/b/a/p;->P:Lcom/millennialmedia/a/a/aa;

    invoke-virtual {v0, p1, p0}, Lcom/millennialmedia/a/a/aa;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V

    return-void
.end method
