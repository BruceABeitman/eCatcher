.class public Lcom/twidroid/net/a/b/j;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "http://api.plixi.com/api//tpapi.svc/json"
.field static final b:Ljava/lang/String; = "LockerzService"
.field static final c:Z = false
.field public static final d:Ljava/lang/String; = "74ee0898-9d8a-4101-87eb-24d9c44f2319"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a([Lorg/apache/http/Header;Lcom/twidroid/net/a/b/l;Lcom/twidroid/net/a/b/n;J)I
.registers 8
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://api.plixi.com/api//tpapi.svc/json/users/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p2, Lcom/twidroid/net/a/b/n;->a:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/comments/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p1, Lcom/twidroid/net/a/b/l;->a:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/twidroid/net/a/b/j;->c([Lorg/apache/http/Header;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public static a([Lorg/apache/http/Header;)Lcom/twidroid/net/a/b/n;
.registers 4
:try_start_0
const-string v0, "http://api.plixi.com/api//tpapi.svc/json/oauthsignin"
invoke-static {p0, v0}, Lcom/twidroid/net/a/b/j;->a([Lorg/apache/http/Header;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/twidroid/net/a/b/n;
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-direct {v1, v2}, Lcom/twidroid/net/a/b/n;-><init>(Lorg/json/JSONObject;)V
:try_end_10
.catch Lcom/twidroid/net/a/b/m; {:try_start_0 .. :try_end_10} :catch_11
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_10} :catch_1b
return-object v1
:catch_11
move-exception v0
invoke-virtual {v0}, Lcom/twidroid/net/a/b/m;->printStackTrace()V
new-instance v1, Lcom/twidroid/net/a/b/m;
invoke-direct {v1, v0}, Lcom/twidroid/net/a/b/m;-><init>(Ljava/lang/Exception;)V
throw v1
:catch_1b
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
new-instance v1, Lcom/twidroid/net/a/b/m;
invoke-direct {v1, v0}, Lcom/twidroid/net/a/b/m;-><init>(Ljava/lang/Exception;)V
throw v1
.end method
.method public static a([Lorg/apache/http/Header;Ljava/lang/String;)Ljava/lang/String;
.registers 7
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
array-length v2, p0
const/4 v0, 0x0
:goto_7
if-ge v0, v2, :cond_19
aget-object v3, p0, v0
invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;
move-result-object v4
invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_19
const-string v0, "TPISOAUTH"
const-string v2, "True"
invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "TPSERVICE"
const-string v2, "Twitter"
invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "TPAPIKEY"
const-string v2, "74ee0898-9d8a-4101-87eb-24d9c44f2319"
invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/ubermedia/net/e;
invoke-direct {v0}, Lcom/ubermedia/net/e;-><init>()V
invoke-static {p1, v1, v0}, Lcom/ubermedia/net/d;->a(Ljava/lang/String;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0}, Lcom/ubermedia/net/e;->a()I
move-result v2
const/16 v3, 0xc8
if-eq v2, v3, :cond_9a
const-string v2, "LockerzService"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "--------Error--------Response Status line code:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Lcom/ubermedia/net/e;->b()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "LockerzService"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Response: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Lcom/twidroid/net/a/b/m;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Service call returned status code"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Lcom/ubermedia/net/e;->a()I
move-result v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "result: "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Lcom/twidroid/net/a/b/m;-><init>(Ljava/lang/String;)V
throw v2
:cond_9a
return-object v1
.end method
.method public static a([Lorg/apache/http/Header;J)Ljava/util/ArrayList;
.registers 8
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "http://api.plixi.com/api//tpapi.svc/json/photos/"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "/comments"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/twidroid/net/a/b/j;->a([Lorg/apache/http/Header;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:try_start_22
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v0, "List"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v2
const/4 v0, 0x0
:goto_2e
invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v0, v3, :cond_4d
new-instance v3, Lcom/twidroid/net/a/b/k;
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v4
invoke-direct {v3, v4}, Lcom/twidroid/net/a/b/k;-><init>(Lorg/json/JSONObject;)V
invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_40
.catch Lorg/json/JSONException; {:try_start_22 .. :try_end_40} :catch_43
add-int/lit8 v0, v0, 0x1
goto :goto_2e
:catch_43
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
new-instance v1, Lcom/twidroid/net/a/b/m;
invoke-direct {v1, v0}, Lcom/twidroid/net/a/b/m;-><init>(Ljava/lang/Exception;)V
throw v1
:cond_4d
return-object v1
.end method
.method public static a([Lorg/apache/http/Header;Lcom/twidroid/net/a/b/l;)Z
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://api.plixi.com/api//tpapi.svc/json/photos/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p1, Lcom/twidroid/net/a/b/l;->a:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "LockerzService"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Delete photo: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {p0, v0}, Lcom/twidroid/net/a/b/j;->c([Lorg/apache/http/Header;Ljava/lang/String;)I
move-result v0
const/16 v1, 0xc8
if-ne v0, v1, :cond_37
const/4 v0, 0x1
:goto_36
return v0
:cond_37
const/4 v0, 0x0
goto :goto_36
.end method
.method public static a([Lorg/apache/http/Header;Lcom/twidroid/net/a/b/l;Lcom/twidroid/net/a/b/n;Ljava/lang/String;)Z
.registers 10
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://api.plixi.com/api//tpapi.svc/json/users/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p2, Lcom/twidroid/net/a/b/n;->a:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/comments/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p1, Lcom/twidroid/net/a/b/l;->a:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
array-length v3, p0
const/4 v0, 0x0
:goto_28
if-ge v0, v3, :cond_3a
aget-object v4, p0, v0
invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;
move-result-object v5
invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_28
:cond_3a
const-string v0, "TPISOAUTH"
const-string v3, "True"
invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "TPSERVICE"
const-string v3, "Twitter"
invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "TPAPIKEY"
const-string v3, "74ee0898-9d8a-4101-87eb-24d9c44f2319"
invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "Content-Type"
const-string v3, "application/x-www-form-urlencoded"
invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/ubermedia/net/e;
invoke-direct {v0}, Lcom/ubermedia/net/e;-><init>()V
const/4 v3, 0x0
invoke-static {v1, v3, v2, v0}, Lcom/ubermedia/net/d;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0}, Lcom/ubermedia/net/e;->a()I
move-result v2
const/16 v3, 0xc8
if-eq v2, v3, :cond_c3
const-string v2, "LockerzService"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Photo Comment Error:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Lcom/ubermedia/net/e;->b()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "LockerzService"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Response: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v2, Lcom/twidroid/net/a/b/m;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Service call returned status code"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Lcom/ubermedia/net/e;->a()I
move-result v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "result: "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Lcom/twidroid/net/a/b/m;-><init>(Ljava/lang/String;)V
throw v2
:cond_c3
const/4 v0, 0x1
return v0
.end method
.method public static b([Lorg/apache/http/Header;J)I
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://api.plixi.com/api//tpapi.svc/json/photos/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/flag"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/twidroid/net/a/b/j;->d([Lorg/apache/http/Header;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public static b([Lorg/apache/http/Header;Ljava/lang/String;)I
.registers 7
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
array-length v2, p0
const/4 v0, 0x0
:goto_7
if-ge v0, v2, :cond_19
aget-object v3, p0, v0
invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;
move-result-object v4
invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_19
const-string v0, "TPISOAUTH"
const-string v2, "True"
invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "TPSERVICE"
const-string v2, "Twitter"
invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "TPAPIKEY"
const-string v2, "74ee0898-9d8a-4101-87eb-24d9c44f2319"
invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/ubermedia/net/e;
invoke-direct {v0}, Lcom/ubermedia/net/e;-><init>()V
const/4 v2, 0x0
invoke-static {p1, v2, v1, v0}, Lcom/ubermedia/net/d;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0}, Lcom/ubermedia/net/e;->a()I
move-result v2
const/16 v3, 0xc8
if-eq v2, v3, :cond_79
const-string v2, "LockerzService"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "ApiPut <>200:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Lcom/ubermedia/net/e;->b()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "LockerzService"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Response: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/ubermedia/net/e;->a()I
move-result v0
:goto_78
return v0
:cond_79
invoke-virtual {v0}, Lcom/ubermedia/net/e;->a()I
move-result v0
goto :goto_78
.end method
.method public static c([Lorg/apache/http/Header;J)I
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://api.plixi.com/api//tpapi.svc/json/photos/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/ThumbsUp"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/twidroid/net/a/b/j;->b([Lorg/apache/http/Header;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public static c([Lorg/apache/http/Header;Ljava/lang/String;)I
.registers 7
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
array-length v2, p0
const/4 v0, 0x0
:goto_7
if-ge v0, v2, :cond_19
aget-object v3, p0, v0
invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;
move-result-object v4
invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_19
const-string v0, "TPISOAUTH"
const-string v2, "True"
invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "TPSERVICE"
const-string v2, "Twitter"
invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "TPAPIKEY"
const-string v2, "74ee0898-9d8a-4101-87eb-24d9c44f2319"
invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/ubermedia/net/e;
invoke-direct {v0}, Lcom/ubermedia/net/e;-><init>()V
const/4 v2, 0x0
invoke-static {p1, v2, v1, v0}, Lcom/ubermedia/net/d;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;
invoke-virtual {v0}, Lcom/ubermedia/net/e;->a()I
move-result v1
const/16 v2, 0xc8
if-eq v1, v2, :cond_60
const-string v1, "LockerzService"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "ApiDelete <>200:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Lcom/ubermedia/net/e;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/ubermedia/net/e;->a()I
move-result v0
:goto_5f
return v0
:cond_60
invoke-virtual {v0}, Lcom/ubermedia/net/e;->a()I
move-result v0
goto :goto_5f
.end method
.method public static d([Lorg/apache/http/Header;J)I
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://api.plixi.com/api//tpapi.svc/json/photos/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/thumbsdown"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/twidroid/net/a/b/j;->b([Lorg/apache/http/Header;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public static d([Lorg/apache/http/Header;Ljava/lang/String;)I
.registers 7
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
array-length v2, p0
const/4 v0, 0x0
:goto_7
if-ge v0, v2, :cond_19
aget-object v3, p0, v0
invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;
move-result-object v4
invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_19
const-string v0, "TPISOAUTH"
const-string v2, "True"
invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "TPSERVICE"
const-string v2, "Twitter"
invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "TPAPIKEY"
const-string v2, "74ee0898-9d8a-4101-87eb-24d9c44f2319"
invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/ubermedia/net/e;
invoke-direct {v0}, Lcom/ubermedia/net/e;-><init>()V
const/4 v2, 0x0
invoke-static {p1, v2, v1, v0}, Lcom/ubermedia/net/d;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/ubermedia/net/e;)Ljava/lang/String;
invoke-virtual {v0}, Lcom/ubermedia/net/e;->a()I
move-result v1
const/16 v2, 0xc8
if-eq v1, v2, :cond_60
const-string v1, "LockerzService"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "ApiPost <>200:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Lcom/ubermedia/net/e;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/ubermedia/net/e;->a()I
move-result v0
:goto_5f
return v0
:cond_60
invoke-virtual {v0}, Lcom/ubermedia/net/e;->a()I
move-result v0
goto :goto_5f
.end method
.method public static e([Lorg/apache/http/Header;Ljava/lang/String;)Lcom/twidroid/net/a/b/l;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://api.plixi.com/api//tpapi.svc/json/metadatafromurl?url="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/twidroid/net/a/b/j;->a([Lorg/apache/http/Header;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:try_start_17
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
:try_end_1c
.catch Lorg/json/JSONException; {:try_start_17 .. :try_end_1c} :catch_22
new-instance v0, Lcom/twidroid/net/a/b/l;
invoke-direct {v0, v1}, Lcom/twidroid/net/a/b/l;-><init>(Lorg/json/JSONObject;)V
return-object v0
:catch_22
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
new-instance v1, Lcom/twidroid/net/a/b/m;
invoke-direct {v1, v0}, Lcom/twidroid/net/a/b/m;-><init>(Ljava/lang/Exception;)V
throw v1
.end method