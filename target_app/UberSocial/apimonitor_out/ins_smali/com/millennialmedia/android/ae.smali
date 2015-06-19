.class  Lcom/millennialmedia/android/ae;
.super Lcom/millennialmedia/android/cf;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field private a:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:I
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/millennialmedia/android/cf;-><init>()V
const-string v0, "alert"
iput-object v0, p0, Lcom/millennialmedia/android/ae;->a:Ljava/lang/String;
const-string v0, "vibrate"
iput-object v0, p0, Lcom/millennialmedia/android/ae;->d:Ljava/lang/String;
return-void
.end method
.method static synthetic a(Lcom/millennialmedia/android/ae;)I
.registers 2
iget v0, p0, Lcom/millennialmedia/android/ae;->e:I
return v0
.end method
.method  a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/millennialmedia/android/ae;->a:Ljava/lang/String;
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_e
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/ae;->a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_d
:cond_d
return-object v0
:cond_e
iget-object v1, p0, Lcom/millennialmedia/android/ae;->d:Ljava/lang/String;
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_d
invoke-virtual {p0, p2}, Lcom/millennialmedia/android/ae;->b(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_d
.end method
.method public declared-synchronized a(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 3
monitor-enter p0
:try_start_1
new-instance v0, Lcom/millennialmedia/android/ae$1;
invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/ae$1;-><init>(Lcom/millennialmedia/android/ae;Ljava/util/Map;)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/ae;->a(Ljava/util/concurrent/Callable;)Lcom/millennialmedia/android/cg;
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_c
move-result-object v0
monitor-exit p0
return-object v0
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public b(Ljava/util/Map;)Lcom/millennialmedia/android/cg;
.registers 9
const-wide/16 v3, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/ae;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
const-string v1, "duration"
invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_68
const-string v1, "duration"
invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v1
float-to-double v1, v1
const-wide v5, 0x408f400000000000L
mul-double/2addr v1, v5
double-to-long v1, v1
:goto_26
if-eqz v0, :cond_66
cmp-long v3, v1, v3
if-lez v3, :cond_66
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
const-string v4, "android.permission.VIBRATE"
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
move-result v3
if-nez v3, :cond_5f
const-string v3, "vibrator"
invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Vibrator;
invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Vibrating for "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
:goto_5e
return-object v0
:cond_5f
const-string v0, "The required permissions to vibrate are not set."
invoke-static {v0}, Lcom/millennialmedia/android/cg;->b(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
move-result-object v0
goto :goto_5e
:cond_66
const/4 v0, 0x0
goto :goto_5e
:cond_68
move-wide v1, v3
goto :goto_26
.end method
.method public declared-synchronized onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/millennialmedia/android/ae; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
monitor-enter p0
const/4 v0, -0x2
if-ne p2, v0, :cond_7
const/4 v0, 0x0
:try_start_5
iput v0, p0, Lcom/millennialmedia/android/ae;->e:I
:cond_7
const/4 v0, -0x3
if-ne p2, v0, :cond_d
const/4 v0, 0x1
iput v0, p0, Lcom/millennialmedia/android/ae;->e:I
:cond_d
const/4 v0, -0x1
if-ne p2, v0, :cond_13
const/4 v0, 0x2
iput v0, p0, Lcom/millennialmedia/android/ae;->e:I
:cond_13
invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V
invoke-virtual {p0}, Ljava/lang/Object;->notify()V
:try_end_19
.catchall {:try_start_5 .. :try_end_19} :catchall_1b
monitor-exit p0
const-string v1, " - Lcom/millennialmedia/android/ae; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catchall_1b
move-exception v0
monitor-exit p0
throw v0
.end method