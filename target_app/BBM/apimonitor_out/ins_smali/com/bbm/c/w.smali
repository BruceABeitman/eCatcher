.class final Lcom/bbm/c/w;
.super Lcom/bbm/j/k;
.source "SetupTracker.java"
.field final synthetic a:Lcom/bbm/c/v;
.method constructor <init>(Lcom/bbm/c/v;)V
.registers 3
iput-object p1, p0, Lcom/bbm/c/w;->a:Lcom/bbm/c/v;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 14
const-wide/32 v6, 0x1d4c0
const-wide/16 v11, 0x3e8
const/4 v10, 0x0
const-wide/16 v8, 0x0
iget-object v0, p0, Lcom/bbm/c/w;->a:Lcom/bbm/c/v;
iget-object v0, v0, Lcom/bbm/c/v;->l:Lcom/bbm/Alaska;
invoke-virtual {v0}, Lcom/bbm/Alaska;->A()Lcom/bbm/f/af;
move-result-object v0
sget-object v1, Lcom/bbm/f/af;->c:Lcom/bbm/f/af;
if-ne v1, v0, :cond_30
iget-object v0, p0, Lcom/bbm/c/w;->a:Lcom/bbm/c/v;
iget-object v0, v0, Lcom/bbm/c/v;->l:Lcom/bbm/Alaska;
sget-object v0, Lcom/bbm/Alaska;->b:Lcom/bbm/setup/aa;
invoke-virtual {v0}, Lcom/bbm/setup/aa;->a()Lcom/bbm/setup/ag;
move-result-object v0
iget-object v0, v0, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;
sget-object v1, Lcom/bbm/setup/ah;->l:Lcom/bbm/setup/ah;
if-ne v1, v0, :cond_2f
iget-object v0, p0, Lcom/bbm/c/w;->a:Lcom/bbm/c/v;
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/bbm/c/v;->c:Z
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v1
iput-wide v1, v0, Lcom/bbm/c/v;->d:J
:goto_2f
:cond_2f
return-void
:cond_30
iget-object v0, p0, Lcom/bbm/c/w;->a:Lcom/bbm/c/v;
iget-boolean v0, v0, Lcom/bbm/c/v;->c:Z
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/bbm/c/w;->a:Lcom/bbm/c/v;
iget-object v0, v0, Lcom/bbm/c/v;->l:Lcom/bbm/Alaska;
sget-object v0, Lcom/bbm/Alaska;->b:Lcom/bbm/setup/aa;
invoke-virtual {v0}, Lcom/bbm/setup/aa;->a()Lcom/bbm/setup/ag;
move-result-object v0
iget-object v0, v0, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;
sget-object v1, Lcom/bbm/setup/ah;->a:Lcom/bbm/setup/ah;
if-eq v1, v0, :cond_4a
sget-object v1, Lcom/bbm/setup/ah;->b:Lcom/bbm/setup/ah;
if-ne v1, v0, :cond_1cb
:cond_4a
iget-object v1, p0, Lcom/bbm/c/w;->a:Lcom/bbm/c/v;
iget-wide v2, v1, Lcom/bbm/c/v;->f:J
cmp-long v2, v2, v8
if-nez v2, :cond_79
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
iput-wide v2, v1, Lcom/bbm/c/v;->f:J
iget-boolean v2, v1, Lcom/bbm/c/v;->k:Z
if-nez v2, :cond_79
iget-wide v2, v1, Lcom/bbm/c/v;->i:J
cmp-long v2, v2, v8
if-nez v2, :cond_79
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v2
iput-wide v2, v1, Lcom/bbm/c/v;->i:J
iget-wide v2, v1, Lcom/bbm/c/v;->j:J
cmp-long v2, v2, v6
if-gez v2, :cond_1c2
iget-object v2, v1, Lcom/bbm/c/v;->h:Landroid/os/Handler;
iget-object v3, v1, Lcom/bbm/c/v;->b:Ljava/lang/Runnable;
iget-wide v4, v1, Lcom/bbm/c/v;->j:J
sub-long v4, v6, v4
invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_79
:goto_79
sget-object v1, Lcom/bbm/setup/ah;->k:Lcom/bbm/setup/ah;
if-ne v1, v0, :cond_2f
iget-object v0, p0, Lcom/bbm/c/w;->a:Lcom/bbm/c/v;
iget-object v1, v0, Lcom/bbm/c/v;->h:Landroid/os/Handler;
iget-object v2, v0, Lcom/bbm/c/v;->b:Ljava/lang/Runnable;
invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iput-wide v8, v0, Lcom/bbm/c/v;->j:J
iput-wide v8, v0, Lcom/bbm/c/v;->i:J
iput-boolean v10, v0, Lcom/bbm/c/v;->c:Z
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v1
iget-wide v3, v0, Lcom/bbm/c/v;->d:J
sub-long/2addr v1, v3
iput-wide v1, v0, Lcom/bbm/c/v;->e:J
iget-object v1, v0, Lcom/bbm/c/v;->l:Lcom/bbm/Alaska;
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v1
invoke-static {}, Lcom/bbm/c/v;->a()Z
move-result v2
iget-wide v3, v0, Lcom/bbm/c/v;->e:J
div-long/2addr v3, v11
iget-wide v5, v0, Lcom/bbm/c/v;->g:J
div-long/2addr v5, v11
:try_start_a5
new-instance v7, Lorg/json/JSONObject;
invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
sget-object v0, Lcom/bbm/c/n;->ag:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v7, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ah:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v7, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ai:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->X:I
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->aj:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->Y:I
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ak:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->Z:I
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->al:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->aa:I
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->am:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->ab:I
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->an:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->ac:I
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ao:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->ad:I
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ap:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->ae:I
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->aq:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->af:I
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ar:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->ag:I
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->as:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->ao:I
invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->at:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->ah:I
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->au:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v3
iget-object v0, v1, Lcom/bbm/c/c;->ap:Lcom/bbm/al;
if-nez v0, :cond_1fe
sget-object v0, Lcom/bbm/al;->a:Lcom/bbm/al;
invoke-virtual {v0}, Lcom/bbm/al;->name()Ljava/lang/String;
move-result-object v0
:goto_154
invoke-virtual {v7, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->av:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->ai:I
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->aw:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->aj:I
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ax:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->ak:I
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->ay:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->al:I
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->az:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->am:I
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->aA:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
iget v3, v1, Lcom/bbm/c/c;->an:I
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
sget-object v0, Lcom/bbm/c/n;->aB:Lcom/bbm/c/n;
invoke-virtual {v0}, Lcom/bbm/c/n;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v3
invoke-virtual {v3}, Lcom/bbm/af;->p()Z
move-result v3
invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
if-eqz v2, :cond_206
sget-object v0, Lcom/bbm/c/m;->i:Lcom/bbm/c/m;
:goto_1ae
invoke-virtual {v1, v0, v7}, Lcom/bbm/c/c;->b(Lcom/bbm/c/m;Lorg/json/JSONObject;)V
iget-object v0, v1, Lcom/bbm/c/c;->aG:Ljava/lang/String;
invoke-static {v7, v0}, Lcom/bbm/x;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
:try_end_1b6
.catch Lorg/json/JSONException; {:try_start_a5 .. :try_end_1b6} :catch_1b8
goto/16 :goto_2f
:catch_1b8
move-exception v0
const-string v1, "EventTracker.trackLogin()"
new-array v2, v10, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_2f
:cond_1c2
iget-object v2, v1, Lcom/bbm/c/v;->h:Landroid/os/Handler;
iget-object v1, v1, Lcom/bbm/c/v;->b:Ljava/lang/Runnable;
invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_79
:cond_1cb
iget-object v1, p0, Lcom/bbm/c/w;->a:Lcom/bbm/c/v;
iget-object v2, v1, Lcom/bbm/c/v;->h:Landroid/os/Handler;
iget-object v3, v1, Lcom/bbm/c/v;->b:Ljava/lang/Runnable;
invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-wide v2, v1, Lcom/bbm/c/v;->i:J
cmp-long v2, v2, v8
if-lez v2, :cond_1e8
iget-wide v2, v1, Lcom/bbm/c/v;->j:J
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v4
iget-wide v6, v1, Lcom/bbm/c/v;->i:J
sub-long/2addr v4, v6
add-long/2addr v2, v4
iput-wide v2, v1, Lcom/bbm/c/v;->j:J
iput-wide v8, v1, Lcom/bbm/c/v;->i:J
:cond_1e8
iget-wide v2, v1, Lcom/bbm/c/v;->f:J
cmp-long v2, v2, v8
if-lez v2, :cond_79
iget-wide v2, v1, Lcom/bbm/c/v;->g:J
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v4
iget-wide v6, v1, Lcom/bbm/c/v;->f:J
sub-long/2addr v4, v6
add-long/2addr v2, v4
iput-wide v2, v1, Lcom/bbm/c/v;->g:J
iput-wide v8, v1, Lcom/bbm/c/v;->f:J
goto/16 :goto_79
:try_start_1fe
:cond_1fe
iget-object v0, v1, Lcom/bbm/c/c;->ap:Lcom/bbm/al;
invoke-virtual {v0}, Lcom/bbm/al;->name()Ljava/lang/String;
move-result-object v0
goto/16 :goto_154
:cond_206
sget-object v0, Lcom/bbm/c/m;->j:Lcom/bbm/c/m;
:try_end_208
.catch Lorg/json/JSONException; {:try_start_1fe .. :try_end_208} :catch_1b8
goto :goto_1ae
.end method