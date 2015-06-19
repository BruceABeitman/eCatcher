.class public Lcom/tencent/utils/HttpUtils;
.super Ljava/lang/Object;
.source "ProGuard"
.field private static final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/tencent/utils/HttpUtils;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/tencent/utils/HttpUtils;->a:Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/content/Context;)I
.registers 4
const/4 v0, -0x1
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-ge v1, v2, :cond_19
if-eqz p0, :cond_14
invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
move-result v0
if-gez v0, :cond_13
invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I
move-result v0
:cond_13
:goto_13
return v0
:cond_14
invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I
move-result v0
goto :goto_13
:cond_19
const-string/jumbo v1, "http.proxyPort"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_13
:try_start_26
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_29
.catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_29} :catch_2b
move-result v0
goto :goto_13
:catch_2b
move-exception v1
goto :goto_13
.end method
.method private static a(Ljava/io/IOException;)I
.registers 2
instance-of v0, p0, Ljava/io/CharConversionException;
if-eqz v0, :cond_7
const/16 v0, -0x14
:goto_6
return v0
:cond_7
instance-of v0, p0, Ljava/nio/charset/MalformedInputException;
if-eqz v0, :cond_e
const/16 v0, -0x15
goto :goto_6
:cond_e
instance-of v0, p0, Ljava/nio/charset/UnmappableCharacterException;
if-eqz v0, :cond_15
const/16 v0, -0x16
goto :goto_6
:cond_15
instance-of v0, p0, Lorg/apache/http/client/HttpResponseException;
if-eqz v0, :cond_1c
const/16 v0, -0x17
goto :goto_6
:cond_1c
instance-of v0, p0, Ljava/nio/channels/ClosedChannelException;
if-eqz v0, :cond_23
const/16 v0, -0x18
goto :goto_6
:cond_23
instance-of v0, p0, Lorg/apache/http/ConnectionClosedException;
if-eqz v0, :cond_2a
const/16 v0, -0x19
goto :goto_6
:cond_2a
instance-of v0, p0, Ljava/io/EOFException;
if-eqz v0, :cond_31
const/16 v0, -0x1a
goto :goto_6
:cond_31
instance-of v0, p0, Ljava/nio/channels/FileLockInterruptionException;
if-eqz v0, :cond_38
const/16 v0, -0x1b
goto :goto_6
:cond_38
instance-of v0, p0, Ljava/io/FileNotFoundException;
if-eqz v0, :cond_3f
const/16 v0, -0x1c
goto :goto_6
:cond_3f
instance-of v0, p0, Ljava/net/HttpRetryException;
if-eqz v0, :cond_46
const/16 v0, -0x1d
goto :goto_6
:cond_46
instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;
if-eqz v0, :cond_4c
const/4 v0, -0x7
goto :goto_6
:cond_4c
instance-of v0, p0, Ljava/net/SocketTimeoutException;
if-eqz v0, :cond_52
const/4 v0, -0x8
goto :goto_6
:cond_52
instance-of v0, p0, Ljava/util/InvalidPropertiesFormatException;
if-eqz v0, :cond_59
const/16 v0, -0x1e
goto :goto_6
:cond_59
instance-of v0, p0, Lorg/apache/http/MalformedChunkCodingException;
if-eqz v0, :cond_60
const/16 v0, -0x1f
goto :goto_6
:cond_60
instance-of v0, p0, Ljava/net/MalformedURLException;
if-eqz v0, :cond_66
const/4 v0, -0x3
goto :goto_6
:cond_66
instance-of v0, p0, Lorg/apache/http/NoHttpResponseException;
if-eqz v0, :cond_6d
const/16 v0, -0x20
goto :goto_6
:cond_6d
instance-of v0, p0, Ljava/io/InvalidClassException;
if-eqz v0, :cond_74
const/16 v0, -0x21
goto :goto_6
:cond_74
instance-of v0, p0, Ljava/io/InvalidObjectException;
if-eqz v0, :cond_7b
const/16 v0, -0x22
goto :goto_6
:cond_7b
instance-of v0, p0, Ljava/io/NotActiveException;
if-eqz v0, :cond_82
const/16 v0, -0x23
goto :goto_6
:cond_82
instance-of v0, p0, Ljava/io/NotSerializableException;
if-eqz v0, :cond_8a
const/16 v0, -0x24
goto/16 :goto_6
:cond_8a
instance-of v0, p0, Ljava/io/OptionalDataException;
if-eqz v0, :cond_92
const/16 v0, -0x25
goto/16 :goto_6
:cond_92
instance-of v0, p0, Ljava/io/StreamCorruptedException;
if-eqz v0, :cond_9a
const/16 v0, -0x26
goto/16 :goto_6
:cond_9a
instance-of v0, p0, Ljava/io/WriteAbortedException;
if-eqz v0, :cond_a2
const/16 v0, -0x27
goto/16 :goto_6
:cond_a2
instance-of v0, p0, Ljava/net/ProtocolException;
if-eqz v0, :cond_aa
const/16 v0, -0x28
goto/16 :goto_6
:cond_aa
instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;
if-eqz v0, :cond_b2
const/16 v0, -0x29
goto/16 :goto_6
:cond_b2
instance-of v0, p0, Ljavax/net/ssl/SSLKeyException;
if-eqz v0, :cond_ba
const/16 v0, -0x2a
goto/16 :goto_6
:cond_ba
instance-of v0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;
if-eqz v0, :cond_c2
const/16 v0, -0x2b
goto/16 :goto_6
:cond_c2
instance-of v0, p0, Ljavax/net/ssl/SSLProtocolException;
if-eqz v0, :cond_ca
const/16 v0, -0x2c
goto/16 :goto_6
:cond_ca
instance-of v0, p0, Ljava/net/BindException;
if-eqz v0, :cond_d2
const/16 v0, -0x2d
goto/16 :goto_6
:cond_d2
instance-of v0, p0, Ljava/net/ConnectException;
if-eqz v0, :cond_da
const/16 v0, -0x2e
goto/16 :goto_6
:cond_da
instance-of v0, p0, Ljava/net/NoRouteToHostException;
if-eqz v0, :cond_e2
const/16 v0, -0x2f
goto/16 :goto_6
:cond_e2
instance-of v0, p0, Ljava/net/PortUnreachableException;
if-eqz v0, :cond_ea
const/16 v0, -0x30
goto/16 :goto_6
:cond_ea
instance-of v0, p0, Ljava/io/SyncFailedException;
if-eqz v0, :cond_f2
const/16 v0, -0x31
goto/16 :goto_6
:cond_f2
instance-of v0, p0, Ljava/io/UTFDataFormatException;
if-eqz v0, :cond_fa
const/16 v0, -0x32
goto/16 :goto_6
:cond_fa
instance-of v0, p0, Ljava/net/UnknownHostException;
if-eqz v0, :cond_102
const/16 v0, -0x33
goto/16 :goto_6
:cond_102
instance-of v0, p0, Ljava/net/UnknownServiceException;
if-eqz v0, :cond_10a
const/16 v0, -0x34
goto/16 :goto_6
:cond_10a
instance-of v0, p0, Ljava/io/UnsupportedEncodingException;
if-eqz v0, :cond_112
const/16 v0, -0x35
goto/16 :goto_6
:cond_112
instance-of v0, p0, Ljava/util/zip/ZipException;
if-eqz v0, :cond_11a
const/16 v0, -0x36
goto/16 :goto_6
:cond_11a
const/4 v0, -0x2
goto/16 :goto_6
.end method
.method private static a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
.registers 7
const/4 v5, -0x1
const-string/jumbo v0, ""
invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v1
new-instance v2, Ljava/io/ByteArrayOutputStream;
invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
const-string/jumbo v0, "Content-Encoding"
invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v0
if-eqz v0, :cond_49
invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
const-string/jumbo v3, "gzip"
invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
if-le v0, v5, :cond_49
new-instance v0, Ljava/util/zip/GZIPInputStream;
invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
:goto_30
const/16 v1, 0x200
new-array v1, v1, [B
:goto_34
invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
move-result v3
if-eq v3, v5, :cond_3f
const/4 v4, 0x0
invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
goto :goto_34
:cond_3f
new-instance v0, Ljava/lang/String;
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
return-object v0
:cond_49
move-object v0, v1
goto :goto_30
.end method
.method private static a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;)V
.registers 6
const/4 v1, -0x1
const-string/jumbo v0, "add_share"
invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
if-gt v0, v1, :cond_49
const-string/jumbo v0, "upload_pic"
invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
if-gt v0, v1, :cond_49
const-string/jumbo v0, "add_topic"
invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
if-gt v0, v1, :cond_49
const-string/jumbo v0, "set_user_face"
invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
if-gt v0, v1, :cond_49
const-string/jumbo v0, "add_t"
invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
if-gt v0, v1, :cond_49
const-string/jumbo v0, "add_pic_t"
invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
if-gt v0, v1, :cond_49
const-string/jumbo v0, "add_pic_url"
invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
if-gt v0, v1, :cond_49
const-string/jumbo v0, "add_video"
invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
if-le v0, v1, :cond_55
:cond_49
const-string/jumbo v0, "requireApi"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
aput-object p2, v1, v2
invoke-static {p0, p1, v0, v1}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V
:cond_55
return-void
.end method
.method private static b(Landroid/content/Context;)Ljava/lang/String;
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-ge v0, v1, :cond_1c
if-eqz p0, :cond_17
invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_16
invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;
move-result-object v0
:cond_16
:goto_16
return-object v0
:cond_17
invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;
move-result-object v0
goto :goto_16
:cond_1c
const-string/jumbo v0, "http.proxyHost"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_16
.end method
.method public static encodePostBody(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
.registers 10
if-nez p0, :cond_6
const-string/jumbo v0, ""
:goto_5
return-object v0
:cond_6
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const/4 v0, -0x1
invoke-virtual {p0}, Landroid/os/Bundle;->size()I
move-result v4
invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
move v1, v0
:goto_19
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_88
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
add-int/lit8 v2, v1, 0x1
invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
instance-of v6, v1, Ljava/lang/String;
if-nez v6, :cond_31
move v1, v2
goto :goto_19
:cond_31
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "Content-Disposition: form-data; name=\""
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v6, "\""
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v6, "\r\n"
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v6, "\r\n"
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object v0, v1
check-cast v0, Ljava/lang/String;
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v4, -0x1
if-ge v2, v0, :cond_86
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "\r\n--"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_86
move v1, v2
goto :goto_19
:cond_88
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_5
.end method
.method public static encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;
.registers 9
const/4 v2, 0x0
if-nez p0, :cond_7
const-string/jumbo v0, ""
:goto_6
return-object v0
:cond_7
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const/4 v0, 0x1
invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
move v1, v0
:cond_16
:goto_16
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_c3
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
instance-of v6, v3, Ljava/lang/String;
if-nez v6, :cond_2e
instance-of v6, v3, [Ljava/lang/String;
if-eqz v6, :cond_16
:cond_2e
instance-of v3, v3, [Ljava/lang/String;
if-eqz v3, :cond_90
if-eqz v1, :cond_68
move v1, v2
:goto_35
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v6, "="
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
check-cast v0, [Ljava/lang/String;
move v3, v2
:goto_57
array-length v6, v0
if-ge v3, v6, :cond_8d
if-nez v3, :cond_6f
aget-object v6, v0, v3
invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_65
add-int/lit8 v3, v3, 0x1
goto :goto_57
:cond_68
const-string/jumbo v3, "&"
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_35
:cond_6f
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, ","
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
aget-object v7, v0, v3
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_65
:cond_8d
move v0, v1
:goto_8e
move v1, v0
goto :goto_16
:cond_90
if-eqz v1, :cond_bc
move v1, v2
:goto_93
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v6, "="
invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move v0, v1
goto :goto_8e
:cond_bc
const-string/jumbo v3, "&"
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_93
:cond_c3
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_6
.end method
.method public static getHttpClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
.registers 11
const/4 v0, 0x0
const/4 v1, 0x0
const/16 v7, 0x1bb
new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;
invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V
new-instance v2, Lorg/apache/http/conn/scheme/Scheme;
const-string/jumbo v4, "http"
invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
move-result-object v5
const/16 v6, 0x50
invoke-direct {v2, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v3, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v4, 0x10
if-ge v2, v4, :cond_e2
:try_start_20
invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
move-result-object v2
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual {v2, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
new-instance v4, Lcom/tencent/utils/HttpUtils$CustomSSLSocketFactory;
invoke-direct {v4, v2}, Lcom/tencent/utils/HttpUtils$CustomSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;
invoke-virtual {v4, v2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
new-instance v2, Lorg/apache/http/conn/scheme/Scheme;
const-string/jumbo v5, "https"
const/16 v6, 0x1bb
invoke-direct {v2, v5, v4, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v3, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
:try_end_44
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_44} :catch_d0
:goto_44
new-instance v4, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
if-eqz p0, :cond_f6
invoke-static {p0, p1}, Lcom/tencent/utils/OpenConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/utils/OpenConfig;
move-result-object v1
move-object v2, v1
:goto_50
if-eqz v2, :cond_f3
const-string/jumbo v0, "Common_HttpConnectionTimeout"
invoke-virtual {v2, v0}, Lcom/tencent/utils/OpenConfig;->getInt(Ljava/lang/String;)I
move-result v1
const-string/jumbo v0, "Common_SocketConnectionTimeout"
invoke-virtual {v2, v0}, Lcom/tencent/utils/OpenConfig;->getInt(Ljava/lang/String;)I
move-result v0
:goto_60
if-nez v1, :cond_64
const/16 v1, 0x3a98
:cond_64
if-nez v0, :cond_68
const/16 v0, 0x7530
:cond_68
invoke-static {v4, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
invoke-static {v4, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;
invoke-static {v4, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
const-string/jumbo v0, "UTF-8"
invoke-static {v4, v0}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "AndroidSDK_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v4, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
invoke-direct {v0, v4, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v1, v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
invoke-static {p0}, Lcom/tencent/utils/HttpUtils;->getProxy(Landroid/content/Context;)Lcom/tencent/utils/HttpUtils$NetworkProxy;
move-result-object v0
if-eqz v0, :cond_cf
new-instance v2, Lorg/apache/http/HttpHost;
iget-object v3, v0, Lcom/tencent/utils/HttpUtils$NetworkProxy;->host:Ljava/lang/String;
iget v0, v0, Lcom/tencent/utils/HttpUtils$NetworkProxy;->port:I
invoke-direct {v2, v3, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
invoke-interface {v1}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;
move-result-object v0
const-string/jumbo v3, "http.route.default-proxy"
invoke-interface {v0, v3, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
:cond_cf
return-object v1
:catch_d0
move-exception v2
new-instance v2, Lorg/apache/http/conn/scheme/Scheme;
const-string/jumbo v4, "https"
invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
move-result-object v5
invoke-direct {v2, v4, v5, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v3, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
goto/16 :goto_44
:cond_e2
new-instance v2, Lorg/apache/http/conn/scheme/Scheme;
const-string/jumbo v4, "https"
invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
move-result-object v5
invoke-direct {v2, v4, v5, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v3, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
goto/16 :goto_44
:cond_f3
move v1, v0
goto/16 :goto_60
:cond_f6
move-object v2, v1
goto/16 :goto_50
.end method
.method public static getProxy(Landroid/content/Context;)Lcom/tencent/utils/HttpUtils$NetworkProxy;
.registers 5
const/4 v1, 0x0
if-nez p0, :cond_5
move-object v0, v1
:goto_4
return-object v0
:cond_5
const-string/jumbo v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
if-nez v0, :cond_12
move-object v0, v1
goto :goto_4
:cond_12
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-nez v0, :cond_1a
move-object v0, v1
goto :goto_4
:cond_1a
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v0
if-nez v0, :cond_36
invoke-static {p0}, Lcom/tencent/utils/HttpUtils;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-static {p0}, Lcom/tencent/utils/HttpUtils;->a(Landroid/content/Context;)I
move-result v3
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_36
if-ltz v3, :cond_36
new-instance v0, Lcom/tencent/utils/HttpUtils$NetworkProxy;
invoke-direct {v0, v2, v3, v1}, Lcom/tencent/utils/HttpUtils$NetworkProxy;-><init>(Ljava/lang/String;ILcom/tencent/utils/HttpUtils$1;)V
goto :goto_4
:cond_36
move-object v0, v1
goto :goto_4
.end method
.method public static openUrl2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/utils/Util$Statistic;
.registers 16
const/4 v3, -0x1
if-eqz p0, :cond_23
const-string/jumbo v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
if-eqz v0, :cond_23
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_1a
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
move-result v0
if-nez v0, :cond_23
:cond_1a
new-instance v0, Lcom/tencent/utils/HttpUtils$NetworkUnavailableException;
const-string/jumbo v1, "network unavailable"
invoke-direct {v0, v1}, Lcom/tencent/utils/HttpUtils$NetworkUnavailableException;-><init>(Ljava/lang/String;)V
throw v0
:cond_23
if-eqz p3, :cond_ea
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
move-object v2, v0
:goto_2b
const-string/jumbo v0, ""
const-string/jumbo v0, "appid_for_getting_config"
invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "appid_for_getting_config"
invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
invoke-static {p0, v0, p1}, Lcom/tencent/utils/HttpUtils;->getHttpClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
move-result-object v6
const/4 v0, 0x0
const/4 v4, 0x0
const-string/jumbo v1, "GET"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_107
invoke-static {v2}, Lcom/tencent/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v0
add-int v1, v4, v0
sget-object v0, Lcom/tencent/utils/HttpUtils;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "-->openUrl2 before url ="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "?"
invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
if-ne v0, v3, :cond_f2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, "?"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_8a
sget-object v3, Lcom/tencent/utils/HttpUtils;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "-->openUrl2 encodedParam ="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " -- url = "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v0, Lorg/apache/http/client/methods/HttpGet;
invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "Accept-Encoding"
const-string/jumbo v3, "gzip"
invoke-interface {v0, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
move v11, v1
move-object v1, v0
move v0, v11
:goto_d0
invoke-interface {v6, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v2
invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v2
const/16 v3, 0xc8
if-ne v2, v3, :cond_224
invoke-static {v1}, Lcom/tencent/utils/HttpUtils;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/tencent/utils/Util$Statistic;
invoke-direct {v2, v1, v0}, Lcom/tencent/utils/Util$Statistic;-><init>(Ljava/lang/String;I)V
return-object v2
:cond_ea
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
move-object v2, v0
goto/16 :goto_2b
:cond_f2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, "&"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_8a
:cond_107
const-string/jumbo v1, "POST"
invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_23e
new-instance v5, Lorg/apache/http/client/methods/HttpPost;
invoke-direct {v5, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
const-string/jumbo v0, "Accept-Encoding"
const-string/jumbo v1, "gzip"
invoke-virtual {v5, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
new-instance v7, Landroid/os/Bundle;
invoke-direct {v7}, Landroid/os/Bundle;-><init>()V
invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v8
:cond_12b
:goto_12b
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_147
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
instance-of v9, v1, [B
if-eqz v9, :cond_12b
check-cast v1, [B
check-cast v1, [B
invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
goto :goto_12b
:cond_147
const-string/jumbo v0, "method"
invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_156
const-string/jumbo v0, "method"
invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_156
const-string/jumbo v0, "Content-Type"
const-string/jumbo v1, "multipart/form-data; boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
invoke-virtual {v5, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "Connection"
const-string/jumbo v1, "Keep-Alive"
invoke-virtual {v5, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
new-instance v8, Ljava/io/ByteArrayOutputStream;
invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
const-string/jumbo v0, "--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
const-string/jumbo v0, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
invoke-static {v2, v0}, Lcom/tencent/utils/HttpUtils;->encodePostBody(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z
move-result v0
if-nez v0, :cond_206
invoke-virtual {v7}, Landroid/os/Bundle;->size()I
move-result v2
const-string/jumbo v0, "\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v9
move v1, v3
:cond_1a2
:goto_1a2
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_206
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
add-int/lit8 v1, v1, 0x1
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v10, "Content-Disposition: form-data; name=\""
invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v10, "\"; filename=\""
invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v10, "\""
invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v10, "\r\n"
invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B
move-result-object v3
invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
const-string/jumbo v3, "Content-Type: content/unknown\r\n\r\n"
invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B
move-result-object v3
invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
invoke-virtual {v7, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
move-result-object v0
if-eqz v0, :cond_1f7
invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
:cond_1f7
add-int/lit8 v0, v2, -0x1
if-ge v1, v0, :cond_1a2
const-string/jumbo v0, "\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
goto :goto_1a2
:cond_206
const-string/jumbo v0, "\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f--\r\n"
invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
move-result-object v0
invoke-virtual {v8, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
array-length v0, v1
add-int/2addr v0, v4
invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;
invoke-direct {v2, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
invoke-virtual {v5, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
move-object v1, v5
goto/16 :goto_d0
:cond_224
new-instance v0, Lcom/tencent/utils/HttpUtils$HttpStatusException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "http status code error:"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/tencent/utils/HttpUtils$HttpStatusException;-><init>(Ljava/lang/String;)V
throw v0
:cond_23e
move-object v1, v0
move v0, v4
goto/16 :goto_d0
.end method
.method public static request(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
.registers 24
const-string/jumbo v3, "openSDK_LOG"
const-string/jumbo v4, "OpenApi request"
invoke-static {v3, v4}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "http"
invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_1f6
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/tencent/utils/ServerSetting;->getInstance()Lcom/tencent/utils/ServerSetting;
move-result-object v4
const-string/jumbo v5, "https://openmobile.qq.com/"
move-object/from16 v0, p1
invoke-virtual {v4, v0, v5}, Lcom/tencent/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, p2
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/tencent/utils/ServerSetting;->getInstance()Lcom/tencent/utils/ServerSetting;
move-result-object v5
const-string/jumbo v6, "https://openmobile.qq.com/"
move-object/from16 v0, p1
invoke-virtual {v5, v0, v6}, Lcom/tencent/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p2
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
:goto_56
move-object/from16 v0, p1
move-object/from16 v1, p0
move-object/from16 v2, p2
invoke-static {v0, v1, v2}, Lcom/tencent/utils/HttpUtils;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;)V
const/4 v9, 0x0
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v7
const/4 v6, 0x0
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v4
move-object/from16 v0, p1
invoke-static {v0, v4}, Lcom/tencent/utils/OpenConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/utils/OpenConfig;
move-result-object v4
const-string/jumbo v10, "Common_HttpRetryCount"
invoke-virtual {v4, v10}, Lcom/tencent/utils/OpenConfig;->getInt(Ljava/lang/String;)I
move-result v4
const-string/jumbo v10, "OpenConfig_test"
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v12, "config 1:Common_HttpRetryCount            config_value:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
const-string/jumbo v12, "   appid:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
const-string/jumbo v12, "     url:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
if-nez v4, :cond_ad
const/4 v4, 0x3
:cond_ad
const-string/jumbo v10, "OpenConfig_test"
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v12, "config 1:Common_HttpRetryCount            result_value:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
const-string/jumbo v12, "   appid:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
const-string/jumbo v12, "     url:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
move/from16 v16, v6
move-wide/from16 v17, v7
move-wide/from16 v6, v17
move/from16 v8, v16
:goto_e9
add-int/lit8 v13, v8, 0x1
:try_start_eb
move-object/from16 v0, p1
move-object/from16 v1, p4
move-object/from16 v2, p3
invoke-static {v0, v3, v1, v2}, Lcom/tencent/utils/HttpUtils;->openUrl2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/utils/Util$Statistic;
move-result-object v10
iget-object v8, v10, Lcom/tencent/utils/Util$Statistic;->response:Ljava/lang/String;
invoke-static {v8}, Lcom/tencent/utils/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
:try_end_fa
.catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_eb .. :try_end_fa} :catch_1ed
.catch Ljava/net/SocketTimeoutException; {:try_start_eb .. :try_end_fa} :catch_1e8
.catch Lcom/tencent/utils/HttpUtils$HttpStatusException; {:try_start_eb .. :try_end_fa} :catch_168
.catch Lcom/tencent/utils/HttpUtils$NetworkUnavailableException; {:try_start_eb .. :try_end_fa} :catch_198
.catch Ljava/net/MalformedURLException; {:try_start_eb .. :try_end_fa} :catch_19d
.catch Ljava/io/IOException; {:try_start_eb .. :try_end_fa} :catch_1b5
.catch Lorg/json/JSONException; {:try_start_eb .. :try_end_fa} :catch_1d0
move-result-object v14
:try_start_fb
const-string/jumbo v8, "ret"
invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
:try_end_101
.catch Lorg/json/JSONException; {:try_start_fb .. :try_end_101} :catch_114
.catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_fb .. :try_end_101} :catch_117
.catch Ljava/net/SocketTimeoutException; {:try_start_fb .. :try_end_101} :catch_143
.catch Lcom/tencent/utils/HttpUtils$HttpStatusException; {:try_start_fb .. :try_end_101} :catch_168
.catch Lcom/tencent/utils/HttpUtils$NetworkUnavailableException; {:try_start_fb .. :try_end_101} :catch_198
.catch Ljava/net/MalformedURLException; {:try_start_fb .. :try_end_101} :catch_19d
.catch Ljava/io/IOException; {:try_start_fb .. :try_end_101} :catch_1b5
move-result v12
:goto_102
:try_start_102
iget-wide v8, v10, Lcom/tencent/utils/Util$Statistic;->reqSize:J
iget-wide v10, v10, Lcom/tencent/utils/Util$Statistic;->rspSize:J
:goto_106
:try_end_106
.catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_102 .. :try_end_106} :catch_117
.catch Ljava/net/SocketTimeoutException; {:try_start_102 .. :try_end_106} :catch_143
.catch Lcom/tencent/utils/HttpUtils$HttpStatusException; {:try_start_102 .. :try_end_106} :catch_168
.catch Lcom/tencent/utils/HttpUtils$NetworkUnavailableException; {:try_start_102 .. :try_end_106} :catch_198
.catch Ljava/net/MalformedURLException; {:try_start_102 .. :try_end_106} :catch_19d
.catch Ljava/io/IOException; {:try_start_102 .. :try_end_106} :catch_1b5
.catch Lorg/json/JSONException; {:try_start_102 .. :try_end_106} :catch_1d0
invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;
move-result-object v3
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v13
move-object/from16 v4, p1
invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V
return-object v14
:catch_114
move-exception v8
const/4 v12, -0x4
goto :goto_102
:catch_117
move-exception v8
move-object v15, v14
move-object v14, v8
:goto_11a
invoke-virtual {v14}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V
const/4 v12, -0x7
const-wide/16 v8, 0x0
const-wide/16 v10, 0x0
if-ge v13, v4, :cond_135
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v6
move-wide/from16 v16, v8
move-object v8, v15
move-wide/from16 v14, v16
:goto_12d
if-lt v13, v4, :cond_1f2
move-wide/from16 v16, v14
move-object v14, v8
move-wide/from16 v8, v16
goto :goto_106
:cond_135
invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;
move-result-object v3
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v13
move-object/from16 v4, p1
invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V
throw v14
:catch_143
move-exception v8
move-object v15, v14
move-object v14, v8
:goto_146
invoke-virtual {v14}, Ljava/net/SocketTimeoutException;->printStackTrace()V
const/4 v12, -0x8
const-wide/16 v8, 0x0
const-wide/16 v10, 0x0
if-ge v13, v4, :cond_15a
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v6
move-wide/from16 v16, v8
move-object v8, v15
move-wide/from16 v14, v16
goto :goto_12d
:cond_15a
invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;
move-result-object v3
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v13
move-object/from16 v4, p1
invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V
throw v14
:catch_168
move-exception v3
move-object v14, v3
invoke-virtual {v14}, Lcom/tencent/utils/HttpUtils$HttpStatusException;->printStackTrace()V
invoke-virtual {v14}, Lcom/tencent/utils/HttpUtils$HttpStatusException;->getMessage()Ljava/lang/String;
move-result-object v3
:try_start_171
const-string/jumbo v4, "http status code error:"
const-string/jumbo v8, ""
invoke-virtual {v3, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_17e
.catch Ljava/lang/Exception; {:try_start_171 .. :try_end_17e} :catch_191
move-result v12
:goto_17f
const-wide/16 v8, 0x0
const-wide/16 v10, 0x0
invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;
move-result-object v3
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v13
move-object/from16 v4, p1
invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V
throw v14
:catch_191
move-exception v3
invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
const/16 v12, -0x9
goto :goto_17f
:catch_198
move-exception v3
invoke-virtual {v3}, Lcom/tencent/utils/HttpUtils$NetworkUnavailableException;->printStackTrace()V
throw v3
:catch_19d
move-exception v3
move-object v14, v3
invoke-virtual {v14}, Ljava/net/MalformedURLException;->printStackTrace()V
const/4 v12, -0x3
const-wide/16 v8, 0x0
const-wide/16 v10, 0x0
invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;
move-result-object v3
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v13
move-object/from16 v4, p1
invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V
throw v14
:catch_1b5
move-exception v3
move-object v14, v3
invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
invoke-static {v14}, Lcom/tencent/utils/HttpUtils;->a(Ljava/io/IOException;)I
move-result v12
const-wide/16 v8, 0x0
const-wide/16 v10, 0x0
invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;
move-result-object v3
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v13
move-object/from16 v4, p1
invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V
throw v14
:catch_1d0
move-exception v3
move-object v14, v3
invoke-virtual {v14}, Lorg/json/JSONException;->printStackTrace()V
const/4 v12, -0x4
const-wide/16 v8, 0x0
const-wide/16 v10, 0x0
invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;
move-result-object v3
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v13
move-object/from16 v4, p1
invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V
throw v14
:catch_1e8
move-exception v8
move-object v14, v8
move-object v15, v9
goto/16 :goto_146
:catch_1ed
move-exception v8
move-object v14, v8
move-object v15, v9
goto/16 :goto_11a
:cond_1f2
move-object v9, v8
move v8, v13
goto/16 :goto_e9
:cond_1f6
move-object/from16 v5, p2
move-object/from16 v3, p2
goto/16 :goto_56
.end method
.method public static requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
.registers 13
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v1, "OpenApi requestAsync"
invoke-static {v0, v1}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/tencent/utils/HttpUtils$1;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lcom/tencent/utils/HttpUtils$1;-><init>(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
invoke-virtual {v0}, Lcom/tencent/utils/HttpUtils$1;->start()V
return-void
.end method
.method public static upload(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lorg/json/JSONObject;
.registers 23
invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "http"
invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_1eb
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/tencent/utils/ServerSetting;->getInstance()Lcom/tencent/utils/ServerSetting;
move-result-object v4
const-string/jumbo v5, "https://openmobile.qq.com/"
move-object/from16 v0, p1
invoke-virtual {v4, v0, v5}, Lcom/tencent/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, p2
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/tencent/utils/ServerSetting;->getInstance()Lcom/tencent/utils/ServerSetting;
move-result-object v5
const-string/jumbo v6, "https://openmobile.qq.com/"
move-object/from16 v0, p1
invoke-virtual {v5, v0, v6}, Lcom/tencent/utils/ServerSetting;->getEnvUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p2
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
:goto_4d
move-object/from16 v0, p1
move-object/from16 v1, p0
move-object/from16 v2, p2
invoke-static {v0, v1, v2}, Lcom/tencent/utils/HttpUtils;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;)V
const/4 v9, 0x0
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v7
const/4 v6, 0x0
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v4
move-object/from16 v0, p1
invoke-static {v0, v4}, Lcom/tencent/utils/OpenConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/utils/OpenConfig;
move-result-object v4
const-string/jumbo v10, "Common_HttpRetryCount"
invoke-virtual {v4, v10}, Lcom/tencent/utils/OpenConfig;->getInt(Ljava/lang/String;)I
move-result v4
const-string/jumbo v10, "OpenConfig_test"
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v12, "config 1:Common_HttpRetryCount            config_value:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
const-string/jumbo v12, "   appid:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
const-string/jumbo v12, "     url:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
if-nez v4, :cond_a4
const/4 v4, 0x3
:cond_a4
const-string/jumbo v10, "OpenConfig_test"
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v12, "config 1:Common_HttpRetryCount            result_value:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
const-string/jumbo v12, "   appid:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
const-string/jumbo v12, "     url:"
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
move/from16 v16, v6
move-wide/from16 v17, v7
move-wide/from16 v6, v17
move/from16 v8, v16
:goto_e0
add-int/lit8 v13, v8, 0x1
:try_start_e2
move-object/from16 v0, p1
move-object/from16 v1, p3
invoke-static {v0, v3, v1}, Lcom/tencent/utils/Util;->upload(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/utils/Util$Statistic;
move-result-object v10
iget-object v8, v10, Lcom/tencent/utils/Util$Statistic;->response:Ljava/lang/String;
invoke-static {v8}, Lcom/tencent/utils/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
:try_end_ef
.catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_e2 .. :try_end_ef} :catch_1e2
.catch Ljava/net/SocketTimeoutException; {:try_start_e2 .. :try_end_ef} :catch_1dd
.catch Lcom/tencent/utils/HttpUtils$HttpStatusException; {:try_start_e2 .. :try_end_ef} :catch_15d
.catch Lcom/tencent/utils/HttpUtils$NetworkUnavailableException; {:try_start_e2 .. :try_end_ef} :catch_18d
.catch Ljava/net/MalformedURLException; {:try_start_e2 .. :try_end_ef} :catch_192
.catch Ljava/io/IOException; {:try_start_e2 .. :try_end_ef} :catch_1aa
.catch Lorg/json/JSONException; {:try_start_e2 .. :try_end_ef} :catch_1c5
move-result-object v14
:try_start_f0
const-string/jumbo v8, "ret"
invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
:try_end_f6
.catch Lorg/json/JSONException; {:try_start_f0 .. :try_end_f6} :catch_109
.catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_f0 .. :try_end_f6} :catch_10c
.catch Ljava/net/SocketTimeoutException; {:try_start_f0 .. :try_end_f6} :catch_138
.catch Lcom/tencent/utils/HttpUtils$HttpStatusException; {:try_start_f0 .. :try_end_f6} :catch_15d
.catch Lcom/tencent/utils/HttpUtils$NetworkUnavailableException; {:try_start_f0 .. :try_end_f6} :catch_18d
.catch Ljava/net/MalformedURLException; {:try_start_f0 .. :try_end_f6} :catch_192
.catch Ljava/io/IOException; {:try_start_f0 .. :try_end_f6} :catch_1aa
move-result v12
:goto_f7
:try_start_f7
iget-wide v8, v10, Lcom/tencent/utils/Util$Statistic;->reqSize:J
iget-wide v10, v10, Lcom/tencent/utils/Util$Statistic;->rspSize:J
:goto_fb
:try_end_fb
.catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_f7 .. :try_end_fb} :catch_10c
.catch Ljava/net/SocketTimeoutException; {:try_start_f7 .. :try_end_fb} :catch_138
.catch Lcom/tencent/utils/HttpUtils$HttpStatusException; {:try_start_f7 .. :try_end_fb} :catch_15d
.catch Lcom/tencent/utils/HttpUtils$NetworkUnavailableException; {:try_start_f7 .. :try_end_fb} :catch_18d
.catch Ljava/net/MalformedURLException; {:try_start_f7 .. :try_end_fb} :catch_192
.catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fb} :catch_1aa
.catch Lorg/json/JSONException; {:try_start_f7 .. :try_end_fb} :catch_1c5
invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;
move-result-object v3
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v13
move-object/from16 v4, p1
invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V
return-object v14
:catch_109
move-exception v8
const/4 v12, -0x4
goto :goto_f7
:catch_10c
move-exception v8
move-object v15, v14
move-object v14, v8
:goto_10f
invoke-virtual {v14}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V
const/4 v12, -0x7
const-wide/16 v8, 0x0
const-wide/16 v10, 0x0
if-ge v13, v4, :cond_12a
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v6
move-wide/from16 v16, v8
move-object v8, v15
move-wide/from16 v14, v16
:goto_122
if-lt v13, v4, :cond_1e7
move-wide/from16 v16, v14
move-object v14, v8
move-wide/from16 v8, v16
goto :goto_fb
:cond_12a
invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;
move-result-object v3
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v13
move-object/from16 v4, p1
invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V
throw v14
:catch_138
move-exception v8
move-object v15, v14
move-object v14, v8
:goto_13b
invoke-virtual {v14}, Ljava/net/SocketTimeoutException;->printStackTrace()V
const/4 v12, -0x8
const-wide/16 v8, 0x0
const-wide/16 v10, 0x0
if-ge v13, v4, :cond_14f
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v6
move-wide/from16 v16, v8
move-object v8, v15
move-wide/from16 v14, v16
goto :goto_122
:cond_14f
invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;
move-result-object v3
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v13
move-object/from16 v4, p1
invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V
throw v14
:catch_15d
move-exception v3
move-object v14, v3
invoke-virtual {v14}, Lcom/tencent/utils/HttpUtils$HttpStatusException;->printStackTrace()V
invoke-virtual {v14}, Lcom/tencent/utils/HttpUtils$HttpStatusException;->getMessage()Ljava/lang/String;
move-result-object v3
:try_start_166
const-string/jumbo v4, "http status code error:"
const-string/jumbo v8, ""
invoke-virtual {v3, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_173
.catch Ljava/lang/Exception; {:try_start_166 .. :try_end_173} :catch_186
move-result v12
:goto_174
const-wide/16 v8, 0x0
const-wide/16 v10, 0x0
invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;
move-result-object v3
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v13
move-object/from16 v4, p1
invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V
throw v14
:catch_186
move-exception v3
invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
const/16 v12, -0x9
goto :goto_174
:catch_18d
move-exception v3
invoke-virtual {v3}, Lcom/tencent/utils/HttpUtils$NetworkUnavailableException;->printStackTrace()V
throw v3
:catch_192
move-exception v3
move-object v14, v3
invoke-virtual {v14}, Ljava/net/MalformedURLException;->printStackTrace()V
const/4 v12, -0x3
const-wide/16 v8, 0x0
const-wide/16 v10, 0x0
invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;
move-result-object v3
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v13
move-object/from16 v4, p1
invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V
throw v14
:catch_1aa
move-exception v3
move-object v14, v3
invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
invoke-static {v14}, Lcom/tencent/utils/HttpUtils;->a(Ljava/io/IOException;)I
move-result v12
const-wide/16 v8, 0x0
const-wide/16 v10, 0x0
invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;
move-result-object v3
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v13
move-object/from16 v4, p1
invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V
throw v14
:catch_1c5
move-exception v3
move-object v14, v3
invoke-virtual {v14}, Lorg/json/JSONException;->printStackTrace()V
const/4 v12, -0x4
const-wide/16 v8, 0x0
const-wide/16 v10, 0x0
invoke-static {}, Lcom/tencent/open/a/b;->a()Lcom/tencent/open/a/b;
move-result-object v3
invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;
move-result-object v13
move-object/from16 v4, p1
invoke-virtual/range {v3 .. v13}, Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;)V
throw v14
:catch_1dd
move-exception v8
move-object v14, v8
move-object v15, v9
goto/16 :goto_13b
:catch_1e2
move-exception v8
move-object v14, v8
move-object v15, v9
goto/16 :goto_10f
:cond_1e7
move-object v9, v8
move v8, v13
goto/16 :goto_e0
:cond_1eb
move-object/from16 v5, p2
move-object/from16 v3, p2
goto/16 :goto_4d
.end method