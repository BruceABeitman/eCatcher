.class public final Lcom/google/android/gms/internal/dc;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;
.field protected final a:Lcom/google/android/gms/internal/er;
.field protected b:Z
.field protected c:Z
.field private final d:Landroid/os/Handler;
.field private final e:J
.field private f:J
.field private g:Lcom/google/android/gms/internal/ev;
.field private final h:I
.field private final i:I
.method private constructor <init>(Lcom/google/android/gms/internal/ev;Lcom/google/android/gms/internal/er;II)V
.registers 8
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0xc8
iput-wide v0, p0, Lcom/google/android/gms/internal/dc;->e:J
const-wide/16 v0, 0x32
iput-wide v0, p0, Lcom/google/android/gms/internal/dc;->f:J
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/google/android/gms/internal/dc;->d:Landroid/os/Handler;
iput-object p2, p0, Lcom/google/android/gms/internal/dc;->a:Lcom/google/android/gms/internal/er;
iput-object p1, p0, Lcom/google/android/gms/internal/dc;->g:Lcom/google/android/gms/internal/ev;
iput-boolean v2, p0, Lcom/google/android/gms/internal/dc;->b:Z
iput-boolean v2, p0, Lcom/google/android/gms/internal/dc;->c:Z
iput p4, p0, Lcom/google/android/gms/internal/dc;->h:I
iput p3, p0, Lcom/google/android/gms/internal/dc;->i:I
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/internal/ev;Lcom/google/android/gms/internal/er;IIB)V
.registers 6
invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/dc;-><init>(Lcom/google/android/gms/internal/ev;Lcom/google/android/gms/internal/er;II)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/dc;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/dc;->i:I
return v0
.end method
.method static synthetic b(Lcom/google/android/gms/internal/dc;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/internal/dc;->h:I
return v0
.end method
.method static synthetic c(Lcom/google/android/gms/internal/dc;)J
.registers 5
iget-wide v0, p0, Lcom/google/android/gms/internal/dc;->f:J
const-wide/16 v2, 0x1
sub-long/2addr v0, v2
iput-wide v0, p0, Lcom/google/android/gms/internal/dc;->f:J
return-wide v0
.end method
.method static synthetic d(Lcom/google/android/gms/internal/dc;)J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/internal/dc;->f:J
return-wide v0
.end method
.method static synthetic e(Lcom/google/android/gms/internal/dc;)Lcom/google/android/gms/internal/ev;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/dc;->g:Lcom/google/android/gms/internal/ev;
return-object v0
.end method
.method static synthetic f(Lcom/google/android/gms/internal/dc;)J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/internal/dc;->e:J
return-wide v0
.end method
.method static synthetic g(Lcom/google/android/gms/internal/dc;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/dc;->d:Landroid/os/Handler;
return-object v0
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/internal/dc;->d:Landroid/os/Handler;
iget-wide v1, p0, Lcom/google/android/gms/internal/dc;->e:J
invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method public final a(Lcom/google/android/gms/internal/cz;)V
.registers 8
const/4 v5, 0x0
new-instance v0, Lcom/google/android/gms/internal/ez;
iget-object v1, p0, Lcom/google/android/gms/internal/dc;->a:Lcom/google/android/gms/internal/er;
iget-object v2, p1, Lcom/google/android/gms/internal/cz;->q:Ljava/lang/String;
invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/ez;-><init>(Lcom/google/android/gms/internal/dc;Lcom/google/android/gms/internal/er;Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/internal/dc;->a:Lcom/google/android/gms/internal/er;
invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/er;->setWebViewClient(Landroid/webkit/WebViewClient;)V
iget-object v0, p0, Lcom/google/android/gms/internal/dc;->a:Lcom/google/android/gms/internal/er;
iget-object v1, p1, Lcom/google/android/gms/internal/cz;->b:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_24
move-object v1, v5
:goto_1a
iget-object v2, p1, Lcom/google/android/gms/internal/cz;->c:Ljava/lang/String;
const-string v3, "text/html"
const-string v4, "UTF-8"
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/er;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_24
iget-object v1, p1, Lcom/google/android/gms/internal/cz;->b:Ljava/lang/String;
invoke-static {v1}, Lcom/google/android/gms/internal/ej;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
goto :goto_1a
.end method
.method public final declared-synchronized b()V
.registers 2
monitor-enter p0
const/4 v0, 0x1
:try_start_2
iput-boolean v0, p0, Lcom/google/android/gms/internal/dc;->b:Z
:try_end_4
.catchall {:try_start_2 .. :try_end_4} :catchall_6
monitor-exit p0
return-void
:catchall_6
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized c()Z
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/google/android/gms/internal/dc;->b:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final d()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/internal/dc;->c:Z
return v0
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/internal/dc;->a:Lcom/google/android/gms/internal/er;
if-eqz v0, :cond_a
invoke-virtual {p0}, Lcom/google/android/gms/internal/dc;->c()Z
move-result v0
if-eqz v0, :cond_12
:cond_a
iget-object v0, p0, Lcom/google/android/gms/internal/dc;->g:Lcom/google/android/gms/internal/ev;
iget-object v1, p0, Lcom/google/android/gms/internal/dc;->a:Lcom/google/android/gms/internal/er;
invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ev;->a(Lcom/google/android/gms/internal/er;)V
:goto_11
return-void
:cond_12
new-instance v0, Lcom/google/android/gms/internal/dd;
iget-object v1, p0, Lcom/google/android/gms/internal/dc;->a:Lcom/google/android/gms/internal/er;
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/dd;-><init>(Lcom/google/android/gms/internal/dc;Landroid/webkit/WebView;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/dd;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_11
.end method