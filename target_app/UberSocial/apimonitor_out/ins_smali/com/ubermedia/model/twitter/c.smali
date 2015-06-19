.class public Lcom/ubermedia/model/twitter/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:J
.field private d:J
.field private e:Z
.field private f:Z
.field private g:Z
.field private h:Z
.field private i:Z
.field private j:Z
.field private k:Z
.field private l:Z
.field private m:I
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJZZZZZZZZ)V
.registers 16
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/ubermedia/model/twitter/c;->m:I
iput-object p1, p0, Lcom/ubermedia/model/twitter/c;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/ubermedia/model/twitter/c;->b:Ljava/lang/String;
iput-wide p3, p0, Lcom/ubermedia/model/twitter/c;->c:J
iput-wide p5, p0, Lcom/ubermedia/model/twitter/c;->d:J
iput-boolean p7, p0, Lcom/ubermedia/model/twitter/c;->e:Z
iput-boolean p8, p0, Lcom/ubermedia/model/twitter/c;->f:Z
iput-boolean p9, p0, Lcom/ubermedia/model/twitter/c;->g:Z
iput-boolean p10, p0, Lcom/ubermedia/model/twitter/c;->h:Z
iput-boolean p11, p0, Lcom/ubermedia/model/twitter/c;->i:Z
iput-boolean p12, p0, Lcom/ubermedia/model/twitter/c;->j:Z
iput-boolean p13, p0, Lcom/ubermedia/model/twitter/c;->k:Z
iput-boolean p14, p0, Lcom/ubermedia/model/twitter/c;->l:Z
return-void
.end method
.method public constructor <init>(Lorg/json/JSONObject;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/ubermedia/model/twitter/c;->m:I
:try_start_6
const-string v0, "source"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v1, "target"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
const-string v2, "screen_name"
invoke-static {v2, v1}, Lcom/ubermedia/model/twitter/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/ubermedia/model/twitter/c;->b:Ljava/lang/String;
const-string v2, "id"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
move-result-wide v1
iput-wide v1, p0, Lcom/ubermedia/model/twitter/c;->d:J
const-string v1, "screen_name"
invoke-static {v1, v0}, Lcom/ubermedia/model/twitter/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/ubermedia/model/twitter/c;->a:Ljava/lang/String;
const-string v1, "id"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
move-result-wide v1
iput-wide v1, p0, Lcom/ubermedia/model/twitter/c;->c:J
const-string v1, "blocking"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lcom/ubermedia/model/twitter/c;->e:Z
const-string v1, "marked_spam"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lcom/ubermedia/model/twitter/c;->f:Z
const-string v1, "all_replies"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lcom/ubermedia/model/twitter/c;->g:Z
const-string v1, "followed_by"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lcom/ubermedia/model/twitter/c;->h:Z
const-string v1, "following"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lcom/ubermedia/model/twitter/c;->i:Z
const-string v1, "can_dm"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lcom/ubermedia/model/twitter/c;->j:Z
const-string v1, "notifications_enabled"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lcom/ubermedia/model/twitter/c;->k:Z
const-string v1, "want_retweets"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/ubermedia/model/twitter/c;->l:Z
iget-boolean v0, p0, Lcom/ubermedia/model/twitter/c;->i:Z
if-eqz v0, :cond_7e
iget-boolean v0, p0, Lcom/ubermedia/model/twitter/c;->h:Z
if-eqz v0, :cond_7e
const/4 v0, 0x3
iput v0, p0, Lcom/ubermedia/model/twitter/c;->m:I
:goto_7d
:cond_7d
return-void
:cond_7e
iget-boolean v0, p0, Lcom/ubermedia/model/twitter/c;->i:Z
if-eqz v0, :cond_93
const/4 v0, 0x1
iput v0, p0, Lcom/ubermedia/model/twitter/c;->m:I
:try_end_85
.catch Lorg/json/JSONException; {:try_start_6 .. :try_end_85} :catch_86
goto :goto_7d
:catch_86
move-exception v0
invoke-static {v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/Exception;)V
new-instance v0, Lcom/ubermedia/net/a/a/a;
const-string v1, "Json parser failed in FriendshipStatus"
const/4 v2, 0x4
invoke-direct {v0, v1, v2}, Lcom/ubermedia/net/a/a/a;-><init>(Ljava/lang/String;I)V
throw v0
:cond_93
:try_start_93
iget-boolean v0, p0, Lcom/ubermedia/model/twitter/c;->h:Z
if-eqz v0, :cond_7d
const/4 v0, 0x2
iput v0, p0, Lcom/ubermedia/model/twitter/c;->m:I
:try_end_9a
.catch Lorg/json/JSONException; {:try_start_93 .. :try_end_9a} :catch_86
goto :goto_7d
.end method
.method protected static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
.registers 5
invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v0, ""
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x9
if-ge v0, v2, :cond_1e
new-instance v0, Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V
goto :goto_d
:cond_1e
new-instance v0, Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
goto :goto_d
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ubermedia/model/twitter/c;->a:Ljava/lang/String;
return-object v0
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ubermedia/model/twitter/c;->b:Ljava/lang/String;
return-object v0
.end method
.method public c()J
.registers 3
iget-wide v0, p0, Lcom/ubermedia/model/twitter/c;->c:J
return-wide v0
.end method
.method public d()J
.registers 3
iget-wide v0, p0, Lcom/ubermedia/model/twitter/c;->d:J
return-wide v0
.end method
.method public e()Z
.registers 2
iget-boolean v0, p0, Lcom/ubermedia/model/twitter/c;->e:Z
return v0
.end method
.method public f()Z
.registers 2
iget-boolean v0, p0, Lcom/ubermedia/model/twitter/c;->f:Z
return v0
.end method
.method public g()Z
.registers 2
iget-boolean v0, p0, Lcom/ubermedia/model/twitter/c;->g:Z
return v0
.end method
.method public h()Z
.registers 2
iget-boolean v0, p0, Lcom/ubermedia/model/twitter/c;->h:Z
return v0
.end method
.method public i()Z
.registers 2
iget-boolean v0, p0, Lcom/ubermedia/model/twitter/c;->i:Z
return v0
.end method
.method public j()Z
.registers 2
iget-boolean v0, p0, Lcom/ubermedia/model/twitter/c;->j:Z
return v0
.end method
.method public k()Z
.registers 2
iget-boolean v0, p0, Lcom/ubermedia/model/twitter/c;->k:Z
return v0
.end method
.method public l()Z
.registers 2
iget-boolean v0, p0, Lcom/ubermedia/model/twitter/c;->l:Z
return v0
.end method
.method public m()I
.registers 2
iget v0, p0, Lcom/ubermedia/model/twitter/c;->m:I
return v0
.end method