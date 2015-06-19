.class public Lcom/mologiq/analytics/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Z
.field private e:Ljava/lang/String;
.field private f:I
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/String;
.field private i:Lcom/mologiq/analytics/d;
.field private j:Lcom/mologiq/analytics/d;
.field private k:Lcom/mologiq/analytics/d;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/c;->a:Ljava/lang/String;
return-object v0
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/mologiq/analytics/c;->f:I
return-void
.end method
.method public a(Lcom/mologiq/analytics/d;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/c;->i:Lcom/mologiq/analytics/d;
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/c;->a:Ljava/lang/String;
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/mologiq/analytics/c;->d:Z
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/c;->b:Ljava/lang/String;
return-object v0
.end method
.method public b(Lcom/mologiq/analytics/d;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/c;->j:Lcom/mologiq/analytics/d;
return-void
.end method
.method public b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/c;->b:Ljava/lang/String;
return-void
.end method
.method public c()I
.registers 2
iget v0, p0, Lcom/mologiq/analytics/c;->f:I
return v0
.end method
.method public c(Lcom/mologiq/analytics/d;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/c;->k:Lcom/mologiq/analytics/d;
return-void
.end method
.method public c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/c;->g:Ljava/lang/String;
return-void
.end method
.method public d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/c;->g:Ljava/lang/String;
return-object v0
.end method
.method public d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/c;->h:Ljava/lang/String;
return-void
.end method
.method public e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/c;->h:Ljava/lang/String;
return-object v0
.end method
.method public e(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/c;->c:Ljava/lang/String;
return-void
.end method
.method public f()Lcom/mologiq/analytics/d;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/c;->i:Lcom/mologiq/analytics/d;
return-object v0
.end method
.method public f(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/c;->e:Ljava/lang/String;
return-void
.end method
.method public g()Lcom/mologiq/analytics/d;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/c;->j:Lcom/mologiq/analytics/d;
return-object v0
.end method
.method public h()Lcom/mologiq/analytics/d;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/c;->k:Lcom/mologiq/analytics/d;
return-object v0
.end method
.method public i()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/c;->c:Ljava/lang/String;
return-object v0
.end method
.method public j()Z
.registers 2
iget-boolean v0, p0, Lcom/mologiq/analytics/c;->d:Z
return v0
.end method
.method public k()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/c;->e:Ljava/lang/String;
return-object v0
.end method
.method public l()Ljava/lang/String;
.registers 4
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string v1, "androidadvertisingid"
iget-object v2, p0, Lcom/mologiq/analytics/c;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "androidadvertisingidoptout"
iget-boolean v2, p0, Lcom/mologiq/analytics/c;->d:Z
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v1, "androidid"
iget-object v2, p0, Lcom/mologiq/analytics/c;->e:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "v"
iget-object v2, p0, Lcom/mologiq/analytics/c;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "d"
iget-object v2, p0, Lcom/mologiq/analytics/c;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "p"
iget-object v2, p0, Lcom/mologiq/analytics/c;->g:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "wifi"
iget v2, p0, Lcom/mologiq/analytics/c;->f:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string v1, "ip"
iget-object v2, p0, Lcom/mologiq/analytics/c;->h:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v1, p0, Lcom/mologiq/analytics/c;->k:Lcom/mologiq/analytics/d;
if-eqz v1, :cond_4c
const-string v1, "clicks"
iget-object v2, p0, Lcom/mologiq/analytics/c;->k:Lcom/mologiq/analytics/d;
invoke-virtual {v2}, Lcom/mologiq/analytics/d;->g()Lorg/json/JSONObject;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_4c
iget-object v1, p0, Lcom/mologiq/analytics/c;->i:Lcom/mologiq/analytics/d;
if-eqz v1, :cond_5b
const-string v1, "impressions"
iget-object v2, p0, Lcom/mologiq/analytics/c;->i:Lcom/mologiq/analytics/d;
invoke-virtual {v2}, Lcom/mologiq/analytics/d;->g()Lorg/json/JSONObject;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_5b
iget-object v1, p0, Lcom/mologiq/analytics/c;->j:Lcom/mologiq/analytics/d;
if-eqz v1, :cond_6a
const-string v1, "requests"
iget-object v2, p0, Lcom/mologiq/analytics/c;->j:Lcom/mologiq/analytics/d;
invoke-virtual {v2}, Lcom/mologiq/analytics/d;->g()Lorg/json/JSONObject;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_6a
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method