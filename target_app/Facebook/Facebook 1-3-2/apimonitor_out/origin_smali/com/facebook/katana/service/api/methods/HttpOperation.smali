.class public Lcom/facebook/katana/service/api/methods/HttpOperation;
.super Ljava/lang/Thread;
.source "HttpOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/methods/HttpOperation$CountingOutputStream;,
        Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;,
        Lcom/facebook/katana/service/api/methods/HttpOperation$MyInputStreamEntity;,
        Lcom/facebook/katana/service/api/methods/HttpOperation$MySSLSocketFactory;
    }
.end annotation


# static fields
.field private static final BUFFER_CACHE_SIZE:I = 0x1

.field private static final CONNECT_TIMEOUT:I = 0x4e20

.field private static final IMAGE_SIZE_LIMIT:I = 0x249f0

.field private static final JSON_SIZE_LIMIT:I = 0x9eb10

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"

.field private static final READ_TIMEOUT:I = 0x19a28

.field private static final mSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;

.field private static final m_bufferCache:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field


# instance fields
.field public final mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

.field private final mListener:Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;

.field private final mOutputStream:Ljava/io/OutputStream;

.field private mTimeEnd:J

.field private mTimeStart:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v3, 0x1

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v3}, Ljava/util/Vector;-><init>(I)V

    sput-object v1, Lcom/facebook/katana/service/api/methods/HttpOperation;->m_bufferCache:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_9
    if-lt v0, v3, :cond_38

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    sput-object v1, Lcom/facebook/katana/service/api/methods/HttpOperation;->mSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;

    sget-object v1, Lcom/facebook/katana/service/api/methods/HttpOperation;->mSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    sget-object v1, Lcom/facebook/katana/service/api/methods/HttpOperation;->mSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    new-instance v4, Lcom/facebook/katana/service/api/methods/HttpOperation$MySSLSocketFactory;

    invoke-direct {v4}, Lcom/facebook/katana/service/api/methods/HttpOperation$MySSLSocketFactory;-><init>()V

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    return-void

    :cond_38
    sget-object v1, Lcom/facebook/katana/service/api/methods/HttpOperation;->m_bufferCache:Ljava/util/Vector;

    const/16 v2, 0x800

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mTimeStart:J

    iput-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mTimeEnd:J

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz p2, :cond_2a

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Lcom/facebook/katana/service/api/methods/HttpOperation$MyInputStreamEntity;

    invoke-virtual {p2}, Ljava/io/InputStream;->available()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, p0, p2, v2, v3}, Lcom/facebook/katana/service/api/methods/HttpOperation$MyInputStreamEntity;-><init>(Lcom/facebook/katana/service/api/methods/HttpOperation;Ljava/io/InputStream;J)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p4}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    iput-object p3, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    iput-object p5, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mListener:Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mTimeStart:J

    iput-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mTimeEnd:J

    const-string v0, "GET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    :goto_18
    iput-object p3, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    iput-object p4, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mListener:Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;

    return-void

    :cond_1d
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    goto :goto_18

    :cond_2d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported method"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$0(Lcom/facebook/katana/service/api/methods/HttpOperation;)Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mListener:Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;

    return-object v0
.end method

