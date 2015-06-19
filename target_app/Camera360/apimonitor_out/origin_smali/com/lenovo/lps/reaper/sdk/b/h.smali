.class public final Lcom/lenovo/lps/reaper/sdk/b/h;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/lenovo/lps/reaper/sdk/b/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/b/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, ""

    invoke-static {p0, v0}, Lcom/lenovo/lps/reaper/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_65
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_4a

    move-result-object v4

    :try_start_e
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_75
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_82

    move-result-object v3

    :try_start_12
    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_79
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_86

    const/4 v0, 0x0

    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3c

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1d

    if-lez v0, :cond_36

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_7c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_39} :catch_8b

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_45} :catch_8f

    :goto_45
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_49
    return-object v0

    :catch_4a
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_4d
    :try_start_4d
    sget-object v4, Lcom/lenovo/lps/reaper/sdk/b/h;->a:Ljava/lang/String;

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_4d .. :try_end_58} :catchall_7e

    move-result-object v0

    :try_start_59
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_62} :catch_63

    goto :goto_49

    :catch_63
    move-exception v1

    goto :goto_49

    :catchall_65
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    :goto_69
    :try_start_69
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_72} :catch_73

    :goto_72
    throw v0

    :catch_73
    move-exception v1

    goto :goto_72

    :catchall_75
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_69

    :catchall_79
    move-exception v0

    move-object v1, v2

    goto :goto_69

    :catchall_7c
    move-exception v0

    goto :goto_69

    :catchall_7e
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_69

    :catch_82
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_4d

    :catch_86
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_4d

    :catch_8b
    move-exception v0

    move-object v2, v3

    move-object v3, v4

    goto :goto_4d

    :catch_8f
    move-exception v0

    goto :goto_45
.end method

.method private static a(Ljava/io/File;)[B
    .registers 5

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_d
    array-length v3, v2

    if-ge v0, v3, :cond_1a

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_1a

    add-int/2addr v0, v3

    goto :goto_d

    :cond_1a
    array-length v3, v2

    if-ge v0, v3, :cond_3b

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not completely read file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    :goto_3e
    return-object v2

    :catch_3f
    move-exception v0

    goto :goto_3e
.end method

.method public static final a([B)[B
    .registers 7

    const/4 v4, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v0, p0

    if-nez v0, :cond_b

    new-array v0, v4, [B

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setLevel(I)V

    invoke-virtual {v0, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_25
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v3

    if-nez v3, :cond_33

    invoke-virtual {v0, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_25

    :cond_33
    :try_start_33
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_3e

    :goto_36
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_4

    :catch_3e
    move-exception v2

    sget-object v3, Lcom/lenovo/lps/reaper/sdk/b/h;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exception when close output stream. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method public static b(Ljava/lang/String;)I
    .registers 7

    const/4 v0, -0x1

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const-string/jumbo v1, "http"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_27
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_2c
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string/jumbo v4, "http.socket.timeout"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/a/a;->a()Lcom/lenovo/lps/reaper/sdk/a/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/lps/reaper/sdk/a/a;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    invoke-virtual {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_56
    .catchall {:try_start_2c .. :try_end_56} :catchall_70
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_56} :catch_5f

    move-result v0

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_9

    :catch_5f
    move-exception v1

    :try_start_60
    sget-object v3, Lcom/lenovo/lps/reaper/sdk/b/h;->a:Ljava/lang/String;

    const-string/jumbo v4, ""

    invoke-static {v3, v4, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_70

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_9

    :catchall_70
    move-exception v0

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/b/h;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sDStateString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :try_start_30
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/b/h;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sdcard file path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_78

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_78
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_81

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_a4

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/b/h;->a:Ljava/lang/String;

    const-string/jumbo v2, "fail to create file on sd card."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_30 .. :try_end_8f} :catchall_bb
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_8f} :catch_91

    goto/16 :goto_8

    :catch_91
    move-exception v0

    :goto_92
    :try_start_92
    sget-object v2, Lcom/lenovo/lps/reaper/sdk/b/h;->a:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9a
    .catchall {:try_start_92 .. :try_end_9a} :catchall_bb

    if-eqz v1, :cond_8

    :try_start_9c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a1

    goto/16 :goto_8

    :catch_a1
    move-exception v0

    goto/16 :goto_8

    :cond_a4
    :try_start_a4
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a9
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_bb
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a9} :catch_91

    :try_start_a9
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_b3
    .catchall {:try_start_a9 .. :try_end_b3} :catchall_c4
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b3} :catch_c7

    :try_start_b3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_b6} :catch_b8

    goto/16 :goto_8

    :catch_b8
    move-exception v0

    goto/16 :goto_8

    :catchall_bb
    move-exception v0

    :goto_bc
    if-eqz v1, :cond_c1

    :try_start_be
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c2

    :cond_c1
    :goto_c1
    throw v0

    :catch_c2
    move-exception v1

    goto :goto_c1

    :catchall_c4
    move-exception v0

    move-object v1, v2

    goto :goto_bc

    :catch_c7
    move-exception v0

    move-object v1, v2

    goto :goto_92
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const/4 v1, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_6
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v6

    move v3, v1

    move v4, v1

    :goto_c
    array-length v0, v6

    if-ge v3, v0, :cond_46

    if-lez v4, :cond_17

    const-string/jumbo v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    aget-object v0, v6, v3

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    move v0, v1

    move v2, v1

    :goto_1f
    array-length v8, v7

    if-ge v0, v8, :cond_36

    if-lez v2, :cond_2a

    const-string/jumbo v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    aget-byte v8, v7, v0

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_31} :catch_3d

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_36
    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v2

    goto :goto_c

    :catch_3d
    move-exception v0

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/b/h;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_14

    :try_start_2
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "+"

    const-string/jumbo v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_12} :catch_18

    move-result-object p0

    :goto_13
    return-object p0

    :cond_14
    const-string/jumbo p0, ""

    goto :goto_13

    :catch_18
    move-exception v0

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/b/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exception when encode, str is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string/jumbo v0, "[^0-9a-zA-Z /():,;*+=_.-]"

    const-string/jumbo v1, "?"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object p0

    :goto_a
    return-object p0

    :catch_b
    move-exception v0

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/b/h;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exception when replace, str is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method

.method public static f(Ljava/lang/String;)[B
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/b/h;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sDStateString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    :try_start_27
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_48

    :cond_47
    :goto_47
    return-object v0

    :cond_48
    invoke-static {v1}, Lcom/lenovo/lps/reaper/sdk/b/h;->a(Ljava/io/File;)[B
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4b} :catch_4d

    move-result-object v0

    goto :goto_47

    :catch_4d
    move-exception v1

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/b/h;->a:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47
.end method
