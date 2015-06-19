.class public Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;
.super Landroid/app/IntentService;
.source "SourceFile"


# instance fields
.field a:Lcom/spotify/mobile/android/service/session/d;

.field private b:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private c:Lcom/spotify/cosmos/android/Resolver;

.field private d:Lcom/spotify/mobile/android/service/session/e;

.field private e:Ljava/util/concurrent/Semaphore;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "AnnotateUploadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->e:Ljava/util/concurrent/Semaphore;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$1;-><init>(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->a:Lcom/spotify/mobile/android/service/session/d;

    return-void
.end method

.method private a(Lcom/spotify/mobile/android/util/ClientEvent;)Ljava/lang/String;
    .registers 10

    new-instance v4, Ljava/util/concurrent/Semaphore;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v3, Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;

    invoke-direct {v3}, Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;-><init>()V

    iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->c:Lcom/spotify/cosmos/android/Resolver;

    const-string v7, "hm://keymaster/token/authenticated?client_id=6893edb8c3d943428d0c45920a05d60b&scope=ugc-image-upload&alt=json"

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$2;

    const-class v2, Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$2;-><init>(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;Ljava/lang/Class;Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;Ljava/util/concurrent/Semaphore;Lcom/spotify/mobile/android/util/ClientEvent;)V

    invoke-virtual {v6, v7, v0}, Lcom/spotify/cosmos/android/Resolver;->get(Ljava/lang/String;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z

    :try_start_1b
    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_21

    :goto_1e
    iget-object v0, v3, Lcom/spotify/mobile/android/spotlets/collection/service/Keymaster;->accessToken:Ljava/lang/String;

    return-object v0

    :catch_21
    move-exception v0

    const-string v0, "getIdentityToken() was interrupted."

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent;)Ljava/lang/String;
    .registers 16

    const/4 v2, 0x0

    const/4 v0, 0x0

    new-instance v6, Ljava/util/concurrent/Semaphore;

    invoke-direct {v6, v0}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    const/16 v0, 0x1000

    :try_start_9
    new-array v0, v0, [B

    new-instance v5, Ljava/io/FileInputStream;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_1f6
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_18} :catch_273
    .catch Ljava/net/ProtocolException; {:try_start_9 .. :try_end_18} :catch_1ae
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_18} :catch_1d2

    :try_start_18
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_237
    .catch Ljava/net/MalformedURLException; {:try_start_18 .. :try_end_1d} :catch_27a
    .catch Ljava/net/ProtocolException; {:try_start_18 .. :try_end_1d} :catch_25c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_248

    :goto_1d
    :try_start_1d
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_60

    const/4 v3, 0x0

    invoke-virtual {v4, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_23a
    .catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_28} :catch_29
    .catch Ljava/net/ProtocolException; {:try_start_1d .. :try_end_28} :catch_262
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_28} :catch_24d

    goto :goto_1d

    :catch_29
    move-exception v0

    move-object v1, v4

    move-object v3, v5

    move-object v4, v2

    move-object v5, v2

    :goto_2e
    :try_start_2e
    const-string v7, "uploadImage().MalformedURLException"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_240

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    if-eqz v5, :cond_3e

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3e
    if-eqz v3, :cond_43

    :try_start_40
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_22c

    :cond_43
    :goto_43
    if-eqz v1, :cond_28b

    :try_start_45
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_1aa

    move-object v1, v4

    :cond_49
    :goto_49
    :try_start_49
    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_4c
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_4c} :catch_20c

    :goto_4c
    if-eqz v1, :cond_214

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "spotify:userimage:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/collection/service/ImageUploadResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5f
    return-object v0

    :cond_60
    :try_start_60
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_23a
    .catch Ljava/net/MalformedURLException; {:try_start_60 .. :try_end_63} :catch_29
    .catch Ljava/net/ProtocolException; {:try_start_60 .. :try_end_63} :catch_262
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_24d

    move-result v0

    if-nez v0, :cond_71

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    :try_start_69
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_217

    :goto_6c
    :try_start_6c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_21a

    :goto_6f
    move-object v0, v2

    goto :goto_5f

    :cond_71
    :try_start_71
    new-instance v1, Ljava/net/URL;

    const-string v0, "https://image-upload.spotify.com/v3/playlist"

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_7e
    .catchall {:try_start_71 .. :try_end_7e} :catchall_23a
    .catch Ljava/net/MalformedURLException; {:try_start_71 .. :try_end_7e} :catch_29
    .catch Ljava/net/ProtocolException; {:try_start_71 .. :try_end_7e} :catch_262
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_7e} :catch_24d

    const/4 v3, 0x1

    :try_start_7f
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v3, "Host"

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "image/jpeg"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Authorization"

    const-string v3, "Bearer %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "Connection"

    const-string v3, "close"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v3, "uploadImage(): writing image with size: %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v3, v7}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_123

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xca

    if-eq v1, v3, :cond_123

    const-string v1, "uploadImage(): Response code not HTTP_OK or HTTP_ACCEPTED, was: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static {v1, v3}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "image_upload_request_error"

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v1, v3}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_112
    .catchall {:try_start_7f .. :try_end_112} :catchall_23c
    .catch Ljava/net/MalformedURLException; {:try_start_7f .. :try_end_112} :catch_153
    .catch Ljava/net/ProtocolException; {:try_start_7f .. :try_end_112} :catch_267
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_112} :catch_251

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    if-eqz v0, :cond_11a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11a
    :try_start_11a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_11d} :catch_21d

    :goto_11d
    :try_start_11d
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_120} :catch_220

    :goto_120
    move-object v0, v2

    goto/16 :goto_5f

    :cond_123
    :try_start_123
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_136
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_15b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_136

    :catch_153
    move-exception v1

    move-object v3, v5

    move-object v5, v0

    move-object v0, v1

    move-object v1, v4

    move-object v4, v2

    goto/16 :goto_2e

    :cond_15b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v7, Lcom/spotify/mobile/android/spotlets/collection/service/ImageUploadResponse;

    invoke-virtual {v1, v3, v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/spotlets/collection/service/ImageUploadResponse;
    :try_end_16c
    .catchall {:try_start_123 .. :try_end_16c} :catchall_23c
    .catch Ljava/net/MalformedURLException; {:try_start_123 .. :try_end_16c} :catch_153
    .catch Ljava/net/ProtocolException; {:try_start_123 .. :try_end_16c} :catch_267
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_16c} :catch_251

    if-eqz v1, :cond_178

    :try_start_16e
    const-string v3, "ok"

    iget-object v7, v1, Lcom/spotify/mobile/android/spotlets/collection/service/ImageUploadResponse;->status:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_197

    :cond_178
    const-string v3, "uploadImage(): Failed to parse image reponse, or an error occurred."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3, v7}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_186
    .catchall {:try_start_16e .. :try_end_186} :catchall_23c
    .catch Ljava/net/MalformedURLException; {:try_start_16e .. :try_end_186} :catch_281
    .catch Ljava/net/ProtocolException; {:try_start_16e .. :try_end_186} :catch_26d
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_186} :catch_256

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    if-eqz v0, :cond_18e

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_18e
    :try_start_18e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_191
    .catch Ljava/io/IOException; {:try_start_18e .. :try_end_191} :catch_223

    :goto_191
    :try_start_191
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_194
    .catch Ljava/io/IOException; {:try_start_191 .. :try_end_194} :catch_226

    :goto_194
    move-object v0, v2

    goto/16 :goto_5f

    :cond_197
    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    if-eqz v0, :cond_19f

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_19f
    :try_start_19f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1a2
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a2} :catch_229

    :goto_1a2
    :try_start_1a2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a5
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1a5} :catch_1a7

    goto/16 :goto_49

    :catch_1a7
    move-exception v0

    goto/16 :goto_49

    :catch_1aa
    move-exception v0

    move-object v1, v4

    goto/16 :goto_49

    :catch_1ae
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    move-object v1, v2

    move-object v3, v2

    :goto_1b3
    :try_start_1b3
    const-string v7, "uploadImage().ProtocolException"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1bb
    .catchall {:try_start_1b3 .. :try_end_1bb} :catchall_245

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    if-eqz v3, :cond_1c3

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1c3
    if-eqz v5, :cond_1c8

    :try_start_1c5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1c8
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1c8} :catch_22f

    :cond_1c8
    :goto_1c8
    if-eqz v4, :cond_49

    :try_start_1ca
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1cd
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1cd} :catch_1cf

    goto/16 :goto_49

    :catch_1cf
    move-exception v0

    goto/16 :goto_49

    :catch_1d2
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    move-object v1, v2

    move-object v3, v2

    :goto_1d7
    :try_start_1d7
    const-string v7, "uploadImage().IOException"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1df
    .catchall {:try_start_1d7 .. :try_end_1df} :catchall_245

    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    if-eqz v3, :cond_1e7

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1e7
    if-eqz v5, :cond_1ec

    :try_start_1e9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1ec
    .catch Ljava/io/IOException; {:try_start_1e9 .. :try_end_1ec} :catch_231

    :cond_1ec
    :goto_1ec
    if-eqz v4, :cond_49

    :try_start_1ee
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1f1
    .catch Ljava/io/IOException; {:try_start_1ee .. :try_end_1f1} :catch_1f3

    goto/16 :goto_49

    :catch_1f3
    move-exception v0

    goto/16 :goto_49

    :catchall_1f6
    move-exception v0

    move-object v4, v2

    move-object v5, v2

    :goto_1f9
    invoke-virtual {v6}, Ljava/util/concurrent/Semaphore;->release()V

    if-eqz v2, :cond_201

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_201
    if-eqz v5, :cond_206

    :try_start_203
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_206
    .catch Ljava/io/IOException; {:try_start_203 .. :try_end_206} :catch_233

    :cond_206
    :goto_206
    if-eqz v4, :cond_20b

    :try_start_208
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_20b
    .catch Ljava/io/IOException; {:try_start_208 .. :try_end_20b} :catch_235

    :cond_20b
    :goto_20b
    throw v0

    :catch_20c
    move-exception v0

    const-string v0, "uploadImage() was interrupted."

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    goto/16 :goto_4c

    :cond_214
    move-object v0, v2

    goto/16 :goto_5f

    :catch_217
    move-exception v0

    goto/16 :goto_6c

    :catch_21a
    move-exception v0

    goto/16 :goto_6f

    :catch_21d
    move-exception v0

    goto/16 :goto_11d

    :catch_220
    move-exception v0

    goto/16 :goto_120

    :catch_223
    move-exception v0

    goto/16 :goto_191

    :catch_226
    move-exception v0

    goto/16 :goto_194

    :catch_229
    move-exception v0

    goto/16 :goto_1a2

    :catch_22c
    move-exception v0

    goto/16 :goto_43

    :catch_22f
    move-exception v0

    goto :goto_1c8

    :catch_231
    move-exception v0

    goto :goto_1ec

    :catch_233
    move-exception v1

    goto :goto_206

    :catch_235
    move-exception v1

    goto :goto_20b

    :catchall_237
    move-exception v0

    move-object v4, v2

    goto :goto_1f9

    :catchall_23a
    move-exception v0

    goto :goto_1f9

    :catchall_23c
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1f9

    :catchall_240
    move-exception v0

    move-object v4, v1

    move-object v2, v5

    move-object v5, v3

    goto :goto_1f9

    :catchall_245
    move-exception v0

    move-object v2, v3

    goto :goto_1f9

    :catch_248
    move-exception v0

    move-object v4, v2

    move-object v1, v2

    move-object v3, v2

    goto :goto_1d7

    :catch_24d
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_1d7

    :catch_251
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_1d7

    :catch_256
    move-exception v3

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto/16 :goto_1d7

    :catch_25c
    move-exception v0

    move-object v4, v2

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_1b3

    :catch_262
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto/16 :goto_1b3

    :catch_267
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_1b3

    :catch_26d
    move-exception v3

    move-object v10, v3

    move-object v3, v0

    move-object v0, v10

    goto/16 :goto_1b3

    :catch_273
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    goto/16 :goto_2e

    :catch_27a
    move-exception v0

    move-object v1, v2

    move-object v3, v5

    move-object v4, v2

    move-object v5, v2

    goto/16 :goto_2e

    :catch_281
    move-exception v3

    move-object v10, v3

    move-object v3, v5

    move-object v5, v0

    move-object v0, v10

    move-object v11, v1

    move-object v1, v4

    move-object v4, v11

    goto/16 :goto_2e

    :cond_28b
    move-object v1, v4

    goto/16 :goto_49
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;)Ljava/util/concurrent/Semaphore;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->e:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->f:Z

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent;)Z
    .registers 16

    const/4 v0, 0x1

    const/4 v9, 0x0

    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v9}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-array v2, v0, [Z

    aput-boolean v9, v2, v9

    :try_start_b
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/collection/service/Annotation;

    invoke-direct {v3, p4, p3}, Lcom/spotify/mobile/android/spotlets/collection/service/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsBytes(Ljava/lang/Object;)[B

    move-result-object v0

    const-string v3, "annotate data %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lcom/spotify/cosmos/router/Request;

    const-string v4, "PATCH"

    const-string v5, "hm://playlist-annotate/v1/annotation/user/%s/playlist/%s?format=json"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->c:Lcom/spotify/cosmos/android/Resolver;

    new-instance v4, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$3;

    invoke-direct {v4, p0, v2, v1, p5}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService$3;-><init>(Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;[ZLjava/util/concurrent/Semaphore;Lcom/spotify/mobile/android/util/ClientEvent;)V

    invoke-virtual {v0, v3, v4}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
    :try_end_4b
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_b .. :try_end_4b} :catch_51

    :goto_4b
    :try_start_4b
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_4e} :catch_5d

    :goto_4e
    aget-boolean v0, v2, v9

    return v0

    :catch_51
    move-exception v0

    const-string v3, "setImageIdAndDescription().JsonProcessingException"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_4b

    :catch_5d
    move-exception v0

    const-string v0, "setImageIdAndDescription() was interrupted."

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    goto :goto_4e
.end method


# virtual methods
.method public onCreate()V
    .registers 3

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->b:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-static {p0}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->c:Lcom/spotify/cosmos/android/Resolver;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->c:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V

    new-instance v0, Lcom/spotify/mobile/android/service/session/e;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/session/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->d:Lcom/spotify/mobile/android/service/session/e;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->d:Lcom/spotify/mobile/android/service/session/e;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->a:Lcom/spotify/mobile/android/service/session/d;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/session/e;->a(Lcom/spotify/mobile/android/service/session/d;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->d:Lcom/spotify/mobile/android/service/session/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->a()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->c:Lcom/spotify/cosmos/android/Resolver;

    invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->d:Lcom/spotify/mobile/android/service/session/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->b()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 20

    const-string v1, "action_delete_image"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_30

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "Failed to delete file %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_30
    :goto_30
    return-void

    :cond_31
    :try_start_31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_38} :catch_249

    :goto_38
    invoke-virtual/range {p0 .. p0}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/spotify/music/internal/provider/annotate/a;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "_id ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    const-string v1, "%d pending annotations."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2a8

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->f:Z

    if-eqz v1, :cond_2a8

    const-string v1, "playlist_uri"

    const-string v2, ""

    invoke-static {v8, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "image_uri"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v1, "title"

    const-string v2, ""

    invoke-static {v8, v1, v2}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "description"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v2, "_id"

    invoke-static {v8}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    invoke-static {v2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/spotify/music/internal/provider/annotate/a;->a(J)Landroid/net/Uri;

    move-result-object v12

    const/4 v4, 0x0

    new-instance v6, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->av:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-direct {v6, v1}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    const-string v1, "Will annotate for playlist %s with imageUri: %s, description: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v12, v13, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v1, Lcom/spotify/mobile/android/util/SpotifyLink;

    invoke-direct {v1, v9}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/SpotifyLink;->d()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v10, :cond_2b0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_251

    new-instance v4, Lcom/spotify/mobile/android/util/du;

    invoke-direct {v4}, Lcom/spotify/mobile/android/util/du;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->a(Lcom/spotify/mobile/android/util/ClientEvent;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "token_fetch_time"

    invoke-virtual {v4}, Lcom/spotify/mobile/android/util/du;->a()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v14, v4}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    if-eqz v7, :cond_11d

    new-instance v4, Lcom/spotify/mobile/android/util/du;

    invoke-direct {v4}, Lcom/spotify/mobile/android/util/du;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v7, v6}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->a(Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "image_upload_time"

    invoke-virtual {v4}, Lcom/spotify/mobile/android/util/du;->a()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    :cond_11d
    move-object v4, v1

    :goto_11e
    if-nez v4, :cond_25c

    const/4 v1, 0x1

    :goto_121
    const-string v14, "failed: %s, setImageIdAndDescription(%s, %s, %s, %s)"

    const/4 v7, 0x5

    new-array v15, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v15, v7

    const/4 v7, 0x1

    aput-object v2, v15, v7

    const/4 v7, 0x2

    aput-object v3, v15, v7

    const/16 v16, 0x3

    if-nez v4, :cond_25f

    const-string v7, "NULL"

    :goto_139
    aput-object v7, v15, v16

    const/16 v16, 0x4

    if-nez v5, :cond_262

    const-string v7, "NULL"

    :goto_141
    aput-object v7, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v7, v14}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_16e

    if-nez v4, :cond_153

    if-eqz v5, :cond_16e

    :cond_153
    new-instance v7, Lcom/spotify/mobile/android/util/du;

    invoke-direct {v7}, Lcom/spotify/mobile/android/util/du;-><init>()V

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent;)Z

    move-result v1

    if-nez v1, :cond_265

    const/4 v1, 0x1

    :goto_161
    const-string v2, "annotate_upload_time"

    invoke-virtual {v7}, Lcom/spotify/mobile/android/util/du;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;

    :cond_16e
    const-class v2, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->E:Lcom/spotify/mobile/android/util/ea;

    invoke-virtual {v2, v9}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v2

    sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->X:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v6}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    if-eqz v1, :cond_26b

    if-eqz v10, :cond_268

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_188
    new-instance v2, Lcom/spotify/mobile/android/ui/activity/a;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/spotify/mobile/android/ui/activity/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v11}, Lcom/spotify/mobile/android/ui/activity/a;->b(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/spotify/mobile/android/ui/activity/a;->c(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/spotify/mobile/android/ui/activity/a;->a(Landroid/net/Uri;)Lcom/spotify/mobile/android/ui/activity/a;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/spotify/mobile/android/ui/activity/a;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spotify/mobile/android/ui/activity/a;->a()Lcom/spotify/mobile/android/ui/activity/a;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/activity/a;->b()Landroid/content/Intent;

    move-result-object v2

    const/high16 v4, 0x1000

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "action_delete_image"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/high16 v4, 0x1000

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v3, Landroid/support/v4/app/al;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/support/v4/app/al;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0049

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/al;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;

    move-result-object v4

    const v5, 0x7f0f0047

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/al;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02017c

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/al;->a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/al;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/al;->a()Landroid/support/v4/app/al;

    move-result-object v4

    const v5, 0x7f0f0048

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/al;->c(Ljava/lang/CharSequence;)Landroid/support/v4/app/al;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/al;->a(J)Landroid/support/v4/app/al;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/al;->d()Landroid/support/v4/app/al;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/app/al;->b(Landroid/app/PendingIntent;)Landroid/support/v4/app/al;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/al;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/al;

    invoke-virtual {v3}, Landroid/support/v4/app/al;->g()Landroid/app/Notification;

    move-result-object v2

    const-string v1, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_23e
    :goto_23e
    invoke-virtual/range {p0 .. p0}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v12, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_5a

    :catch_249
    move-exception v1

    const-string v1, "mSessionLock.acquire() was interrupted."

    invoke-static {v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    goto/16 :goto_38

    :cond_251
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2ad

    const-string v1, ""

    move-object v4, v1

    goto/16 :goto_11e

    :cond_25c
    const/4 v1, 0x0

    goto/16 :goto_121

    :cond_25f
    move-object v7, v4

    goto/16 :goto_139

    :cond_262
    move-object v7, v5

    goto/16 :goto_141

    :cond_265
    const/4 v1, 0x0

    goto/16 :goto_161

    :cond_268
    const/4 v1, 0x0

    goto/16 :goto_188

    :cond_26b
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "annotate_subscribe"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual/range {p0 .. p0}, Lcom/spotify/mobile/android/spotlets/collection/service/AnnotateUploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v9}, Lcom/spotify/mobile/android/provider/o;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v13, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v10, :cond_23e

    new-instance v1, Ljava/io/File;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_23e

    const-string v1, "Failed to delete file %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_23e

    :cond_2a8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_30

    :cond_2ad
    move-object v4, v1

    goto/16 :goto_11e

    :cond_2b0
    move-object/from16 v17, v1

    move v1, v4

    move-object/from16 v4, v17

    goto/16 :goto_121
.end method
