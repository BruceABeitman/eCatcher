.class final Lcom/bbm/util/en;
.super Ljava/lang/Object;
.source "UpdatesFragmentUtil.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/util/em;
.method constructor <init>(Lcom/bbm/util/em;)V
.registers 2
iput-object p1, p0, Lcom/bbm/util/en;->a:Lcom/bbm/util/em;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 5
:try_start_0
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
const-string v2, "uri"
iget-object v3, p0, Lcom/bbm/util/en;->a:Lcom/bbm/util/em;
iget-object v3, v3, Lcom/bbm/util/em;->b:Lcom/bbm/g/a;
iget-object v3, v3, Lcom/bbm/g/a;->v:Ljava/lang/String;
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v2, "ignoreUpdatesForThisGroup"
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->c:Lcom/bbm/g/am;
const-string v2, "group"
invoke-static {v0, v2}, Lcom/bbm/g/an;->a(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/g/cr;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
:try_end_2d
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2d} :catch_2e
:goto_2d
return-void
:catch_2e
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_2d
.end method