.class public final Lcom/facebook/b/m;
.super Ljava/lang/Object;
.source "Util.java"
.field private static a:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/facebook/b/m;->a:Z
return-void
.end method
.method public static a(Ljava/lang/String;)Landroid/os/Bundle;
.registers 3
const-string v0, "fbconnect"
const-string v1, "http"
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
:try_start_8
new-instance v1, Ljava/net/URL;
invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/b/m;->c(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
invoke-virtual {v1}, Ljava/net/URL;->getRef()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/facebook/b/m;->c(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
:try_end_20
.catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_20} :catch_21
:goto_20
return-object v0
:catch_21
move-exception v0
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
goto :goto_20
.end method
.method public static a(Landroid/os/Bundle;)Ljava/lang/String;
.registers 7
if-nez p0, :cond_5
const-string v0, ""
:goto_4
return-object v0
:cond_5
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const/4 v0, 0x1
invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
move v1, v0
:cond_14
:goto_14
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_58
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v4
instance-of v4, v4, Ljava/lang/String;
if-eqz v4, :cond_14
if-eqz v1, :cond_52
const/4 v1, 0x0
:goto_2b
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_14
:cond_52
const-string v4, "&"
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_2b
:cond_58
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
.end method
.method private static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
.registers 8
if-nez p0, :cond_5
const-string v0, ""
:goto_4
return-object v0
:cond_5
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_12
:goto_12
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
instance-of v4, v1, Ljava/lang/String;
if-eqz v4, :cond_12
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Content-Disposition: form-data; name=\""
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, "\"\r\n\r\n"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object v0, v1
check-cast v0, Ljava/lang/String;
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "\r\n--"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\r\n"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_12
:cond_5e
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_4
.end method
.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
.registers 5
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
new-instance v2, Ljava/io/BufferedReader;
new-instance v0, Ljava/io/InputStreamReader;
invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
const/16 v3, 0x3e8
invoke-direct {v2, v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v0
:goto_15
if-eqz v0, :cond_1f
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v0
goto :goto_15
:cond_1f
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
.registers 12
const/4 v8, 0x1
const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
const-string v4, "\r\n"
const-string v0, "GET"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_28
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "?"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p2}, Lcom/facebook/b/m;->a(Landroid/os/Bundle;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
:cond_28
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " URL: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/facebook/b/m;->a()V
new-instance v0, Ljava/net/URL;
invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
const-string v1, "User-Agent"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;
move-result-object v5
const-string v6, "http.agent"
invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v5, " FacebookAndroidSDK"
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "GET"
invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1ba
new-instance v5, Landroid/os/Bundle;
invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_7f
:cond_7f
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_9c
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
move-object v2, v1
check-cast v2, Ljava/lang/String;
invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
instance-of v7, v1, [B
if-eqz v7, :cond_7f
check-cast v1, [B
check-cast v1, [B
invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
goto :goto_7f
:cond_9c
const-string v1, "method"
invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_a9
const-string v1, "method"
invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_a9
const-string v1, "access_token"
invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_c0
const-string v1, "access_token"
invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "access_token"
invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_c0
const-string v1, "POST"
invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
const-string v1, "Content-Type"
new-instance v2, Ljava/lang/StringBuilder;
const-string v6, "multipart/form-data;boundary="
invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V
const-string v1, "Connection"
const-string v2, "Keep-Alive"
invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
new-instance v2, Ljava/io/BufferedOutputStream;
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
move-result-object v1
invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string v6, "--"
invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
invoke-static {p2, v3}, Lcom/facebook/b/m;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v6, "--"
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z
move-result v1
if-nez v1, :cond_1b7
invoke-virtual {v5}, Landroid/os/Bundle;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_147
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_1b7
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string v8, "Content-Disposition: form-data; filename=\""
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "\""
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B
move-result-object v7
invoke-virtual {v2, v7}, Ljava/io/OutputStream;->write([B)V
new-instance v7, Ljava/lang/StringBuilder;
const-string v8, "Content-Type: content/unknown"
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B
move-result-object v7
invoke-virtual {v2, v7}, Ljava/io/OutputStream;->write([B)V
invoke-virtual {v5, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
move-result-object v1
invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v7, "--"
invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
goto :goto_147
:cond_1b7
invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
:cond_1ba
:try_start_1ba
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v1
invoke-static {v1}, Lcom/facebook/b/m;->a(Ljava/io/InputStream;)Ljava/lang/String;
:try_end_1c1
.catch Ljava/io/FileNotFoundException; {:try_start_1ba .. :try_end_1c1} :catch_1c3
move-result-object v0
:goto_1c2
return-object v0
:catch_1c3
move-exception v1
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;
move-result-object v0
invoke-static {v0}, Lcom/facebook/b/m;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v0
goto :goto_1c2
.end method
.method public static a()V
.registers 1
sget-boolean v0, Lcom/facebook/b/m;->a:Z
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
return-void
.end method
.method public static b(Ljava/lang/String;)Lorg/json/JSONObject;
.registers 6
const-string v0, "false"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
new-instance v0, Lcom/facebook/b/i;
const-string v1, "request failed"
invoke-direct {v0, v1}, Lcom/facebook/b/i;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
const-string v0, "true"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
const-string p0, "{value : true}"
:cond_1a
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v1, "error"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_40
const-string v1, "error"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
new-instance v1, Lcom/facebook/b/i;
const-string v2, "message"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "type"
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const/4 v3, 0x0
invoke-direct {v1, v2, v0, v3}, Lcom/facebook/b/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
throw v1
:cond_40
const-string v1, "error_code"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_68
const-string v1, "error_msg"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_68
new-instance v1, Lcom/facebook/b/i;
const-string v2, "error_msg"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, ""
const-string v4, "error_code"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
invoke-direct {v1, v2, v3, v0}, Lcom/facebook/b/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
throw v1
:cond_68
const-string v1, "error_code"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_84
new-instance v1, Lcom/facebook/b/i;
const-string v2, "request failed"
const-string v3, ""
const-string v4, "error_code"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
invoke-direct {v1, v2, v3, v0}, Lcom/facebook/b/i;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
throw v1
:cond_84
const-string v1, "error_msg"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_98
new-instance v1, Lcom/facebook/b/i;
const-string v2, "error_msg"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/facebook/b/i;-><init>(Ljava/lang/String;)V
throw v1
:cond_98
const-string v1, "error_reason"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_ac
new-instance v1, Lcom/facebook/b/i;
const-string v2, "error_reason"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/facebook/b/i;-><init>(Ljava/lang/String;)V
throw v1
:cond_ac
return-object v0
.end method
.method private static c(Ljava/lang/String;)Landroid/os/Bundle;
.registers 9
const/4 v1, 0x0
new-instance v2, Landroid/os/Bundle;
invoke-direct {v2}, Landroid/os/Bundle;-><init>()V
if-eqz p0, :cond_31
const-string v0, "&"
invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
array-length v4, v3
move v0, v1
:goto_10
if-ge v0, v4, :cond_31
aget-object v5, v3, v0
const-string v6, "="
invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v5
array-length v6, v5
const/4 v7, 0x2
if-ne v6, v7, :cond_2e
aget-object v6, v5, v1
invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const/4 v7, 0x1
aget-object v5, v5, v7
invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_2e
add-int/lit8 v0, v0, 0x1
goto :goto_10
:cond_31
return-object v2
.end method