.class public Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/kevinsawicki/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestOutputStream"
.end annotation


# instance fields
.field private final encoder:Ljava/nio/charset/CharsetEncoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p1, p3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    #calls: Lcom/github/kevinsawicki/HttpRequest;->getValidCharset(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2}, Lcom/github/kevinsawicki/HttpRequest;->access$0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method static synthetic access$0(Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;)Ljava/nio/charset/CharsetEncoder;
    .registers 2

    iget-object v0, p0, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    return-object v0
.end method


# virtual methods
.method public write(Ljava/lang/String;)Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/github/kevinsawicki/HttpRequest$RequestOutputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-super {p0, v1, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    return-object p0
.end method
