.class public Lorg/apache/commons/io/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

#the value of this static final field might be set in the static constructor
.field public static final DIR_SEPARATOR:C = '\u0000'

.field public static final DIR_SEPARATOR_UNIX:C = '/'

.field public static final DIR_SEPARATOR_WINDOWS:C = '\\'

.field public static final LINE_SEPARATOR:Ljava/lang/String; = null

.field public static final LINE_SEPARATOR_UNIX:Ljava/lang/String; = "\n"

.field public static final LINE_SEPARATOR_WINDOWS:Ljava/lang/String; = "\r\n"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-char v2, Ljava/io/File;->separatorChar:C

    sput-char v2, Lorg/apache/commons/io/IOUtils;->DIR_SEPARATOR:C

    new-instance v0, Ljava/io/StringWriter;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static closeQuietly(Ljava/io/Writer;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public static contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, -0x1

    instance-of v4, p0, Ljava/io/BufferedInputStream;

    if-nez v4, :cond_c

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p0, v2

    :cond_c
    instance-of v4, p1, Ljava/io/BufferedInputStream;

    if-nez v4, :cond_16

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v3

    :cond_16
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    :goto_1a
    if-eq v5, v0, :cond_29

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-eq v0, v1, :cond_24

    move v4, v6

    :goto_23
    return v4

    :cond_24
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_1a

    :cond_29
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v5, :cond_31

    const/4 v4, 0x1

    goto :goto_23

    :cond_31
    move v4, v6

    goto :goto_23
.end method

.method public static contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, -0x1

    instance-of v4, p0, Ljava/io/BufferedReader;

    if-nez v4, :cond_c

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p0, v2

    :cond_c
    instance-of v4, p1, Ljava/io/BufferedReader;

    if-nez v4, :cond_16

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p1, v3

    :cond_16
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    :goto_1a
    if-eq v5, v0, :cond_29

    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    if-eq v0, v1, :cond_24

    move v4, v6

    :goto_23
    return v4

    :cond_24
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_1a

    :cond_29
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    if-ne v1, v5, :cond_31

    const/4 v4, 0x1

    goto :goto_23

    :cond_31
    move v4, v6

    goto :goto_23
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    const/4 v2, -0x1

    :goto_c
    return v2

    :cond_d
    long-to-int v2, v0

    goto :goto_c
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    const/4 v2, -0x1

    :goto_c
    return v2

    :cond_d
    long-to-int v2, v0

    goto :goto_c
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    :goto_5
    return-void

    :cond_6
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    goto :goto_5
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;)V

    :goto_5
    return-void

    :cond_6
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    goto :goto_5
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x1000

    new-array v0, v4, [B

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_7
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v4, v3, :cond_15

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_7

    :cond_15
    return-wide v1
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x1000

    new-array v0, v4, [C

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_7
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-eq v4, v3, :cond_15

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/Writer;->write([CII)V

    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_7

    :cond_15
    return-wide v1
.end method

.method public static lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_e

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    :goto_8
    new-instance v1, Lorg/apache/commons/io/LineIterator;

    invoke-direct {v1, v0}, Lorg/apache/commons/io/LineIterator;-><init>(Ljava/io/Reader;)V

    return-object v1

    :cond_e
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_8
.end method

.method public static lineIterator(Ljava/io/Reader;)Lorg/apache/commons/io/LineIterator;
    .registers 2

    new-instance v0, Lorg/apache/commons/io/LineIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/io/LineIterator;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static readLines(Ljava/io/InputStream;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_7

    invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    :goto_6
    return-object v1

    :cond_7
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v1

    goto :goto_6
.end method

.method public static readLines(Ljava/io/Reader;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_e
    if-eqz v0, :cond_18

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_18
    return-object v1
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static toCharArray(Ljava/io/InputStream;)[C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toCharArray(Ljava/io/Reader;)[C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public static toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_d

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    move-object v0, v1

    :goto_7
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    move-object v0, v1

    goto :goto_7
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-static {p0, v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString([B)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_7
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_9
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_7

    if-nez p2, :cond_8

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;)V

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_7
.end method

.method public static write(Ljava/lang/String;Ljava/io/Writer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_5

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_d
    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_7

    if-nez p2, :cond_8

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V

    :cond_7
    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_7
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static write([BLjava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_5

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    :cond_5
    return-void
.end method

.method public static write([BLjava/io/Writer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_a

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static write([BLjava/io/Writer;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_7

    if-nez p2, :cond_8

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->write([BLjava/io/Writer;)V

    :cond_7
    :goto_7
    return-void

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static write([CLjava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_e

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    :cond_e
    return-void
.end method

.method public static write([CLjava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_7

    if-nez p2, :cond_8

    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->write([CLjava/io/OutputStream;)V

    :cond_7
    :goto_7
    return-void

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_7
.end method

.method public static write([CLjava/io/Writer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_5

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write([C)V

    :cond_5
    return-void
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_3

    :cond_2
    return-void

    :cond_3
    if-nez p1, :cond_7

    sget-object p1, Lorg/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    :cond_7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_22
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_b
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_6

    invoke-static {p0, p1, p2}, Lorg/apache/commons/io/IOUtils;->writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;)V

    :cond_5
    return-void

    :cond_6
    if-eqz p0, :cond_5

    if-nez p1, :cond_c

    sget-object p1, Lorg/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    :cond_c
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_27
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_10
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/Writer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_3

    :cond_2
    return-void

    :cond_3
    if-nez p1, :cond_7

    sget-object p1, Lorg/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    :cond_7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1e
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_b
.end method
