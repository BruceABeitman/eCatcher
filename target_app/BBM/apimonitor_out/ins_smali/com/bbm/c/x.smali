.class final Lcom/bbm/c/x;
.super Ljava/lang/Object;
.source "SetupTracker.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/c/v;
.method constructor <init>(Lcom/bbm/c/v;)V
.registers 2
iput-object p1, p0, Lcom/bbm/c/x;->a:Lcom/bbm/c/v;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 11
const-wide/16 v8, 0x3e8
iget-object v0, p0, Lcom/bbm/c/x;->a:Lcom/bbm/c/v;
iget-boolean v0, v0, Lcom/bbm/c/v;->k:Z
if-nez v0, :cond_149
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iget-object v2, p0, Lcom/bbm/c/x;->a:Lcom/bbm/c/v;
iget-wide v2, v2, Lcom/bbm/c/v;->d:J
sub-long v2, v0, v2
iget-object v4, p0, Lcom/bbm/c/x;->a:Lcom/bbm/c/v;
iget-wide v4, v4, Lcom/bbm/c/v;->g:J
iget-object v6, p0, Lcom/bbm/c/x;->a:Lcom/bbm/c/v;
iget-wide v6, v6, Lcom/bbm/c/v;->f:J
sub-long/2addr v0, v6
add-long/2addr v0, v4
iget-object v4, p0, Lcom/bbm/c/x;->a:Lcom/bbm/c/v;
iget-object v4, v4, Lcom/bbm/c/v;->l:Lcom/bbm/Alaska;
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v4
iget-object v5, p0, Lcom/bbm/c/x;->a:Lcom/bbm/c/v;
invoke-static {}, Lcom/bbm/c/v;->a()Z
move-result v5
div-long/2addr v2, v8
div-long/2addr v0, v8
:try_start_2c
new-instance v6, Lorg/json/JSONObject;
invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
sget-object v7, Lcom/bbm/c/n;->aC:Lcom/bbm/c/n;
invoke-virtual {v7}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
sget-object v5, Lcom/bbm/c/n;->ag:Lcom/bbm/c/n;
invoke-virtual {v5}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v6, v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
sget-object v2, Lcom/bbm/c/n;->ah:Lcom/bbm/c/n;
invoke-virtual {v2}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v6, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ai:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->X:I
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->aj:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->Y:I
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ak:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->Z:I
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->al:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->aa:I
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->am:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->ab:I
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->an:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->ac:I
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ao:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->ad:I
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ap:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->ae:I
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->aq:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->af:I
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ar:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->ag:I
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->as:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->ao:I
invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->at:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->ah:I
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->au:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v1
iget-object v0, v4, Lcom/bbm/c/c;->ap:Lcom/bbm/al;
if-nez v0, :cond_14a
sget-object v0, Lcom/bbm/al;->a:Lcom/bbm/al;
invoke-virtual {v0}, Lcom/bbm/al;->name()Ljava/lang/String;
move-result-object v0
:goto_e4
invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->av:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->ai:I
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->aw:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->aj:I
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ax:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->ak:I
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ay:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->al:I
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->az:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->am:I
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->aA:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v1, v4, Lcom/bbm/c/c;->an:I
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->aB:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/af;->p()Z
move-result v1
invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/m;->k:Lcom/bbm/c/m;
invoke-virtual {v4, v0, v6}, Lcom/bbm/c/c;->b(Lcom/bbm/c/m;Lorg/json/JSONObject;)V
iget-object v0, v4, Lcom/bbm/c/c;->aG:Ljava/lang/String;
invoke-static {v6, v0}, Lcom/bbm/x;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
:goto_144
:try_end_144
.catch Lorg/json/JSONException; {:try_start_2c .. :try_end_144} :catch_151
iget-object v0, p0, Lcom/bbm/c/x;->a:Lcom/bbm/c/v;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/bbm/c/v;->k:Z
:cond_149
return-void
:cond_14a
:try_start_14a
iget-object v0, v4, Lcom/bbm/c/c;->ap:Lcom/bbm/al;
invoke-virtual {v0}, Lcom/bbm/al;->name()Ljava/lang/String;
:try_end_14f
.catch Lorg/json/JSONException; {:try_start_14a .. :try_end_14f} :catch_151
move-result-object v0
goto :goto_e4
:catch_151
move-exception v0
const-string v1, "EventTracker.trackSetupStalled()"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_144
.end method