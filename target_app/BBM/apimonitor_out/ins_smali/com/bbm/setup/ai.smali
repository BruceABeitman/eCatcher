.class public final Lcom/bbm/setup/ai;
.super Ljava/lang/Object;
.source "TransportErrorMonitor.java"
.field  a:Z
.field public b:Z
.field public final c:Lcom/bbm/j/k;
.field private d:Z
.field private e:Landroid/os/Handler;
.field private f:J
.field private g:J
.field private final h:Ljava/lang/Runnable;
.method public constructor <init>()V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/bbm/setup/ai;->a:Z
iput-boolean v0, p0, Lcom/bbm/setup/ai;->d:Z
iput-boolean v0, p0, Lcom/bbm/setup/ai;->b:Z
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/bbm/setup/ai;->e:Landroid/os/Handler;
const-wide/16 v0, 0x64
iput-wide v0, p0, Lcom/bbm/setup/ai;->f:J
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/setup/ai;->g:J
new-instance v0, Lcom/bbm/setup/aj;
invoke-direct {v0, p0}, Lcom/bbm/setup/aj;-><init>(Lcom/bbm/setup/ai;)V
iput-object v0, p0, Lcom/bbm/setup/ai;->h:Ljava/lang/Runnable;
new-instance v0, Lcom/bbm/setup/ak;
invoke-direct {v0, p0}, Lcom/bbm/setup/ak;-><init>(Lcom/bbm/setup/ai;)V
iput-object v0, p0, Lcom/bbm/setup/ai;->c:Lcom/bbm/j/k;
return-void
.end method
.method static synthetic a(Lcom/bbm/setup/ai;)V
.registers 8
const/4 v6, 0x1
iget-boolean v0, p0, Lcom/bbm/setup/ai;->b:Z
if-eqz v0, :cond_47
invoke-static {}, Lcom/bbm/Alaska;->j()Lcom/bbm/f/ae;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/f/ae;->j:Z
if-eqz v0, :cond_4d
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/bbm/setup/ai;->g:J
iget-wide v4, p0, Lcom/bbm/setup/ai;->f:J
add-long/2addr v2, v4
cmp-long v2, v2, v0
if-ltz v2, :cond_1e
iget-boolean v2, p0, Lcom/bbm/setup/ai;->a:Z
if-nez v2, :cond_45
:cond_1e
iget-boolean v2, p0, Lcom/bbm/setup/ai;->d:Z
if-eqz v2, :cond_48
iget-wide v2, p0, Lcom/bbm/setup/ai;->f:J
const-wide/16 v4, 0x2
mul-long/2addr v2, v4
const-wide/32 v4, 0x1499700
invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J
move-result-wide v2
iput-wide v2, p0, Lcom/bbm/setup/ai;->f:J
:goto_30
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/Alaska;->w()V
iput-wide v0, p0, Lcom/bbm/setup/ai;->g:J
iput-boolean v6, p0, Lcom/bbm/setup/ai;->a:Z
iget-object v2, p0, Lcom/bbm/setup/ai;->e:Landroid/os/Handler;
iget-object v3, p0, Lcom/bbm/setup/ai;->h:Ljava/lang/Runnable;
iget-wide v4, p0, Lcom/bbm/setup/ai;->f:J
add-long/2addr v0, v4
invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z
:cond_45
iput-boolean v6, p0, Lcom/bbm/setup/ai;->d:Z
:goto_47
:cond_47
return-void
:cond_48
const-wide/16 v2, 0x64
iput-wide v2, p0, Lcom/bbm/setup/ai;->f:J
goto :goto_30
:cond_4d
invoke-virtual {p0}, Lcom/bbm/setup/ai;->a()V
goto :goto_47
.end method
.method public final a()V
.registers 4
const/4 v2, 0x0
iput-boolean v2, p0, Lcom/bbm/setup/ai;->d:Z
const-wide/16 v0, 0x64
iput-wide v0, p0, Lcom/bbm/setup/ai;->f:J
iput-boolean v2, p0, Lcom/bbm/setup/ai;->a:Z
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/bbm/setup/ai;->g:J
return-void
.end method