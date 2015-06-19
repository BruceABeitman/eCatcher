.class public final Lcom/instagram/b/c/a;
.super Ljava/lang/Object;
.source "NavigationTracker.java"
.field private static final a:Lcom/instagram/b/c/a;
.field private final b:Landroid/content/Context;
.field private c:Lcom/instagram/common/analytics/b;
.field private d:Landroid/widget/Toast;
.field private e:J
.field private final f:Lcom/instagram/common/p/b;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/instagram/b/c/a;
invoke-direct {v0}, Lcom/instagram/b/c/a;-><init>()V
sput-object v0, Lcom/instagram/b/c/a;->a:Lcom/instagram/b/c/a;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/instagram/b/c/a;->b:Landroid/content/Context;
invoke-static {}, Lcom/instagram/common/p/b;->a()Lcom/instagram/common/p/b;
move-result-object v0
iput-object v0, p0, Lcom/instagram/b/c/a;->f:Lcom/instagram/common/p/b;
return-void
.end method
.method public static a()Lcom/instagram/b/c/a;
.registers 1
sget-object v0, Lcom/instagram/b/c/a;->a:Lcom/instagram/b/c/a;
return-object v0
.end method
.method private a(Lcom/instagram/common/analytics/e;J)V
.registers 10
const/4 v4, 0x0
invoke-static {}, Lcom/instagram/common/o/a;->d()Z
move-result v0
if-nez v0, :cond_62
invoke-static {}, Lcom/instagram/k/a/a;->a()Lcom/instagram/k/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/a/a;->f()Z
move-result v0
if-eqz v0, :cond_62
iget-object v0, p0, Lcom/instagram/b/c/a;->d:Landroid/widget/Toast;
if-nez v0, :cond_1f
iget-object v0, p0, Lcom/instagram/b/c/a;->b:Landroid/content/Context;
const-string v1, ""
invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
iput-object v0, p0, Lcom/instagram/b/c/a;->d:Landroid/widget/Toast;
:cond_1f
iget-object v0, p0, Lcom/instagram/b/c/a;->d:Landroid/widget/Toast;
const-string v1, "%s to %s via %s (%s)"
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/Object;
iget-object v3, p0, Lcom/instagram/b/c/a;->c:Lcom/instagram/common/analytics/b;
invoke-virtual {v3}, Lcom/instagram/common/analytics/b;->b()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v4
const/4 v3, 0x1
invoke-interface {p1}, Lcom/instagram/common/analytics/e;->i_()Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x2
iget-object v4, p0, Lcom/instagram/b/c/a;->c:Lcom/instagram/common/analytics/b;
const-string v5, "click_point"
invoke-virtual {v4, v5}, Lcom/instagram/common/analytics/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x3
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "ms"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/b/c/a;->d:Landroid/widget/Toast;
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_62
return-void
.end method
.method public final a(Landroid/app/Activity;)V
.registers 3
const-string v0, "button"
invoke-virtual {p0, p1, v0}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V
return-void
.end method
.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
.registers 5
invoke-static {p1}, Lcom/instagram/b/b/a;->a(Landroid/content/Context;)Lcom/instagram/common/analytics/e;
move-result-object v0
if-eqz v0, :cond_13
check-cast p1, Landroid/support/v4/app/k;
invoke-virtual {p1}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/s;->g()I
move-result v1
invoke-virtual {p0, v0, v1, p2}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/e;ILjava/lang/String;)V
:cond_13
return-void
.end method
.method public final declared-synchronized a(Lcom/instagram/common/analytics/e;)V
.registers 8
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/instagram/b/c/a;->c:Lcom/instagram/common/analytics/b;
if-eqz v0, :cond_37
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iget-wide v2, p0, Lcom/instagram/b/c/a;->e:J
sub-long/2addr v0, v2
iget-object v2, p0, Lcom/instagram/b/c/a;->f:Lcom/instagram/common/p/b;
iget-object v3, p0, Lcom/instagram/b/c/a;->c:Lcom/instagram/common/analytics/b;
invoke-virtual {v3}, Lcom/instagram/common/analytics/b;->b()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/instagram/b/c/a;->c:Lcom/instagram/common/analytics/b;
const-string v5, "click_point"
invoke-virtual {v4, v5}, Lcom/instagram/common/analytics/b;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, p1, v3, v4}, Lcom/instagram/common/p/b;->a(Lcom/instagram/common/analytics/e;Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/b/c/a;->c:Lcom/instagram/common/analytics/b;
const-string v3, "dest_module"
invoke-interface {p1}, Lcom/instagram/common/analytics/e;->i_()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v2
const-string v3, "nav_time_taken"
invoke-virtual {v2, v3, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/common/analytics/b;->a()V
invoke-direct {p0, p1, v0, v1}, Lcom/instagram/b/c/a;->a(Lcom/instagram/common/analytics/e;J)V
:cond_37
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/b/c/a;->c:Lcom/instagram/common/analytics/b;
:try_end_3a
.catchall {:try_start_1 .. :try_end_3a} :catchall_3c
monitor-exit p0
return-void
:catchall_3c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(Lcom/instagram/common/analytics/e;ILjava/lang/String;)V
.registers 6
monitor-enter p0
:try_start_1
invoke-static {p3}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_9
const-string p3, "button"
:cond_9
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iput-wide v0, p0, Lcom/instagram/b/c/a;->e:J
new-instance v0, Lcom/instagram/common/analytics/b;
const-string v1, "navigation"
invoke-direct {v0, v1, p1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
const-string v1, "click_point"
invoke-virtual {v0, v1, p3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
const-string v1, "nav_depth"
invoke-virtual {v0, v1, p2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;
move-result-object v0
iput-object v0, p0, Lcom/instagram/b/c/a;->c:Lcom/instagram/common/analytics/b;
:try_end_24
.catchall {:try_start_1 .. :try_end_24} :catchall_26
monitor-exit p0
return-void
:catchall_26
move-exception v0
monitor-exit p0
throw v0
.end method