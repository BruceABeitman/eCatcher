.class final Lcom/c/h;
.super Lcom/c/c;
.field private static final d:Lorg/apache/http/impl/client/DefaultHttpClient;
.field private static final e:[Ljava/lang/String;
.field private c:Lorg/apache/http/client/methods/HttpUriRequest;
.method static constructor <clinit>()V
.registers 15
const/16 v8, 0x48
const/16 v9, 0x40
const/16 v7, 0x1d
const/4 v13, 0x1
const/4 v3, 0x0
const/4 v0, 0x6
new-array v10, v0, [Ljava/lang/String;
const-string v0, "^\'64\u0001s<u\u0014\u001dm-"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_1e8
move v2, v3
:cond_15
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_1a
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_1ec
const/16 v6, 0x64
:goto_23
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_2f
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_1a
:cond_2f
move v1, v0
move-object v0, v4
:goto_31
if-gt v1, v2, :cond_15
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v3
const-string v0, "u)<`\u0014x&<)\nzh1.\u0010x:*5\u0014i"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_1e5
move v2, v3
:cond_48
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_4d
aget-char v11, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_1f8
const/16 v6, 0x64
:goto_56
xor-int/2addr v6, v11
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_62
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_4d
:cond_62
move v1, v0
move-object v0, v4
:goto_64
if-gt v1, v2, :cond_48
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v13
const/4 v11, 0x2
const-string v0, "H;=2I\\/=.\u0010"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_1e2
move v2, v3
:cond_7c
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_81
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_204
const/16 v6, 0x64
:goto_8a
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_96
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_81
:cond_96
move v1, v0
move-object v0, v4
:goto_98
if-gt v1, v2, :cond_7c
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v11, 0x3
const-string v0, "i- 4Ke%4"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_1df
move v2, v3
:cond_b0
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_b5
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_210
const/16 v6, 0x64
:goto_be
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_ca
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_b5
:cond_ca
move v1, v0
move-object v0, v4
:goto_cc
if-gt v1, v2, :cond_b0
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v11, 0x4
const-string v0, "u<,0\u0017"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_1dc
move v2, v3
:cond_e4
move-object v4, v0
move v5, v2
move v14, v1
move-object v1, v0
move v0, v14
:goto_e9
aget-char v12, v1, v2
rem-int/lit8 v6, v5, 0x5
packed-switch v6, :pswitch_data_21c
const/16 v6, 0x64
:goto_f2
xor-int/2addr v6, v12
int-to-char v6, v6
aput-char v6, v1, v2
add-int/lit8 v2, v5, 0x1
if-nez v0, :cond_fe
move-object v1, v4
move v5, v2
move v2, v0
goto :goto_e9
:cond_fe
move v1, v0
move-object v0, v4
:goto_100
if-gt v1, v2, :cond_e4
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v11
const/4 v6, 0x5
const-string v0, "u<,0"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
array-length v1, v0
if-gt v1, v13, :cond_133
:cond_117
move-object v2, v0
move v4, v3
move v14, v1
move-object v1, v0
move v0, v14
:goto_11c
aget-char v11, v1, v3
rem-int/lit8 v5, v4, 0x5
packed-switch v5, :pswitch_data_228
const/16 v5, 0x64
:goto_125
xor-int/2addr v5, v11
int-to-char v5, v5
aput-char v5, v1, v3
add-int/lit8 v3, v4, 0x1
if-nez v0, :cond_131
move-object v1, v2
move v4, v3
move v3, v0
goto :goto_11c
:cond_131
move v1, v0
move-object v0, v2
:cond_133
if-gt v1, v3, :cond_117
new-instance v1, Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;
move-result-object v0
aput-object v0, v10, v6
sput-object v10, Lcom/c/h;->e:[Ljava/lang/String;
new-instance v0, Lorg/apache/http/params/BasicHttpParams;
invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V
const/16 v1, 0x7530
invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V
const/16 v1, 0x7530
invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V
invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
move-result-object v1
sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;
invoke-virtual {v1, v2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;
invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V
new-instance v3, Lorg/apache/http/conn/scheme/Scheme;
sget-object v4, Lcom/c/h;->e:[Ljava/lang/String;
const/4 v5, 0x5
aget-object v4, v4, v5
invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;
move-result-object v5
const/16 v6, 0x50
invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
new-instance v3, Lorg/apache/http/conn/scheme/Scheme;
sget-object v4, Lcom/c/h;->e:[Ljava/lang/String;
const/4 v5, 0x4
aget-object v4, v4, v5
const/16 v5, 0x1bb
invoke-direct {v3, v4, v1, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
invoke-direct {v1, v0, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-direct {v2, v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
sput-object v2, Lcom/c/h;->d:Lorg/apache/http/impl/client/DefaultHttpClient;
return-void
:pswitch_18e
move v6, v7
goto/16 :goto_23
:pswitch_191
move v6, v8
goto/16 :goto_23
:pswitch_194
const/16 v6, 0x58
goto/16 :goto_23
:pswitch_198
move v6, v9
goto/16 :goto_23
:pswitch_19b
move v6, v7
goto/16 :goto_56
:pswitch_19e
move v6, v8
goto/16 :goto_56
:pswitch_1a1
const/16 v6, 0x58
goto/16 :goto_56
:pswitch_1a5
move v6, v9
goto/16 :goto_56
:pswitch_1a8
move v6, v7
goto/16 :goto_8a
:pswitch_1ab
move v6, v8
goto/16 :goto_8a
:pswitch_1ae
const/16 v6, 0x58
goto/16 :goto_8a
:pswitch_1b2
move v6, v9
goto/16 :goto_8a
:pswitch_1b5
move v6, v7
goto/16 :goto_be
:pswitch_1b8
move v6, v8
goto/16 :goto_be
:pswitch_1bb
const/16 v6, 0x58
goto/16 :goto_be
:pswitch_1bf
move v6, v9
goto/16 :goto_be
:pswitch_1c2
move v6, v7
goto/16 :goto_f2
:pswitch_1c5
move v6, v8
goto/16 :goto_f2
:pswitch_1c8
const/16 v6, 0x58
goto/16 :goto_f2
:pswitch_1cc
move v6, v9
goto/16 :goto_f2
:pswitch_1cf
move v5, v7
goto/16 :goto_125
:pswitch_1d2
move v5, v8
goto/16 :goto_125
:pswitch_1d5
const/16 v5, 0x58
goto/16 :goto_125
:pswitch_1d9
move v5, v9
goto/16 :goto_125
:cond_1dc
move v2, v3
goto/16 :goto_100
:cond_1df
move v2, v3
goto/16 :goto_cc
:cond_1e2
move v2, v3
goto/16 :goto_98
:cond_1e5
move v2, v3
goto/16 :goto_64
:cond_1e8
move v2, v3
goto/16 :goto_31
nop
:pswitch_data_210
.packed-switch 0x0
:pswitch_1b5
:pswitch_1b8
:pswitch_1bb
:pswitch_1bf
.end packed-switch
:pswitch_data_204
.packed-switch 0x0
:pswitch_1a8
:pswitch_1ab
:pswitch_1ae
:pswitch_1b2
.end packed-switch
:pswitch_data_1ec
.packed-switch 0x0
:pswitch_18e
:pswitch_191
:pswitch_194
:pswitch_198
.end packed-switch
:pswitch_data_228
.packed-switch 0x0
:pswitch_1cf
:pswitch_1d2
:pswitch_1d5
:pswitch_1d9
.end packed-switch
:pswitch_data_21c
.packed-switch 0x0
:pswitch_1c2
:pswitch_1c5
:pswitch_1c8
:pswitch_1cc
.end packed-switch
:pswitch_data_1f8
.packed-switch 0x0
:pswitch_19b
:pswitch_19e
:pswitch_1a1
:pswitch_1a5
.end packed-switch
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/c/c;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/c/h;->c:Lorg/apache/http/client/methods/HttpUriRequest;
return-void
.end method
.method private a(Lorg/apache/http/HttpEntity;Lorg/apache/http/HttpEntity;J)V
.registers 12
const-wide/16 v3, 0x0
if-nez p1, :cond_d
move-wide v1, v3
:goto_5
if-nez p2, :cond_12
:goto_7
move-object v0, p0
move-wide v5, p3
invoke-virtual/range {v0 .. v6}, Lcom/c/h;->a(JJJ)V
return-void
:cond_d
invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J
move-result-wide v1
goto :goto_5
:cond_12
invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentLength()J
move-result-wide v3
goto :goto_7
.end method
.method public declared-synchronized a()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/c/h;->c:Lorg/apache/http/client/methods/HttpUriRequest;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/c/h;->c:Lorg/apache/http/client/methods/HttpUriRequest;
invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_c
:cond_a
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public b(Ljava/lang/String;)Lcom/c/dd;
.registers 8
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v0
if-eqz v0, :cond_11
new-instance v0, Ljava/io/InterruptedIOException;
sget-object v1, Lcom/c/h;->e:[Ljava/lang/String;
const/4 v2, 0x1
aget-object v1, v1, v2
invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
new-instance v0, Lorg/apache/http/client/methods/HttpGet;
invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/c/h;->e:[Ljava/lang/String;
const/4 v2, 0x2
aget-object v1, v1, v2
invoke-virtual {p0}, Lcom/c/h;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
monitor-enter p0
:try_start_23
iput-object v0, p0, Lcom/c/h;->c:Lorg/apache/http/client/methods/HttpUriRequest;
monitor-exit p0
:try_end_26
.catchall {:try_start_23 .. :try_end_26} :catchall_4a
invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;
move-result-object v1
sget-object v2, Lcom/c/h;->d:Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-virtual {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v0
sget-object v2, Lcom/c/h;->a:Lcom/c/bp;
invoke-virtual {v2}, Lcom/c/bp;->b()Z
move-result v2
if-eqz v2, :cond_44
const/4 v2, 0x0
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v3
invoke-virtual {v1}, Lcom/c/ba;->a()J
move-result-wide v4
invoke-direct {p0, v2, v3, v4, v5}, Lcom/c/h;->a(Lorg/apache/http/HttpEntity;Lorg/apache/http/HttpEntity;J)V
:cond_44
new-instance v1, Lcom/c/dh;
invoke-direct {v1, v0}, Lcom/c/dh;-><init>(Lorg/apache/http/HttpResponse;)V
return-object v1
:catchall_4a
move-exception v0
:try_start_4b
monitor-exit p0
:try_end_4c
.catchall {:try_start_4b .. :try_end_4c} :catchall_4a
throw v0
.end method
.method protected c()Lcom/c/c;
.registers 2
new-instance v0, Lcom/c/h;
invoke-direct {v0}, Lcom/c/h;-><init>()V
return-object v0
.end method
.method public c(Ljava/lang/String;Ljava/lang/String;)Lcom/c/dd;
.registers 12
const/4 v1, 0x1
const/4 v0, 0x0
sget v2, Lcom/c/c;->b:I
invoke-static {}, Ljava/lang/Thread;->interrupted()Z
move-result v3
if-eqz v3, :cond_14
new-instance v0, Ljava/io/InterruptedIOException;
sget-object v2, Lcom/c/h;->e:[Ljava/lang/String;
aget-object v1, v2, v1
invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
new-instance v3, Lorg/apache/http/client/methods/HttpPost;
invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
new-instance v4, Lorg/apache/http/entity/StringEntity;
invoke-direct {v4, p2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
sget-object v5, Lcom/c/h;->e:[Ljava/lang/String;
const/4 v6, 0x2
aget-object v5, v5, v6
invoke-virtual {p0}, Lcom/c/h;->b()Ljava/lang/String;
move-result-object v6
invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
sget-object v5, Lcom/c/h;->e:[Ljava/lang/String;
aget-object v5, v5, v0
sget-object v6, Lcom/c/h;->e:[Ljava/lang/String;
const/4 v7, 0x3
aget-object v6, v6, v7
invoke-virtual {v3, v5, v6}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
monitor-enter p0
:try_start_3a
iput-object v3, p0, Lcom/c/h;->c:Lorg/apache/http/client/methods/HttpUriRequest;
monitor-exit p0
:try_end_3d
.catchall {:try_start_3a .. :try_end_3d} :catchall_68
invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;
move-result-object v5
sget-object v6, Lcom/c/h;->d:Lorg/apache/http/impl/client/DefaultHttpClient;
invoke-virtual {v6, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
move-result-object v3
sget-object v6, Lcom/c/h;->a:Lcom/c/bp;
invoke-virtual {v6}, Lcom/c/bp;->b()Z
move-result v6
if-eqz v6, :cond_5a
invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v6
invoke-virtual {v5}, Lcom/c/ba;->a()J
move-result-wide v7
invoke-direct {p0, v4, v6, v7, v8}, Lcom/c/h;->a(Lorg/apache/http/HttpEntity;Lorg/apache/http/HttpEntity;J)V
:cond_5a
new-instance v4, Lcom/c/dh;
invoke-direct {v4, v3}, Lcom/c/dh;-><init>(Lorg/apache/http/HttpResponse;)V
if-eqz v2, :cond_67
sget-boolean v2, Lcom/c/bp;->b:Z
if-eqz v2, :cond_6b
:goto_65
sput-boolean v0, Lcom/c/bp;->b:Z
:cond_67
return-object v4
:catchall_68
move-exception v0
:try_start_69
monitor-exit p0
:try_end_6a
.catchall {:try_start_69 .. :try_end_6a} :catchall_68
throw v0
:cond_6b
move v0, v1
goto :goto_65
.end method
.method protected synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/c/h;->c()Lcom/c/c;
move-result-object v0
return-object v0
.end method