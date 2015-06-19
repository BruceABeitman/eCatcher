.class  Lcom/admarvel/android/ads/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field private final a:Ljava/lang/ref/WeakReference;
.field private final b:Ljava/io/File;
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
.registers 4
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/d;->a:Ljava/lang/ref/WeakReference;
iput-object p2, p0, Lcom/admarvel/android/ads/d;->b:Ljava/io/File;
return-void
.end method
.method  a(Ljava/io/File;)V
.registers 6
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v0
if-eqz v0, :cond_16
invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v1
array-length v2, v1
const/4 v0, 0x0
:goto_c
if-ge v0, v2, :cond_16
aget-object v3, v1, v0
invoke-virtual {p0, v3}, Lcom/admarvel/android/ads/d;->a(Ljava/io/File;)V
add-int/lit8 v0, v0, 0x1
goto :goto_c
:cond_16
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-virtual {p1}, Ljava/io/File;->lastModified()J
move-result-wide v2
sub-long/2addr v0, v2
const-wide/32 v2, 0x278d00
cmp-long v0, v0, v2
if-lez v0, :cond_29
invoke-virtual {p1}, Ljava/io/File;->delete()Z
:cond_29
return-void
.end method
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 7
const/4 v4, 0x0
iget-object v0, p0, Lcom/admarvel/android/ads/d;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-nez v0, :cond_c
:cond_b
:goto_b
return-object v4
:cond_c
:try_start_c
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/admarvel/android/ads/d;->b:Ljava/io/File;
const-string v2, "/data/com.admarvel.android.admarvelcachedads/cachedads"
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_b
invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v1
array-length v2, v1
const/4 v0, 0x0
:goto_21
if-ge v0, v2, :cond_b
aget-object v3, v1, v0
invoke-virtual {p0, v3}, Lcom/admarvel/android/ads/d;->a(Ljava/io/File;)V
:try_end_28
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_28} :catch_2b
add-int/lit8 v0, v0, 0x1
goto :goto_21
:catch_2b
move-exception v0
goto :goto_b
.end method