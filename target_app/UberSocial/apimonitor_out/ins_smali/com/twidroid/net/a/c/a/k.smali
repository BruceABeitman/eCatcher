.class public Lcom/twidroid/net/a/c/a/k;
.super Lcom/twidroid/net/a/c/a/d;
.source "SourceFile"
.field private static final l:Ljava/lang/String; = "UserStream"
.method public constructor <init>(Lcom/twidroid/model/twitter/c;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/net/a/c/a/d;-><init>(Lcom/twidroid/model/twitter/c;)V
return-void
.end method
.method private a(Lorg/json/JSONArray;)[J
.registers 7
const/4 v1, 0x0
if-nez p1, :cond_6
new-array v0, v1, [J
:cond_5
return-object v0
:cond_6
invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
move-result v2
new-array v0, v2, [J
:goto_c
if-ge v1, v2, :cond_5
invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getLong(I)J
move-result-wide v3
aput-wide v3, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_c
.end method
.method private b(Lorg/json/JSONObject;)V
.registers 9
:try_start_0
const-string v0, "event"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/net/a/c/a/m;->valueOf(Ljava/lang/String;)Lcom/twidroid/net/a/c/a/m;
:try_end_d
.catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_d} :catch_40
move-result-object v1
new-instance v2, Lcom/twidroid/model/twitter/User;
const-string v0, "target"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
invoke-direct {v2, v0}, Lcom/twidroid/model/twitter/User;-><init>(Lorg/json/JSONObject;)V
new-instance v3, Lcom/twidroid/model/twitter/User;
const-string v0, "source"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
invoke-direct {v3, v0}, Lcom/twidroid/model/twitter/User;-><init>(Lorg/json/JSONObject;)V
sget-object v0, Lcom/twidroid/net/a/c/a/k$2;->a:[I
invoke-virtual {v1}, Lcom/twidroid/net/a/c/a/m;->ordinal()I
move-result v4
aget v0, v0, v4
packed-switch v0, :pswitch_data_74
new-instance v0, Lcom/twidroid/net/a/c/a/l;
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/net/a/c/a/l;-><init>(Lcom/twidroid/net/a/c/a/m;Lcom/twidroid/model/twitter/User;Lcom/twidroid/model/twitter/User;)V
:goto_34
iget-object v1, p0, Lcom/twidroid/net/a/c/a/k;->g:Lcom/twidroid/net/a/c/a/j;
if-eqz v1, :cond_3f
iget-object v1, p0, Lcom/twidroid/net/a/c/a/k;->g:Lcom/twidroid/net/a/c/a/j;
iget-object v2, p0, Lcom/twidroid/net/a/c/a/k;->e:Lcom/twidroid/model/twitter/c;
invoke-interface {v1, v2, v0}, Lcom/twidroid/net/a/c/a/j;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/net/a/c/a/l;)V
:goto_3f
:cond_3f
return-void
:catch_40
move-exception v0
const-string v1, "UserStream"
const-string v2, "Unsupported event detected!"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/twidroid/net/a/c/a/k$1;
invoke-direct {v1, p0}, Lcom/twidroid/net/a/c/a/k$1;-><init>(Lcom/twidroid/net/a/c/a/k;)V
invoke-static {v0, v1}, Lcom/twidroid/net/hockeyapp/android/g;->a(Ljava/lang/Throwable;Lcom/twidroid/net/hockeyapp/android/d;)V
goto :goto_3f
:pswitch_51
new-instance v0, Lcom/twidroid/net/a/c/a/l;
const-string v4, "target_object"
invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v4
invoke-static {v4}, Lcom/twidroid/model/twitter/Tweet;->b(Lorg/json/JSONObject;)Lcom/twidroid/model/twitter/Tweet;
move-result-object v4
invoke-direct {v0, v1, v2, v3, v4}, Lcom/twidroid/net/a/c/a/l;-><init>(Lcom/twidroid/net/a/c/a/m;Lcom/twidroid/model/twitter/User;Lcom/twidroid/model/twitter/User;Ljava/lang/Object;)V
goto :goto_34
:pswitch_61
new-instance v0, Lcom/twidroid/net/a/c/a/l;
new-instance v4, Lcom/twidroid/model/twitter/d;
const-string v5, "target_object"
invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v5
iget-object v6, p0, Lcom/twidroid/net/a/c/a/k;->e:Lcom/twidroid/model/twitter/c;
invoke-direct {v4, v5, v6}, Lcom/twidroid/model/twitter/d;-><init>(Lorg/json/JSONObject;Lcom/twidroid/model/twitter/c;)V
invoke-direct {v0, v1, v2, v3, v4}, Lcom/twidroid/net/a/c/a/l;-><init>(Lcom/twidroid/net/a/c/a/m;Lcom/twidroid/model/twitter/User;Lcom/twidroid/model/twitter/User;Ljava/lang/Object;)V
goto :goto_34
:pswitch_data_74
.packed-switch 0x1
:pswitch_51
:pswitch_51
:pswitch_61
:pswitch_61
:pswitch_61
:pswitch_61
:pswitch_61
:pswitch_61
:pswitch_61
.end packed-switch
.end method
.method protected a(Lorg/json/JSONObject;)V
.registers 5
const-string v0, "friends"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/twidroid/net/a/c/a/k;->g:Lcom/twidroid/net/a/c/a/j;
if-eqz v0, :cond_1d
const-string v0, "friends"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/net/a/c/a/k;->a(Lorg/json/JSONArray;)[J
move-result-object v0
iget-object v1, p0, Lcom/twidroid/net/a/c/a/k;->g:Lcom/twidroid/net/a/c/a/j;
iget-object v2, p0, Lcom/twidroid/net/a/c/a/k;->e:Lcom/twidroid/model/twitter/c;
invoke-interface {v1, v2, v0}, Lcom/twidroid/net/a/c/a/j;->a(Lcom/twidroid/model/twitter/c;[J)V
:goto_1d
:cond_1d
return-void
:cond_1e
const-string v0, "event"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1d
invoke-direct {p0, p1}, Lcom/twidroid/net/a/c/a/k;->b(Lorg/json/JSONObject;)V
goto :goto_1d
.end method
.method public c()Ljava/lang/String;
.registers 2
const-string v0, "userstream.twitter.com"
return-object v0
.end method
.method public d()Ljava/lang/String;
.registers 2
const-string v0, "user.json"
return-object v0
.end method