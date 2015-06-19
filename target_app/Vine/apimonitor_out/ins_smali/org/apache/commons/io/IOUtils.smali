.class public Lorg/apache/commons/io/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000
.field public static final DIR_SEPARATOR:C = '\u0000'
.field public static final DIR_SEPARATOR_UNIX:C = '/'
.field public static final DIR_SEPARATOR_WINDOWS:C = '\\'
.field private static final EOF:I = -0x1
.field public static final LINE_SEPARATOR:Ljava/lang/String; = null
.field public static final LINE_SEPARATOR_UNIX:Ljava/lang/String; = "\n"
.field public static final LINE_SEPARATOR_WINDOWS:Ljava/lang/String; = "\r\n"
.field private static final SKIP_BUFFER_SIZE:I = 0x800
.field private static SKIP_BYTE_BUFFER:[B
.field private static SKIP_CHAR_BUFFER:[C
.method static constructor <clinit>()V
.registers 3
sget-char v2, Ljava/io/File;->separatorChar:C
sput-char v2, Lorg/apache/commons/io/IOUtils;->DIR_SEPARATOR:C
new-instance v0, Lorg/apache/commons/io/output/StringBuilderWriter;
const/4 v2, 0x4
invoke-direct {v0, v2}, Lorg/apache/commons/io/output/StringBuilderWriter;-><init>(I)V
new-instance v1, Ljava/io/PrintWriter;
invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V
invoke-virtual {v0}, Lorg/apache/commons/io/output/StringBuilderWriter;->toString()Ljava/lang/String;
move-result-object v2
sput-object v2, Lorg/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;
invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static close(Ljava/net/URLConnection;)V
.registers 2
instance-of v0, p0, Ljava/net/HttpURLConnection;
if-eqz v0, :cond_9
check-cast p0, Ljava/net/HttpURLConnection;
invoke-static {p0}, Ldroidbox/java/net/HttpURLConnection;->disconnect(Ljava/net/HttpURLConnection;)V
:cond_9
return-void
.end method
.method public static closeQuietly(Ljava/io/Closeable;)V
.registers 2
if-eqz p0, :cond_5
:try_start_2
invoke-interface {p0}, Ljava/io/Closeable;->close()V
:try_end_5
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method public static closeQuietly(Ljava/io/InputStream;)V
.registers 1
invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
return-void
.end method
.method public static closeQuietly(Ljava/io/OutputStream;)V
.registers 1
invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
return-void
.end method
.method public static closeQuietly(Ljava/io/Reader;)V
.registers 1
invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
return-void
.end method
.method public static closeQuietly(Ljava/io/Writer;)V
.registers 1
invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
return-void
.end method
.method public static closeQuietly(Ljava/net/ServerSocket;)V
.registers 2
if-eqz p0, :cond_5
:try_start_2
invoke-static {p0}, Ldroidbox/java/net/ServerSocket;->close(Ljava/net/ServerSocket;)V
:try_end_5
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method public static closeQuietly(Ljava/net/Socket;)V
.registers 2
if-eqz p0, :cond_5
:try_start_2
invoke-static {p0}, Ldroidbox/java/net/Socket;->close(Ljava/net/Socket;)V
:try_end_5
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
goto :goto_5
.end method
.method public static closeQuietly(Ljava/nio/channels/Selector;)V
.registers 2
if-eqz p0, :cond_5
:try_start_2
invoke-virtual {p0}, Ljava/nio/channels/Selector;->close()V
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
const/4 v4, 0x0
const/4 v6, -0x1
instance-of v5, p0, Ljava/io/BufferedInputStream;
if-nez v5, :cond_c
new-instance v2, Ljava/io/BufferedInputStream;
invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
move-object p0, v2
:cond_c
instance-of v5, p1, Ljava/io/BufferedInputStream;
if-nez v5, :cond_16
new-instance v3, Ljava/io/BufferedInputStream;
invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
move-object p1, v3
:cond_16
invoke-virtual {p0}, Ljava/io/InputStream;->read()I
move-result v0
:goto_1a
if-eq v6, v0, :cond_28
invoke-virtual {p1}, Ljava/io/InputStream;->read()I
move-result v1
if-eq v0, v1, :cond_23
:goto_22
:cond_22
return v4
:cond_23
invoke-virtual {p0}, Ljava/io/InputStream;->read()I
move-result v0
goto :goto_1a
:cond_28
invoke-virtual {p1}, Ljava/io/InputStream;->read()I
move-result v1
if-ne v1, v6, :cond_22
const/4 v4, 0x1
goto :goto_22
.end method
.method public static contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z
.registers 6
const/4 v2, 0x0
const/4 v3, -0x1
invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;
move-result-object p0
invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;
move-result-object p1
invoke-virtual {p0}, Ljava/io/Reader;->read()I
move-result v0
:goto_e
if-eq v3, v0, :cond_1c
invoke-virtual {p1}, Ljava/io/Reader;->read()I
move-result v1
if-eq v0, v1, :cond_17
:cond_16
:goto_16
return v2
:cond_17
invoke-virtual {p0}, Ljava/io/Reader;->read()I
move-result v0
goto :goto_e
:cond_1c
invoke-virtual {p1}, Ljava/io/Reader;->read()I
move-result v1
if-ne v1, v3, :cond_16
const/4 v2, 0x1
goto :goto_16
.end method
.method public static contentEqualsIgnoreEOL(Ljava/io/Reader;Ljava/io/Reader;)Z
.registers 7
invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;
move-result-object v0
invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;
move-result-object v1
invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v3
:goto_10
if-eqz v2, :cond_23
if-eqz v3, :cond_23
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_23
invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v3
goto :goto_10
:cond_23
if-nez v2, :cond_2b
if-nez v3, :cond_29
const/4 v4, 0x1
:goto_28
return v4
:cond_29
const/4 v4, 0x0
goto :goto_28
:cond_2b
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
goto :goto_28
.end method
.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
.registers 6
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
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V
return-void
.end method
.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
.registers 4
invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V
return-void
.end method
.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V
.registers 5
new-instance v0, Ljava/io/InputStreamReader;
invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
move-result-object v1
invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I
return-void
.end method
.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
.registers 3
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
return-void
.end method
.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V
.registers 4
invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
return-void
.end method
.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
.registers 5
new-instance v0, Ljava/io/OutputStreamWriter;
invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
move-result-object v1
invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I
invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V
return-void
.end method
.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
.registers 4
const/16 v0, 0x1000
new-array v0, v0, [B
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J
move-result-wide v0
return-wide v0
.end method
.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ)J
.registers 13
const/16 v0, 0x1000
new-array v6, v0, [B
move-object v0, p0
move-object v1, p1
move-wide v2, p2
move-wide v4, p4
invoke-static/range {v0 .. v6}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J
move-result-wide v0
return-wide v0
.end method
.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;JJ[B)J
.registers 16
const-wide/16 v5, 0x0
cmp-long v5, p2, v5
if-lez v5, :cond_9
invoke-static {p0, p2, p3}, Lorg/apache/commons/io/IOUtils;->skipFully(Ljava/io/InputStream;J)V
:cond_9
const-wide/16 v5, 0x0
cmp-long v5, p4, v5
if-nez v5, :cond_12
const-wide/16 v3, 0x0
:cond_11
return-wide v3
:cond_12
array-length v0, p6
move v1, v0
const-wide/16 v5, 0x0
cmp-long v5, p4, v5
if-lez v5, :cond_20
int-to-long v5, v0
cmp-long v5, p4, v5
if-gez v5, :cond_20
long-to-int v1, p4
:cond_20
const-wide/16 v3, 0x0
:goto_22
:cond_22
if-lez v1, :cond_11
const/4 v5, -0x1
const/4 v6, 0x0
invoke-virtual {p0, p6, v6, v1}, Ljava/io/InputStream;->read([BII)I
move-result v2
if-eq v5, v2, :cond_11
const/4 v5, 0x0
invoke-virtual {p1, p6, v5, v2}, Ljava/io/OutputStream;->write([BII)V
int-to-long v5, v2
add-long/2addr v3, v5
const-wide/16 v5, 0x0
cmp-long v5, p4, v5
if-lez v5, :cond_22
sub-long v5, p4, v3
int-to-long v7, v0
invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J
move-result-wide v5
long-to-int v1, v5
goto :goto_22
.end method
.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;[B)J
.registers 8
const-wide/16 v0, 0x0
const/4 v2, 0x0
:goto_3
const/4 v3, -0x1
invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I
move-result v2
if-eq v3, v2, :cond_11
const/4 v3, 0x0
invoke-virtual {p1, p2, v3, v2}, Ljava/io/OutputStream;->write([BII)V
int-to-long v3, v2
add-long/2addr v0, v3
goto :goto_3
:cond_11
return-wide v0
.end method
.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J
.registers 4
const/16 v0, 0x1000
new-array v0, v0, [C
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J
move-result-wide v0
return-wide v0
.end method
.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ)J
.registers 13
const/16 v0, 0x1000
new-array v6, v0, [C
move-object v0, p0
move-object v1, p1
move-wide v2, p2
move-wide v4, p4
invoke-static/range {v0 .. v6}, Lorg/apache/commons/io/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J
move-result-wide v0
return-wide v0
.end method
.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;JJ[C)J
.registers 15
const-wide/16 v4, 0x0
cmp-long v4, p2, v4
if-lez v4, :cond_9
invoke-static {p0, p2, p3}, Lorg/apache/commons/io/IOUtils;->skipFully(Ljava/io/Reader;J)V
:cond_9
const-wide/16 v4, 0x0
cmp-long v4, p4, v4
if-nez v4, :cond_12
const-wide/16 v2, 0x0
:cond_11
return-wide v2
:cond_12
array-length v0, p6
const-wide/16 v4, 0x0
cmp-long v4, p4, v4
if-lez v4, :cond_20
array-length v4, p6
int-to-long v4, v4
cmp-long v4, p4, v4
if-gez v4, :cond_20
long-to-int v0, p4
:cond_20
const-wide/16 v2, 0x0
:goto_22
:cond_22
if-lez v0, :cond_11
const/4 v4, -0x1
const/4 v5, 0x0
invoke-virtual {p0, p6, v5, v0}, Ljava/io/Reader;->read([CII)I
move-result v1
if-eq v4, v1, :cond_11
const/4 v4, 0x0
invoke-virtual {p1, p6, v4, v1}, Ljava/io/Writer;->write([CII)V
int-to-long v4, v1
add-long/2addr v2, v4
const-wide/16 v4, 0x0
cmp-long v4, p4, v4
if-lez v4, :cond_22
sub-long v4, p4, v2
array-length v6, p6
int-to-long v6, v6
invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J
move-result-wide v4
long-to-int v0, v4
goto :goto_22
.end method
.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;[C)J
.registers 8
const-wide/16 v0, 0x0
const/4 v2, 0x0
:goto_3
const/4 v3, -0x1
invoke-virtual {p0, p2}, Ljava/io/Reader;->read([C)I
move-result v2
if-eq v3, v2, :cond_11
const/4 v3, 0x0
invoke-virtual {p1, p2, v3, v2}, Ljava/io/Writer;->write([CII)V
int-to-long v3, v2
add-long/2addr v0, v3
goto :goto_3
:cond_11
return-wide v0
.end method
.method public static lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/commons/io/LineIterator;
.registers 3
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->lineIterator(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/apache/commons/io/LineIterator;
move-result-object v0
return-object v0
.end method
.method public static lineIterator(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/apache/commons/io/LineIterator;
.registers 5
new-instance v0, Lorg/apache/commons/io/LineIterator;
new-instance v1, Ljava/io/InputStreamReader;
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
move-result-object v2
invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
invoke-direct {v0, v1}, Lorg/apache/commons/io/LineIterator;-><init>(Ljava/io/Reader;)V
return-object v0
.end method
.method public static lineIterator(Ljava/io/Reader;)Lorg/apache/commons/io/LineIterator;
.registers 2
new-instance v0, Lorg/apache/commons/io/LineIterator;
invoke-direct {v0, p0}, Lorg/apache/commons/io/LineIterator;-><init>(Ljava/io/Reader;)V
return-object v0
.end method
.method public static read(Ljava/io/InputStream;[B)I
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/IOUtils;->read(Ljava/io/InputStream;[BII)I
move-result v0
return v0
.end method
.method public static read(Ljava/io/InputStream;[BII)I
.registers 10
if-gez p3, :cond_1b
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Length must not be negative: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_1b
move v2, p3
:goto_1c
if-lez v2, :cond_29
sub-int v1, p3, v2
add-int v3, p2, v1
invoke-virtual {p0, p1, v3, v2}, Ljava/io/InputStream;->read([BII)I
move-result v0
const/4 v3, -0x1
if-ne v3, v0, :cond_2c
:cond_29
sub-int v3, p3, v2
return v3
:cond_2c
sub-int/2addr v2, v0
goto :goto_1c
.end method
.method public static read(Ljava/io/Reader;[C)I
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/IOUtils;->read(Ljava/io/Reader;[CII)I
move-result v0
return v0
.end method
.method public static read(Ljava/io/Reader;[CII)I
.registers 10
if-gez p3, :cond_1b
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Length must not be negative: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_1b
move v2, p3
:goto_1c
if-lez v2, :cond_29
sub-int v1, p3, v2
add-int v3, p2, v1
invoke-virtual {p0, p1, v3, v2}, Ljava/io/Reader;->read([CII)I
move-result v0
const/4 v3, -0x1
if-ne v3, v0, :cond_2c
:cond_29
sub-int v3, p3, v2
return v3
:cond_2c
sub-int/2addr v2, v0
goto :goto_1c
.end method
.method public static readFully(Ljava/io/InputStream;[B)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/IOUtils;->readFully(Ljava/io/InputStream;[BII)V
return-void
.end method
.method public static readFully(Ljava/io/InputStream;[BII)V
.registers 8
invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->read(Ljava/io/InputStream;[BII)I
move-result v0
if-eq v0, p3, :cond_29
new-instance v1, Ljava/io/EOFException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Length to read: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " actual: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V
throw v1
:cond_29
return-void
.end method
.method public static readFully(Ljava/io/Reader;[C)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/io/IOUtils;->readFully(Ljava/io/Reader;[CII)V
return-void
.end method
.method public static readFully(Ljava/io/Reader;[CII)V
.registers 8
invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/io/IOUtils;->read(Ljava/io/Reader;[CII)I
move-result v0
if-eq v0, p3, :cond_29
new-instance v1, Ljava/io/EOFException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Length to read: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " actual: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V
throw v1
:cond_29
return-void
.end method
.method public static readLines(Ljava/io/InputStream;)Ljava/util/List;
.registers 2
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
.registers 3
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public static readLines(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/util/List;
.registers 4
new-instance v0, Ljava/io/InputStreamReader;
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
move-result-object v1
invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;
move-result-object v1
return-object v1
.end method
.method public static readLines(Ljava/io/Reader;)Ljava/util/List;
.registers 4
invoke-static {p0}, Lorg/apache/commons/io/IOUtils;->toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;
move-result-object v2
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v0
:goto_d
if-eqz v0, :cond_17
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v0
goto :goto_d
:cond_17
return-object v1
.end method
.method public static skip(Ljava/io/InputStream;J)J
.registers 13
const-wide/16 v8, 0x0
cmp-long v4, p1, v8
if-gez v4, :cond_1f
new-instance v4, Ljava/lang/IllegalArgumentException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Skip count must be non-negative, actual: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v4
:cond_1f
sget-object v4, Lorg/apache/commons/io/IOUtils;->SKIP_BYTE_BUFFER:[B
if-nez v4, :cond_29
const/16 v4, 0x800
new-array v4, v4, [B
sput-object v4, Lorg/apache/commons/io/IOUtils;->SKIP_BYTE_BUFFER:[B
:cond_29
move-wide v2, p1
:goto_2a
cmp-long v4, v2, v8
if-lez v4, :cond_41
sget-object v4, Lorg/apache/commons/io/IOUtils;->SKIP_BYTE_BUFFER:[B
const/4 v5, 0x0
const-wide/16 v6, 0x800
invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J
move-result-wide v6
long-to-int v6, v6
invoke-virtual {p0, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I
move-result v4
int-to-long v0, v4
cmp-long v4, v0, v8
if-gez v4, :cond_44
:cond_41
sub-long v4, p1, v2
return-wide v4
:cond_44
sub-long/2addr v2, v0
goto :goto_2a
.end method
.method public static skip(Ljava/io/Reader;J)J
.registers 13
const-wide/16 v8, 0x0
cmp-long v4, p1, v8
if-gez v4, :cond_1f
new-instance v4, Ljava/lang/IllegalArgumentException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Skip count must be non-negative, actual: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v4
:cond_1f
sget-object v4, Lorg/apache/commons/io/IOUtils;->SKIP_CHAR_BUFFER:[C
if-nez v4, :cond_29
const/16 v4, 0x800
new-array v4, v4, [C
sput-object v4, Lorg/apache/commons/io/IOUtils;->SKIP_CHAR_BUFFER:[C
:cond_29
move-wide v2, p1
:goto_2a
cmp-long v4, v2, v8
if-lez v4, :cond_41
sget-object v4, Lorg/apache/commons/io/IOUtils;->SKIP_CHAR_BUFFER:[C
const/4 v5, 0x0
const-wide/16 v6, 0x800
invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J
move-result-wide v6
long-to-int v6, v6
invoke-virtual {p0, v4, v5, v6}, Ljava/io/Reader;->read([CII)I
move-result v4
int-to-long v0, v4
cmp-long v4, v0, v8
if-gez v4, :cond_44
:cond_41
sub-long v4, p1, v2
return-wide v4
:cond_44
sub-long/2addr v2, v0
goto :goto_2a
.end method
.method public static skipFully(Ljava/io/InputStream;J)V
.registers 8
const-wide/16 v2, 0x0
cmp-long v2, p1, v2
if-gez v2, :cond_1f
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Bytes to skip must not be negative: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_1f
invoke-static {p0, p1, p2}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/InputStream;J)J
move-result-wide v0
cmp-long v2, v0, p1
if-eqz v2, :cond_4a
new-instance v2, Ljava/io/EOFException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Bytes to skip: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " actual: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V
throw v2
:cond_4a
return-void
.end method
.method public static skipFully(Ljava/io/Reader;J)V
.registers 8
invoke-static {p0, p1, p2}, Lorg/apache/commons/io/IOUtils;->skip(Ljava/io/Reader;J)J
move-result-wide v0
cmp-long v2, v0, p1
if-eqz v2, :cond_2b
new-instance v2, Ljava/io/EOFException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Chars to skip: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " actual: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V
throw v2
:cond_2b
return-void
.end method
.method public static toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
.registers 2
invoke-static {p0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toBufferedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method
.method public static toBufferedReader(Ljava/io/Reader;)Ljava/io/BufferedReader;
.registers 2
instance-of v0, p0, Ljava/io/BufferedReader;
if-eqz v0, :cond_7
check-cast p0, Ljava/io/BufferedReader;
:goto_6
return-object p0
:cond_7
new-instance v0, Ljava/io/BufferedReader;
invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
move-object p0, v0
goto :goto_6
.end method
.method public static toByteArray(Ljava/io/InputStream;)[B
.registers 3
new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;
invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
return-object v1
.end method
.method public static toByteArray(Ljava/io/InputStream;I)[B
.registers 8
if-gez p1, :cond_1b
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Size must be equal or greater than zero: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_1b
if-nez p1, :cond_21
const/4 v3, 0x0
new-array v0, v3, [B
:cond_20
return-object v0
:cond_21
new-array v0, p1, [B
const/4 v1, 0x0
:goto_24
if-ge v1, p1, :cond_31
sub-int v3, p1, v1
invoke-virtual {p0, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_31
add-int/2addr v1, v2
goto :goto_24
:cond_31
if-eq v1, p1, :cond_20
new-instance v3, Ljava/io/IOException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Unexpected readed size. current: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ", excepted: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v3
.end method
.method public static toByteArray(Ljava/io/InputStream;J)[B
.registers 6
const-wide/32 v0, 0x7fffffff
cmp-long v0, p1, v0
if-lez v0, :cond_20
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Size cannot be greater than Integer max value: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_20
long-to-int v0, p1
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;I)[B
move-result-object v0
return-object v0
.end method
.method public static toByteArray(Ljava/io/Reader;)[B
.registers 2
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B
move-result-object v0
return-object v0
.end method
.method public static toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B
.registers 3
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B
move-result-object v0
return-object v0
.end method
.method public static toByteArray(Ljava/io/Reader;Ljava/nio/charset/Charset;)[B
.registers 4
new-instance v0, Lorg/apache/commons/io/output/ByteArrayOutputStream;
invoke-direct {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;-><init>()V
invoke-static {p0, v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
invoke-virtual {v0}, Lorg/apache/commons/io/output/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
return-object v1
.end method
.method public static toByteArray(Ljava/lang/String;)[B
.registers 2
invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
return-object v0
.end method
.method public static toByteArray(Ljava/net/URI;)[B
.registers 2
invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;
move-result-object v0
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/net/URL;)[B
move-result-object v0
return-object v0
.end method
.method public static toByteArray(Ljava/net/URL;)[B
.registers 3
invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
:try_start_4
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/net/URLConnection;)[B
:try_end_7
.catchall {:try_start_4 .. :try_end_7} :catchall_c
move-result-object v1
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/net/URLConnection;)V
return-object v1
:catchall_c
move-exception v1
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->close(Ljava/net/URLConnection;)V
throw v1
.end method
.method public static toByteArray(Ljava/net/URLConnection;)[B
.registers 3
invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v0
:try_start_4
invoke-static {v0}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B
:try_end_7
.catchall {:try_start_4 .. :try_end_7} :catchall_c
move-result-object v1
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
return-object v1
:catchall_c
move-exception v1
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
throw v1
.end method
.method public static toCharArray(Ljava/io/InputStream;)[C
.registers 2
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C
move-result-object v0
return-object v0
.end method
.method public static toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C
.registers 3
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C
move-result-object v0
return-object v0
.end method
.method public static toCharArray(Ljava/io/InputStream;Ljava/nio/charset/Charset;)[C
.registers 4
new-instance v0, Ljava/io/CharArrayWriter;
invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V
invoke-static {p0, v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V
invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C
move-result-object v1
return-object v1
.end method
.method public static toCharArray(Ljava/io/Reader;)[C
.registers 3
new-instance v0, Ljava/io/CharArrayWriter;
invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I
invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C
move-result-object v1
return-object v1
.end method
.method public static toInputStream(Ljava/lang/CharSequence;)Ljava/io/InputStream;
.registers 2
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method
.method public static toInputStream(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/io/InputStream;
.registers 3
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method
.method public static toInputStream(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Ljava/io/InputStream;
.registers 3
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method
.method public static toInputStream(Ljava/lang/String;)Ljava/io/InputStream;
.registers 2
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method
.method public static toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
.registers 4
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v1
invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
move-result-object v0
new-instance v1, Ljava/io/ByteArrayInputStream;
invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
return-object v1
.end method
.method public static toInputStream(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/io/InputStream;
.registers 4
new-instance v0, Ljava/io/ByteArrayInputStream;
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
move-result-object v1
invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
return-object v0
.end method
.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
.registers 2
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
.registers 4
new-instance v0, Lorg/apache/commons/io/output/StringBuilderWriter;
invoke-direct {v0}, Lorg/apache/commons/io/output/StringBuilderWriter;-><init>()V
invoke-static {p0, v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/nio/charset/Charset;)V
invoke-virtual {v0}, Lorg/apache/commons/io/output/StringBuilderWriter;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
.registers 3
new-instance v0, Lorg/apache/commons/io/output/StringBuilderWriter;
invoke-direct {v0}, Lorg/apache/commons/io/output/StringBuilderWriter;-><init>()V
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I
invoke-virtual {v0}, Lorg/apache/commons/io/output/StringBuilderWriter;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public static toString(Ljava/net/URI;)Ljava/lang/String;
.registers 2
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static toString(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static toString(Ljava/net/URI;Ljava/nio/charset/Charset;)Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;
move-result-object v0
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
move-result-object v1
invoke-static {v0, v1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static toString(Ljava/net/URL;)Ljava/lang/String;
.registers 2
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static toString(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static toString(Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
move-result-object v0
:try_start_4
invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;
:try_end_7
.catchall {:try_start_4 .. :try_end_7} :catchall_c
move-result-object v1
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
return-object v1
:catchall_c
move-exception v1
invoke-virtual {v0}, Ljava/io/InputStream;->close()V
throw v1
.end method
.method public static toString([B)Ljava/lang/String;
.registers 2
new-instance v0, Ljava/lang/String;
invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V
return-object v0
.end method
.method public static toString([BLjava/lang/String;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/String;
invoke-static {p1}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v1
invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
return-object v0
.end method
.method public static write(Ljava/lang/CharSequence;Ljava/io/OutputStream;)V
.registers 3
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
return-void
.end method
.method public static write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/lang/String;)V
.registers 4
invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
return-void
.end method
.method public static write(Ljava/lang/CharSequence;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
.registers 4
if-eqz p0, :cond_9
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1, p2}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
:cond_9
return-void
.end method
.method public static write(Ljava/lang/CharSequence;Ljava/io/Writer;)V
.registers 3
if-eqz p0, :cond_9
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/Writer;)V
:cond_9
return-void
.end method
.method public static write(Ljava/lang/String;Ljava/io/OutputStream;)V
.registers 3
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
return-void
.end method
.method public static write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
.registers 4
invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
return-void
.end method
.method public static write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
.registers 4
if-eqz p0, :cond_d
invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
:cond_d
return-void
.end method
.method public static write(Ljava/lang/String;Ljava/io/Writer;)V
.registers 2
if-eqz p0, :cond_5
invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
:cond_5
return-void
.end method
.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V
.registers 3
const/4 v0, 0x0
check-cast v0, Ljava/lang/String;
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V
return-void
.end method
.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V
.registers 5
if-eqz p0, :cond_11
invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
:cond_11
return-void
.end method
.method public static write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
.registers 3
if-eqz p0, :cond_9
invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
:cond_9
return-void
.end method
.method public static write([BLjava/io/OutputStream;)V
.registers 2
if-eqz p0, :cond_5
invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V
:cond_5
return-void
.end method
.method public static write([BLjava/io/Writer;)V
.registers 3
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V
return-void
.end method
.method public static write([BLjava/io/Writer;Ljava/lang/String;)V
.registers 4
invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V
return-void
.end method
.method public static write([BLjava/io/Writer;Ljava/nio/charset/Charset;)V
.registers 5
if-eqz p0, :cond_e
new-instance v0, Ljava/lang/String;
invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
move-result-object v1
invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
:cond_e
return-void
.end method
.method public static write([CLjava/io/OutputStream;)V
.registers 3
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V
return-void
.end method
.method public static write([CLjava/io/OutputStream;Ljava/lang/String;)V
.registers 4
invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, v0}, Lorg/apache/commons/io/IOUtils;->write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V
return-void
.end method
.method public static write([CLjava/io/OutputStream;Ljava/nio/charset/Charset;)V
.registers 5
if-eqz p0, :cond_12
new-instance v0, Ljava/lang/String;
invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V
invoke-static {p2}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
move-result-object v0
invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
:cond_12
return-void
.end method
.method public static write([CLjava/io/Writer;)V
.registers 2
if-eqz p0, :cond_5
invoke-virtual {p1, p0}, Ljava/io/Writer;->write([C)V
:cond_5
return-void
.end method
.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;)V
.registers 4
invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/IOUtils;->writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
return-void
.end method
.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
.registers 5
invoke-static {p3}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/io/IOUtils;->writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
return-void
.end method
.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
.registers 8
if-nez p0, :cond_3
:cond_2
return-void
:cond_3
if-nez p1, :cond_7
sget-object p1, Lorg/apache/commons/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;
:cond_7
invoke-static {p3}, Lorg/apache/commons/io/Charsets;->toCharset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
move-result-object v0
invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_2
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
if-eqz v2, :cond_26
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
move-result-object v3
invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V
:cond_26
invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
move-result-object v3
invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V
goto :goto_f
.end method
.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/Writer;)V
.registers 6
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