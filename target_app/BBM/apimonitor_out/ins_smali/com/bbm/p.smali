.class final Lcom/bbm/p;
.super Lcom/bbm/j/k;
.source "GlympseWrapper.java"
.field final synthetic a:Lcom/bbm/o;
.method constructor <init>(Lcom/bbm/o;)V
.registers 3
iput-object p1, p0, Lcom/bbm/p;->a:Lcom/bbm/o;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 7
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;
move-result-object v2
iget-object v0, v2, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_98
iget-object v0, p0, Lcom/bbm/p;->a:Lcom/bbm/o;
invoke-static {v0}, Lcom/bbm/o;->a(Lcom/bbm/o;)Lcom/glympse/android/api/GGlympse;
move-result-object v0
if-eqz v0, :cond_98
iget-object v0, p0, Lcom/bbm/p;->a:Lcom/bbm/o;
invoke-static {v0}, Lcom/bbm/o;->a(Lcom/bbm/o;)Lcom/glympse/android/api/GGlympse;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;
move-result-object v3
invoke-static {v2}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_3b
invoke-interface {v3}, Lcom/glympse/android/api/GUser;->getNickname()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_3b
invoke-interface {v3, v0}, Lcom/glympse/android/api/GUser;->setNickname(Ljava/lang/String;)Z
:cond_3b
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/fd;
if-eqz v0, :cond_98
iget-boolean v1, v0, Lcom/bbm/d/fd;->c:Z
if-nez v1, :cond_98
iget-boolean v1, v0, Lcom/bbm/d/fd;->a:Z
if-eqz v1, :cond_99
new-instance v1, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v0}, Lcom/bbm/d/fd;->a()Lcom/bbm/ui/cl;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/cl;->d()Landroid/graphics/Bitmap;
move-result-object v0
invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
move-object v0, v1
:goto_61
if-eqz v0, :cond_98
:try_start_63
iget-object v1, p0, Lcom/bbm/p;->a:Lcom/bbm/o;
invoke-static {v1}, Lcom/bbm/o;->b(Lcom/bbm/o;)Landroid/content/SharedPreferences;
move-result-object v1
const-string v4, "glympse_avatar_hash"
const/4 v5, -0x1
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
iget-object v4, v2, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v4
if-eq v4, v1, :cond_98
invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createDrawable(Landroid/graphics/drawable/BitmapDrawable;)Lcom/glympse/android/core/GDrawable;
move-result-object v0
invoke-interface {v3}, Lcom/glympse/android/api/GUser;->isUploadingAvatar()Z
move-result v1
if-nez v1, :cond_98
invoke-interface {v3, v0}, Lcom/glympse/android/api/GUser;->setAvatar(Lcom/glympse/android/core/GDrawable;)Z
iget-object v0, p0, Lcom/bbm/p;->a:Lcom/bbm/o;
invoke-static {v0}, Lcom/bbm/o;->b(Lcom/bbm/o;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "glympse_avatar_hash"
invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
:cond_98
:try_end_98
.catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_98} :catch_9e
:goto_98
return-void
:cond_99
invoke-virtual {v0}, Lcom/bbm/d/fd;->b()Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
goto :goto_61
:catch_9e
move-exception v0
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "avatarHash not an integer: ("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, v2, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_98
.end method