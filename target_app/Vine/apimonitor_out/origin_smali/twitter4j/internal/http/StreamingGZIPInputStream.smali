.class final Ltwitter4j/internal/http/StreamingGZIPInputStream;
.super Ljava/util/zip/GZIPInputStream;
.source "StreamingGZIPInputStream.java"


# instance fields
.field private final wrapped:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Ltwitter4j/internal/http/StreamingGZIPInputStream;->wrapped:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ltwitter4j/internal/http/StreamingGZIPInputStream;->wrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method
