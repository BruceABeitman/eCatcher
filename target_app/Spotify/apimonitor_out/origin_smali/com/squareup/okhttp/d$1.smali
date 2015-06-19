.class final Lcom/squareup/okhttp/d$1;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/d;-><init>(Lcom/squareup/okhttp/internal/h;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/okhttp/internal/h;

.field final synthetic b:Lcom/squareup/okhttp/d;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/d;Ljava/io/InputStream;Lcom/squareup/okhttp/internal/h;)V
    .registers 4

    iput-object p1, p0, Lcom/squareup/okhttp/d$1;->b:Lcom/squareup/okhttp/d;

    iput-object p3, p0, Lcom/squareup/okhttp/d$1;->a:Lcom/squareup/okhttp/internal/h;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/d$1;->a:Lcom/squareup/okhttp/internal/h;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/h;->close()V

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    return-void
.end method
