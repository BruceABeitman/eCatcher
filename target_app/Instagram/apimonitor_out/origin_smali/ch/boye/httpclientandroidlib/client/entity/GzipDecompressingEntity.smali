.class public Lch/boye/httpclientandroidlib/client/entity/GzipDecompressingEntity;
.super Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;
.source "GzipDecompressingEntity.java"


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpEntity;)V
    .registers 2

    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getContent()Ljava/io/InputStream;
    .registers 2

    invoke-super {p0}, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lch/boye/httpclientandroidlib/Header;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method getDecompressingInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 3

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public bridge synthetic writeTo(Ljava/io/OutputStream;)V
    .registers 2

    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/client/entity/DecompressingEntity;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
