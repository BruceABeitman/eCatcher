.class final Lcom/mapquest/android/maps/o;
.super Landroid/os/Handler;
.source "FSTileCache.java"
.field final synthetic a:Lcom/mapquest/android/maps/h;
.method public constructor <init>(Lcom/mapquest/android/maps/h;Landroid/os/Looper;)V
.registers 3
iput-object p1, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 10
const/4 v7, 0x3
const/4 v6, 0x0
const/4 v5, 0x2
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_ec
:goto_8
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
return-void
:pswitch_c
iget-object v0, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
sget-object v1, Lcom/mapquest/android/maps/p;->a:Lcom/mapquest/android/maps/p;
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/h;->a(Lcom/mapquest/android/maps/p;)Lcom/mapquest/android/maps/q;
move-result-object v0
iget-object v1, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
iget-object v2, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
invoke-static {v2}, Lcom/mapquest/android/maps/h;->a(Lcom/mapquest/android/maps/h;)Landroid/content/Context;
move-result-object v2
const-string v3, "tiles"
invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v2
invoke-virtual {v1, v2, v6, v0}, Lcom/mapquest/android/maps/h;->a(Ljava/io/File;ILcom/mapquest/android/maps/q;)V
iget-object v1, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
iget-boolean v1, v1, Lcom/mapquest/android/maps/h;->a:Z
if-eqz v1, :cond_41
iget-object v1, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
iget-boolean v1, v1, Lcom/mapquest/android/maps/h;->b:Z
if-eqz v1, :cond_41
iget-object v1, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
new-instance v2, Ljava/io/File;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v3
const-string v4, "mapquest/tiles"
invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1, v2, v6, v0}, Lcom/mapquest/android/maps/h;->a(Ljava/io/File;ILcom/mapquest/android/maps/q;)V
:cond_41
invoke-virtual {p0, v6}, Lcom/mapquest/android/maps/o;->removeMessages(I)V
goto :goto_8
:pswitch_45
invoke-virtual {p0, v7}, Lcom/mapquest/android/maps/o;->sendEmptyMessage(I)Z
invoke-virtual {p0, v5}, Lcom/mapquest/android/maps/o;->sendEmptyMessage(I)Z
goto :goto_8
:pswitch_4c
iget-object v0, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
sget-object v1, Lcom/mapquest/android/maps/p;->d:Lcom/mapquest/android/maps/p;
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/h;->a(Lcom/mapquest/android/maps/p;)Lcom/mapquest/android/maps/q;
move-result-object v0
iget-object v1, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
iget-object v2, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
invoke-static {v2}, Lcom/mapquest/android/maps/h;->a(Lcom/mapquest/android/maps/h;)Landroid/content/Context;
move-result-object v2
const-string v3, "tiles"
invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v2
invoke-virtual {v1, v2, v6, v0}, Lcom/mapquest/android/maps/h;->a(Ljava/io/File;ILcom/mapquest/android/maps/q;)V
iget-object v1, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
iget-boolean v1, v1, Lcom/mapquest/android/maps/h;->a:Z
if-eqz v1, :cond_81
iget-object v1, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
iget-boolean v1, v1, Lcom/mapquest/android/maps/h;->b:Z
if-eqz v1, :cond_81
iget-object v1, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
new-instance v2, Ljava/io/File;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v3
const-string v4, "mapquest/tiles"
invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1, v2, v6, v0}, Lcom/mapquest/android/maps/h;->a(Ljava/io/File;ILcom/mapquest/android/maps/q;)V
:cond_81
invoke-virtual {p0, v7}, Lcom/mapquest/android/maps/o;->removeMessages(I)V
goto :goto_8
:try_start_85
:pswitch_85
iget-object v0, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
sget-object v1, Lcom/mapquest/android/maps/p;->b:Lcom/mapquest/android/maps/p;
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/h;->a(Lcom/mapquest/android/maps/p;)Lcom/mapquest/android/maps/q;
move-result-object v0
iget-object v1, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
iget-boolean v1, v1, Lcom/mapquest/android/maps/h;->a:Z
if-eqz v1, :cond_aa
iget-object v1, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
iget-boolean v1, v1, Lcom/mapquest/android/maps/h;->b:Z
if-eqz v1, :cond_aa
iget-object v1, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
new-instance v2, Ljava/io/File;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v3
const-string v4, "mapquest/tiles"
invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
const/4 v3, -0x1
invoke-virtual {v1, v2, v3, v0}, Lcom/mapquest/android/maps/h;->a(Ljava/io/File;ILcom/mapquest/android/maps/q;)V
:cond_aa
iget-object v0, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
sget-object v1, Lcom/mapquest/android/maps/p;->c:Lcom/mapquest/android/maps/p;
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/h;->a(Lcom/mapquest/android/maps/p;)Lcom/mapquest/android/maps/q;
move-result-object v0
iget-object v1, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
iget-object v2, p0, Lcom/mapquest/android/maps/o;->a:Lcom/mapquest/android/maps/h;
invoke-static {v2}, Lcom/mapquest/android/maps/h;->a(Lcom/mapquest/android/maps/h;)Landroid/content/Context;
move-result-object v2
const-string v3, "tiles"
const/4 v4, 0x2
invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;
move-result-object v2
const/4 v3, -0x1
invoke-virtual {v1, v2, v3, v0}, Lcom/mapquest/android/maps/h;->a(Ljava/io/File;ILcom/mapquest/android/maps/q;)V
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/o;->removeMessages(I)V
:try_end_c9
.catch Ljava/lang/Exception; {:try_start_85 .. :try_end_c9} :catch_cb
goto/16 :goto_8
:catch_cb
move-exception v0
const-string v1, "com.mapquest.android.maps.fstilecache"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Exception while iterating "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-wide/16 v0, 0x1388
invoke-virtual {p0, v5, v0, v1}, Lcom/mapquest/android/maps/o;->sendEmptyMessageDelayed(IJ)Z
goto/16 :goto_8
nop
:pswitch_data_ec
.packed-switch 0x0
:pswitch_c
:pswitch_45
:pswitch_85
:pswitch_4c
.end packed-switch
.end method