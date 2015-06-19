.class public final Lcom/squareup/okhttp/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/net/URLStreamHandlerFactory;


# instance fields
.field private final a:Lcom/squareup/okhttp/m;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/m;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/o;->a:Lcom/squareup/okhttp/m;

    return-void
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/m;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/o;->a:Lcom/squareup/okhttp/m;

    return-object v0
.end method

.method public final a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/o;->a:Lcom/squareup/okhttp/m;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/m;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/squareup/okhttp/o;

    iget-object v1, p0, Lcom/squareup/okhttp/o;->a:Lcom/squareup/okhttp/m;

    invoke-virtual {v1}, Lcom/squareup/okhttp/m;->o()Lcom/squareup/okhttp/m;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/o;-><init>(Lcom/squareup/okhttp/m;)V

    return-object v0
.end method

.method public final createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/o;->a:Lcom/squareup/okhttp/m;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/m;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v0

    return-object v0
.end method
