.class public final Lcom/facebook/android/Util;
.super Ljava/lang/Object;
.source "Util.java"
.field private static final UTF8:Ljava/lang/String; = "UTF-8"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
.registers 12
const/4 v10, 0x1
new-instance v5, Landroid/os/Bundle;
invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
if-eqz p0, :cond_4b
const-string v7, "&"
invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
move-object v0, v1
array-length v3, v0
const/4 v2, 0x0
:goto_11
if-ge v2, v3, :cond_4b
aget-object v4, v0, v2
const-string v7, "="
invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v6
:try_start_1b
array-length v7, v6
const/4 v8, 0x2
if-ne v7, v8, :cond_37
const/4 v7, 0x0
aget-object v7, v6, v7
const-string v8, "UTF-8"
invoke-static {v7, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
const/4 v8, 0x1
aget-object v8, v6, v8
const-string v9, "UTF-8"
invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_34
:cond_34
add-int/lit8 v2, v2, 0x1
goto :goto_11
:cond_37
array-length v7, v6
if-ne v7, v10, :cond_34
const/4 v7, 0x0
aget-object v7, v6, v7
const-string v8, "UTF-8"
invoke-static {v7, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
const-string v8, ""
invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:try_end_48
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_48} :catch_49
goto :goto_34
:catch_49
move-exception v7
goto :goto_34
:cond_4b
return-object v5
.end method
.method public static parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
.registers 6
const-string v3, "fbconnect"
const-string v4, "http"
invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object p0
:try_start_8
new-instance v2, Ljava/net/URL;
invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/facebook/android/Util;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
invoke-virtual {v2}, Ljava/net/URL;->getRef()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/facebook/android/Util;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
:try_end_20
.catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_20} :catch_21
:goto_20
return-object v0
:catch_21
move-exception v1
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
goto :goto_20
.end method