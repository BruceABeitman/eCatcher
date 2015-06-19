.class public final Lcom/bbm/c/g;
.super Lcom/bbm/j/u;
.source "EventTracker.java"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Ljava/util/List;
.field final synthetic c:Ljava/util/Set;
.field final synthetic d:I
.field final synthetic e:Z
.field final synthetic f:Z
.field final synthetic g:Lcom/bbm/c/c;
.method public constructor <init>(Lcom/bbm/c/c;Ljava/lang/String;Ljava/util/List;Ljava/util/Set;IZ)V
.registers 8
iput-object p1, p0, Lcom/bbm/c/g;->g:Lcom/bbm/c/c;
iput-object p2, p0, Lcom/bbm/c/g;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/bbm/c/g;->b:Ljava/util/List;
iput-object p4, p0, Lcom/bbm/c/g;->c:Ljava/util/Set;
iput p5, p0, Lcom/bbm/c/g;->d:I
iput-boolean p6, p0, Lcom/bbm/c/g;->e:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/c/g;->f:Z
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 9
const/4 v2, 0x1
const/4 v3, 0x0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/c/g;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->r(Ljava/lang/String;)Lcom/bbm/d/gf;
move-result-object v4
iget-object v0, v4, Lcom/bbm/d/gf;->j:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_13
:goto_12
return v3
:cond_13
iget-object v0, v4, Lcom/bbm/d/gf;->j:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_1b
move v3, v2
goto :goto_12
:cond_1b
iget-object v0, p0, Lcom/bbm/c/g;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_21
:cond_21
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_69
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v5
invoke-virtual {v5, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v5, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v6, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v5, v6, :cond_62
iget-object v5, v0, Lcom/bbm/d/gp;->e:Ljava/lang/String;
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-nez v5, :cond_21
iget-object v5, p0, Lcom/bbm/c/g;->c:Ljava/util/Set;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, v0, Lcom/bbm/d/gp;->e:Ljava/lang/String;
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v6, "mixpanel"
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/blackberry/ids/IDS;->hashEcoId(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_21
:cond_62
iget-object v0, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v5, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v5, :cond_21
goto :goto_12
:cond_69
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, p0, Lcom/bbm/c/g;->c:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
move v1, v2
:goto_75
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8e
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz v1, :cond_88
move v1, v3
:goto_84
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_75
:cond_88
const-string v7, ","
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_84
:try_start_8e
:cond_8e
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
sget-object v0, Lcom/bbm/c/n;->N:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget-object v6, v4, Lcom/bbm/d/gf;->b:Ljava/lang/String;
invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->P:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget-object v4, v4, Lcom/bbm/d/gf;->c:Ljava/lang/String;
invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->Y:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v4, p0, Lcom/bbm/c/g;->d:I
invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ad:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v4
iget-object v0, p0, Lcom/bbm/c/g;->b:Ljava/util/List;
if-eqz v0, :cond_105
iget-object v0, p0, Lcom/bbm/c/g;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
:goto_c4
invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ae:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ab:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget-boolean v4, p0, Lcom/bbm/c/g;->e:Z
invoke-static {v4}, Lcom/bbm/c/l;->a(Z)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->R:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget-boolean v4, p0, Lcom/bbm/c/g;->f:Z
invoke-static {v4}, Lcom/bbm/c/r;->a(Z)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v0, p0, Lcom/bbm/c/g;->g:Lcom/bbm/c/c;
sget-object v4, Lcom/bbm/c/m;->g:Lcom/bbm/c/m;
invoke-static {v0, v4, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/c;Lcom/bbm/c/m;Lorg/json/JSONObject;)V
iget-object v0, p0, Lcom/bbm/c/g;->g:Lcom/bbm/c/c;
invoke-static {v0}, Lcom/bbm/c/c;->c(Lcom/bbm/c/c;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/bbm/x;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
:goto_102
:try_end_102
.catch Lorg/json/JSONException; {:try_start_8e .. :try_end_102} :catch_107
move v3, v2
goto/16 :goto_12
:cond_105
move v0, v3
goto :goto_c4
:catch_107
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v4, "EventTracker.trackStickerSent() JSONException - "
invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_102
.end method