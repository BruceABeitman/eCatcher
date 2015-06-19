.class public final Lcom/bbm/util/dl;
.super Ljava/lang/Object;
.source "SystemMessageUtil.java"
.method public static a(Lcom/bbm/d/gl;Z)Ljava/lang/String;
.registers 7
if-eqz p0, :cond_69
if-eqz p1, :cond_f
iget-object v0, p0, Lcom/bbm/d/gl;->e:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_f
iget-object v0, p0, Lcom/bbm/d/gl;->e:Ljava/lang/String;
:goto_e
return-object v0
:cond_f
iget-object v0, p0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
const-string v1, "bbm:system"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_25
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
const v1, 0x7f0e06ef
invoke-virtual {v0, v1}, Lcom/bbm/Alaska;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_e
:cond_25
invoke-static {p0}, Lcom/bbm/util/dl;->a(Lcom/bbm/d/gl;)Z
move-result v0
if-eqz v0, :cond_5d
invoke-static {p0}, Lcom/bbm/util/dl;->b(Lcom/bbm/d/gl;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_5d
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->z(Ljava/lang/String;)Lcom/bbm/d/fl;
move-result-object v0
if-eqz v0, :cond_5d
iget-object v1, v0, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_5d
iget-object v1, v0, Lcom/bbm/d/fl;->c:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_5d
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v1
const v2, 0x7f0e06f3
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
iget-object v0, v0, Lcom/bbm/d/fl;->c:Ljava/lang/String;
aput-object v0, v3, v4
invoke-virtual {v1, v2, v3}, Lcom/bbm/Alaska;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_e
:cond_5d
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
const v1, 0x7f0e06f4
invoke-virtual {v0, v1}, Lcom/bbm/Alaska;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_e
:cond_69
const/4 v0, 0x0
goto :goto_e
.end method
.method public static a(Lcom/bbm/d/gl;Landroid/widget/ImageView;)V
.registers 5
if-eqz p1, :cond_14
if-eqz p0, :cond_4d
iget-object v0, p0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
const-string v1, "bbm:system"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_15
const v0, 0x7f0203fb
invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
:goto_14
:cond_14
return-void
:cond_15
iget-object v0, p0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
const-string v1, "partner-app:"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
const-string v1, "partner-app:"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_4d
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->z(Ljava/lang/String;)Lcom/bbm/d/fl;
move-result-object v0
if-eqz v0, :cond_4d
iget-object v1, v0, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_4d
iget-object v1, v0, Lcom/bbm/d/fl;->d:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_4d
iget-object v0, v0, Lcom/bbm/d/fl;->d:Ljava/lang/String;
invoke-static {v0}, Landroid/graphics/drawable/BitmapDrawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_14
:cond_4d
const v0, 0x7f0203fe
invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_14
.end method
.method public static a(Lcom/bbm/d/gl;)Z
.registers 3
iget-object v0, p0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
const-string v1, "partner-app:"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public static b(Lcom/bbm/d/gl;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/bbm/d/gl;->d:Ljava/lang/String;
const-string v1, "partner-app:"
const-string v2, ""
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method