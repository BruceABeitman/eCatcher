.class final Lcom/instagram/android/d/g;
.super Ljava/lang/Object;
.source "AvatarHelper.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/instagram/android/d/f;
.method constructor <init>(Lcom/instagram/android/d/f;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;
iput-object p2, p0, Lcom/instagram/android/d/g;->a:Landroid/content/Context;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a()V
.registers 2
invoke-static {}, Lcom/instagram/share/f/a;->a()Z
move-result v0
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;
invoke-virtual {v0}, Lcom/instagram/android/d/f;->e()V
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;
iget-object v0, v0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;
invoke-static {v0}, Lcom/instagram/android/activity/TwitterAuthActivity;->b(Landroid/support/v4/app/Fragment;)V
goto :goto_b
.end method
.method private a(Landroid/content/Context;)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;
invoke-static {p1}, Lcom/instagram/common/u/a;->b(Landroid/content/Context;)Ljava/io/File;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/d/f;->a(Lcom/instagram/android/d/f;Ljava/io/File;)Ljava/io/File;
iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;
iget-object v0, v0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;
const/4 v1, 0x2
iget-object v2, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;
invoke-static {v2}, Lcom/instagram/android/d/f;->a(Lcom/instagram/android/d/f;)Ljava/io/File;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/instagram/creation/base/e;->a(Landroid/support/v4/app/Fragment;ILjava/io/File;)V
return-void
.end method
.method private a(II)Z
.registers 5
iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;
iget-object v1, p0, Lcom/instagram/android/d/g;->a:Landroid/content/Context;
invoke-virtual {v0, v1}, Lcom/instagram/android/d/f;->b(Landroid/content/Context;)[Ljava/lang/CharSequence;
move-result-object v0
aget-object v0, v0, p1
iget-object v1, p0, Lcom/instagram/android/d/g;->a:Landroid/content/Context;
invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method private b()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;
invoke-virtual {v0}, Lcom/instagram/android/d/f;->c()V
return-void
.end method
.method private c()V
.registers 5
iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;
const-string v1, ".jpg"
invoke-static {v1}, Lcom/instagram/creation/photo/b/a;->a(Ljava/lang/String;)Ljava/io/File;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/android/d/f;->b(Lcom/instagram/android/d/f;Ljava/io/File;)Ljava/io/File;
iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;
iget-object v0, v0, Lcom/instagram/android/d/f;->b:Landroid/support/v4/app/Fragment;
const/4 v1, 0x4
iget-object v2, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;
invoke-static {v2}, Lcom/instagram/android/d/f;->b(Lcom/instagram/android/d/f;)Ljava/io/File;
move-result-object v2
const-string v3, "android.media.action.IMAGE_CAPTURE"
invoke-static {v0, v1, v2, v3}, Lcom/instagram/creation/photo/b/a;->a(Landroid/support/v4/app/Fragment;ILjava/io/File;Ljava/lang/String;)V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/d/g; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget v0, Lcom/facebook/az;->remove_current_picture:I
invoke-direct {p0, p2, v0}, Lcom/instagram/android/d/g;->a(II)Z
move-result v0
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/instagram/android/d/g;->b:Lcom/instagram/android/d/f;
invoke-virtual {v0}, Lcom/instagram/android/d/f;->b()V
:cond_d
:goto_d
const-string v1, " - Lcom/instagram/android/d/g; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_e
sget v0, Lcom/facebook/az;->take_picture:I
invoke-direct {p0, p2, v0}, Lcom/instagram/android/d/g;->a(II)Z
move-result v0
if-eqz v0, :cond_1a
invoke-direct {p0}, Lcom/instagram/android/d/g;->c()V
goto :goto_d
:cond_1a
sget v0, Lcom/facebook/az;->choose_from_library:I
invoke-direct {p0, p2, v0}, Lcom/instagram/android/d/g;->a(II)Z
move-result v0
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/instagram/android/d/g;->a:Landroid/content/Context;
invoke-direct {p0, v0}, Lcom/instagram/android/d/g;->a(Landroid/content/Context;)V
goto :goto_d
:cond_28
sget v0, Lcom/facebook/az;->import_from_facebook:I
invoke-direct {p0, p2, v0}, Lcom/instagram/android/d/g;->a(II)Z
move-result v0
if-eqz v0, :cond_34
invoke-direct {p0}, Lcom/instagram/android/d/g;->b()V
goto :goto_d
:cond_34
sget v0, Lcom/facebook/az;->import_from_twitter:I
invoke-direct {p0, p2, v0}, Lcom/instagram/android/d/g;->a(II)Z
move-result v0
if-eqz v0, :cond_d
invoke-direct {p0}, Lcom/instagram/android/d/g;->a()V
goto :goto_d
.end method