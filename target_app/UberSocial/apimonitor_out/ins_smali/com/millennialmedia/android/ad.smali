.class  Lcom/millennialmedia/android/ad;
.super Lcom/millennialmedia/android/bz;
.source "SourceFile"
.field  a:Z
.field private b:Landroid/net/Uri;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/millennialmedia/android/bz;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/millennialmedia/android/ad;->a:Z
return-void
.end method
.method protected a(IILandroid/content/Intent;)V
.registers 11
const/4 v6, 0x0
invoke-super {p0, p1, p2, p3}, Lcom/millennialmedia/android/bz;->a(IILandroid/content/Intent;)V
if-eqz p3, :cond_6a
const/4 v2, 0x0
:try_start_7
invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v1
if-nez v1, :cond_b7
invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_6a
invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "data"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
:try_end_1f
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_8f
:try_start_1f
new-instance v3, Ljava/io/File;
invoke-virtual {p0}, Lcom/millennialmedia/android/ad;->o()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v1
invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/4 v5, 0x0
invoke-virtual {v0, v4, v5, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
new-instance v4, Ljava/io/ByteArrayInputStream;
invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
new-instance v1, Ljava/io/FileOutputStream;
invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_49
.catchall {:try_start_1f .. :try_end_49} :catchall_a1
.catch Ljava/lang/Exception; {:try_start_1f .. :try_end_49} :catch_172
const/16 v0, 0x400
:try_start_4b
new-array v0, v0, [B
:goto_4d
invoke-virtual {v4, v0}, Ljava/io/ByteArrayInputStream;->read([B)I
move-result v3
if-lez v3, :cond_7b
const/4 v5, 0x0
invoke-virtual {v1, v0, v5, v3}, Ljava/io/OutputStream;->write([BII)V
:try_end_57
.catchall {:try_start_4b .. :try_end_57} :catchall_16f
.catch Ljava/lang/Exception; {:try_start_4b .. :try_end_57} :catch_58
goto :goto_4d
:catch_58
move-exception v0
:try_start_59
:goto_59
const-string v3, "BridgeMMMedia"
const-string v4, "Problem getting bitmap from data"
invoke-static {v3, v4, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_60
.catchall {:try_start_59 .. :try_end_60} :catchall_16f
if-eqz v6, :cond_65
:try_start_62
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:cond_65
if-eqz v1, :cond_6a
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
:goto_6a
:cond_6a
:try_end_6a
.catch Ljava/lang/Exception; {:try_start_62 .. :try_end_6a} :catch_98
invoke-static {}, Lcom/millennialmedia/android/z;->a()Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_6f
invoke-static {}, Lcom/millennialmedia/android/z;->a()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->notify()V
monitor-exit v1
:try_end_77
.catchall {:try_start_6f .. :try_end_77} :catchall_15e
invoke-virtual {p0}, Lcom/millennialmedia/android/ad;->d()V
return-void
:cond_7b
if-eqz v6, :cond_80
:try_start_7d
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:cond_80
if-eqz v1, :cond_6a
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
:try_end_85
.catch Ljava/lang/Exception; {:try_start_7d .. :try_end_85} :catch_86
goto :goto_6a
:catch_86
move-exception v0
:try_start_87
const-string v1, "BridgeMMMedia"
const-string v2, "Error closing file"
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_8e
.catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8e} :catch_8f
goto :goto_6a
:catch_8f
move-exception v0
const-string v1, "BridgeMMMedia"
const-string v2, "Error with picture: "
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_6a
:catch_98
move-exception v0
:try_start_99
const-string v1, "BridgeMMMedia"
const-string v2, "Error closing file"
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_a0
.catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a0} :catch_8f
goto :goto_6a
:catchall_a1
move-exception v0
move-object v1, v6
:goto_a3
if-eqz v6, :cond_a8
:try_start_a5
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:cond_a8
if-eqz v1, :cond_ad
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
:goto_ad
:cond_ad
:try_end_ad
.catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_ad} :catch_ae
:try_start_ad
throw v0
:catch_ae
move-exception v1
const-string v2, "BridgeMMMedia"
const-string v3, "Error closing file"
invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_ad
:cond_b7
if-eqz v1, :cond_6a
const/4 v0, 0x1
new-array v2, v0, [Ljava/lang/String;
const/4 v0, 0x0
const-string v3, "_data"
aput-object v3, v2, v0
invoke-virtual {p0}, Lcom/millennialmedia/android/ad;->r()Landroid/content/ContentResolver;
move-result-object v0
if-eqz v0, :cond_6a
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_6a
const-string v1, "_data"
invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v1
const/4 v2, -0x1
if-eq v1, v2, :cond_6a
invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
new-instance v3, Ljava/io/File;
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:try_start_e8
:try_end_e8
.catch Ljava/lang/Exception; {:try_start_ad .. :try_end_e8} :catch_8f
new-instance v0, Ljava/io/File;
invoke-virtual {p0}, Lcom/millennialmedia/android/ad;->o()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/io/FileInputStream;
invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_start_fe
:try_end_fe
.catchall {:try_start_e8 .. :try_end_fe} :catchall_148
.catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_fe} :catch_169
new-instance v1, Ljava/io/FileOutputStream;
invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_103
.catchall {:try_start_fe .. :try_end_103} :catchall_161
.catch Ljava/lang/Exception; {:try_start_fe .. :try_end_103} :catch_16c
const/16 v0, 0x400
:try_start_105
new-array v0, v0, [B
:goto_107
invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
move-result v3
if-lez v3, :cond_132
const/4 v4, 0x0
invoke-virtual {v1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V
:try_end_111
.catchall {:try_start_105 .. :try_end_111} :catchall_163
.catch Ljava/lang/Exception; {:try_start_105 .. :try_end_111} :catch_112
goto :goto_107
:catch_112
move-exception v0
move-object v6, v1
move-object v1, v2
:try_start_115
:goto_115
const-string v2, "BridgeMMMedia"
const-string v3, "Error copying image"
invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_11c
.catchall {:try_start_115 .. :try_end_11c} :catchall_166
if-eqz v1, :cond_121
:try_start_11e
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:cond_121
if-eqz v6, :cond_6a
invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
:try_end_126
.catch Ljava/lang/Exception; {:try_start_11e .. :try_end_126} :catch_128
goto/16 :goto_6a
:catch_128
move-exception v0
:try_start_129
const-string v1, "BridgeMMMedia"
const-string v2, "Error closing file"
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_130
.catch Ljava/lang/Exception; {:try_start_129 .. :try_end_130} :catch_8f
goto/16 :goto_6a
:cond_132
if-eqz v2, :cond_137
:try_start_134
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:cond_137
if-eqz v1, :cond_6a
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
:try_end_13c
.catch Ljava/lang/Exception; {:try_start_134 .. :try_end_13c} :catch_13e
goto/16 :goto_6a
:catch_13e
move-exception v0
:try_start_13f
const-string v1, "BridgeMMMedia"
const-string v2, "Error closing file"
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_146
.catch Ljava/lang/Exception; {:try_start_13f .. :try_end_146} :catch_8f
goto/16 :goto_6a
:catchall_148
move-exception v0
move-object v2, v6
:goto_14a
if-eqz v2, :cond_14f
:try_start_14c
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:cond_14f
if-eqz v6, :cond_154
invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
:try_start_154
:goto_154
:try_end_154
.catch Ljava/lang/Exception; {:try_start_14c .. :try_end_154} :catch_155
:cond_154
throw v0
:catch_155
move-exception v1
const-string v2, "BridgeMMMedia"
const-string v3, "Error closing file"
invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_15d
.catch Ljava/lang/Exception; {:try_start_154 .. :try_end_15d} :catch_8f
goto :goto_154
:catchall_15e
move-exception v0
:try_start_15f
monitor-exit v1
:try_end_160
.catchall {:try_start_15f .. :try_end_160} :catchall_15e
throw v0
:catchall_161
move-exception v0
goto :goto_14a
:catchall_163
move-exception v0
move-object v6, v1
goto :goto_14a
:catchall_166
move-exception v0
move-object v2, v1
goto :goto_14a
:catch_169
move-exception v0
move-object v1, v6
goto :goto_115
:catch_16c
move-exception v0
move-object v1, v2
goto :goto_115
:catchall_16f
move-exception v0
goto/16 :goto_a3
:catch_172
move-exception v0
move-object v1, v6
goto/16 :goto_59
.end method
.method public a(Landroid/os/Bundle;)V
.registers 6
const/4 v3, 0x0
const/4 v2, 0x1
invoke-super {p0, p1}, Lcom/millennialmedia/android/bz;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/millennialmedia/android/ad;->p()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_19
invoke-virtual {p0}, Lcom/millennialmedia/android/ad;->p()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
const-string v1, "hasRequestedPic"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/ad;->a:Z
:cond_19
iget-boolean v0, p0, Lcom/millennialmedia/android/ad;->a:Z
if-nez v0, :cond_4a
invoke-virtual {p0}, Lcom/millennialmedia/android/ad;->o()Landroid/content/Intent;
move-result-object v0
const-string v1, "type"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "Camera"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4b
new-instance v0, Landroid/content/Intent;
const-string v1, "android.media.action.IMAGE_CAPTURE"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/millennialmedia/android/ad;->o()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v1
iput-object v1, p0, Lcom/millennialmedia/android/ad;->b:Landroid/net/Uri;
const-string v1, "return-data"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iput-boolean v2, p0, Lcom/millennialmedia/android/ad;->a:Z
invoke-virtual {p0, v0, v3}, Lcom/millennialmedia/android/ad;->a(Landroid/content/Intent;I)V
:goto_4a
:cond_4a
return-void
:cond_4b
new-instance v0, Landroid/content/Intent;
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v1, "image/*"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "android.intent.action.GET_CONTENT"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
iput-boolean v2, p0, Lcom/millennialmedia/android/ad;->a:Z
invoke-virtual {p0, v0, v3}, Lcom/millennialmedia/android/ad;->a(Landroid/content/Intent;I)V
goto :goto_4a
.end method
.method public i()Ljava/lang/Object;
.registers 4
invoke-super {p0}, Lcom/millennialmedia/android/bz;->i()Ljava/lang/Object;
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "hasRequestedPic"
iget-boolean v2, p0, Lcom/millennialmedia/android/ad;->a:Z
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
return-object v0
.end method