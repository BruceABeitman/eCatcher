.class final Lcom/squareup/okhttp/internal/http/af;
.super Lcom/squareup/okhttp/internal/http/c;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/http/ae;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/http/ae;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/c;-><init>(Ljava/net/HttpURLConnection;)V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/af;->a:Lcom/squareup/okhttp/internal/http/ae;

    return-void
.end method


# virtual methods
.method protected final a()Lcom/squareup/okhttp/i;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/af;->a:Lcom/squareup/okhttp/internal/http/ae;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/ae;->a(Lcom/squareup/okhttp/internal/http/ae;)Lcom/squareup/okhttp/internal/http/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->f()Lcom/squareup/okhttp/i;

    move-result-object v0

    return-object v0
.end method

.method public final getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->d()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->d()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final setFixedLengthStreamingMode(J)V
    .registers 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/af;->a:Lcom/squareup/okhttp/internal/http/ae;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/ae;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public final setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 3

    invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    invoke-static {}, Lcom/squareup/okhttp/internal/http/ad;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
