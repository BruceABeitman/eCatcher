.class public final Lcom/instagram/android/d/o;
.super Lcom/instagram/api/j/b;
.source "UpdateAvatarRequest.java"
.field private a:[B
.field private b:Z
.field private e:I
.field private f:Landroid/net/Uri;
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
.registers 5
sget v0, Lcom/facebook/av;->request_id_update_avatar:I
invoke-direct {p0, p1, p2, v0, p3}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/d/o;->b:Z
return-void
.end method
.method public static a(Landroid/graphics/Bitmap;)[B
.registers 4
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v2, 0x5a
invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
return-object v0
.end method
.method private static d(Lcom/instagram/api/j/j;)Lcom/instagram/user/c/a;
.registers 3
const/4 v0, 0x0
const-string v1, "user"
invoke-virtual {p0, v1}, Lcom/instagram/api/j/j;->b(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_13
const-string v0, "user"
const-class v1, Lcom/instagram/user/c/a;
invoke-virtual {p0, v0, v1}, Lcom/instagram/api/j/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/a;
:cond_13
return-object v0
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/instagram/android/d/o;->e:I
invoke-super {p0}, Lcom/instagram/api/j/b;->h()V
return-void
.end method
.method public final a(Landroid/net/Uri;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/d/o;->f:Landroid/net/Uri;
return-void
.end method
.method protected final a(Lcom/instagram/common/a/c/b;)V
.registers 5
iget-boolean v0, p0, Lcom/instagram/android/d/o;->b:Z
if-nez v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/d/o;->a:[B
if-eqz v0, :cond_11
const-string v0, "profile_pic"
iget-object v1, p0, Lcom/instagram/android/d/o;->a:[B
const-string v2, "profile_pic"
invoke-virtual {p1, v0, v1, v2}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;[BLjava/lang/String;)V
:cond_11
return-void
.end method
.method public final synthetic b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Lcom/instagram/android/d/o;->d(Lcom/instagram/api/j/j;)Lcom/instagram/user/c/a;
move-result-object v0
return-object v0
.end method
.method protected final b_()Ljava/lang/String;
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/d/o;->b:Z
if-eqz v0, :cond_7
const-string v0, "accounts/remove_profile_picture/"
:goto_6
return-object v0
:cond_7
const-string v0, "accounts/change_profile_picture/"
goto :goto_6
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method
.method public final e()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/d/o;->b:Z
invoke-super {p0}, Lcom/instagram/api/j/b;->h()V
return-void
.end method
.method public final f()V
.registers 4
:try_start_0
iget-boolean v0, p0, Lcom/instagram/android/d/o;->b:Z
if-nez v0, :cond_16
invoke-virtual {p0}, Lcom/instagram/android/d/o;->l()Landroid/content/Context;
move-result-object v0
iget v1, p0, Lcom/instagram/android/d/o;->e:I
iget-object v2, p0, Lcom/instagram/android/d/o;->f:Landroid/net/Uri;
invoke-static {v0, v1, v2}, Lcom/instagram/android/d/d;->a(Landroid/content/Context;ILandroid/net/Uri;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/d/o;->a(Landroid/graphics/Bitmap;)[B
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/d/o;->a:[B
:cond_16
:try_end_16
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17
return-void
:catch_17
move-exception v0
new-instance v0, Lcom/instagram/api/j/e;
invoke-direct {v0}, Lcom/instagram/api/j/e;-><init>()V
throw v0
.end method