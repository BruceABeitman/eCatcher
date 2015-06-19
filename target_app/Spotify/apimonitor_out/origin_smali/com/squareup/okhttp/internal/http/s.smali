.class public final Lcom/squareup/okhttp/internal/http/s;
.super Lcom/squareup/okhttp/internal/http/c;
.source "SourceFile"


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/c;-><init>(Ljava/net/HttpURLConnection;)V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/s;->a:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lcom/squareup/okhttp/m;)V
    .registers 4

    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-direct {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/squareup/okhttp/m;)V

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/s;-><init>(Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;)V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/squareup/okhttp/i;
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/s;->a:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/s;->a:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->f()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/s;->a:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->c:Lcom/squareup/okhttp/internal/http/p;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/p;->h()Lcom/squareup/okhttp/internal/http/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->f()Lcom/squareup/okhttp/i;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_25
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/s;->a:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->d:Lcom/squareup/okhttp/i;

    goto :goto_24
.end method

.method public final bridge synthetic addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/c;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic connect()V
    .registers 1

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->connect()V

    return-void
.end method

.method public final bridge synthetic disconnect()V
    .registers 1

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->disconnect()V

    return-void
.end method

.method public final bridge synthetic getAllowUserInteraction()Z
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getCipherSuite()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getConnectTimeout()I
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getContent()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3

    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/http/c;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getContentEncoding()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getContentLength()I
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getContentLength()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getContentType()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDate()J
    .registers 3

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getDefaultUseCaches()Z
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getDoInput()Z
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getDoOutput()Z
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getErrorStream()Ljava/io/InputStream;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getExpiration()J
    .registers 3

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getHeaderField(I)Ljava/lang/String;
    .registers 3

    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/http/c;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/http/c;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getHeaderFieldDate(Ljava/lang/String;J)J
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/http/c;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getHeaderFieldInt(Ljava/lang/String;I)I
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/c;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3

    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/http/c;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getHeaderFields()Ljava/util/Map;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/s;->a:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/m;->i()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getIfModifiedSince()J
    .registers 3

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getInputStream()Ljava/io/InputStream;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInstanceFollowRedirects()Z
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getLastModified()J
    .registers 3

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getLocalPrincipal()Ljava/security/Principal;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getOutputStream()Ljava/io/OutputStream;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getPeerPrincipal()Ljava/security/Principal;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getPermission()Ljava/security/Permission;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getReadTimeout()I
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getRequestMethod()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getRequestProperties()Ljava/util/Map;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/http/c;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getResponseCode()I
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getResponseMessage()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/s;->a:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;

    invoke-virtual {v0}, Lcom/squareup/okhttp/m;->h()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getServerCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getURL()Ljava/net/URL;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getUseCaches()Z
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic setAllowUserInteraction(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/http/c;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public final bridge synthetic setChunkedStreamingMode(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/http/c;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public final bridge synthetic setConnectTimeout(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/http/c;->setConnectTimeout(I)V

    return-void
.end method

.method public final bridge synthetic setDefaultUseCaches(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/http/c;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public final bridge synthetic setDoInput(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/http/c;->setDoInput(Z)V

    return-void
.end method

.method public final bridge synthetic setDoOutput(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/http/c;->setDoOutput(Z)V

    return-void
.end method

.method public final bridge synthetic setFixedLengthStreamingMode(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/http/c;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public final setFixedLengthStreamingMode(J)V
    .registers 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/s;->a:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public final setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/s;->a:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/m;->a(Ljavax/net/ssl/HostnameVerifier;)Lcom/squareup/okhttp/m;

    return-void
.end method

.method public final bridge synthetic setIfModifiedSince(J)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/c;->setIfModifiedSince(J)V

    return-void
.end method

.method public final bridge synthetic setInstanceFollowRedirects(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/http/c;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public final bridge synthetic setReadTimeout(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/http/c;->setReadTimeout(I)V

    return-void
.end method

.method public final bridge synthetic setRequestMethod(Ljava/lang/String;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/http/c;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/c;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/s;->a:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->a:Lcom/squareup/okhttp/m;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/m;->a(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/m;

    return-void
.end method

.method public final bridge synthetic setUseCaches(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/squareup/okhttp/internal/http/c;->setUseCaches(Z)V

    return-void
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic usingProxy()Z
    .registers 2

    invoke-super {p0}, Lcom/squareup/okhttp/internal/http/c;->usingProxy()Z

    move-result v0

    return v0
.end method
