.class public Lus/pinguo/androidsdk/pgedit/PGEditSharedPreferences;
.super Ljava/lang/Object;
.source "PGEditSharedPreferences.java"
.field private static final EDIT_EFFECT_INFO:Ljava/lang/String; = "edit_effect_info"
.field private static final GALLERY_SHOW_POSITION:Ljava/lang/String; = "gallery_show_position"
.field private static final IS_SHOW_BACK_TIP:Ljava/lang/String; = "is_show_back_tip"
.field private static final SELECTED_EFFECT:Ljava/lang/String; = "selected_effect"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static clearGalleryShowPosition(Landroid/content/Context;)Z
.registers 2
const/4 v0, -0x1
invoke-static {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditSharedPreferences;->setGalleryShowPosition(Landroid/content/Context;I)Z
move-result v0
return v0
.end method
.method public static getEditSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
.registers 3
const-string/jumbo v0, "edit_effect_info"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
return-object v0
.end method
.method public static getGalleryShowPosition(Landroid/content/Context;)I
.registers 4
invoke-static {p0}, Lus/pinguo/androidsdk/pgedit/PGEditSharedPreferences;->getEditSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string/jumbo v1, "gallery_show_position"
const/4 v2, -0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public static getSelectedEffect(Landroid/content/Context;)Ljava/lang/String;
.registers 4
invoke-static {p0}, Lus/pinguo/androidsdk/pgedit/PGEditSharedPreferences;->getEditSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string/jumbo v1, "selected_effect"
const-string/jumbo v2, ""
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static isShowBackTip(Landroid/content/Context;)Z
.registers 4
invoke-static {p0}, Lus/pinguo/androidsdk/pgedit/PGEditSharedPreferences;->getEditSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string/jumbo v1, "is_show_back_tip"
const/4 v2, 0x1
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public static saveSelectedEffect(Ljava/lang/String;Landroid/content/Context;)Z
.registers 4
invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditSharedPreferences;->getEditSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string/jumbo v1, "selected_effect"
invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method
.method public static setGalleryShowPosition(Landroid/content/Context;I)Z
.registers 4
invoke-static {p0}, Lus/pinguo/androidsdk/pgedit/PGEditSharedPreferences;->getEditSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string/jumbo v1, "gallery_show_position"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method
.method public static showedBackTip(Landroid/content/Context;)Z
.registers 4
invoke-static {p0}, Lus/pinguo/androidsdk/pgedit/PGEditSharedPreferences;->getEditSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string/jumbo v1, "is_show_back_tip"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v0
return v0
.end method