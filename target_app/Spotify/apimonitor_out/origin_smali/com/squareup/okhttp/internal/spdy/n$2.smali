.class final Lcom/squareup/okhttp/internal/spdy/n$2;
.super Ljava/util/zip/Inflater;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/spdy/n;-><init>(Lcom/squareup/okhttp/internal/a/c;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/spdy/n;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/spdy/n;)V
    .registers 2

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/n$2;->a:Lcom/squareup/okhttp/internal/spdy/n;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public final inflate([BII)I
    .registers 6

    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/n$2;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/r;->a:[B

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/spdy/n$2;->setDictionary([B)V

    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    :cond_15
    return v0
.end method
