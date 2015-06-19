.class public Lcom/google/android/gms/internal/eu;
.super Landroid/webkit/WebViewClient;
.field protected final a:Lcom/google/android/gms/internal/er;
.field private final b:Ljava/util/HashMap;
.field private final c:Ljava/lang/Object;
.field private d:Lcom/google/android/gms/internal/lr;
.field private e:Lcom/google/android/gms/internal/bz;
.field private f:Lcom/google/android/gms/internal/ev;
.field private g:Lcom/google/android/gms/internal/al;
.field private h:Z
.field private i:Lcom/google/android/gms/internal/ap;
.field private j:Z
.field private k:Lcom/google/android/gms/internal/cg;
.method public constructor <init>(Lcom/google/android/gms/internal/er;Z)V
.registers 4
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/eu;->b:Ljava/util/HashMap;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/eu;->c:Ljava/lang/Object;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/eu;->h:Z
iput-object p1, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
iput-boolean p2, p0, Lcom/google/android/gms/internal/eu;->j:Z
return-void
.end method
.method private a(Landroid/net/Uri;)V
.registers 8
invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v1
iget-object v0, p0, Lcom/google/android/gms/internal/eu;->b:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/ao;
if-eqz v0, :cond_68
invoke-static {p1}, Lcom/google/android/gms/internal/ej;->a(Landroid/net/Uri;)Ljava/util/Map;
move-result-object v2
const/4 v3, 0x2
invoke-static {v3}, Lcom/google/android/gms/internal/ep;->a(I)Z
move-result v3
if-eqz v3, :cond_62
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Received GMSG: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/ep;->d(Ljava/lang/String;)V
invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_33
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_62
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "  "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ": "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/ep;->d(Ljava/lang/String;)V
goto :goto_33
:cond_62
iget-object v1, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ao;->a(Lcom/google/android/gms/internal/er;Ljava/util/Map;)V
:goto_67
return-void
:cond_68
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "No GMSG handler found for GMSG: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->d(Ljava/lang/String;)V
goto :goto_67
.end method
.method private a(Lcom/google/android/gms/internal/ce;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p1}, Lcom/google/android/gms/internal/cc;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ce;)V
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/cb;)V
.registers 8
const/4 v3, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->i()Z
move-result v1
new-instance v0, Lcom/google/android/gms/internal/ce;
if-eqz v1, :cond_28
iget-object v2, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v2}, Lcom/google/android/gms/internal/er;->e()Lcom/google/android/gms/internal/ak;
move-result-object v2
iget-boolean v2, v2, Lcom/google/android/gms/internal/ak;->e:Z
if-nez v2, :cond_28
move-object v2, v3
:goto_16
if-eqz v1, :cond_2b
:goto_18
iget-object v4, p0, Lcom/google/android/gms/internal/eu;->k:Lcom/google/android/gms/internal/cg;
iget-object v1, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v1}, Lcom/google/android/gms/internal/er;->h()Lcom/google/android/gms/internal/dx;
move-result-object v5
move-object v1, p1
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ce;-><init>(Lcom/google/android/gms/internal/cb;Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/cg;Lcom/google/android/gms/internal/dx;)V
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/eu;->a(Lcom/google/android/gms/internal/ce;)V
return-void
:cond_28
iget-object v2, p0, Lcom/google/android/gms/internal/eu;->d:Lcom/google/android/gms/internal/lr;
goto :goto_16
:cond_2b
iget-object v3, p0, Lcom/google/android/gms/internal/eu;->e:Lcom/google/android/gms/internal/bz;
goto :goto_18
.end method
.method public final a(Lcom/google/android/gms/internal/ev;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/eu;->f:Lcom/google/android/gms/internal/ev;
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/cg;ZLcom/google/android/gms/internal/ap;)V
.registers 9
const-string v0, "/appEvent"
new-instance v1, Lcom/google/android/gms/internal/aj;
invoke-direct {v1, p3}, Lcom/google/android/gms/internal/aj;-><init>(Lcom/google/android/gms/internal/al;)V
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/eu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
const-string v0, "/canOpenURLs"
sget-object v1, Lcom/google/android/gms/internal/am;->b:Lcom/google/android/gms/internal/ao;
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/eu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
const-string v0, "/click"
sget-object v1, Lcom/google/android/gms/internal/am;->c:Lcom/google/android/gms/internal/ao;
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/eu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
const-string v0, "/close"
sget-object v1, Lcom/google/android/gms/internal/am;->d:Lcom/google/android/gms/internal/ao;
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/eu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
const-string v0, "/customClose"
sget-object v1, Lcom/google/android/gms/internal/am;->e:Lcom/google/android/gms/internal/ao;
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/eu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
const-string v0, "/httpTrack"
sget-object v1, Lcom/google/android/gms/internal/am;->f:Lcom/google/android/gms/internal/ao;
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/eu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
const-string v0, "/log"
sget-object v1, Lcom/google/android/gms/internal/am;->g:Lcom/google/android/gms/internal/ao;
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/eu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
const-string v0, "/open"
new-instance v1, Lcom/google/android/gms/internal/aq;
invoke-direct {v1, p6}, Lcom/google/android/gms/internal/aq;-><init>(Lcom/google/android/gms/internal/ap;)V
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/eu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
const-string v0, "/touch"
sget-object v1, Lcom/google/android/gms/internal/am;->h:Lcom/google/android/gms/internal/ao;
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/eu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
const-string v0, "/video"
sget-object v1, Lcom/google/android/gms/internal/am;->i:Lcom/google/android/gms/internal/ao;
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/eu;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
iput-object p1, p0, Lcom/google/android/gms/internal/eu;->d:Lcom/google/android/gms/internal/lr;
iput-object p2, p0, Lcom/google/android/gms/internal/eu;->e:Lcom/google/android/gms/internal/bz;
iput-object p3, p0, Lcom/google/android/gms/internal/eu;->g:Lcom/google/android/gms/internal/al;
iput-object p6, p0, Lcom/google/android/gms/internal/eu;->i:Lcom/google/android/gms/internal/ap;
iput-object p4, p0, Lcom/google/android/gms/internal/eu;->k:Lcom/google/android/gms/internal/cg;
iput-boolean p5, p0, Lcom/google/android/gms/internal/eu;->h:Z
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ao;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/eu;->b:Ljava/util/HashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final a(ZI)V
.registers 11
iget-object v0, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->i()Z
move-result v1
new-instance v0, Lcom/google/android/gms/internal/ce;
if-eqz v1, :cond_2a
iget-object v1, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v1}, Lcom/google/android/gms/internal/er;->e()Lcom/google/android/gms/internal/ak;
move-result-object v1
iget-boolean v1, v1, Lcom/google/android/gms/internal/ak;->e:Z
if-nez v1, :cond_2a
const/4 v1, 0x0
:goto_15
iget-object v2, p0, Lcom/google/android/gms/internal/eu;->e:Lcom/google/android/gms/internal/bz;
iget-object v3, p0, Lcom/google/android/gms/internal/eu;->k:Lcom/google/android/gms/internal/cg;
iget-object v4, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
iget-object v5, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v5}, Lcom/google/android/gms/internal/er;->h()Lcom/google/android/gms/internal/dx;
move-result-object v7
move v5, p1
move v6, p2
invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ce;-><init>(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/cg;Lcom/google/android/gms/internal/er;ZILcom/google/android/gms/internal/dx;)V
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/eu;->a(Lcom/google/android/gms/internal/ce;)V
return-void
:cond_2a
iget-object v1, p0, Lcom/google/android/gms/internal/eu;->d:Lcom/google/android/gms/internal/lr;
goto :goto_15
.end method
.method public final a(ZILjava/lang/String;)V
.registers 15
const/4 v2, 0x0
iget-object v0, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->i()Z
move-result v3
new-instance v0, Lcom/google/android/gms/internal/ce;
if-eqz v3, :cond_30
iget-object v1, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v1}, Lcom/google/android/gms/internal/er;->e()Lcom/google/android/gms/internal/ak;
move-result-object v1
iget-boolean v1, v1, Lcom/google/android/gms/internal/ak;->e:Z
if-nez v1, :cond_30
move-object v1, v2
:goto_16
if-eqz v3, :cond_33
:goto_18
iget-object v3, p0, Lcom/google/android/gms/internal/eu;->g:Lcom/google/android/gms/internal/al;
iget-object v4, p0, Lcom/google/android/gms/internal/eu;->k:Lcom/google/android/gms/internal/cg;
iget-object v5, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
iget-object v6, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v6}, Lcom/google/android/gms/internal/er;->h()Lcom/google/android/gms/internal/dx;
move-result-object v9
iget-object v10, p0, Lcom/google/android/gms/internal/eu;->i:Lcom/google/android/gms/internal/ap;
move v6, p1
move v7, p2
move-object v8, p3
invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ce;-><init>(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/cg;Lcom/google/android/gms/internal/er;ZILjava/lang/String;Lcom/google/android/gms/internal/dx;Lcom/google/android/gms/internal/ap;)V
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/eu;->a(Lcom/google/android/gms/internal/ce;)V
return-void
:cond_30
iget-object v1, p0, Lcom/google/android/gms/internal/eu;->d:Lcom/google/android/gms/internal/lr;
goto :goto_16
:cond_33
iget-object v2, p0, Lcom/google/android/gms/internal/eu;->e:Lcom/google/android/gms/internal/bz;
goto :goto_18
.end method
.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
.registers 17
iget-object v0, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->i()Z
move-result v2
new-instance v0, Lcom/google/android/gms/internal/ce;
if-eqz v2, :cond_32
iget-object v1, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v1}, Lcom/google/android/gms/internal/er;->e()Lcom/google/android/gms/internal/ak;
move-result-object v1
iget-boolean v1, v1, Lcom/google/android/gms/internal/ak;->e:Z
if-nez v1, :cond_32
const/4 v1, 0x0
:goto_15
if-eqz v2, :cond_35
const/4 v2, 0x0
:goto_18
iget-object v3, p0, Lcom/google/android/gms/internal/eu;->g:Lcom/google/android/gms/internal/al;
iget-object v4, p0, Lcom/google/android/gms/internal/eu;->k:Lcom/google/android/gms/internal/cg;
iget-object v5, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
iget-object v6, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v6}, Lcom/google/android/gms/internal/er;->h()Lcom/google/android/gms/internal/dx;
move-result-object v10
iget-object v11, p0, Lcom/google/android/gms/internal/eu;->i:Lcom/google/android/gms/internal/ap;
move v6, p1
move v7, p2
move-object v8, p3
move-object/from16 v9, p4
invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/ce;-><init>(Lcom/google/android/gms/internal/lr;Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/al;Lcom/google/android/gms/internal/cg;Lcom/google/android/gms/internal/er;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/dx;Lcom/google/android/gms/internal/ap;)V
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/eu;->a(Lcom/google/android/gms/internal/ce;)V
return-void
:cond_32
iget-object v1, p0, Lcom/google/android/gms/internal/eu;->d:Lcom/google/android/gms/internal/lr;
goto :goto_15
:cond_35
iget-object v2, p0, Lcom/google/android/gms/internal/eu;->e:Lcom/google/android/gms/internal/bz;
goto :goto_18
.end method
.method public final a()Z
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/eu;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-boolean v0, p0, Lcom/google/android/gms/internal/eu;->j:Z
monitor-exit v1
:try_end_6
.catchall {:try_start_3 .. :try_end_6} :catchall_7
return v0
:catchall_7
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final b()V
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/eu;->c:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/eu;->b:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/eu;->d:Lcom/google/android/gms/internal/lr;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/eu;->e:Lcom/google/android/gms/internal/bz;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/eu;->f:Lcom/google/android/gms/internal/ev;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/eu;->g:Lcom/google/android/gms/internal/al;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/eu;->h:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/eu;->j:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/eu;->i:Lcom/google/android/gms/internal/ap;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/eu;->k:Lcom/google/android/gms/internal/cg;
monitor-exit v1
:try_end_21
.catchall {:try_start_3 .. :try_end_21} :catchall_22
return-void
:catchall_22
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final c()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/eu;->h:Z
return-void
.end method
.method public final d()V
.registers 5
iget-object v1, p0, Lcom/google/android/gms/internal/eu;->c:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x0
:try_start_4
iput-boolean v0, p0, Lcom/google/android/gms/internal/eu;->h:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/internal/eu;->j:Z
iget-object v0, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->d()Lcom/google/android/gms/internal/cc;
move-result-object v0
if-eqz v0, :cond_21
invoke-static {}, Lcom/google/android/gms/internal/eo;->b()Z
move-result v2
if-nez v2, :cond_23
sget-object v2, Lcom/google/android/gms/internal/eo;->a:Landroid/os/Handler;
new-instance v3, Lcom/google/android/gms/internal/eu$1;
invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/eu$1;-><init>(Lcom/google/android/gms/internal/eu;Lcom/google/android/gms/internal/cc;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_21
:cond_21
monitor-exit v1
return-void
:cond_23
invoke-virtual {v0}, Lcom/google/android/gms/internal/cc;->k()V
:try_end_26
.catchall {:try_start_4 .. :try_end_26} :catchall_27
goto :goto_21
:catchall_27
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Loading resource: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->d(Ljava/lang/String;)V
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
const-string v1, "gmsg"
invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_31
const-string v1, "mobileads.google.com"
invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_31
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/eu;->a(Landroid/net/Uri;)V
:cond_31
return-void
.end method
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/eu;->f:Lcom/google/android/gms/internal/ev;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/google/android/gms/internal/eu;->f:Lcom/google/android/gms/internal/ev;
iget-object v1, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/er;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/eu;->f:Lcom/google/android/gms/internal/ev;
:cond_e
return-void
.end method
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 12
const/4 v8, 0x1
const/4 v3, 0x0
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "AdWebView shouldOverrideUrlLoading: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->d(Ljava/lang/String;)V
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
const-string v1, "gmsg"
invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_35
const-string v1, "mobileads.google.com"
invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_35
invoke-direct {p0, v0}, Lcom/google/android/gms/internal/eu;->a(Landroid/net/Uri;)V
:goto_33
move v0, v8
:goto_34
return v0
:cond_35
iget-boolean v1, p0, Lcom/google/android/gms/internal/eu;->h:Z
if-eqz v1, :cond_5b
iget-object v1, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
if-ne p1, v1, :cond_5b
invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v1
const-string v2, "http"
invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_51
const-string v2, "https"
invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_59
:cond_51
move v1, v8
:goto_52
if-eqz v1, :cond_5b
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
move-result v0
goto :goto_34
:cond_59
const/4 v1, 0x0
goto :goto_52
:cond_5b
iget-object v1, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v1}, Lcom/google/android/gms/internal/er;->willNotDraw()Z
move-result v1
if-nez v1, :cond_a4
:try_start_63
iget-object v1, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v1}, Lcom/google/android/gms/internal/er;->g()Lcom/google/android/gms/internal/lh;
move-result-object v1
if-eqz v1, :cond_7b
invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/lh;->a(Landroid/net/Uri;)Z
move-result v2
if-eqz v2, :cond_7b
iget-object v2, p0, Lcom/google/android/gms/internal/eu;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v2}, Lcom/google/android/gms/internal/er;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/lh;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
:try_end_7a
.catch Lcom/google/android/gms/internal/m; {:try_start_63 .. :try_end_7a} :catch_8f
move-result-object v0
:cond_7b
move-object v2, v0
:goto_7c
new-instance v0, Lcom/google/android/gms/internal/cb;
const-string v1, "android.intent.action.VIEW"
invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v2
move-object v4, v3
move-object v5, v3
move-object v6, v3
move-object v7, v3
invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/cb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/eu;->a(Lcom/google/android/gms/internal/cb;)V
goto :goto_33
:catch_8f
move-exception v1
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unable to append parameter to URL: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
move-object v2, v0
goto :goto_7c
:cond_a4
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "AdWebView unable to handle URL: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->e(Ljava/lang/String;)V
goto/16 :goto_33
.end method