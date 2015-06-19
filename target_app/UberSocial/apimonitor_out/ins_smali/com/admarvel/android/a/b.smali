.class public Lcom/admarvel/android/a/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field private final a:Ljava/lang/ref/WeakReference;
.field private final b:Ljava/lang/StringBuilder;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/a/b;->a:Ljava/lang/ref/WeakReference;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iput-object v0, p0, Lcom/admarvel/android/a/b;->b:Ljava/lang/StringBuilder;
return-void
.end method
.method static synthetic a(Lcom/admarvel/android/a/b;)Ljava/lang/ref/WeakReference;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/a/b;->a:Ljava/lang/ref/WeakReference;
return-object v0
.end method
.method private a(Landroid/content/Context;Ljava/util/ArrayList;)Z
.registers 9
if-eqz p2, :cond_30
:try_start_2
invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v2, p0, Lcom/admarvel/android/a/b;->b:Ljava/lang/StringBuilder;
const-string v3, "<img src=\""
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "\" />"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_23
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_24
goto :goto_6
:catch_24
move-exception v0
const-string v1, "admarvel"
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
:goto_2f
return v0
:cond_30
:try_start_30
iget-object v0, p0, Lcom/admarvel/android/a/b;->b:Ljava/lang/StringBuilder;
if-eqz v0, :cond_80
iget-object v0, p0, Lcom/admarvel/android/a/b;->b:Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-lez v0, :cond_80
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v0
const-string v1, "main"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_82
new-instance v0, Landroid/webkit/WebView;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Firing Install Tracking Pixels: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/a/b;->b:Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const/4 v1, 0x0
iget-object v2, p0, Lcom/admarvel/android/a/b;->b:Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, "text/html"
const-string v4, "utf-8"
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:cond_80
:goto_80
const/4 v0, 0x1
goto :goto_2f
:cond_82
new-instance v0, Lcom/admarvel/android/a/b$1;
invoke-direct {v0, p0}, Lcom/admarvel/android/a/b$1;-><init>(Lcom/admarvel/android/a/b;)V
instance-of v1, p1, Landroid/app/Activity;
if-eqz v1, :cond_80
check-cast p1, Landroid/app/Activity;
invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
:try_end_90
.catch Ljava/lang/Exception; {:try_start_30 .. :try_end_90} :catch_24
goto :goto_80
.end method
.method static synthetic b(Lcom/admarvel/android/a/b;)Ljava/lang/StringBuilder;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/a/b;->b:Ljava/lang/StringBuilder;
return-object v0
.end method
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 10
const/4 v2, 0x0
:try_start_1
iget-object v0, p0, Lcom/admarvel/android/a/b;->a:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_10b
iget-object v0, p0, Lcom/admarvel/android/a/b;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-eqz v0, :cond_10b
const-string v1, "admarvel"
invoke-static {v1}, Lcom/admarvel/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const/4 v3, 0x0
invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v3
const-string v1, "registered_tracking_event"
invoke-static {v1}, Lcom/admarvel/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const/4 v4, 0x0
invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
if-nez v1, :cond_9b
invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v4
const-string v5, "mounted"
invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_9b
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v4
new-instance v5, Ljava/io/File;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "/"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "adm_tracker_dir"
invoke-static {v7}, Lcom/admarvel/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "/"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-static {v1}, Lcom/admarvel/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v5, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v5}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_9b
new-instance v1, Ljava/io/FileInputStream;
invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
new-instance v4, Ljava/io/ObjectInputStream;
invoke-direct {v4, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v1
instance-of v4, v1, Ljava/util/ArrayList;
if-eqz v4, :cond_9b
check-cast v1, Ljava/util/ArrayList;
invoke-direct {p0, v0, v1}, Lcom/admarvel/android/a/b;->a(Landroid/content/Context;Ljava/util/ArrayList;)Z
move-result v1
if-eqz v1, :cond_9b
invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string v3, "registered_tracking_event"
invoke-static {v3}, Lcom/admarvel/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x1
invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
invoke-virtual {v5}, Ljava/io/File;->delete()Z
:cond_9b
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
new-instance v3, Ljava/io/File;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "/"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "adm_tracker_dir"
invoke-static {v5}, Lcom/admarvel/android/a/e;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_10b
invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z
move-result v1
if-eqz v1, :cond_10b
invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v3
:goto_cd
array-length v1, v3
if-ge v2, v1, :cond_10b
aget-object v4, v3, v2
invoke-virtual {v4}, Ljava/io/File;->isFile()Z
move-result v1
if-eqz v1, :cond_103
invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/a/e;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/admarvel/android/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_103
new-instance v1, Ljava/io/FileInputStream;
invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
new-instance v5, Ljava/io/ObjectInputStream;
invoke-direct {v5, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v1
instance-of v5, v1, Ljava/util/ArrayList;
if-eqz v5, :cond_103
check-cast v1, Ljava/util/ArrayList;
invoke-direct {p0, v0, v1}, Lcom/admarvel/android/a/b;->a(Landroid/content/Context;Ljava/util/ArrayList;)Z
move-result v1
if-eqz v1, :cond_103
invoke-virtual {v4}, Ljava/io/File;->delete()Z
:try_end_103
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_103} :catch_107
:cond_103
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_cd
:catch_107
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_10b
const/4 v0, 0x0
return-object v0
.end method