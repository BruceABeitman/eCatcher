.class public final Lcom/instagram/share/vkontakte/a;
.super Ljava/lang/Object;
.source "VkontakteAccount.java"
.field private static b:Z
.field private final a:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/share/vkontakte/a;->a:Ljava/lang/String;
return-void
.end method
.method static synthetic a(Lcom/instagram/common/a/c/b;Ljava/lang/String;)Lcom/instagram/common/a/c/b;
.registers 3
invoke-static {p0, p1}, Lcom/instagram/share/vkontakte/a;->b(Lcom/instagram/common/a/c/b;Ljava/lang/String;)Lcom/instagram/common/a/c/b;
move-result-object v0
return-object v0
.end method
.method public static a()Lcom/instagram/share/vkontakte/a;
.registers 3
const/4 v0, 0x0
invoke-static {}, Lcom/instagram/share/vkontakte/a;->i()Landroid/content/SharedPreferences;
move-result-object v1
const-string v2, "accessToken"
invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_e
:goto_d
return-object v0
:cond_e
new-instance v0, Lcom/instagram/share/vkontakte/a;
invoke-direct {v0, v1}, Lcom/instagram/share/vkontakte/a;-><init>(Ljava/lang/String;)V
goto :goto_d
.end method
.method private static a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/instagram/common/a/a/q;
invoke-direct {v0}, Lcom/instagram/common/a/a/q;-><init>()V
new-instance v1, Lcom/instagram/share/vkontakte/b;
invoke-direct {v1, p0, p1}, Lcom/instagram/share/vkontakte/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Lcom/instagram/common/a/a/q;->a(Lcom/instagram/common/a/a/a;)V
return-void
.end method
.method public static a(Landroid/content/Context;)Z
.registers 4
const/4 v1, 0x1
const/4 v0, 0x0
:try_start_2
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v2
iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-virtual {v2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
:try_end_f
.catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_f} :catch_123
move-result-object v0
:goto_10
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_90
const-string v2, "RUS"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8e
const-string v2, "UKR"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8e
const-string v2, "AZE"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8e
const-string v2, "BLR"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8e
const-string v2, "KAZ"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8e
const-string v2, "MDA"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8e
const-string v2, "ARM"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8e
const-string v2, "GEO"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8e
const-string v2, "UZB"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8e
const-string v2, "LVA"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8e
const-string v2, "KGZ"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8e
const-string v2, "EST"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8e
const-string v2, "TJK"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8e
const-string v2, "LTU"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8e
const-string v2, "TKM"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_90
:cond_8e
move v0, v1
:goto_8f
return v0
:cond_90
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_117
const-string v2, "ru"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_114
const-string v2, "uk"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_114
const-string v2, "az"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_114
const-string v2, "be"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_114
const-string v2, "kk"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_114
const-string v2, "hy"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_114
const-string v2, "ka"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_114
const-string v2, "uz"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_114
const-string v2, "lv"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_114
const-string v2, "lt"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_114
const-string v2, "ky"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_114
const-string v2, "et"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_114
const-string v2, "tg"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_114
const-string v2, "tk"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_117
:cond_114
move v0, v1
goto/16 :goto_8f
:cond_117
invoke-static {}, Lcom/instagram/share/vkontakte/a;->a()Lcom/instagram/share/vkontakte/a;
move-result-object v0
if-eqz v0, :cond_120
move v0, v1
goto/16 :goto_8f
:cond_120
const/4 v0, 0x0
goto/16 :goto_8f
:catch_123
move-exception v2
goto/16 :goto_10
.end method
.method private static b(Lcom/instagram/common/a/c/b;Ljava/lang/String;)Lcom/instagram/common/a/c/b;
.registers 3
const-string v0, "vkontakte_access_token"
invoke-virtual {p0, v0, p1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
return-object p0
.end method
.method public static b()V
.registers 2
invoke-static {}, Lcom/instagram/share/vkontakte/a;->i()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "accessToken"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public static d()Z
.registers 1
sget-boolean v0, Lcom/instagram/share/vkontakte/a;->b:Z
return v0
.end method
.method public static e()V
.registers 2
const/4 v0, 0x0
sput-boolean v0, Lcom/instagram/share/vkontakte/a;->b:Z
invoke-static {}, Lcom/instagram/share/vkontakte/a;->a()Lcom/instagram/share/vkontakte/a;
move-result-object v0
const-string v1, "vkontakte/store_token/"
invoke-virtual {v0}, Lcom/instagram/share/vkontakte/a;->f()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/instagram/share/vkontakte/a;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static h()Ljava/lang/Runnable;
.registers 1
new-instance v0, Lcom/instagram/share/vkontakte/c;
invoke-direct {v0}, Lcom/instagram/share/vkontakte/c;-><init>()V
return-object v0
.end method
.method private static i()Landroid/content/SharedPreferences;
.registers 1
const-string v0, "vkontaktePreferences"
invoke-static {v0}, Lcom/instagram/k/b/a/a;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;
move-result-object v0
return-object v0
.end method
.method private static j()V
.registers 1
const/4 v0, 0x1
sput-boolean v0, Lcom/instagram/share/vkontakte/a;->b:Z
return-void
.end method
.method public final c()V
.registers 4
invoke-static {}, Lcom/instagram/share/vkontakte/a;->i()Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "accessToken"
invoke-virtual {p0}, Lcom/instagram/share/vkontakte/a;->f()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
invoke-static {}, Lcom/instagram/service/a/a;->d()Z
move-result v0
if-eqz v0, :cond_21
invoke-static {}, Lcom/instagram/share/vkontakte/a;->e()V
:goto_20
return-void
:cond_21
invoke-static {}, Lcom/instagram/share/vkontakte/a;->j()V
goto :goto_20
.end method
.method public final f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/share/vkontakte/a;->a:Ljava/lang/String;
return-object v0
.end method
.method public final g()Ljava/util/HashMap;
.registers 4
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string v1, "share_to_vkontakte"
const-string v2, "1"
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "vkontakte_access_token"
invoke-virtual {p0}, Lcom/instagram/share/vkontakte/a;->f()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v0
.end method