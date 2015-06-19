.class Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;
.super Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;
.source "EntityEnclosingRequestWrapper.java"


# instance fields
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;Lch/boye/httpclientandroidlib/HttpEntity;)V
    .registers 3

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->this$0:Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;

    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;)V

    return-void
.end method


# virtual methods
.method public consumeContent()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->this$0:Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    #setter for: Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->consumed:Z
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->access$002(Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;Z)Z

    invoke-super {p0}, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->consumeContent()V

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->this$0:Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    #setter for: Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->consumed:Z
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->access$002(Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;Z)Z

    invoke-super {p0}, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper$EntityWrapper;->this$0:Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;

    const/4 v1, 0x1

    #setter for: Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->consumed:Z
    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;->access$002(Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;Z)Z

    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
