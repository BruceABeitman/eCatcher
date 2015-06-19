.class public Lcom/fsck/k9/mail/internet/TextBody;
.super Ljava/lang/Object;
.source "TextBody.java"

# interfaces
.implements Lcom/fsck/k9/mail/Body;


# instance fields
.field mBody:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/mail/internet/TextBody;->mBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/TextBody;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/fsck/k9/mail/internet/TextBody;->mBody:Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_c
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_11
    return-object v2

    :cond_12
    const/4 v2, 0x0

    new-array v0, v2, [B
    :try_end_15
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_c

    :catch_16
    move-exception v2

    move-object v1, v2

    const/4 v2, 0x0

    goto :goto_11
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/internet/TextBody;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iget-object v1, p0, Lcom/fsck/k9/mail/internet/TextBody;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/fsck/k9/mail/internet/TextBody;->mBody:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/codec/binary/Base64;->encodeBase64Chunked([B)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    :cond_13
    return-void
.end method
