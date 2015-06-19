.class final Lcom/squareup/okhttp/internal/http/ad$1;
.super Lcom/squareup/okhttp/internal/http/aa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/ad;
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/http/e;

.field final synthetic b:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/http/e;Ljava/io/InputStream;)V
    .registers 3

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/ad$1;->a:Lcom/squareup/okhttp/internal/http/e;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/ad$1;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ad$1;->b:Ljava/io/InputStream;

    return-object v0
.end method
