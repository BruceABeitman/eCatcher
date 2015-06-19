.class public final Lcom/mato/sdk/proxy/h;
.super Ljava/lang/Object;
.field private static final a:Ljava/lang/String; = "Mato.ProxySettings"
.field private static b:I = 0xc1
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method private static varargs a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
.registers 7
const/4 v2, 0x0
instance-of v0, p0, Ljava/lang/Class;
if-eqz v0, :cond_13
move-object v0, p0
check-cast v0, Ljava/lang/Class;
:goto_8
if-eqz p3, :cond_18
invoke-virtual {v0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_12
return-object v0
:cond_13
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
goto :goto_8
:cond_18
new-array v1, v2, [Ljava/lang/Class;
invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
new-array v1, v2, [Ljava/lang/Object;
invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_12
.end method
.method public static a(Landroid/content/Context;)V
.registers 10
const/4 v8, 0x2
const/4 v7, 0x0
const/4 v6, 0x0
const/4 v5, 0x1
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-lt v0, v1, :cond_22
invoke-static {p0, v7, v6}, Lcom/mato/sdk/proxy/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z
:goto_d
:cond_d
invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;
move-result-object v0
invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I
move-result v1
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_21
const/4 v2, -0x1
if-eq v1, v2, :cond_21
invoke-static {p0, v0, v1}, Lcom/mato/sdk/proxy/h;->a(Landroid/content/Context;Ljava/lang/String;I)Z
:cond_21
return-void
:cond_22
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-ge v0, v1, :cond_35
invoke-static {p0}, Lcom/mato/sdk/proxy/h;->b(Landroid/content/Context;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_d
const-string/jumbo v1, "mProxyHost"
invoke-static {v0, v1, v7}, Lcom/mato/sdk/proxy/h;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_d
:cond_35
const-string/jumbo v0, "android.webkit.WebViewCore"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const-string/jumbo v1, "android.net.ProxyProperties"
invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v1
if-eqz v0, :cond_d
if-eqz v1, :cond_d
const-string/jumbo v2, "sendStaticMessage"
new-array v3, v8, [Ljava/lang/Class;
sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v4, v3, v6
const-class v4, Ljava/lang/Object;
aput-object v4, v3, v5
invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
const/4 v2, 0x3
new-array v2, v2, [Ljava/lang/Class;
const-class v3, Ljava/lang/String;
aput-object v3, v2, v6
sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v3, v2, v5
const-class v3, Ljava/lang/String;
aput-object v3, v2, v8
invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v1
invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
new-array v1, v8, [Ljava/lang/Object;
const/16 v2, 0xc1
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v6
aput-object v7, v1, v5
invoke-virtual {v0, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_d
.end method
.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
.registers 5
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;I)Z
.registers 11
const/4 v1, 0x0
const/4 v0, 0x1
:try_start_2
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x13
if-lt v2, v3, :cond_c
invoke-static {p0, p1, p2}, Lcom/mato/sdk/proxy/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z
:cond_b
:goto_b
return v1
:cond_c
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0xe
if-ge v2, v3, :cond_28
invoke-static {p0}, Lcom/mato/sdk/proxy/h;->b(Landroid/content/Context;)Ljava/lang/Object;
move-result-object v2
if-eqz v2, :cond_b
new-instance v3, Lorg/apache/http/HttpHost;
const-string/jumbo v4, "http"
invoke-direct {v3, p1, p2, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
const-string/jumbo v4, "mProxyHost"
invoke-static {v2, v4, v3}, Lcom/mato/sdk/proxy/h;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
move v1, v0
goto :goto_b
:cond_28
const-string/jumbo v2, "android.webkit.WebViewCore"
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
const-string/jumbo v3, "android.net.ProxyProperties"
invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v3
if-eqz v2, :cond_97
if-eqz v3, :cond_97
const-string/jumbo v4, "sendStaticMessage"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Class;
const/4 v6, 0x0
sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v7, v5, v6
const/4 v6, 0x1
const-class v7, Ljava/lang/Object;
aput-object v7, v5, v6
invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
const/4 v4, 0x3
new-array v4, v4, [Ljava/lang/Class;
const/4 v5, 0x0
const-class v6, Ljava/lang/String;
aput-object v6, v4, v5
const/4 v5, 0x1
sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v6, v4, v5
const/4 v5, 0x2
const-class v6, Ljava/lang/String;
aput-object v6, v4, v5
invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
const/4 v4, 0x1
invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
const/4 v4, 0x3
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object p1, v4, v5
const/4 v5, 0x1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x2
const/4 v6, 0x0
aput-object v6, v4, v5
invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
const/4 v4, 0x0
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
const/16 v7, 0xc1
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x1
aput-object v3, v5, v6
invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_94
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_94} :catch_99
:goto_94
move v1, v0
goto/16 :goto_b
:cond_97
move v0, v1
goto :goto_94
:catch_99
move-exception v0
const-string/jumbo v2, "Mato.ProxySettings"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "error setting up webkit proxying"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/mato/sdk/utils/f;->b(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_b
.end method
.method private static a(Ljava/lang/String;I)Z
.registers 12
const/4 v9, 0x0
const/4 v8, 0x3
const/4 v7, 0x2
const/4 v1, 0x0
const/4 v0, 0x1
const-string/jumbo v2, "android.webkit.WebViewCore"
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
const-string/jumbo v3, "android.net.ProxyProperties"
invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v3
if-eqz v2, :cond_60
if-eqz v3, :cond_60
const-string/jumbo v4, "sendStaticMessage"
new-array v5, v7, [Ljava/lang/Class;
sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v6, v5, v1
const-class v6, Ljava/lang/Object;
aput-object v6, v5, v0
invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
new-array v4, v8, [Ljava/lang/Class;
const-class v5, Ljava/lang/String;
aput-object v5, v4, v1
sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v5, v4, v0
const-class v5, Ljava/lang/String;
aput-object v5, v4, v7
invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v3
invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
invoke-virtual {v3, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
new-array v4, v8, [Ljava/lang/Object;
aput-object p0, v4, v1
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v0
aput-object v9, v4, v7
invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
new-array v4, v7, [Ljava/lang/Object;
const/16 v5, 0xc1
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v1
aput-object v3, v4, v0
invoke-virtual {v2, v9, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_5f
return v0
:cond_60
move v0, v1
goto :goto_5f
.end method
.method private static b(Landroid/content/Context;)Ljava/lang/Object;
.registers 9
const/4 v7, 0x1
const/4 v6, 0x0
const/4 v2, 0x0
const-string/jumbo v0, "android.webkit.Network"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v1
if-eqz v1, :cond_51
const-string/jumbo v3, "getInstance"
new-array v4, v7, [Ljava/lang/Object;
aput-object p0, v4, v6
new-array v5, v7, [Ljava/lang/Class;
const-class v0, Landroid/content/Context;
aput-object v0, v5, v6
instance-of v0, v1, Ljava/lang/Class;
if-eqz v0, :cond_3f
move-object v0, v1
check-cast v0, Ljava/lang/Class;
:goto_20
if-eqz v5, :cond_44
invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_2a
if-eqz v0, :cond_51
const-string/jumbo v1, "mRequestQueue"
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v1
invoke-virtual {v1, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_3e
return-object v0
:cond_3f
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
goto :goto_20
:cond_44
new-array v4, v6, [Ljava/lang/Class;
invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
new-array v3, v6, [Ljava/lang/Object;
invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_2a
:cond_51
move-object v0, v2
goto :goto_3e
.end method
.method private static b(Landroid/content/Context;Ljava/lang/String;I)Z
.registers 13
const/4 v9, 0x3
const/4 v8, 0x2
const/4 v2, 0x0
const/4 v1, 0x1
if-eqz p1, :cond_38
const-string/jumbo v0, "http.proxyHost"
invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
const-string/jumbo v0, "http.proxyPort"
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
const-string/jumbo v0, "https.proxyHost"
invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
const-string/jumbo v0, "https.proxyPort"
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:cond_38
const-string/jumbo v0, "android.app.Application"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const-string/jumbo v3, "mLoadedApk"
invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
const-string/jumbo v3, "android.app.LoadedApk"
invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v3
const-string/jumbo v4, "mReceivers"
invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_6c
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_74
move v0, v2
:goto_73
return v0
:cond_74
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_82
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_6c
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "ProxyChangeListener"
invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_82
const-string/jumbo v0, "onReceive"
new-array v3, v8, [Ljava/lang/Class;
const-class v6, Landroid/content/Context;
aput-object v6, v3, v2
const-class v6, Landroid/content/Intent;
aput-object v6, v3, v1
invoke-virtual {v5, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v3
new-instance v5, Landroid/content/Intent;
const-string/jumbo v0, "android.intent.action.PROXY_CHANGE"
invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string/jumbo v0, "android.net.ProxyProperties"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
new-array v6, v9, [Ljava/lang/Class;
const-class v7, Ljava/lang/String;
aput-object v7, v6, v2
sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v7, v6, v1
const-class v7, Ljava/lang/String;
aput-object v7, v6, v8
invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
if-eqz p1, :cond_f9
new-array v6, v9, [Ljava/lang/Object;
aput-object p1, v6, v2
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v6, v1
const/4 v7, 0x0
aput-object v7, v6, v8
invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
const-string/jumbo v6, "proxy"
check-cast v0, Landroid/os/Parcelable;
invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
:goto_ed
new-array v0, v8, [Ljava/lang/Object;
aput-object p0, v0, v2
aput-object v5, v0, v1
invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move v0, v1
goto/16 :goto_73
:cond_f9
const-string/jumbo v0, "proxy"
const-string/jumbo v6, ""
invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
goto :goto_ed
.end method