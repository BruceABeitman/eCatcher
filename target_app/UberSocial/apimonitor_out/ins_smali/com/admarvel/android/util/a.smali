.class public Lcom/admarvel/android/util/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static volatile b:Lcom/admarvel/android/util/a;
.field private static f:Ljava/lang/ref/WeakReference;
.field  a:Ljava/io/PrintWriter;
.field private c:I
.field private d:Ljava/io/File;
.field private e:Ljava/io/File;
.field private g:Ljava/lang/String;
.method private constructor <init>(Landroid/content/Context;)V
.registers 7
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x14
iput v0, p0, Lcom/admarvel/android/util/a;->c:I
const-string v0, "admarvel_adHistory"
iput-object v0, p0, Lcom/admarvel/android/util/a;->g:Ljava/lang/String;
iput-object v1, p0, Lcom/admarvel/android/util/a;->a:Ljava/io/PrintWriter;
if-nez p1, :cond_14
sput-object v1, Lcom/admarvel/android/util/a;->f:Ljava/lang/ref/WeakReference;
:cond_13
return-void
:cond_14
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
sput-object v0, Lcom/admarvel/android/util/a;->f:Ljava/lang/ref/WeakReference;
sget-object v0, Lcom/admarvel/android/util/a;->f:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
const-string v1, "Admarvel"
const/4 v3, 0x0
:try_start_26
invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v1
iput-object v1, p0, Lcom/admarvel/android/util/a;->d:Ljava/io/File;
new-instance v1, Ljava/io/File;
iget-object v3, p0, Lcom/admarvel/android/util/a;->d:Ljava/io/File;
iget-object v4, p0, Lcom/admarvel/android/util/a;->g:Ljava/lang/String;
invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object v1, p0, Lcom/admarvel/android/util/a;->e:Ljava/io/File;
:goto_37
:try_end_37
.catch Ljava/lang/Exception; {:try_start_26 .. :try_end_37} :catch_62
iget-object v1, p0, Lcom/admarvel/android/util/a;->e:Ljava/io/File;
if-eqz v1, :cond_13
iget-object v1, p0, Lcom/admarvel/android/util/a;->e:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->mkdir()Z
move-result v1
if-eqz v1, :cond_46
invoke-direct {p0, v0, v2}, Lcom/admarvel/android/util/a;->a(Landroid/content/Context;I)V
:cond_46
iget-object v0, p0, Lcom/admarvel/android/util/a;->e:Ljava/io/File;
new-instance v1, Lcom/admarvel/android/util/a$1;
invoke-direct {v1, p0}, Lcom/admarvel/android/util/a$1;-><init>(Lcom/admarvel/android/util/a;)V
invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;
move-result-object v1
if-eqz v1, :cond_13
array-length v0, v1
if-lez v0, :cond_13
array-length v3, v1
move v0, v2
:goto_58
if-ge v0, v3, :cond_13
aget-object v2, v1, v0
invoke-virtual {v2}, Ljava/io/File;->delete()Z
add-int/lit8 v0, v0, 0x1
goto :goto_58
:catch_62
move-exception v1
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_37
.end method
.method static synthetic a(Lcom/admarvel/android/util/a;Landroid/content/Context;)I
.registers 3
invoke-direct {p0, p1}, Lcom/admarvel/android/util/a;->c(Landroid/content/Context;)I
move-result v0
return v0
.end method
.method static synthetic a(Lcom/admarvel/android/util/a;)Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/util/a;->e:Ljava/io/File;
return-object v0
.end method
.method static synthetic a()Ljava/lang/ref/WeakReference;
.registers 1
sget-object v0, Lcom/admarvel/android/util/a;->f:Ljava/lang/ref/WeakReference;
return-object v0
.end method
.method private declared-synchronized a(Landroid/content/Context;I)V
.registers 5
monitor-enter p0
:try_start_1
const-string v0, "Ad_history_counter"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "ad_dump_count"
invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:try_end_14
.catchall {:try_start_1 .. :try_end_14} :catchall_16
monitor-exit p0
return-void
:catchall_16
move-exception v0
monitor-exit p0
throw v0
.end method
.method static synthetic a(Lcom/admarvel/android/util/a;Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/admarvel/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const/4 v2, 0x0
:try_start_1
new-instance v1, Ljava/io/File;
invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:try_start_6
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_37
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_23
new-instance v0, Lcom/admarvel/android/util/f;
const-string v2, "utf-8"
invoke-direct {v0, p1, v2}, Lcom/admarvel/android/util/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "fileUpload"
invoke-virtual {v0, v2, v1}, Lcom/admarvel/android/util/f;->a(Ljava/lang/String;Ljava/io/File;)V
invoke-virtual {v0}, Lcom/admarvel/android/util/f;->a()Ljava/util/List;
:try_end_15
.catchall {:try_start_6 .. :try_end_15} :catchall_47
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_49
if-eqz v1, :cond_22
invoke-virtual {v1}, Ljava/io/File;->delete()Z
move-result v0
if-nez v0, :cond_22
const-string v0, "Unable to delete AdHistory zip file"
:goto_1f
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:cond_22
return-void
:catch_23
move-exception v0
move-object v1, v2
:goto_25
:try_start_25
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_2c
.catchall {:try_start_25 .. :try_end_2c} :catchall_47
if-eqz v1, :cond_22
invoke-virtual {v1}, Ljava/io/File;->delete()Z
move-result v0
if-nez v0, :cond_22
const-string v0, "Unable to delete AdHistory zip file"
goto :goto_1f
:catchall_37
move-exception v0
move-object v1, v2
:goto_39
if-eqz v1, :cond_46
invoke-virtual {v1}, Ljava/io/File;->delete()Z
move-result v1
if-nez v1, :cond_46
const-string v1, "Unable to delete AdHistory zip file"
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:cond_46
throw v0
:catchall_47
move-exception v0
goto :goto_39
:catch_49
move-exception v0
goto :goto_25
.end method
.method private b()D
.registers 7
const-wide/16 v0, 0x0
:try_start_2
new-instance v3, Ljava/io/RandomAccessFile;
const-string v2, "/proc/meminfo"
const-string v4, "r"
invoke-direct {v3, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
move-result-object v2
const-string v4, "(\\d+)"
invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v4
const-string v2, ""
:goto_1b
invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z
move-result v5
if-eqz v5, :cond_27
const/4 v2, 0x1
invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
move-result-object v2
goto :goto_1b
:cond_27
invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
:try_end_2d
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_2d} :catch_2f
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_34
move-result-wide v0
:goto_2e
return-wide v0
:catch_2f
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
goto :goto_2e
:catch_34
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_2e
.end method
.method static synthetic b(Lcom/admarvel/android/util/a;)I
.registers 2
iget v0, p0, Lcom/admarvel/android/util/a;->c:I
return v0
.end method
.method public static b(Landroid/content/Context;)Lcom/admarvel/android/util/a;
.registers 2
sget-object v0, Lcom/admarvel/android/util/a;->b:Lcom/admarvel/android/util/a;
if-nez v0, :cond_d
if-eqz p0, :cond_d
new-instance v0, Lcom/admarvel/android/util/a;
invoke-direct {v0, p0}, Lcom/admarvel/android/util/a;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/admarvel/android/util/a;->b:Lcom/admarvel/android/util/a;
:cond_d
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
sput-object v0, Lcom/admarvel/android/util/a;->f:Ljava/lang/ref/WeakReference;
sget-object v0, Lcom/admarvel/android/util/a;->b:Lcom/admarvel/android/util/a;
return-object v0
.end method
.method private b(I)V
.registers 6
:try_start_0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "/sse_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, ".jpg"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/admarvel/android/util/a;->e:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
if-eqz v1, :cond_39
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_39
invoke-virtual {v1}, Ljava/io/File;->delete()Z
:cond_39
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "/ssr_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, ".jpg"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v1, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/admarvel/android/util/a;->e:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
if-eqz v1, :cond_72
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_72
invoke-virtual {v1}, Ljava/io/File;->delete()Z
:try_end_72
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_73
:cond_72
:goto_72
return-void
:catch_73
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_72
.end method
.method private declared-synchronized c(Landroid/content/Context;)I
.registers 5
monitor-enter p0
:try_start_1
const-string v0, "Ad_history_counter"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "ad_dump_count"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_11
move-result v0
monitor-exit p0
return v0
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method
.method private d(Landroid/content/Context;)Z
.registers 8
const-wide/high16 v2, -0x4010
:try_start_2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xf
if-le v0, v1, :cond_25
invoke-static {p1}, Lcom/admarvel/android/util/a$b;->a(Landroid/content/Context;)J
move-result-wide v0
const-wide/16 v4, 0x0
cmp-long v4, v0, v4
if-lez v4, :cond_37
long-to-double v0, v0
const-wide/high16 v4, 0x4130
div-double/2addr v0, v4
:goto_16
cmpl-double v2, v0, v2
if-eqz v2, :cond_39
const-wide v2, 0x407c200000000000L
cmpg-double v0, v0, v2
if-gez v0, :cond_39
const/4 v0, 0x1
:goto_24
return v0
:cond_25
invoke-direct {p0}, Lcom/admarvel/android/util/a;->b()D
:try_end_28
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_33
move-result-wide v0
const-wide/16 v4, 0x0
cmpl-double v4, v0, v4
if-lez v4, :cond_37
const-wide/high16 v4, 0x4090
div-double/2addr v0, v4
goto :goto_16
:catch_33
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_37
move-wide v0, v2
goto :goto_16
:cond_39
const/4 v0, 0x0
goto :goto_24
.end method
.method private e(Landroid/content/Context;)Z
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xa
if-ge v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
invoke-direct {p0, p1}, Lcom/admarvel/android/util/a;->d(Landroid/content/Context;)Z
move-result v0
goto :goto_7
.end method
.method public declared-synchronized a(Landroid/content/Context;)I
.registers 5
monitor-enter p0
:try_start_1
const-string v0, "Ad_history_counter"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "ad_dump_count"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iget v2, p0, Lcom/admarvel/android/util/a;->c:I
rem-int/2addr v1, v2
add-int/lit8 v1, v1, 0x1
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v2, "ad_dump_count"
invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:try_end_20
.catchall {:try_start_1 .. :try_end_20} :catchall_22
monitor-exit p0
return v1
:catchall_22
move-exception v0
monitor-exit p0
throw v0
.end method
.method public a(I)Ljava/lang/String;
.registers 7
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v0
invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAndroidSDKVersion()I
move-result v1
const/16 v2, 0xb
if-lt v1, v2, :cond_1e
new-instance v1, Landroid/os/Handler;
invoke-direct {v1}, Landroid/os/Handler;-><init>()V
new-instance v2, Lcom/admarvel/android/util/a$a;
invoke-direct {v2, p0, v0, p1}, Lcom/admarvel/android/util/a$a;-><init>(Lcom/admarvel/android/util/a;Ljava/lang/String;I)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_1d
return-object v0
:cond_1e
new-instance v1, Lcom/admarvel/android/util/a$c;
invoke-direct {v1, p0, v0}, Lcom/admarvel/android/util/a$c;-><init>(Lcom/admarvel/android/util/a;Ljava/lang/String;)V
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Integer;
const/4 v3, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-virtual {v1, v2}, Lcom/admarvel/android/util/a$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_1d
.end method
.method public declared-synchronized a(Ljava/lang/String;)V
.registers 10
monitor-enter p0
:try_start_1
sget-object v1, Lcom/admarvel/android/util/a;->f:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/Context;
instance-of v2, v1, Landroid/app/Activity;
if-eqz v2, :cond_18
invoke-direct {p0, v1}, Lcom/admarvel/android/util/a;->e(Landroid/content/Context;)Z
move-result v2
if-eqz v2, :cond_1a
const-string v1, "AdHistory Capture: Screen Dump discarded"
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:cond_18
:goto_18
:try_end_18
.catchall {:try_start_1 .. :try_end_18} :catchall_41
monitor-exit p0
return-void
:cond_1a
const/4 v3, 0x0
:try_start_1b
move-object v0, v1
check-cast v0, Landroid/app/Activity;
move-object v2, v0
invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v2
invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v2
const v4, 0x1020002
invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
const v4, 0x1020002
invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;
:try_end_38
.catchall {:try_start_1b .. :try_end_38} :catchall_f5
.catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_38} :catch_be
.catch Ljava/io/IOException; {:try_start_1b .. :try_end_38} :catch_cd
.catch Ljava/lang/Exception; {:try_start_1b .. :try_end_38} :catch_dc
.catch Ljava/lang/OutOfMemoryError; {:try_start_1b .. :try_end_38} :catch_e7
move-result-object v2
if-nez v2, :cond_44
if-eqz v3, :cond_18
:try_start_3d
invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
:try_end_40
.catchall {:try_start_3d .. :try_end_40} :catchall_41
goto :goto_18
:catchall_41
move-exception v1
monitor-exit p0
throw v1
:cond_44
:try_start_44
invoke-virtual {v2}, Landroid/view/View;->isDrawingCacheEnabled()Z
move-result v4
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
const/4 v5, 0x1
invoke-virtual {v2, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
new-instance v5, Ljava/io/FileOutputStream;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
iget-object v7, p0, Lcom/admarvel/android/util/a;->e:Ljava/io/File;
invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
if-eqz v5, :cond_a3
check-cast v1, Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->density:F
const/high16 v6, 0x3f80
cmpl-float v1, v1, v6
if-lez v1, :cond_aa
invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
move-result-object v1
sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v7, 0xf
invoke-virtual {v1, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
move-result v1
if-nez v1, :cond_93
const-string v1, "AdHistory Capture: Screen Dump failed"
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:cond_93
:goto_93
invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
if-nez v1, :cond_a3
const/4 v1, 0x0
invoke-virtual {v2, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V
:try_end_a3
.catchall {:try_start_44 .. :try_end_a3} :catchall_f5
.catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_a3} :catch_be
.catch Ljava/io/IOException; {:try_start_44 .. :try_end_a3} :catch_cd
.catch Ljava/lang/Exception; {:try_start_44 .. :try_end_a3} :catch_dc
.catch Ljava/lang/OutOfMemoryError; {:try_start_44 .. :try_end_a3} :catch_e7
:cond_a3
if-eqz v3, :cond_18
:try_start_a5
invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
:try_end_a8
.catchall {:try_start_a5 .. :try_end_a8} :catchall_41
goto/16 :goto_18
:cond_aa
:try_start_aa
invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;
move-result-object v1
sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v7, 0x3c
invoke-virtual {v1, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
move-result v1
if-nez v1, :cond_93
const-string v1, "AdHistory Capture: Screen Dump failed"
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_bd
.catchall {:try_start_aa .. :try_end_bd} :catchall_f5
.catch Ljava/io/FileNotFoundException; {:try_start_aa .. :try_end_bd} :catch_be
.catch Ljava/io/IOException; {:try_start_aa .. :try_end_bd} :catch_cd
.catch Ljava/lang/Exception; {:try_start_aa .. :try_end_bd} :catch_dc
.catch Ljava/lang/OutOfMemoryError; {:try_start_aa .. :try_end_bd} :catch_e7
goto :goto_93
:catch_be
move-exception v1
:try_start_bf
invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_c6
.catchall {:try_start_bf .. :try_end_c6} :catchall_f5
if-eqz v3, :cond_18
:try_start_c8
invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
:try_end_cb
.catchall {:try_start_c8 .. :try_end_cb} :catchall_41
goto/16 :goto_18
:catch_cd
move-exception v1
:try_start_ce
invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_d5
.catchall {:try_start_ce .. :try_end_d5} :catchall_f5
if-eqz v3, :cond_18
:try_start_d7
invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
:try_end_da
.catchall {:try_start_d7 .. :try_end_da} :catchall_41
goto/16 :goto_18
:catch_dc
move-exception v1
:try_start_dd
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_e0
.catchall {:try_start_dd .. :try_end_e0} :catchall_f5
if-eqz v3, :cond_18
:try_start_e2
invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
:try_end_e5
.catchall {:try_start_e2 .. :try_end_e5} :catchall_41
goto/16 :goto_18
:catch_e7
move-exception v1
:try_start_e8
invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->disableLogDump()V
:try_end_ee
.catchall {:try_start_e8 .. :try_end_ee} :catchall_f5
if-eqz v3, :cond_18
:try_start_f0
invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
goto/16 :goto_18
:catchall_f5
move-exception v1
if-eqz v3, :cond_fb
invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
:cond_fb
throw v1
:try_end_fc
.catchall {:try_start_f0 .. :try_end_fc} :catchall_41
.end method
.method public a(Ljava/lang/String;I)V
.registers 7
sget-object v0, Lcom/admarvel/android/util/a;->f:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_6c
sget-object v0, Lcom/admarvel/android/util/a;->f:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_6c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "/log_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, ".txt"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_start_1e
new-instance v1, Ljava/io/PrintWriter;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p0, Lcom/admarvel/android/util/a;->e:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v2, "UTF-8"
invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iput-object v1, p0, Lcom/admarvel/android/util/a;->a:Ljava/io/PrintWriter;
:goto_42
:try_end_42
.catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_42} :catch_6d
.catch Ljava/io/UnsupportedEncodingException; {:try_start_1e .. :try_end_42} :catch_72
iget-object v0, p0, Lcom/admarvel/android/util/a;->a:Ljava/io/PrintWriter;
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/admarvel/android/util/a;->a:Ljava/io/PrintWriter;
invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/util/a;->a:Ljava/io/PrintWriter;
invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
:cond_50
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "/ss_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, ".jpg"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/admarvel/android/util/a;->a(Ljava/lang/String;)V
invoke-direct {p0, p2}, Lcom/admarvel/android/util/a;->b(I)V
:cond_6c
return-void
:catch_6d
move-exception v0
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
goto :goto_42
:catch_72
move-exception v0
invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
goto :goto_42
.end method