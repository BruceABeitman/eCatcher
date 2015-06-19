.class public Lcom/twidroid/net/j;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Z
.field private b:Z
.field private c:I
.field private d:I
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/twidroid/net/j;->a:Z
iput-boolean v0, p0, Lcom/twidroid/net/j;->b:Z
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
.registers 11
const/4 v1, 0x0
invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
:try_start_5
iget-boolean v2, p0, Lcom/twidroid/net/j;->a:Z
if-eqz v2, :cond_4c
new-instance v2, Ljava/io/File;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/net/k;->a()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
new-instance v3, Ljava/io/FileOutputStream;
invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v5, 0x64
invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
const/4 v0, 0x0
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
iget v4, p0, Lcom/twidroid/net/j;->c:I
iget v5, p0, Lcom/twidroid/net/j;->d:I
iget-boolean v6, p0, Lcom/twidroid/net/j;->b:Z
invoke-static {v0, v3, v4, v5, v6}, Lcom/twidroid/ui/a;->a(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIZ)V
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
:goto_4b
:cond_4b
return-object v0
:cond_4c
iget-boolean v2, p0, Lcom/twidroid/net/j;->b:Z
if-eqz v2, :cond_4b
invoke-static {v0}, Lcom/twidroid/ui/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
:try_end_53
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_53} :catch_69
move-result-object v0
:try_start_54
new-instance v1, Ljava/io/FileOutputStream;
invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v3, 0x64
invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_63
.catch Ljava/lang/Exception; {:try_start_54 .. :try_end_63} :catch_64
goto :goto_4b
:catch_64
move-exception v1
:goto_65
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_4b
:catch_69
move-exception v0
move-object v7, v0
move-object v0, v1
move-object v1, v7
goto :goto_65
.end method
.method public a(II)Lcom/twidroid/net/j;
.registers 3
iput p1, p0, Lcom/twidroid/net/j;->c:I
iput p2, p0, Lcom/twidroid/net/j;->d:I
return-object p0
.end method
.method public a(Z)Lcom/twidroid/net/j;
.registers 2
iput-boolean p1, p0, Lcom/twidroid/net/j;->b:Z
return-object p0
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/net/j;->a:Z
return v0
.end method
.method public b(Z)Lcom/twidroid/net/j;
.registers 2
iput-boolean p1, p0, Lcom/twidroid/net/j;->a:Z
return-object p0
.end method