.class Lcom/fsck/k9/mail/store/WebDavStore$1;
.super Ljava/lang/Object;
.source "WebDavStore.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/WebDavStore;->doFBA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/WebDavStore;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$1;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$1;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http.target_host"

    invoke-interface {p2, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/HttpHost;

    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->toURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/fsck/k9/mail/store/WebDavStore;->mRedirectUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore;->access$002(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
