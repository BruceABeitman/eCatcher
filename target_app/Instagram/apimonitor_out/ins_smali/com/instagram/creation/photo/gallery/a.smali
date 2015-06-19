.class public abstract Lcom/instagram/creation/photo/gallery/a;
.super Ljava/lang/Object;
.source "BaseImage.java"
.implements Lcom/instagram/creation/photo/gallery/c;
.field protected a:Landroid/content/ContentResolver;
.field protected b:Landroid/net/Uri;
.field protected c:J
.field protected d:Ljava/lang/String;
.field protected e:J
.field protected final f:I
.field protected g:Ljava/lang/String;
.field protected h:Lcom/instagram/creation/photo/gallery/b;
.field private final i:J
.field private j:Ljava/lang/String;
.field private k:I
.field private l:I
.method protected constructor <init>(Lcom/instagram/creation/photo/gallery/b;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V
.registers 15
const/4 v0, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/instagram/creation/photo/gallery/a;->k:I
iput v0, p0, Lcom/instagram/creation/photo/gallery/a;->l:I
iput-object p1, p0, Lcom/instagram/creation/photo/gallery/a;->h:Lcom/instagram/creation/photo/gallery/b;
iput-object p2, p0, Lcom/instagram/creation/photo/gallery/a;->a:Landroid/content/ContentResolver;
iput-wide p3, p0, Lcom/instagram/creation/photo/gallery/a;->c:J
iput p5, p0, Lcom/instagram/creation/photo/gallery/a;->f:I
iput-object p6, p0, Lcom/instagram/creation/photo/gallery/a;->b:Landroid/net/Uri;
iput-object p7, p0, Lcom/instagram/creation/photo/gallery/a;->d:Ljava/lang/String;
iput-wide p8, p0, Lcom/instagram/creation/photo/gallery/a;->e:J
iput-object p10, p0, Lcom/instagram/creation/photo/gallery/a;->g:Ljava/lang/String;
iput-wide p11, p0, Lcom/instagram/creation/photo/gallery/a;->i:J
iput-object p13, p0, Lcom/instagram/creation/photo/gallery/a;->j:Ljava/lang/String;
return-void
.end method
.method private h()V
.registers 6
const/4 v0, 0x0
:try_start_1
iget-object v1, p0, Lcom/instagram/creation/photo/gallery/a;->a:Landroid/content/ContentResolver;
iget-object v2, p0, Lcom/instagram/creation/photo/gallery/a;->b:Landroid/net/Uri;
const-string v3, "r"
invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_32
.catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_a} :catch_27
move-result-object v0
:try_start_b
new-instance v1, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v2, 0x1
iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
move-result-object v2
const/4 v3, 0x0
invoke-static {v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iput v2, p0, Lcom/instagram/creation/photo/gallery/a;->k:I
iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
iput v1, p0, Lcom/instagram/creation/photo/gallery/a;->l:I
:try_end_23
.catchall {:try_start_b .. :try_end_23} :catchall_3a
.catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_23} :catch_27
invoke-static {v0}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V
:goto_26
return-void
:catch_27
move-exception v1
const/4 v1, 0x0
:try_start_29
iput v1, p0, Lcom/instagram/creation/photo/gallery/a;->k:I
const/4 v1, 0x0
iput v1, p0, Lcom/instagram/creation/photo/gallery/a;->l:I
:try_end_2e
.catchall {:try_start_29 .. :try_end_2e} :catchall_3a
invoke-static {v0}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V
goto :goto_26
:catchall_32
move-exception v1
move-object v4, v1
move-object v1, v0
move-object v0, v4
:goto_36
invoke-static {v1}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/os/ParcelFileDescriptor;)V
throw v0
:catchall_3a
move-exception v1
move-object v4, v1
move-object v1, v0
move-object v0, v4
goto :goto_36
.end method
.method public final a(I)Landroid/graphics/Bitmap;
.registers 6
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/a;->h:Lcom/instagram/creation/photo/gallery/b;
iget-wide v1, p0, Lcom/instagram/creation/photo/gallery/a;->c:J
invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/photo/gallery/b;->a(J)Landroid/net/Uri;
move-result-object v0
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
:cond_b
return-object v0
:cond_c
const/4 v1, -0x1
iget-object v2, p0, Lcom/instagram/creation/photo/gallery/a;->a:Landroid/content/ContentResolver;
const/4 v3, 0x1
invoke-static {v1, p1, v0, v2, v3}, Lcom/instagram/creation/photo/gallery/p;->a(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {p0}, Lcom/instagram/creation/photo/gallery/a;->c()I
move-result v1
invoke-static {v0, v1}, Lcom/instagram/creation/photo/gallery/p;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_b
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/a;->d:Ljava/lang/String;
return-object v0
.end method
.method public final b()J
.registers 3
iget-wide v0, p0, Lcom/instagram/creation/photo/gallery/a;->i:J
return-wide v0
.end method
.method public c()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/a;->g:Ljava/lang/String;
return-object v0
.end method
.method public final e()I
.registers 3
iget v0, p0, Lcom/instagram/creation/photo/gallery/a;->k:I
const/4 v1, -0x1
if-ne v0, v1, :cond_8
invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/a;->h()V
:cond_8
iget v0, p0, Lcom/instagram/creation/photo/gallery/a;->k:I
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
if-eqz p1, :cond_6
instance-of v0, p1, Lcom/instagram/creation/photo/gallery/e;
if-nez v0, :cond_8
:cond_6
const/4 v0, 0x0
:goto_7
return v0
:cond_8
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/a;->b:Landroid/net/Uri;
check-cast p1, Lcom/instagram/creation/photo/gallery/e;
iget-object v1, p1, Lcom/instagram/creation/photo/gallery/e;->b:Landroid/net/Uri;
invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_7
.end method
.method public final f()I
.registers 3
iget v0, p0, Lcom/instagram/creation/photo/gallery/a;->l:I
const/4 v1, -0x1
if-ne v0, v1, :cond_8
invoke-direct {p0}, Lcom/instagram/creation/photo/gallery/a;->h()V
:cond_8
iget v0, p0, Lcom/instagram/creation/photo/gallery/a;->l:I
return v0
.end method
.method public final g()Z
.registers 3
const-string v0, "image/jpeg"
iget-object v1, p0, Lcom/instagram/creation/photo/gallery/a;->g:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/a;->b:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/gallery/a;->b:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method