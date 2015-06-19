.class public final Lcom/squareup/okhttp/internal/http/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/squareup/okhttp/j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/squareup/okhttp/internal/http/g$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/g$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/j;

    return-void
.end method

.method public static a(Lcom/squareup/okhttp/j;Lcom/squareup/okhttp/internal/http/z;Ljava/net/Proxy;)Lcom/squareup/okhttp/internal/http/u;
    .registers 9

    const/4 v2, 0x0

    const/16 v5, 0x197

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->c()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1f

    const-string v1, "WWW-Authenticate"

    const-string v0, "Authorization"

    :goto_f
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->g()Lcom/squareup/okhttp/internal/http/e;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/squareup/okhttp/internal/http/g;->a(Lcom/squareup/okhttp/internal/http/e;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    move-object v0, v2

    :goto_1e
    return-object v0

    :cond_1f
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->c()I

    move-result v0

    if-ne v0, v5, :cond_2a

    const-string v1, "Proxy-Authenticate"

    const-string v0, "Proxy-Authorization"

    goto :goto_f

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_30
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->a()Lcom/squareup/okhttp/internal/http/u;

    move-result-object v3

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->c()I

    move-result v4

    if-ne v4, v5, :cond_46

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/u;->a()Ljava/net/URL;

    move-result-object v4

    invoke-interface {p0, p2, v4, v1}, Lcom/squareup/okhttp/j;->b(Ljava/net/Proxy;Ljava/net/URL;Ljava/util/List;)Lcom/squareup/okhttp/l;

    move-result-object v1

    :goto_42
    if-nez v1, :cond_4f

    move-object v0, v2

    goto :goto_1e

    :cond_46
    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/u;->a()Ljava/net/URL;

    move-result-object v4

    invoke-interface {p0, p2, v4, v1}, Lcom/squareup/okhttp/j;->a(Ljava/net/Proxy;Ljava/net/URL;Ljava/util/List;)Lcom/squareup/okhttp/l;

    move-result-object v1

    goto :goto_42

    :cond_4f
    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/u;->g()Lcom/squareup/okhttp/internal/http/w;

    move-result-object v2

    invoke-virtual {v1}, Lcom/squareup/okhttp/l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/w;->a()Lcom/squareup/okhttp/internal/http/u;

    move-result-object v0

    goto :goto_1e
.end method

.method private static a(Lcom/squareup/okhttp/internal/http/e;Ljava/lang/String;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/okhttp/internal/http/e;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/k;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v6, v4

    :goto_7
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/e;->a()I

    move-result v0

    if-ge v6, v0, :cond_65

    invoke-virtual {p0, v6}, Lcom/squareup/okhttp/internal/http/e;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-virtual {p0, v6}, Lcom/squareup/okhttp/internal/http/e;->b(I)Ljava/lang/String;

    move-result-object v0

    move v1, v4

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_61

    const-string v2, " "

    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/d;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/http/d;->a(Ljava/lang/String;I)I

    move-result v2

    const/4 v1, 0x1

    const-string v3, "realm=\""

    const/4 v5, 0x7

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_61

    add-int/lit8 v1, v2, 0x7

    const-string v2, "\""

    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/d;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v2, 0x1

    const-string v2, ","

    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/d;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/d;->a(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Lcom/squareup/okhttp/k;

    invoke-direct {v2, v8, v3}, Lcom/squareup/okhttp/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_61
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_7

    :cond_65
    return-object v7
.end method
