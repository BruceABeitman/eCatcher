.class public final Lcom/spotify/mobile/android/util/dv;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/content/Context;)Z
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v1
iget v1, v1, Landroid/content/res/Configuration;->orientation:I
if-ne v1, v0, :cond_e
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 3
if-nez p0, :cond_8
if-nez p1, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
:cond_8
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public static b(Landroid/content/Context;)Z
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->orientation:I
const/4 v1, 0x2
if-ne v0, v1, :cond_f
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 3
if-ne p0, p1, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
const/4 v0, 0x0
goto :goto_3
.end method
.method public static c(Landroid/content/Context;)Z
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f080007
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result v0
return v0
.end method
.method public static d(Landroid/content/Context;)Z
.registers 2
invoke-static {p0}, Lcom/spotify/mobile/android/util/dv;->c(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_e
invoke-static {p0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method