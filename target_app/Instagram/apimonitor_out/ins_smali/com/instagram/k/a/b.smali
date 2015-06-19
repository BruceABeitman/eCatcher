.class public final Lcom/instagram/k/a/b;
.super Ljava/lang/Object;
.source "Preferences.java"
.field private static a:Ljava/lang/String;
.field private static c:Lcom/instagram/k/a/b;
.field private b:Landroid/content/SharedPreferences;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/instagram/k/a/b;->a:Ljava/lang/String;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
invoke-direct {p0}, Lcom/instagram/k/a/b;->k()V
return-void
.end method
.method public static a()Lcom/instagram/k/a/b;
.registers 1
sget-object v0, Lcom/instagram/k/a/b;->c:Lcom/instagram/k/a/b;
return-object v0
.end method
.method public static a(Landroid/content/Context;)V
.registers 2
sget-object v0, Lcom/instagram/k/a/b;->c:Lcom/instagram/k/a/b;
if-nez v0, :cond_b
new-instance v0, Lcom/instagram/k/a/b;
invoke-direct {v0, p0}, Lcom/instagram/k/a/b;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/instagram/k/a/b;->c:Lcom/instagram/k/a/b;
:cond_b
return-void
.end method
.method private b(J)V
.registers 5
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "first_run_time"
invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method private c(J)V
.registers 5
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "last_registration_time"
invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method private static d(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "system_message_"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private k()V
.registers 3
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
const-string v1, "first_run_time"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_19
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
const-string v1, "media_mode"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1a
const-wide/16 v0, 0x0
:goto_16
invoke-direct {p0, v0, v1}, Lcom/instagram/k/a/b;->b(J)V
:cond_19
return-void
:cond_1a
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
goto :goto_16
.end method
.method public final a(Ljava/lang/String;)Ljava/lang/Float;
.registers 5
const/4 v0, 0x0
invoke-static {p1}, Lcom/instagram/k/a/b;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_19
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
const/high16 v2, -0x4080
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
move-result v0
invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v0
:cond_19
return-object v0
.end method
.method public final a(I)V
.registers 4
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "used_double_tap_hint_impressions"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final a(J)V
.registers 5
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "push_reg_date"
invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/Float;)V
.registers 6
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-static {p1}, Lcom/instagram/k/a/b;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F
move-result v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final a(Z)Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
const-string v1, "advanced_camera_enabled"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final b()I
.registers 4
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
const-string v1, "used_double_tap_hint_impressions"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public final b(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "current"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final b(Z)Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "advanced_camera_enabled"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method
.method public final c(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "fb_attribution_id"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final c()Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
const-string v1, "used_double_tap"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final c(Z)Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
const-string v1, "advanced_resize_enabled"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public final d()V
.registers 4
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "used_double_tap"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public final d(Z)Z
.registers 4
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "advanced_resize_enabled"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method
.method public final e()Z
.registers 6
const/4 v0, 0x1
iget-object v1, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
const-string v2, "push_reg_date"
invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_c
:goto_b
:cond_b
return v0
:cond_c
iget-object v1, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
const-string v2, "push_reg_date"
const-wide/16 v3, 0x0
invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v1
new-instance v3, Ljava/util/Date;
invoke-direct {v3}, Ljava/util/Date;-><init>()V
invoke-virtual {v3}, Ljava/util/Date;->getTime()J
move-result-wide v3
sub-long/2addr v1, v3
invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J
move-result-wide v1
const-wide/32 v3, 0xa4cb800
cmp-long v1, v1, v3
if-gtz v1, :cond_b
const/4 v0, 0x0
goto :goto_b
.end method
.method public final f()Z
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/instagram/k/a/b;->a(Z)Z
move-result v0
return v0
.end method
.method public final g()Z
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/instagram/k/a/b;->c(Z)Z
move-result v0
return v0
.end method
.method public final h()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
const-string v1, "current"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final i()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/instagram/k/a/b;->b:Landroid/content/SharedPreferences;
const-string v1, "fb_attribution_id"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final j()V
.registers 3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-direct {p0, v0, v1}, Lcom/instagram/k/a/b;->c(J)V
return-void
.end method