.method private readFromHTTPStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, -0x1

    const-string v8, ")"

    const-string v8, " ("

    if-nez p2, :cond_8

    :goto_7
    return-void

    :cond_8
    const-string v8, "application/json"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_18

    const-string v8, "text/html"

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_59

    :cond_18
    const v5, 0x9eb10

    if-eqz p3, :cond_2b

    const-string v8, "gzip"

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v7

    :cond_2b
    :goto_2b
    :try_start_2b
    sget-object v8, Lcom/facebook/katana/service/api/methods/HttpOperation;->m_bufferCache:Ljava/util/Vector;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_34
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2b .. :try_end_34} :catch_8a

    const/4 v1, 0x1

    :goto_35
    const/4 v3, 0x0

    if-ne p4, v10, :cond_d8

    :cond_38
    const/4 v8, 0x0

    :try_start_39
    array-length v9, v0

    invoke-virtual {p1, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_c0

    move-result v2

    if-ne v2, v10, :cond_92

    :cond_40
    if-eqz v1, :cond_47

    sget-object v8, Lcom/facebook/katana/service/api/methods/HttpOperation;->m_bufferCache:Ljava/util/Vector;

    invoke-virtual {v8, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_47
    if-eqz p1, :cond_4c

    :try_start_49
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_4c
    iget-object v8, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V

    iget-object v8, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_56} :catch_57

    goto :goto_7

    :catch_57
    move-exception v8

    goto :goto_7

    :cond_59
    const-string v8, "image/jpeg"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_71

    const-string v8, "image/gif"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_71

    const-string v8, "image/png"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_75

    :cond_71
    const v5, 0x249f0

    goto :goto_2b

    :cond_75
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Unsupported content type: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :catch_8a
    move-exception v8

    move-object v6, v8

    const/16 v8, 0x800

    new-array v0, v8, [B

    const/4 v1, 0x0

    goto :goto_35

    :cond_92
    :try_start_92
    iget-object v8, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v2}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v3, v2

    if-le v3, v5, :cond_38

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Content too large (length unknown): "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_c0
    .catchall {:try_start_92 .. :try_end_c0} :catchall_c0

    :catchall_c0
    move-exception v8

    if-eqz v1, :cond_c8

    sget-object v9, Lcom/facebook/katana/service/api/methods/HttpOperation;->m_bufferCache:Ljava/util/Vector;

    invoke-virtual {v9, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_c8
    if-eqz p1, :cond_cd

    :try_start_ca
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_cd
    iget-object v9, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    iget-object v9, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_d7} :catch_13f

    :goto_d7
    throw v8

    :cond_d8
    if-le p4, v5, :cond_ff

    :try_start_da
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Content too large: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_ff
    const/4 v4, 0x0

    move v4, p4

    :cond_101
    :goto_101
    if-gtz v4, :cond_113

    :goto_103
    const/4 v8, 0x0

    array-length v9, v0

    invoke-virtual {p1, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v2, v10, :cond_40

    add-int/2addr v3, v2

    iget-object v8, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_103

    :cond_113
    const/4 v8, 0x0

    array-length v9, v0

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {p1, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ne v2, v10, :cond_134

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Invalid content length: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_134
    if-lez v2, :cond_101

    sub-int/2addr v4, v2

    iget-object v8, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_13d
    .catchall {:try_start_da .. :try_end_13d} :catchall_c0

    add-int/2addr v3, v2

    goto :goto_101

    :catch_13f
    move-exception v9

    goto :goto_d7
.end method


# virtual methods
.method public calculateTimeElapsed()J
    .registers 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mTimeEnd:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    iget-wide v0, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mTimeEnd:J

    iget-wide v2, p0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mTimeStart:J

    sub-long/2addr v0, v2

    :goto_d
    return-wide v0

    :cond_e
    move-wide v0, v2

    goto :goto_d
.end method

.method public cancel()V
    .registers 1

    invoke-virtual {p0}, Lcom/facebook/katana/service/api/methods/HttpOperation;->interrupt()V

    return-void
.end method

.method public run()V
    .registers 22

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/methods/HttpOperation;->setPriority(I)V

    new-instance v19, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v19 .. v19}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const-string v5, "http.socket.timeout"

    new-instance v6, Ljava/lang/Integer;

    const v7, 0x19a28

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string v5, "http.connection.timeout"

    new-instance v6, Ljava/lang/Integer;

    const/16 v7, 0x4e20

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    new-instance v15, Lorg/apache/http/impl/conn/SingleClientConnManager;

    sget-object v5, Lcom/facebook/katana/service/api/methods/HttpOperation;->mSupportedSchemes:Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-object v0, v15

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v18, Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, v18

    move-object v1, v15

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/methods/HttpOperation;->mTimeStart:J

    const-class v5, Lorg/apache/http/client/protocol/RequestAddCookies;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    const-class v5, Lorg/apache/http/client/protocol/ResponseProcessCookies;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeResponseInterceptorByClass(Ljava/lang/Class;)V

    :try_start_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    const/16 v5, 0xc8

    if-ne v7, v5, :cond_a8

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_cc

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v16

    :goto_8d
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v9

    long-to-int v9, v9

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v16

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/HttpOperation;->readFromHTTPStream(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_a8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/service/api/methods/HttpOperation;->mTimeEnd:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mListener:Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;

    move-object v5, v0

    if-eqz v5, :cond_c8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mListener:Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mOutputStream:Ljava/io/OutputStream;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-interface/range {v5 .. v10}, Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;->onHttpOperationComplete(Lcom/facebook/katana/service/api/methods/HttpOperation;ILjava/lang/String;Ljava/io/OutputStream;Ljava/lang/Exception;)V
    :try_end_c8
    .catchall {:try_start_5b .. :try_end_c8} :catchall_141
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_c8} :catch_cf

    :cond_c8
    invoke-interface {v15}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    :goto_cb
    return-void

    :cond_cc
    const/16 v16, 0x0

    goto :goto_8d

    :catch_cf
    move-exception v5

    move-object v14, v5

    :try_start_d1
    const-string v5, "HttpOperation.run"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "HttpOperation"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Encountered exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mListener:Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;

    move-object v5, v0

    if-eqz v5, :cond_13d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/HttpOperation;->mListener:Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;

    move-object v9, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p0

    invoke-interface/range {v9 .. v14}, Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;->onHttpOperationComplete(Lcom/facebook/katana/service/api/methods/HttpOperation;ILjava/lang/String;Ljava/io/OutputStream;Ljava/lang/Exception;)V
    :try_end_13d
    .catchall {:try_start_d1 .. :try_end_13d} :catchall_141

    :cond_13d
    invoke-interface {v15}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_cb

    :catchall_141
    move-exception v5

    invoke-interface {v15}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v5
.end method
