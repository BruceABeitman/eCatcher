.class final Lcom/mapquest/android/maps/h;
.super Ljava/lang/Object;
.source "FSTileCache.java"
.implements Lcom/mapquest/android/maps/x;
.field private static h:I
.field  a:Z
.field  b:Z
.field  c:Landroid/os/HandlerThread;
.field  d:Lcom/mapquest/android/maps/o;
.field private e:Ljava/io/File;
.field private f:Landroid/content/Context;
.field private g:Landroid/content/BroadcastReceiver;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x1
sput v0, Lcom/mapquest/android/maps/h;->h:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/mapquest/android/maps/h;->a:Z
iput-boolean v0, p0, Lcom/mapquest/android/maps/h;->b:Z
iput-object p1, p0, Lcom/mapquest/android/maps/h;->f:Landroid/content/Context;
new-instance v0, Lcom/mapquest/android/maps/m;
invoke-direct {v0, p0}, Lcom/mapquest/android/maps/m;-><init>(Lcom/mapquest/android/maps/h;)V
iput-object v0, p0, Lcom/mapquest/android/maps/h;->g:Landroid/content/BroadcastReceiver;
new-instance v0, Landroid/content/IntentFilter;
invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V
const-string v1, "android.intent.action.MEDIA_MOUNTED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
const-string v1, "android.intent.action.MEDIA_REMOVED"
invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/mapquest/android/maps/h;->f:Landroid/content/Context;
iget-object v2, p0, Lcom/mapquest/android/maps/h;->g:Landroid/content/BroadcastReceiver;
invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
iget-object v0, p0, Lcom/mapquest/android/maps/h;->f:Landroid/content/Context;
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/h;->a(Landroid/content/Context;)V
new-instance v0, Landroid/os/HandlerThread;
const-string v1, "cache"
const/4 v2, 0x1
invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V
iput-object v0, p0, Lcom/mapquest/android/maps/h;->c:Landroid/os/HandlerThread;
iget-object v0, p0, Lcom/mapquest/android/maps/h;->c:Landroid/os/HandlerThread;
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
new-instance v0, Lcom/mapquest/android/maps/o;
iget-object v1, p0, Lcom/mapquest/android/maps/h;->c:Landroid/os/HandlerThread;
invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/mapquest/android/maps/o;-><init>(Lcom/mapquest/android/maps/h;Landroid/os/Looper;)V
iput-object v0, p0, Lcom/mapquest/android/maps/h;->d:Lcom/mapquest/android/maps/o;
const-string v0, "com.mapquest.android.maps.fstilecache"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Creating file system cache at "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/mapquest/android/maps/h;->e:Ljava/io/File;
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method static synthetic a(Lcom/mapquest/android/maps/h;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/h;->f:Landroid/content/Context;
return-object v0
.end method
.method private a(I)Lcom/mapquest/android/maps/q;
.registers 3
new-instance v0, Lcom/mapquest/android/maps/k;
invoke-direct {v0, p0, p1}, Lcom/mapquest/android/maps/k;-><init>(Lcom/mapquest/android/maps/h;I)V
return-object v0
.end method
.method private e(Lcom/mapquest/android/maps/ca;)Ljava/io/File;
.registers 6
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/mapquest/android/maps/h;->e:Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, p1, Lcom/mapquest/android/maps/ca;->i:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "_"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget v3, Lcom/mapquest/android/maps/h;->h:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_2b
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:cond_2b
return-object v0
.end method
.method public final a(Lcom/mapquest/android/maps/p;)Lcom/mapquest/android/maps/q;
.registers 5
const/4 v0, 0x0
sget-object v1, Lcom/mapquest/android/maps/n;->a:[I
invoke-virtual {p1}, Lcom/mapquest/android/maps/p;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_28
:goto_c
return-object v0
:pswitch_d
new-instance v0, Lcom/mapquest/android/maps/i;
invoke-direct {v0, p0}, Lcom/mapquest/android/maps/i;-><init>(Lcom/mapquest/android/maps/h;)V
goto :goto_c
:pswitch_13
new-instance v0, Lcom/mapquest/android/maps/j;
invoke-direct {v0, p0}, Lcom/mapquest/android/maps/j;-><init>(Lcom/mapquest/android/maps/h;)V
goto :goto_c
:pswitch_19
const/high16 v0, 0x640
invoke-direct {p0, v0}, Lcom/mapquest/android/maps/h;->a(I)Lcom/mapquest/android/maps/q;
move-result-object v0
goto :goto_c
:pswitch_20
const/high16 v0, 0xa0
invoke-direct {p0, v0}, Lcom/mapquest/android/maps/h;->a(I)Lcom/mapquest/android/maps/q;
move-result-object v0
goto :goto_c
nop
:pswitch_data_28
.packed-switch 0x1
:pswitch_d
:pswitch_13
:pswitch_19
:pswitch_20
.end packed-switch
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/mapquest/android/maps/h;->d:Lcom/mapquest/android/maps/o;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/o;->sendEmptyMessage(I)Z
return-void
.end method
.method final a(Landroid/content/Context;)V
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v0
const-string v1, "mounted"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_35
iput-boolean v3, p0, Lcom/mapquest/android/maps/h;->b:Z
iput-boolean v3, p0, Lcom/mapquest/android/maps/h;->a:Z
:goto_12
iget-boolean v0, p0, Lcom/mapquest/android/maps/h;->a:Z
iget-boolean v1, p0, Lcom/mapquest/android/maps/h;->b:Z
if-eqz v0, :cond_47
if-eqz v1, :cond_47
new-instance v0, Ljava/io/File;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v1
const-string v2, "mapquest/tiles"
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object v0, p0, Lcom/mapquest/android/maps/h;->e:Ljava/io/File;
iget-object v0, p0, Lcom/mapquest/android/maps/h;->e:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_34
iget-object v0, p0, Lcom/mapquest/android/maps/h;->e:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:goto_34
:cond_34
return-void
:cond_35
const-string v1, "mounted_ro"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_42
iput-boolean v3, p0, Lcom/mapquest/android/maps/h;->a:Z
iput-boolean v2, p0, Lcom/mapquest/android/maps/h;->b:Z
goto :goto_12
:cond_42
iput-boolean v2, p0, Lcom/mapquest/android/maps/h;->b:Z
iput-boolean v2, p0, Lcom/mapquest/android/maps/h;->a:Z
goto :goto_12
:cond_47
const-string v0, "tiles"
const/4 v1, 0x2
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v0
iput-object v0, p0, Lcom/mapquest/android/maps/h;->e:Ljava/io/File;
goto :goto_34
.end method
.method public final a(Lcom/mapquest/android/maps/ca;)V
.registers 7
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {p1}, Lcom/mapquest/android/maps/ca;->a()Z
move-result v0
if-eqz v0, :cond_c
iget-object v0, p1, Lcom/mapquest/android/maps/ca;->h:[B
if-nez v0, :cond_d
:goto_c
:cond_c
return-void
:cond_d
iget-object v0, p1, Lcom/mapquest/android/maps/ca;->h:[B
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/mapquest/android/maps/h;->d:Lcom/mapquest/android/maps/o;
invoke-virtual {v0, v2}, Lcom/mapquest/android/maps/o;->removeMessages(I)V
new-instance v0, Ljava/io/File;
invoke-direct {p0, p1}, Lcom/mapquest/android/maps/h;->e(Lcom/mapquest/android/maps/ca;)Ljava/io/File;
move-result-object v2
iget-object v3, p1, Lcom/mapquest/android/maps/ca;->k:Ljava/lang/String;
invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_start_21
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_26
.catchall {:try_start_21 .. :try_end_26} :catchall_5a
.catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_26} :catch_3a
.catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_4a
:try_start_26
iget-object v0, p1, Lcom/mapquest/android/maps/ca;->h:[B
invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V
invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_start_31
:try_end_31
.catchall {:try_start_26 .. :try_end_31} :catchall_63
.catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_31} :catch_69
.catch Ljava/io/IOException; {:try_start_26 .. :try_end_31} :catch_66
iget-object v0, p0, Lcom/mapquest/android/maps/h;->d:Lcom/mapquest/android/maps/o;
const/4 v2, 0x1
const-wide/16 v3, 0x1f4
invoke-virtual {v0, v2, v3, v4}, Lcom/mapquest/android/maps/o;->sendEmptyMessageDelayed(IJ)Z
:try_end_39
.catchall {:try_start_31 .. :try_end_39} :catchall_5a
.catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_39} :catch_3a
.catch Ljava/io/IOException; {:try_start_31 .. :try_end_39} :catch_4a
goto :goto_c
:catch_3a
move-exception v0
:try_start_3b
:goto_3b
const-string v2, "com.mapquest.android.maps.fstilecache"
const-string v3, "FS.addTile:File not found"
invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_42
.catchall {:try_start_3b .. :try_end_42} :catchall_5a
if-eqz v1, :cond_c
:try_start_44
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_47
.catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48
goto :goto_c
:catch_48
move-exception v0
goto :goto_c
:catch_4a
move-exception v0
:goto_4b
:try_start_4b
const-string v2, "com.mapquest.android.maps.fstilecache"
const-string v3, "FS.addTile:IO Exception while writing to file"
invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_52
.catchall {:try_start_4b .. :try_end_52} :catchall_5a
if-eqz v1, :cond_c
:try_start_54
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_57
.catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58
goto :goto_c
:catch_58
move-exception v0
goto :goto_c
:catchall_5a
move-exception v0
:goto_5b
if-eqz v1, :cond_60
:try_start_5d
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:cond_60
:goto_60
:try_end_60
.catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61
throw v0
:catch_61
move-exception v1
goto :goto_60
:catchall_63
move-exception v0
move-object v1, v2
goto :goto_5b
:catch_66
move-exception v0
move-object v1, v2
goto :goto_4b
:catch_69
move-exception v0
move-object v1, v2
goto :goto_3b
.end method
.method public final a(Ljava/io/File;ILcom/mapquest/android/maps/q;)V
.registers 9
invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z
move-result v0
if-nez v0, :cond_7
:cond_6
return-void
:cond_7
invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v1
if-eqz p2, :cond_15
new-instance v0, Lcom/mapquest/android/maps/l;
invoke-direct {v0, p0, p2}, Lcom/mapquest/android/maps/l;-><init>(Lcom/mapquest/android/maps/h;I)V
invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
:cond_15
if-eqz v1, :cond_6
array-length v2, v1
const/4 v0, 0x0
:goto_19
if-ge v0, v2, :cond_6
aget-object v3, v1, v0
invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z
move-result v4
if-eqz v4, :cond_26
invoke-virtual {p0, v3, p2, p3}, Lcom/mapquest/android/maps/h;->a(Ljava/io/File;ILcom/mapquest/android/maps/q;)V
:cond_26
invoke-interface {p3, v3}, Lcom/mapquest/android/maps/q;->a(Ljava/io/File;)V
add-int/lit8 v0, v0, 0x1
goto :goto_19
.end method
.method public final b(Lcom/mapquest/android/maps/ca;)Lcom/mapquest/android/maps/ca;
.registers 8
const/4 v0, 0x0
new-instance v1, Ljava/io/File;
invoke-direct {p0, p1}, Lcom/mapquest/android/maps/h;->e(Lcom/mapquest/android/maps/ca;)Ljava/io/File;
move-result-object v2
iget-object v3, p1, Lcom/mapquest/android/maps/ca;->k:Ljava/lang/String;
invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-nez v2, :cond_17
const-wide/16 v0, -0x1
iput-wide v0, p1, Lcom/mapquest/android/maps/ca;->c:J
:goto_16
return-object p1
:cond_17
new-instance v3, Ljava/io/ByteArrayOutputStream;
invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
:try_start_1c
new-instance v2, Ljava/io/FileInputStream;
invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_end_21
.catchall {:try_start_1c .. :try_end_21} :catchall_59
.catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_21} :catch_6d
.catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_6a
const/16 v1, 0x2000
:try_start_23
new-array v1, v1, [B
:goto_25
invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I
move-result v4
const/4 v5, -0x1
if-eq v4, v5, :cond_40
const/4 v5, 0x0
invoke-virtual {v3, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
:try_end_30
.catchall {:try_start_23 .. :try_end_30} :catchall_68
.catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_30} :catch_31
.catch Ljava/io/IOException; {:try_start_23 .. :try_end_30} :catch_4a
goto :goto_25
:catch_31
move-exception v1
:goto_32
:try_start_32
const-string v3, "com.mapquest.android.maps.fstilecache"
const-string v4, "FS.getTile:File not found"
invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_39
.catchall {:try_start_32 .. :try_end_39} :catchall_68
if-eqz v2, :cond_3e
:try_start_3b
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
:cond_3e
:try_end_3e
.catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_62
:goto_3e
move-object p1, v0
goto :goto_16
:cond_40
:try_start_40
invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
iput-object v1, p1, Lcom/mapquest/android/maps/ca;->h:[B
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
:try_end_49
.catchall {:try_start_40 .. :try_end_49} :catchall_68
.catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_49} :catch_31
.catch Ljava/io/IOException; {:try_start_40 .. :try_end_49} :catch_4a
goto :goto_16
:catch_4a
move-exception v1
:goto_4b
:try_start_4b
const-string v3, "com.mapquest.android.maps.fstilecache"
const-string v4, "FS.getTile:IOException while reading file"
invoke-static {v3, v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_52
.catchall {:try_start_4b .. :try_end_52} :catchall_68
if-eqz v2, :cond_57
:try_start_54
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
:goto_57
:cond_57
:try_end_57
.catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_64
move-object p1, v0
goto :goto_16
:catchall_59
move-exception v1
move-object v2, v0
move-object v0, v1
:goto_5c
if-eqz v2, :cond_61
:try_start_5e
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
:try_end_61
.catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_66
:cond_61
:goto_61
throw v0
:catch_62
move-exception v1
goto :goto_3e
:catch_64
move-exception v1
goto :goto_57
:catch_66
move-exception v1
goto :goto_61
:catchall_68
move-exception v0
goto :goto_5c
:catch_6a
move-exception v1
move-object v2, v0
goto :goto_4b
:catch_6d
move-exception v1
move-object v2, v0
goto :goto_32
.end method
.method public final b()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/mapquest/android/maps/h;->f:Landroid/content/Context;
iget-object v1, p0, Lcom/mapquest/android/maps/h;->g:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
:goto_7
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_36
iget-object v0, p0, Lcom/mapquest/android/maps/h;->d:Lcom/mapquest/android/maps/o;
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/mapquest/android/maps/h;->d:Lcom/mapquest/android/maps/o;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/o;->removeMessages(I)V
iget-object v0, p0, Lcom/mapquest/android/maps/h;->d:Lcom/mapquest/android/maps/o;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/o;->removeMessages(I)V
iget-object v0, p0, Lcom/mapquest/android/maps/h;->d:Lcom/mapquest/android/maps/o;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/o;->removeMessages(I)V
iget-object v0, p0, Lcom/mapquest/android/maps/h;->d:Lcom/mapquest/android/maps/o;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/o;->removeMessages(I)V
:cond_23
iget-object v0, p0, Lcom/mapquest/android/maps/h;->c:Landroid/os/HandlerThread;
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/mapquest/android/maps/h;->c:Landroid/os/HandlerThread;
invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v0
if-eqz v0, :cond_32
invoke-virtual {v0}, Landroid/os/Looper;->quit()V
:cond_32
const/4 v0, 0x0
iput-object v0, p0, Lcom/mapquest/android/maps/h;->e:Ljava/io/File;
return-void
:catch_36
move-exception v0
goto :goto_7
.end method
.method public final c(Lcom/mapquest/android/maps/ca;)V
.registers 5
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/mapquest/android/maps/h;->e:Ljava/io/File;
iget-object v2, p1, Lcom/mapquest/android/maps/ca;->k:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
return-void
.end method
.method public final d(Lcom/mapquest/android/maps/ca;)Z
.registers 5
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/mapquest/android/maps/h;->e:Ljava/io/File;
iget-object v2, p1, Lcom/mapquest/android/maps/ca;->k:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
return v0
.end method