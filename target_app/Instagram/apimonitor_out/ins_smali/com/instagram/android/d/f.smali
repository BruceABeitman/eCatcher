.class public abstract Lcom/instagram/android/d/f;
.super Ljava/lang/Object;
.source "AvatarHelper.java"
.field protected a:[Ljava/lang/CharSequence;
.field protected b:Landroid/support/v4/app/Fragment;
.field private c:Landroid/os/Handler;
.field private d:Ljava/io/File;
.field private e:Ljava/io/File;
.field private f:Landroid/net/Uri;
.method public constructor <init>(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/android/d/f;->c:Landroid/os/Handler;
iput-object p1, p0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;
if-eqz p2, :cond_36
const-string v0, "tempCameraPhotoFile"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1d
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
iput-object v1, p0, Lcom/instagram/android/d/f;->e:Ljava/io/File;
:cond_1d
const-string v0, "tempGalleryPhotoFile"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2c
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
iput-object v1, p0, Lcom/instagram/android/d/f;->d:Ljava/io/File;
:cond_2c
const-string v0, "tempGalleryUri"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
iput-object v0, p0, Lcom/instagram/android/d/f;->f:Landroid/net/Uri;
:cond_36
return-void
.end method
.method static synthetic a(Lcom/instagram/android/d/f;)Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/instagram/android/d/f;->d:Ljava/io/File;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/d/f;Ljava/io/File;)Ljava/io/File;
.registers 2
iput-object p1, p0, Lcom/instagram/android/d/f;->d:Ljava/io/File;
return-object p1
.end method
.method static synthetic b(Lcom/instagram/android/d/f;)Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/instagram/android/d/f;->e:Ljava/io/File;
return-object v0
.end method
.method static synthetic b(Lcom/instagram/android/d/f;Ljava/io/File;)Ljava/io/File;
.registers 2
iput-object p1, p0, Lcom/instagram/android/d/f;->e:Ljava/io/File;
return-object p1
.end method
.method private b(Landroid/net/Uri;)V
.registers 6
iget-object v0, p0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p1}, Lcom/instagram/creation/photo/crop/a;->b(Landroid/content/Context;Landroid/net/Uri;)Lcom/instagram/creation/photo/crop/a;
move-result-object v0
const/16 v1, 0x96
invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/crop/a;->b(I)Lcom/instagram/creation/photo/crop/a;
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;
move-result-object v2
const-class v3, Lcom/instagram/creation/photo/crop/CropActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/a;->a()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
iget-object v0, p0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;
const/4 v2, 0x3
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Intent;I)V
return-void
.end method
.method static synthetic c(Lcom/instagram/android/d/f;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/android/d/f;->c:Landroid/os/Handler;
return-object v0
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/instagram/android/d/f;->a(IILandroid/content/Intent;Z)V
return-void
.end method
.method public final a(IILandroid/content/Intent;Z)V
.registers 7
const/4 v0, -0x1
if-ne p2, v0, :cond_f
packed-switch p1, :pswitch_data_44
if-nez p4, :cond_f
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V
:cond_f
:goto_f
return-void
:pswitch_10
invoke-virtual {p0}, Lcom/instagram/android/d/f;->e()V
goto :goto_f
:pswitch_14
iget-object v0, p0, Lcom/instagram/android/d/f;->d:Ljava/io/File;
invoke-static {p3, v0}, Lcom/instagram/creation/base/e;->a(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/d/f;->b(Landroid/net/Uri;)V
goto :goto_f
:pswitch_1e
invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/android/d/f;->a(Landroid/net/Uri;)V
goto :goto_f
:pswitch_2a
iget-object v0, p0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/d/f;->e:Ljava/io/File;
invoke-static {v0, v1}, Lcom/instagram/creation/photo/b/a;->a(Landroid/content/ContentResolver;Ljava/io/File;)V
iget-object v0, p0, Lcom/instagram/android/d/f;->e:Ljava/io/File;
invoke-static {p3, v0}, Lcom/instagram/creation/photo/b/a;->a(Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/android/d/f;->b(Landroid/net/Uri;)V
goto :goto_f
nop
:pswitch_data_44
.packed-switch 0x1
:pswitch_10
:pswitch_14
:pswitch_1e
:pswitch_2a
.end packed-switch
.end method
.method public final a(Landroid/content/Context;)V
.registers 5
new-instance v0, Lcom/instagram/ui/dialog/b;
iget-object v1, p0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->set_a_profile_picture:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {p0, p1}, Lcom/instagram/android/d/f;->b(Landroid/content/Context;)[Ljava/lang/CharSequence;
move-result-object v1
new-instance v2, Lcom/instagram/android/d/g;
invoke-direct {v2, p0, p1}, Lcom/instagram/android/d/g;-><init>(Lcom/instagram/android/d/f;Landroid/content/Context;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method protected abstract a(Landroid/net/Uri;)V
.end method
.method public a(Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/d/f;->e:Ljava/io/File;
if-eqz v0, :cond_f
const-string v0, "tempCameraPhotoFile"
iget-object v1, p0, Lcom/instagram/android/d/f;->e:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_f
iget-object v0, p0, Lcom/instagram/android/d/f;->d:Ljava/io/File;
if-eqz v0, :cond_1e
const-string v0, "tempGalleryPhotoFile"
iget-object v1, p0, Lcom/instagram/android/d/f;->d:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_1e
iget-object v0, p0, Lcom/instagram/android/d/f;->f:Landroid/net/Uri;
if-eqz v0, :cond_29
const-string v0, "tempGalleryUri"
iget-object v1, p0, Lcom/instagram/android/d/f;->f:Landroid/net/Uri;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_29
return-void
.end method
.method protected abstract b()V
.end method
.method public b(Landroid/content/Context;)[Ljava/lang/CharSequence;
.registers 8
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/android/d/f;->a:[Ljava/lang/CharSequence;
if-nez v0, :cond_2a
invoke-virtual {p0}, Lcom/instagram/android/d/f;->i()Z
move-result v0
if-eqz v0, :cond_2d
new-array v0, v5, [Ljava/lang/CharSequence;
sget v1, Lcom/facebook/az;->import_from_facebook:I
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v2
sget v1, Lcom/facebook/az;->take_picture:I
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v3
sget v1, Lcom/facebook/az;->choose_from_library:I
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v4
iput-object v0, p0, Lcom/instagram/android/d/f;->a:[Ljava/lang/CharSequence;
:cond_2a
:goto_2a
iget-object v0, p0, Lcom/instagram/android/d/f;->a:[Ljava/lang/CharSequence;
return-object v0
:cond_2d
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/CharSequence;
sget v1, Lcom/facebook/az;->take_picture:I
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v2
sget v1, Lcom/facebook/az;->choose_from_library:I
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v3
sget v1, Lcom/facebook/az;->import_from_facebook:I
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v4
sget v1, Lcom/facebook/az;->import_from_twitter:I
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
aput-object v1, v0, v5
iput-object v0, p0, Lcom/instagram/android/d/f;->a:[Ljava/lang/CharSequence;
goto :goto_2a
.end method
.method protected c()V
.registers 6
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z
move-result v1
if-eqz v1, :cond_e
invoke-virtual {p0}, Lcom/instagram/android/d/f;->f()V
:goto_d
return-void
:cond_e
iget-object v1, p0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;
sget-object v2, Lcom/instagram/share/b/f;->a:[Ljava/lang/String;
new-instance v3, Lcom/instagram/android/d/h;
const/4 v4, 0x0
invoke-direct {v3, p0, v4}, Lcom/instagram/android/d/h;-><init>(Lcom/instagram/android/d/f;B)V
invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/b/b;->a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;Lcom/facebook/b/e;)V
goto :goto_d
.end method
.method protected abstract e()V
.end method
.method protected abstract f()V
.end method
.method protected abstract i()Z
.end method