.class public Lcom/squareup/okhttp/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Lcom/squareup/okhttp/internal/k;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/squareup/okhttp/internal/k;->e()Lcom/squareup/okhttp/internal/k;
move-result-object v0
sput-object v0, Lcom/squareup/okhttp/internal/k;->a:Lcom/squareup/okhttp/internal/k;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Lcom/squareup/okhttp/internal/k;
.registers 1
sget-object v0, Lcom/squareup/okhttp/internal/k;->a:Lcom/squareup/okhttp/internal/k;
return-object v0
.end method
.method public static a(Ljava/net/URL;)Ljava/net/URI;
.registers 2
invoke-virtual {p0}, Ljava/net/URL;->toURI()Ljava/net/URI;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;)V
.registers 2
sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
return-void
.end method
.method public static a(Ljavax/net/ssl/SSLSocket;)V
.registers 4
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "SSLv3"
aput-object v2, v0, v1
invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V
return-void
.end method
.method public static b()Ljava/lang/String;
.registers 1
const-string v0, "OkHttp"
return-object v0
.end method
.method public static c()V
.registers 0
return-void
.end method
.method public static d()V
.registers 0
return-void
.end method
.method private static e()Lcom/squareup/okhttp/internal/k;
.registers 8
const/4 v4, 0x0
:try_start_1
const-string v0, "com.android.org.conscrypt.OpenSSLSocketImpl"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_6
.catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_42
.catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_6} :catch_4f
move-result-object v1
:try_start_7
:goto_7
const-string v0, "setUseSessionTickets"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v5, v2, v3
invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
const-string v0, "setHostname"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Class;
const/4 v5, 0x0
const-class v6, Ljava/lang/String;
aput-object v6, v3, v5
invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
:try_end_22
.catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_22} :catch_ca
.catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_22} :catch_4f
move-result-object v3
:try_start_23
const-string v0, "setNpnProtocols"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Class;
const/4 v6, 0x0
const-class v7, [B
aput-object v7, v5, v6
invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
:try_end_30
.catch Ljava/lang/NoSuchMethodException; {:try_start_23 .. :try_end_30} :catch_4a
.catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_30} :catch_ca
move-result-object v0
:try_start_31
const-string v5, "getNpnSelectedProtocol"
const/4 v6, 0x0
new-array v6, v6, [Ljava/lang/Class;
invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
:try_end_39
.catch Ljava/lang/NoSuchMethodException; {:try_start_31 .. :try_end_39} :catch_cc
.catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_39} :catch_ca
move-result-object v5
move-object v4, v0
:try_start_3b
:goto_3b
new-instance v0, Lcom/squareup/okhttp/internal/l;
const/4 v6, 0x0
invoke-direct/range {v0 .. v6}, Lcom/squareup/okhttp/internal/l;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;B)V
:goto_41
return-object v0
:catch_42
move-exception v0
const-string v0, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_48
.catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_48} :catch_ca
.catch Ljava/lang/NoSuchMethodException; {:try_start_3b .. :try_end_48} :catch_4f
move-result-object v1
goto :goto_7
:catch_4a
move-exception v0
move-object v0, v4
:goto_4c
move-object v5, v4
move-object v4, v0
goto :goto_3b
:catch_4f
move-exception v0
:goto_50
:try_start_50
const-string v0, "org.eclipse.jetty.npn.NextProtoNego"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "$Provider"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "$ClientProvider"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, "$ServerProvider"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v4
const-string v0, "put"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Class;
const/4 v6, 0x0
const-class v7, Ljavax/net/ssl/SSLSocket;
aput-object v7, v5, v6
const/4 v6, 0x1
aput-object v2, v5, v6
invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
const-string v0, "get"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Class;
const/4 v6, 0x0
const-class v7, Ljavax/net/ssl/SSLSocket;
aput-object v7, v5, v6
invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
new-instance v0, Lcom/squareup/okhttp/internal/m;
invoke-direct {v0, v2, v1, v3, v4}, Lcom/squareup/okhttp/internal/m;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
:try_end_bf
.catch Ljava/lang/ClassNotFoundException; {:try_start_50 .. :try_end_bf} :catch_c0
.catch Ljava/lang/NoSuchMethodException; {:try_start_50 .. :try_end_bf} :catch_c8
goto :goto_41
:catch_c0
move-exception v0
:goto_c1
new-instance v0, Lcom/squareup/okhttp/internal/k;
invoke-direct {v0}, Lcom/squareup/okhttp/internal/k;-><init>()V
goto/16 :goto_41
:catch_c8
move-exception v0
goto :goto_c1
:catch_ca
move-exception v0
goto :goto_50
:catch_cc
move-exception v5
goto/16 :goto_4c
.end method
.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
.registers 4
invoke-static {p1, p2, p3}, Ldroidbox/java/net/Socket;->connect(Ljava/net/Socket;Ljava/net/SocketAddress;I)V
return-void
.end method
.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
.registers 3
return-void
.end method
.method public a(Ljavax/net/ssl/SSLSocket;Ljava/util/List;)V
.registers 3
return-void
.end method
.method public b(Ljavax/net/ssl/SSLSocket;)Lcom/squareup/okhttp/internal/a/d;
.registers 3
const/4 v0, 0x0
return-object v0
.end method