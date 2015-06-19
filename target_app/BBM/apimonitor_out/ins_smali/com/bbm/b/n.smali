.class final Lcom/bbm/b/n;
.super Ljava/lang/Object;
.source "AdUtils.java"
.implements Lcom/bbm/j/s;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()Z
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
const-string v3, "enablePostAdPrefetch"
invoke-virtual {v0, v3}, Lcom/bbm/b/q;->a(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v3
const-string v4, "adsEnabled"
invoke-virtual {v3, v4}, Lcom/bbm/b/q;->a(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v3
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v4
invoke-virtual {v4}, Lcom/bbm/b/q;->a()Lcom/bbm/j/w;
move-result-object v4
iget-object v5, v0, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;
sget-object v6, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-eq v5, v6, :cond_30
invoke-interface {v4}, Lcom/bbm/j/w;->b()Z
move-result v5
if-nez v5, :cond_30
iget-object v5, v3, Lcom/bbm/util/bl;->b:Lcom/bbm/util/bh;
sget-object v6, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v5, v6, :cond_32
:cond_30
move v0, v2
:goto_31
return v0
:cond_32
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v5
iget-object v5, v5, Lcom/bbm/d;->a:Lcom/bbm/b/q;
new-instance v6, Lcom/bbm/b/aa;
invoke-direct {v6}, Lcom/bbm/b/aa;-><init>()V
invoke-virtual {v5, v6}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
iget-object v3, v3, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v5, "value"
invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v3
if-nez v3, :cond_4c
move v0, v1
goto :goto_31
:cond_4c
iget-object v0, v0, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v3, "value"
invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_75
invoke-interface {v4}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-static {v0}, Lcom/bbm/b/e;->a(Ljava/util/List;)Lcom/bbm/b/a;
move-result-object v0
if-eqz v0, :cond_64
move v0, v1
goto :goto_31
:cond_64
new-instance v0, Lcom/bbm/b/ag;
invoke-direct {v0}, Lcom/bbm/b/ag;-><init>()V
invoke-virtual {v0, v2}, Lcom/bbm/b/ag;->a(Z)Lcom/bbm/b/ag;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d;->a:Lcom/bbm/b/q;
invoke-virtual {v2, v0}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V
:cond_75
move v0, v1
goto :goto_31
.end method