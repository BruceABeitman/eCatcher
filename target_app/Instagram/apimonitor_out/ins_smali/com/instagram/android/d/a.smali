.class public final Lcom/instagram/android/d/a;
.super Lcom/instagram/android/d/f;
.source "AddAvatarHelper.java"
.field private c:Landroid/graphics/Bitmap;
.field private d:Lcom/instagram/android/login/fragment/an;
.method public constructor <init>(Lcom/instagram/android/login/fragment/an;Landroid/os/Bundle;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/instagram/android/d/f;-><init>(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
iput-object p1, p0, Lcom/instagram/android/d/a;->d:Lcom/instagram/android/login/fragment/an;
if-eqz p2, :cond_19
const-string v0, "AddAvatarHelper.BITMAP_KEY"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_19
const-string v0, "AddAvatarHelper.BITMAP_KEY"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
iput-object v0, p0, Lcom/instagram/android/d/a;->c:Landroid/graphics/Bitmap;
:cond_19
return-void
.end method
.method static synthetic a(Lcom/instagram/android/d/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 2
iput-object p1, p0, Lcom/instagram/android/d/a;->c:Landroid/graphics/Bitmap;
return-object p1
.end method
.method static synthetic a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;
.registers 2
iget-object v0, p0, Lcom/instagram/android/d/a;->d:Lcom/instagram/android/login/fragment/an;
return-object v0
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/d/a;->c:Landroid/graphics/Bitmap;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/instagram/android/d/a;->d:Lcom/instagram/android/login/fragment/an;
iget-object v1, p0, Lcom/instagram/android/d/a;->c:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/graphics/Bitmap;)V
:cond_b
return-void
.end method
.method protected final a(Landroid/net/Uri;)V
.registers 4
new-instance v0, Lcom/instagram/android/d/b;
const/4 v1, 0x2
invoke-direct {v0, p0, v1, p1}, Lcom/instagram/android/d/b;-><init>(Lcom/instagram/android/d/a;ILandroid/net/Uri;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/instagram/android/d/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/android/d/f;->a(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/instagram/android/d/a;->c:Landroid/graphics/Bitmap;
if-eqz v0, :cond_e
const-string v0, "AddAvatarHelper.BITMAP_KEY"
iget-object v1, p0, Lcom/instagram/android/d/a;->c:Landroid/graphics/Bitmap;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_e
return-void
.end method
.method protected final b()V
.registers 1
return-void
.end method
.method protected final c()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/d/a;->d:Lcom/instagram/android/login/fragment/an;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/an;->d()V
return-void
.end method
.method public final d()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/d/a;->c:Landroid/graphics/Bitmap;
iput-object v0, p0, Lcom/instagram/android/d/a;->d:Lcom/instagram/android/login/fragment/an;
iput-object v0, p0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;
return-void
.end method
.method protected final e()V
.registers 4
new-instance v0, Lcom/instagram/android/d/b;
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {v0, p0, v1, v2}, Lcom/instagram/android/d/b;-><init>(Lcom/instagram/android/d/a;ILandroid/net/Uri;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/instagram/android/d/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method protected final f()V
.registers 4
const/4 v2, 0x0
new-instance v0, Lcom/instagram/android/d/b;
const/4 v1, 0x0
invoke-direct {v0, p0, v2, v1}, Lcom/instagram/android/d/b;-><init>(Lcom/instagram/android/d/a;ILandroid/net/Uri;)V
new-array v1, v2, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/instagram/android/d/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method public final g()V
.registers 1
invoke-virtual {p0}, Lcom/instagram/android/d/a;->f()V
return-void
.end method
.method public final h()Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/instagram/android/d/a;->c:Landroid/graphics/Bitmap;
return-object v0
.end method
.method protected final i()Z
.registers 2
const/4 v0, 0x1
return v0
.end method