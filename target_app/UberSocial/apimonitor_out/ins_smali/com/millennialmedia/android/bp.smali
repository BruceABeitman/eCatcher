.class abstract Lcom/millennialmedia/android/bp;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/millennialmedia/android/bo;
.field private static a:J = 0x0L
.field static final b:Ljava/lang/String; = "b"
.field static final c:Ljava/lang/String; = "i"
.field private static final s:Ljava/lang/String; = "MMAdImpl"
.field protected d:Lcom/millennialmedia/android/cn;
.field  e:Lcom/millennialmedia/android/df;
.field  f:Z
.field  g:Ljava/lang/String;
.field  h:Ljava/lang/String;
.field  i:Ljava/lang/String;
.field  j:J
.field  k:J
.field  l:Z
.field  m:Ljava/lang/ref/WeakReference;
.field  n:Lcom/millennialmedia/android/bs;
.field  o:Lcom/millennialmedia/android/cu;
.field  p:Lcom/millennialmedia/android/cv;
.field  q:J
.field  r:Lorg/json/JSONObject;
.method static constructor <clinit>()V
.registers 2
const-wide/16 v0, 0x1
sput-wide v0, Lcom/millennialmedia/android/bp;->a:J
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 9
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/millennialmedia/android/bp;->f:Z
const-string v0, "28911"
iput-object v0, p0, Lcom/millennialmedia/android/bp;->g:Ljava/lang/String;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/bp;->m:Ljava/lang/ref/WeakReference;
new-instance v0, Lcom/millennialmedia/android/bq;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/bq;-><init>(Lcom/millennialmedia/android/bp;)V
iput-object v0, p0, Lcom/millennialmedia/android/bp;->p:Lcom/millennialmedia/android/cv;
const-class v1, Lcom/millennialmedia/android/bp;
monitor-enter v1
:try_start_1b
sget-wide v2, Lcom/millennialmedia/android/bp;->a:J
iput-wide v2, p0, Lcom/millennialmedia/android/bp;->k:J
sget-wide v2, Lcom/millennialmedia/android/bp;->a:J
const-wide/16 v4, 0x1
add-long/2addr v2, v4
sput-wide v2, Lcom/millennialmedia/android/bp;->a:J
const-string v0, "MMAdImpl"
const-string v2, "Assigning MMAdImpl internal id: %d"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
iget-wide v5, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
monitor-exit v1
return-void
:catchall_3f
move-exception v0
monitor-exit v1
:try_end_41
.catchall {:try_start_1b .. :try_end_41} :catchall_3f
throw v0
.end method
.method static l()[Ljava/lang/String;
.registers 3
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "b"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "i"
aput-object v2, v0, v1
return-object v0
.end method
.method  a()V
.registers 1
return-void
.end method
.method  a(Landroid/graphics/Bitmap;)V
.registers 2
return-void
.end method
.method  a(Lcom/millennialmedia/android/cq;)V
.registers 2
return-void
.end method
.method  a(Lcom/millennialmedia/android/cq;Landroid/widget/RelativeLayout$LayoutParams;)V
.registers 3
return-void
.end method
.method  a(Ljava/util/Map;)V
.registers 5
invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v0
const-string v1, "apid"
iget-object v2, p0, Lcom/millennialmedia/android/bp;->g:Ljava/lang/String;
invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "do"
invoke-static {v0}, Lcom/millennialmedia/android/co;->x(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "olock"
invoke-static {v0}, Lcom/millennialmedia/android/co;->y(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->p()Z
move-result v1
if-nez v1, :cond_2a
const-string v1, "cachedvideo"
const-string v2, "false"
invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2a
const-string v1, "reqtype"
invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->o()Ljava/lang/String;
move-result-object v2
invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;
if-eqz v1, :cond_3c
iget-object v1, p0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;
invoke-virtual {v1, p1}, Lcom/millennialmedia/android/cn;->a(Ljava/util/Map;)V
:cond_3c
invoke-static {v0}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;
move-result-object v1
iget-object v2, p0, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/android/as;->b(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_6f
const-string v0, "video"
const-string v1, "true"
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_4f
iget-object v0, p0, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
if-eqz v0, :cond_98
iget-object v0, p0, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
const-string v1, "b"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_67
iget-object v0, p0, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
const-string v1, "i"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_77
:cond_67
const-string v0, "at"
iget-object v1, p0, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_6e
return-void
:cond_6f
const-string v0, "video"
const-string v1, "false"
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4f
:cond_77
const-string v0, "MMAdImpl"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "******* ERROR: INCORRECT AD TYPE IN MMADVIEW OBJECT PARAMETERS ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") **********"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_6e
:cond_98
const-string v0, "MMAdImpl"
const-string v1, "******* SDK DEFAULTED TO MMBannerAdBottom. THIS MAY AFFECT THE ADS YOU RECIEVE!!! **********"
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "at"
const-string v1, "b"
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_6e
.end method
.method  a(Z)V
.registers 2
return-void
.end method
.method  b()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method  c()Lcom/millennialmedia/android/cu;
.registers 4
const-string v0, "MMAdImpl"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Returning a client for user: DefaultWebViewClient, adimpl="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/millennialmedia/android/r;
iget-object v1, p0, Lcom/millennialmedia/android/bp;->p:Lcom/millennialmedia/android/cv;
new-instance v2, Lcom/millennialmedia/android/br;
invoke-direct {v2, p0}, Lcom/millennialmedia/android/br;-><init>(Lcom/millennialmedia/android/bp;)V
invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/r;-><init>(Lcom/millennialmedia/android/cv;Lcom/millennialmedia/android/az;)V
return-object v0
.end method
.method abstract d()Lcom/millennialmedia/android/bo;
.end method
.method  e()I
.registers 2
const/4 v0, -0x1
return v0
.end method
.method  f()V
.registers 2
invoke-static {p0}, Lcom/millennialmedia/android/bs;->b(Lcom/millennialmedia/android/bp;)V
iget-object v0, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
invoke-virtual {v0}, Lcom/millennialmedia/android/bs;->a()V
:cond_c
return-void
.end method
.method  g()Z
.registers 11
const/4 v1, 0x0
const/4 v0, 0x1
sget-boolean v2, Lcom/millennialmedia/android/co;->d:Z
if-eqz v2, :cond_e
const-string v1, "MMAdImpl"
const-string v2, "Minimum adrefresh time ignored"
invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_d
return v0
:cond_e
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iget-wide v4, p0, Lcom/millennialmedia/android/bp;->j:J
sub-long v4, v2, v4
const-wide/16 v6, 0x3e8
div-long/2addr v4, v6
long-to-int v4, v4
invoke-virtual {p0}, Lcom/millennialmedia/android/bp;->j()Landroid/content/Context;
move-result-object v5
invoke-static {v5}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;
move-result-object v5
iget-wide v5, v5, Lcom/millennialmedia/android/as;->h:J
int-to-long v7, v4
cmp-long v7, v7, v5
if-ltz v7, :cond_2c
iput-wide v2, p0, Lcom/millennialmedia/android/bp;->j:J
goto :goto_d
:cond_2c
const-string v2, "MMAdImpl"
const-string v3, "Cannot request ad. Last ad request was %d seconds ago. Next ad can be requested in %d seconds."
const/4 v7, 0x2
new-array v7, v7, [Ljava/lang/Object;
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v7, v1
int-to-long v8, v4
sub-long v4, v5, v8
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
aput-object v4, v7, v0
invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
goto :goto_d
.end method
.method public getApid()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/bp;->g:Ljava/lang/String;
return-object v0
.end method
.method public getIgnoresDensityScaling()Z
.registers 2
iget-boolean v0, p0, Lcom/millennialmedia/android/bp;->f:Z
return v0
.end method
.method public getListener()Lcom/millennialmedia/android/df;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/bp;->e:Lcom/millennialmedia/android/df;
return-object v0
.end method
.method public getMMRequest()Lcom/millennialmedia/android/cn;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;
return-object v0
.end method
.method  h()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method  i()V
.registers 1
return-void
.end method
.method  j()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/bp;->m:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/millennialmedia/android/bp;->m:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
:goto_c
return-object v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method  k()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/millennialmedia/android/bp;->g:Ljava/lang/String;
if-eqz v0, :cond_24
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/millennialmedia/android/bp;->g:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_23
return-object v0
:cond_24
const/4 v0, 0x0
goto :goto_23
.end method
.method  m()Ljava/lang/String;
.registers 2
const-string v0, "millennialmedia.action.ACTION_FETCH_FAILED"
return-object v0
.end method
.method  n()Ljava/lang/String;
.registers 2
const-string v0, "millennialmedia.action.ACTION_FETCH_SUCCEEDED"
return-object v0
.end method
.method  o()Ljava/lang/String;
.registers 2
const-string v0, "fetch"
return-object v0
.end method
.method public p()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public q()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method  r()Z
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
iget-boolean v0, v0, Lcom/millennialmedia/android/cq;->f:Z
if-nez v0, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method  s()V
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
invoke-virtual {v0}, Lcom/millennialmedia/android/bs;->e()V
:cond_9
return-void
.end method
.method public setApid(Ljava/lang/String;)V
.registers 3
if-eqz p1, :cond_a
invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_a
sput-object p1, Lcom/millennialmedia/android/as;->a:Ljava/lang/String;
:cond_a
iput-object p1, p0, Lcom/millennialmedia/android/bp;->g:Ljava/lang/String;
return-void
.end method
.method public setIgnoresDensityScaling(Z)V
.registers 2
iput-boolean p1, p0, Lcom/millennialmedia/android/bp;->f:Z
return-void
.end method
.method public setListener(Lcom/millennialmedia/android/df;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/bp;->e:Lcom/millennialmedia/android/df;
return-void
.end method
.method public setMMRequest(Lcom/millennialmedia/android/cn;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;
return-void
.end method
.method  t()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "AdType[("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") InternalId("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/millennialmedia/android/bp;->k:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") LinkedId("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/millennialmedia/android/bp;->q:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") isFinishing("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/millennialmedia/android/bp;->l:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method