.class  Lcom/twidroid/c/g;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/c/f;
.method constructor <init>(Lcom/twidroid/c/f;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/c/g;->a:Lcom/twidroid/c/f;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method protected varargs a([Lcom/twidroid/c/h;)Lcom/twidroid/c/i;
.registers 12
const/4 v1, 0x1
const/4 v2, 0x0
const/4 v3, 0x0
if-eqz p1, :cond_8
array-length v0, p1
if-nez v0, :cond_a
:cond_8
move-object v0, v3
:goto_9
:cond_9
return-object v0
:cond_a
aget-object v6, p1, v2
if-eqz v6, :cond_1f
invoke-virtual {v6}, Lcom/twidroid/c/h;->a()Lcom/twidroid/activity/r;
move-result-object v0
if-nez v0, :cond_21
move v0, v1
:goto_15
invoke-virtual {v6}, Lcom/twidroid/c/h;->b()I
move-result v4
const/4 v5, -0x1
if-ne v4, v5, :cond_23
:goto_1c
or-int/2addr v0, v1
if-eqz v0, :cond_25
:cond_1f
move-object v0, v3
goto :goto_9
:cond_21
move v0, v2
goto :goto_15
:cond_23
move v1, v2
goto :goto_1c
:cond_25
:try_start_25
new-instance v0, Ljava/io/File;
invoke-virtual {v6}, Lcom/twidroid/c/h;->a()Lcom/twidroid/activity/r;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/activity/r;->e()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6}, Lcom/twidroid/c/h;->a()Lcom/twidroid/activity/r;
move-result-object v4
invoke-virtual {v4}, Lcom/twidroid/activity/r;->h()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, "_f"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-object v4, p0, Lcom/twidroid/c/g;->a:Lcom/twidroid/c/f;
invoke-static {v4}, Lcom/twidroid/c/f;->b(Lcom/twidroid/c/f;)I
move-result v7
invoke-static {v0, v7}, Lcom/twidroid/net/a/b/b;->b(Ljava/io/File;I)I
move-result v4
new-instance v5, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput v4, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
invoke-virtual {v6}, Lcom/twidroid/c/h;->b()I
move-result v4
if-nez v4, :cond_ff
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6}, Lcom/twidroid/c/h;->a()Lcom/twidroid/activity/r;
move-result-object v6
invoke-virtual {v6}, Lcom/twidroid/activity/r;->i()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v4, Ljava/io/File;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v8, ".jpg"
invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v6
if-eqz v6, :cond_9e
invoke-virtual {v4}, Ljava/io/File;->delete()Z
:cond_9e
new-instance v4, Ljava/io/File;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v6, ".png"
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_bf
invoke-virtual {v4}, Ljava/io/File;->delete()Z
:cond_bf
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_c6
.catchall {:try_start_25 .. :try_end_c6} :catchall_169
.catch Ljava/lang/OutOfMemoryError; {:try_start_25 .. :try_end_c6} :catch_133
.catch Ljava/io/IOException; {:try_start_25 .. :try_end_c6} :catch_14e
move-result-object v1
:try_start_c7
invoke-static {v1, v7}, Lcom/ubermedia/b/l;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
:try_end_ca
.catchall {:try_start_c7 .. :try_end_ca} :catchall_182
.catch Ljava/lang/OutOfMemoryError; {:try_start_c7 .. :try_end_ca} :catch_1a2
.catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_192
move-result-object v0
if-nez v0, :cond_ce
move-object v0, v1
:cond_ce
move-object v4, v0
move-object v5, v1
move-object v1, v3
move-object v0, v3
:goto_d2
if-eqz v5, :cond_d9
if-eq v4, v5, :cond_d9
invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
:cond_d9
if-eqz v1, :cond_e0
if-eq v4, v1, :cond_e0
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
:cond_e0
if-eqz v4, :cond_eb
iget-object v1, p0, Lcom/twidroid/c/g;->a:Lcom/twidroid/c/f;
invoke-static {v1}, Lcom/twidroid/c/f;->c(Lcom/twidroid/c/f;)Lcom/twidroid/activity/r;
move-result-object v1
invoke-virtual {v1, v4}, Lcom/twidroid/activity/r;->a(Landroid/graphics/Bitmap;)V
:cond_eb
if-eqz v0, :cond_17b
iget-object v1, p0, Lcom/twidroid/c/g;->a:Lcom/twidroid/c/f;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-static {v1, v0}, Lcom/twidroid/c/f;->a(Lcom/twidroid/c/f;I)V
:goto_f6
new-instance v0, Lcom/twidroid/c/i;
iget-object v1, p0, Lcom/twidroid/c/g;->a:Lcom/twidroid/c/f;
invoke-direct {v0, v1, v3}, Lcom/twidroid/c/i;-><init>(Lcom/twidroid/c/f;Ljava/lang/Throwable;)V
goto/16 :goto_9
:try_start_ff
:cond_ff
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v4
if-eqz v4, :cond_1bc
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_10c
.catchall {:try_start_ff .. :try_end_10c} :catchall_169
.catch Ljava/lang/OutOfMemoryError; {:try_start_ff .. :try_end_10c} :catch_133
.catch Ljava/io/IOException; {:try_start_ff .. :try_end_10c} :catch_14e
move-result-object v5
:try_start_10d
new-instance v0, Lcom/b/a/a/a/a/n;
invoke-direct {v0, v5}, Lcom/b/a/a/a/a/n;-><init>(Landroid/graphics/Bitmap;)V
invoke-virtual {v6}, Lcom/twidroid/c/h;->b()I
move-result v4
invoke-static {v0, v4}, Lcom/b/a/a/a/a/f;->a(Lcom/b/a/a/a/a/n;I)Lcom/b/a/a/a/a/n;
move-result-object v0
invoke-virtual {v0}, Lcom/b/a/a/a/a/n;->b()Landroid/graphics/Bitmap;
:try_end_11d
.catchall {:try_start_10d .. :try_end_11d} :catchall_186
.catch Ljava/lang/OutOfMemoryError; {:try_start_10d .. :try_end_11d} :catch_1a7
.catch Ljava/io/IOException; {:try_start_10d .. :try_end_11d} :catch_197
move-result-object v4
:try_start_11e
sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
invoke-static {v4, v1, v0}, Lcom/twidroid/d/r;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
invoke-static {v4, v7}, Lcom/ubermedia/b/l;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
:try_end_126
.catchall {:try_start_11e .. :try_end_126} :catchall_189
.catch Ljava/lang/OutOfMemoryError; {:try_start_11e .. :try_end_126} :catch_1ac
.catch Ljava/io/IOException; {:try_start_11e .. :try_end_126} :catch_19b
move-result-object v1
:try_start_127
invoke-virtual {v6}, Lcom/twidroid/c/h;->b()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
:try_end_12e
.catchall {:try_start_127 .. :try_end_12e} :catchall_18b
.catch Ljava/lang/OutOfMemoryError; {:try_start_127 .. :try_end_12e} :catch_1b1
.catch Ljava/io/IOException; {:try_start_127 .. :try_end_12e} :catch_19e
move-result-object v0
if-nez v1, :cond_1b7
move-object v1, v4
goto :goto_d2
:catch_133
move-exception v0
move-object v1, v0
move-object v2, v3
move-object v4, v3
:try_start_137
:goto_137
new-instance v0, Lcom/twidroid/c/i;
iget-object v5, p0, Lcom/twidroid/c/g;->a:Lcom/twidroid/c/f;
invoke-direct {v0, v5, v1}, Lcom/twidroid/c/i;-><init>(Lcom/twidroid/c/f;Ljava/lang/Throwable;)V
:try_end_13e
.catchall {:try_start_137 .. :try_end_13e} :catchall_18e
if-eqz v4, :cond_145
if-eq v3, v4, :cond_145
invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
:cond_145
if-eqz v2, :cond_9
if-eq v3, v2, :cond_9
invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
goto/16 :goto_9
:catch_14e
move-exception v0
move-object v1, v0
move-object v4, v3
move-object v5, v3
:try_start_152
:goto_152
new-instance v0, Lcom/twidroid/c/i;
iget-object v2, p0, Lcom/twidroid/c/g;->a:Lcom/twidroid/c/f;
invoke-direct {v0, v2, v1}, Lcom/twidroid/c/i;-><init>(Lcom/twidroid/c/f;Ljava/lang/Throwable;)V
:try_end_159
.catchall {:try_start_152 .. :try_end_159} :catchall_189
if-eqz v5, :cond_160
if-eq v3, v5, :cond_160
invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
:cond_160
if-eqz v4, :cond_9
if-eq v3, v4, :cond_9
invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
goto/16 :goto_9
:catchall_169
move-exception v0
move-object v4, v3
move-object v5, v3
:goto_16c
if-eqz v5, :cond_173
if-eq v3, v5, :cond_173
invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
:cond_173
if-eqz v4, :cond_17a
if-eq v3, v4, :cond_17a
invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
:cond_17a
throw v0
:cond_17b
iget-object v0, p0, Lcom/twidroid/c/g;->a:Lcom/twidroid/c/f;
invoke-static {v0, v2}, Lcom/twidroid/c/f;->a(Lcom/twidroid/c/f;I)V
goto/16 :goto_f6
:catchall_182
move-exception v0
move-object v4, v3
move-object v5, v1
goto :goto_16c
:catchall_186
move-exception v0
move-object v4, v3
goto :goto_16c
:catchall_189
move-exception v0
goto :goto_16c
:catchall_18b
move-exception v0
move-object v3, v1
goto :goto_16c
:catchall_18e
move-exception v0
move-object v5, v4
move-object v4, v2
goto :goto_16c
:catch_192
move-exception v0
move-object v4, v3
move-object v5, v1
move-object v1, v0
goto :goto_152
:catch_197
move-exception v0
move-object v1, v0
move-object v4, v3
goto :goto_152
:catch_19b
move-exception v0
move-object v1, v0
goto :goto_152
:catch_19e
move-exception v0
move-object v3, v1
move-object v1, v0
goto :goto_152
:catch_1a2
move-exception v0
move-object v2, v3
move-object v4, v1
move-object v1, v0
goto :goto_137
:catch_1a7
move-exception v0
move-object v1, v0
move-object v2, v3
move-object v4, v5
goto :goto_137
:catch_1ac
move-exception v0
move-object v1, v0
move-object v2, v4
move-object v4, v5
goto :goto_137
:catch_1b1
move-exception v0
move-object v3, v1
move-object v2, v4
move-object v1, v0
move-object v4, v5
goto :goto_137
:cond_1b7
move-object v9, v1
move-object v1, v4
move-object v4, v9
goto/16 :goto_d2
:cond_1bc
move-object v0, v3
move-object v4, v3
move-object v1, v3
move-object v5, v3
goto/16 :goto_d2
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/c/h;
invoke-virtual {p0, p1}, Lcom/twidroid/c/g;->a([Lcom/twidroid/c/h;)Lcom/twidroid/c/i;
move-result-object v0
return-object v0
.end method
.method protected a()V
.registers 2
invoke-super {p0}, Lcom/ubermedia/a/a;->a()V
iget-object v0, p0, Lcom/twidroid/c/g;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->a(Lcom/twidroid/c/f;)V
return-void
.end method
.method protected a(Lcom/twidroid/c/i;)V
.registers 5
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/c/g;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->d(Lcom/twidroid/c/f;)V
if-eqz p1, :cond_35
invoke-virtual {p1}, Lcom/twidroid/c/i;->a()Ljava/lang/Throwable;
move-result-object v0
if-nez v0, :cond_36
iget-object v0, p0, Lcom/twidroid/c/g;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->e(Lcom/twidroid/c/f;)Lcom/twidroid/c/g;
move-result-object v0
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/twidroid/c/g;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->e(Lcom/twidroid/c/f;)Lcom/twidroid/c/g;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/c/g;->g()Lcom/ubermedia/a/e;
move-result-object v0
sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;
if-eq v0, v1, :cond_30
iget-object v0, p0, Lcom/twidroid/c/g;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->e(Lcom/twidroid/c/f;)Lcom/twidroid/c/g;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/twidroid/c/g;->b(Z)Z
:cond_30
iget-object v0, p0, Lcom/twidroid/c/g;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->f(Lcom/twidroid/c/f;)V
:cond_35
:goto_35
return-void
:cond_36
instance-of v0, v0, Ljava/lang/OutOfMemoryError;
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/twidroid/c/g;->a:Lcom/twidroid/c/f;
invoke-static {v0}, Lcom/twidroid/c/f;->g(Lcom/twidroid/c/f;)Landroid/content/Context;
move-result-object v0
const-string v1, "Image is too large to apply this effect"
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_35
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/twidroid/c/i;
invoke-virtual {p0, p1}, Lcom/twidroid/c/g;->a(Lcom/twidroid/c/i;)V
return-void
.end method