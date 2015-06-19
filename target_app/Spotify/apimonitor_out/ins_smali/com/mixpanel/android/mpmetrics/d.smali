.class final Lcom/mixpanel/android/mpmetrics/d;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/mixpanel/android/mpmetrics/a;
.field private final b:Ljava/lang/Object;
.field private c:Landroid/os/Handler;
.field private d:J
.field private e:J
.field private f:J
.field private g:Lcom/mixpanel/android/mpmetrics/y;
.method public constructor <init>(Lcom/mixpanel/android/mpmetrics/a;)V
.registers 5
const-wide/16 v1, 0x0
iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/d;->b:Ljava/lang/Object;
iput-wide v1, p0, Lcom/mixpanel/android/mpmetrics/d;->d:J
iput-wide v1, p0, Lcom/mixpanel/android/mpmetrics/d;->e:J
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/d;->f:J
new-instance v0, Landroid/os/HandlerThread;
const-string v1, "com.mixpanel.android.AnalyticsWorker"
const/4 v2, 0x1
invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
new-instance v1, Lcom/mixpanel/android/mpmetrics/e;
invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v0
invoke-direct {v1, p0, v0}, Lcom/mixpanel/android/mpmetrics/e;-><init>(Lcom/mixpanel/android/mpmetrics/d;Landroid/os/Looper;)V
iput-object v1, p0, Lcom/mixpanel/android/mpmetrics/d;->c:Landroid/os/Handler;
return-void
.end method
.method static synthetic a(Lcom/mixpanel/android/mpmetrics/d;Lcom/mixpanel/android/mpmetrics/y;)Lcom/mixpanel/android/mpmetrics/y;
.registers 2
iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/d;->g:Lcom/mixpanel/android/mpmetrics/y;
return-object p1
.end method
.method static synthetic a(Lcom/mixpanel/android/mpmetrics/d;)V
.registers 11
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/mixpanel/android/mpmetrics/d;->d:J
const-wide/16 v4, 0x1
add-long/2addr v2, v4
iget-wide v4, p0, Lcom/mixpanel/android/mpmetrics/d;->f:J
const-wide/16 v6, 0x0
cmp-long v4, v4, v6
if-lez v4, :cond_3d
iget-wide v4, p0, Lcom/mixpanel/android/mpmetrics/d;->f:J
sub-long v4, v0, v4
iget-wide v6, p0, Lcom/mixpanel/android/mpmetrics/d;->e:J
iget-wide v8, p0, Lcom/mixpanel/android/mpmetrics/d;->d:J
mul-long/2addr v6, v8
add-long/2addr v4, v6
div-long/2addr v4, v2
iput-wide v4, p0, Lcom/mixpanel/android/mpmetrics/d;->e:J
iget-wide v4, p0, Lcom/mixpanel/android/mpmetrics/d;->e:J
const-wide/16 v6, 0x3e8
div-long/2addr v4, v6
iget-object v6, p0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
new-instance v7, Ljava/lang/StringBuilder;
const-string v8, "Average send frequency approximately "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " seconds."
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v6, v4}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
:cond_3d
iput-wide v0, p0, Lcom/mixpanel/android/mpmetrics/d;->f:J
iput-wide v2, p0, Lcom/mixpanel/android/mpmetrics/d;->d:J
return-void
.end method
.method static synthetic b(Lcom/mixpanel/android/mpmetrics/d;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/d;->b:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic c(Lcom/mixpanel/android/mpmetrics/d;)Landroid/os/Handler;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/mixpanel/android/mpmetrics/d;->c:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic d(Lcom/mixpanel/android/mpmetrics/d;)Lcom/mixpanel/android/mpmetrics/y;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/d;->g:Lcom/mixpanel/android/mpmetrics/y;
return-object v0
.end method
.method public final a(Landroid/os/Message;)V
.registers 6
iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/d;->b:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/d;->c:Landroid/os/Handler;
if-nez v0, :cond_1d
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/d;->a:Lcom/mixpanel/android/mpmetrics/a;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Dead mixpanel worker dropping a message: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/mixpanel/android/mpmetrics/a;->a(Lcom/mixpanel/android/mpmetrics/a;Ljava/lang/String;)V
:goto_1b
monitor-exit v1
return-void
:cond_1d
iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/d;->c:Landroid/os/Handler;
invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:try_end_22
.catchall {:try_start_3 .. :try_end_22} :catchall_23
goto :goto_1b
:catchall_23
move-exception v0
monitor-exit v1
throw v0
.end method