.class final Lcom/bbm/d/v;
.super Lcom/bbm/d/b/m;
.source "BbmdsModel.java"
.field final synthetic a:Lcom/bbm/d/a;
.method constructor <init>(Lcom/bbm/d/a;Lcom/bbm/j/r;)V
.registers 3
iput-object p1, p0, Lcom/bbm/d/v;->a:Lcom/bbm/d/a;
invoke-direct {p0, p2}, Lcom/bbm/d/b/m;-><init>(Lcom/bbm/j/r;)V
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)Z
.registers 6
check-cast p1, Lcom/bbm/d/es;
iget-boolean v0, p1, Lcom/bbm/d/es;->t:Z
if-eqz v0, :cond_1e
iget-wide v0, p1, Lcom/bbm/d/es;->p:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-gtz v0, :cond_1c
iget-object v0, p1, Lcom/bbm/d/es;->d:Lorg/json/JSONObject;
const-string v1, "message"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1e
:cond_1c
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method