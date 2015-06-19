.class final Lcom/mapquest/android/maps/cs;
.super Landroid/os/AsyncTask;
.source "TrafficManager.java"
.field final synthetic a:Lcom/mapquest/android/maps/cq;
.field private b:Lcom/mapquest/android/maps/cq;
.field private c:Lcom/mapquest/android/maps/ct;
.method public constructor <init>(Lcom/mapquest/android/maps/cq;Lcom/mapquest/android/maps/ct;Lcom/mapquest/android/maps/cq;)V
.registers 4
iput-object p1, p0, Lcom/mapquest/android/maps/cs;->a:Lcom/mapquest/android/maps/cq;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
iput-object p3, p0, Lcom/mapquest/android/maps/cs;->b:Lcom/mapquest/android/maps/cq;
iput-object p2, p0, Lcom/mapquest/android/maps/cs;->c:Lcom/mapquest/android/maps/ct;
return-void
.end method
.method private varargs a()Landroid/graphics/drawable/Drawable;
.registers 7
const/4 v1, 0x0
:try_start_1
iget-object v0, p0, Lcom/mapquest/android/maps/cs;->c:Lcom/mapquest/android/maps/ct;
iget-object v0, v0, Lcom/mapquest/android/maps/ct;->c:Ljava/lang/String;
const/4 v2, 0x0
invoke-static {v0, v2}, Lcom/mapquest/android/maps/w;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/io/InputStream;
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_52
.catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_9} :catch_13
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_32
move-result-object v2
:try_start_a
new-instance v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V
:try_start_f
:try_end_f
.catchall {:try_start_a .. :try_end_f} :catchall_5e
.catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_f} :catch_62
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_60
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:goto_12
:try_end_12
.catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_58
return-object v0
:catch_13
move-exception v0
move-object v2, v1
:goto_15
:try_start_15
const-string v3, "mq.android.maps.trafficmanager"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "OutOfMemoryError in traffic download: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:try_start_2d
:try_end_2d
.catchall {:try_start_15 .. :try_end_2d} :catchall_5e
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:goto_30
:try_end_30
.catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_5a
move-object v0, v1
goto :goto_12
:catch_32
move-exception v0
move-object v2, v1
:goto_34
:try_start_34
const-string v3, "mq.android.maps.trafficmanager"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Error downloading traffic image: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:try_start_4c
:try_end_4c
.catchall {:try_start_34 .. :try_end_4c} :catchall_5e
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_end_4f
.catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50
goto :goto_30
:catch_50
move-exception v0
goto :goto_30
:catchall_52
move-exception v0
move-object v2, v1
:goto_54
:try_start_54
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:goto_57
:try_end_57
.catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_5c
throw v0
:catch_58
move-exception v1
goto :goto_12
:catch_5a
move-exception v0
goto :goto_30
:catch_5c
move-exception v1
goto :goto_57
:catchall_5e
move-exception v0
goto :goto_54
:catch_60
move-exception v0
goto :goto_34
:catch_62
move-exception v0
goto :goto_15
.end method
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/mapquest/android/maps/cs;->a()Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
.registers 6
const/4 v3, 0x1
check-cast p1, Landroid/graphics/drawable/Drawable;
iget-object v0, p0, Lcom/mapquest/android/maps/cs;->c:Lcom/mapquest/android/maps/ct;
if-eqz v0, :cond_d
if-eqz p1, :cond_d
iget-object v0, p0, Lcom/mapquest/android/maps/cs;->c:Lcom/mapquest/android/maps/ct;
iput-object p1, v0, Lcom/mapquest/android/maps/ct;->a:Landroid/graphics/drawable/Drawable;
:cond_d
iget-object v0, p0, Lcom/mapquest/android/maps/cs;->b:Lcom/mapquest/android/maps/cq;
iget-object v1, p0, Lcom/mapquest/android/maps/cs;->c:Lcom/mapquest/android/maps/ct;
const/4 v2, 0x0
iput-boolean v2, v0, Lcom/mapquest/android/maps/cq;->d:Z
iget-object v2, v1, Lcom/mapquest/android/maps/ct;->a:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_1c
iget-object v2, v0, Lcom/mapquest/android/maps/cq;->c:Lcom/mapquest/android/maps/cu;
if-nez v2, :cond_1d
:goto_1c
:cond_1c
return-void
:cond_1d
iget-object v2, v1, Lcom/mapquest/android/maps/ct;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v2
if-gt v2, v3, :cond_35
iget-object v2, v1, Lcom/mapquest/android/maps/ct;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v2
if-gt v2, v3, :cond_35
const-string v0, "mq.android.maps.trafficmanager"
const-string v1, "Traffic Error: Try checking your platform API key"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_1c
:cond_35
iget-object v2, v0, Lcom/mapquest/android/maps/cq;->e:Lcom/mapquest/android/maps/ct;
if-eqz v2, :cond_50
iget-object v2, v1, Lcom/mapquest/android/maps/ct;->b:Lcom/mapquest/android/maps/b;
iget-object v3, v0, Lcom/mapquest/android/maps/cq;->e:Lcom/mapquest/android/maps/ct;
iget-object v3, v3, Lcom/mapquest/android/maps/ct;->b:Lcom/mapquest/android/maps/b;
invoke-virtual {v2, v3}, Lcom/mapquest/android/maps/b;->a(Lcom/mapquest/android/maps/b;)Z
move-result v2
if-nez v2, :cond_50
iget-object v2, v0, Lcom/mapquest/android/maps/cq;->e:Lcom/mapquest/android/maps/ct;
iget-object v2, v2, Lcom/mapquest/android/maps/ct;->c:Ljava/lang/String;
iget-object v3, v0, Lcom/mapquest/android/maps/cq;->e:Lcom/mapquest/android/maps/ct;
iget-object v3, v3, Lcom/mapquest/android/maps/ct;->b:Lcom/mapquest/android/maps/b;
invoke-virtual {v0, v2, v3}, Lcom/mapquest/android/maps/cq;->a(Ljava/lang/String;Lcom/mapquest/android/maps/b;)V
:cond_50
const/4 v2, 0x0
iput-object v2, v0, Lcom/mapquest/android/maps/cq;->e:Lcom/mapquest/android/maps/ct;
iput-object v1, v0, Lcom/mapquest/android/maps/cq;->b:Lcom/mapquest/android/maps/ct;
iget-object v2, v0, Lcom/mapquest/android/maps/cq;->c:Lcom/mapquest/android/maps/cu;
iget-object v3, v1, Lcom/mapquest/android/maps/ct;->a:Landroid/graphics/drawable/Drawable;
iget-object v1, v1, Lcom/mapquest/android/maps/ct;->b:Lcom/mapquest/android/maps/b;
invoke-virtual {v2, v3, v1}, Lcom/mapquest/android/maps/cu;->a(Landroid/graphics/drawable/Drawable;Lcom/mapquest/android/maps/b;)V
iget-object v1, v0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
if-eqz v1, :cond_1c
iget-object v0, v0, Lcom/mapquest/android/maps/cq;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v0}, Lcom/mapquest/android/maps/MapView;->invalidate()V
goto :goto_1c
.end method