.class final Lcom/squareup/okhttp/internal/http/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/e;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/e;->a()I

    move-result v1

    if-ge v0, v1, :cond_2a

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/e;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "User-Agent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/x;->a:Ljava/lang/String;

    :cond_1c
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1f
    const-string v3, "Proxy-Authorization"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/x;->b:Ljava/lang/String;

    goto :goto_1c

    :cond_2a
    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/http/x;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/x;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/http/x;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/x;->b:Ljava/lang/String;

    return-object v0
.end method
