.class public final Lcom/instagram/share/tumblr/e;
.super Ljava/lang/Object;
.source "XAuthResponse.java"
.field private final a:Lcom/instagram/share/tumblr/g;
.method private constructor <init>(Lcom/instagram/share/tumblr/g;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/share/tumblr/e;->a:Lcom/instagram/share/tumblr/g;
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/share/tumblr/g;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/share/tumblr/e;-><init>(Lcom/instagram/share/tumblr/g;)V
return-void
.end method
.method private static a(Ljava/lang/String;)Lcom/instagram/share/tumblr/e;
.registers 9
const/4 v2, 0x2
const/4 v0, 0x0
if-nez p0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V
const-string v2, "&"
invoke-static {p0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/instagram/share/tumblr/f;
invoke-direct {v3}, Lcom/instagram/share/tumblr/f;-><init>()V
:try_start_16
array-length v4, v2
:goto_17
if-ge v0, v4, :cond_2e
aget-object v5, v2, v0
const-string v6, "="
const/4 v7, 0x2
invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;
move-result-object v5
const/4 v6, 0x0
aget-object v6, v5, v6
const/4 v7, 0x1
aget-object v5, v5, v7
invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_17
:cond_2e
const-string v0, "oauth_token"
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v3, v0}, Lcom/instagram/share/tumblr/f;->a(Ljava/lang/String;)Lcom/instagram/share/tumblr/f;
move-result-object v2
const-string v0, "oauth_token_secret"
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Lcom/instagram/share/tumblr/f;->b(Ljava/lang/String;)Lcom/instagram/share/tumblr/f;
:goto_45
:try_end_45
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_45} :catch_4a
invoke-virtual {v3}, Lcom/instagram/share/tumblr/f;->a()Lcom/instagram/share/tumblr/e;
move-result-object v0
goto :goto_5
:catch_4a
move-exception v0
invoke-virtual {v3, p0}, Lcom/instagram/share/tumblr/f;->c(Ljava/lang/String;)Lcom/instagram/share/tumblr/f;
goto :goto_45
.end method
.method static a(Lorg/apache/http/HttpResponse;)Lcom/instagram/share/tumblr/e;
.registers 3
const/4 v0, 0x0
:try_start_1
invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v1
invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
:try_end_8
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_e
move-result-object v0
:goto_9
invoke-static {v0}, Lcom/instagram/share/tumblr/e;->a(Ljava/lang/String;)Lcom/instagram/share/tumblr/e;
move-result-object v0
return-object v0
:catch_e
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_9
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/share/tumblr/e;->a:Lcom/instagram/share/tumblr/g;
invoke-static {v0}, Lcom/instagram/share/tumblr/g;->a(Lcom/instagram/share/tumblr/g;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/share/tumblr/e;->a:Lcom/instagram/share/tumblr/g;
invoke-static {v0}, Lcom/instagram/share/tumblr/g;->b(Lcom/instagram/share/tumblr/g;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final c()Z
.registers 2
iget-object v0, p0, Lcom/instagram/share/tumblr/e;->a:Lcom/instagram/share/tumblr/g;
invoke-static {v0}, Lcom/instagram/share/tumblr/g;->c(Lcom/instagram/share/tumblr/g;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method