.class public Lcom/pinguo/share/bind/BindSharedPreferences;
.super Ljava/lang/Object;
.source "BindSharedPreferences.java"
.field private static final ACTIVATE:Ljava/lang/String; = "Activate"
.field private static final ACTIVE_SITES:Ljava/lang/String; = "active_sites"
.field private static final APP_KEY:Ljava/lang/String; = "app_key"
.field private static final APP_SECRET:Ljava/lang/String; = "app_secret"
.field private static final ATABLE:Ljava/lang/String; = "atable"
.field private static final AUTH:Ljava/lang/String; = "auth"
.field private static final AVATAR:Ljava/lang/String; = "avatar"
.field private static final BINDING:Ljava/lang/String; = "binding"
.field private static final BIND_INFO:Ljava/lang/String; = "bind_info"
.field private static final CLEAR_WEBSITE:Ljava/lang/String; = "clear_website"
.field private static final EXPIRE_IN:Ljava/lang/String; = "expire_in"
.field private static final ICONS:[Ljava/lang/String; = null
.field private static final IS_TRUE:Ljava/lang/String; = "isTrue"
.field public static final KEY_NEED_UPDATE_DISPATCH:Ljava/lang/String; = "pref_key_need_update_dispatch"
.field private static final LAST_LOCALE:Ljava/lang/String; = "last_locale"
.field private static final LOCATIONTIME:Ljava/lang/String; = "locationtime"
.field private static final LOGINURL:Ljava/lang/String; = "loginUrl"
.field private static final MESSAGE:Ljava/lang/String; = "message"
.field private static final NICKNAME:Ljava/lang/String; = "nickname"
.field private static final REDIRECT_URL:Ljava/lang/String; = "redirect_url"
.field private static final SHARE:Ljava/lang/String; = "share"
.field private static final SITE_NAME:Ljava/lang/String; = "site_name"
.field private static final SITE_URL:Ljava/lang/String; = "site_url"
.field private static final SSO:Ljava/lang/String; = "ssoable"
.field private static final STATUS:Ljava/lang/String; = "status"
.field private static final TEXT:Ljava/lang/String; = "text"
.field private static final THRID_FACE:Ljava/lang/String; = "thirdFace"
.field private static final TIMESPAN:Ljava/lang/String; = "timespan"
.field private static final TOKEN:Ljava/lang/String; = "token"
.field private static final UID:Ljava/lang/String; = "uid"
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string/jumbo v2, "_on.png"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string/jumbo v2, "_off.png"
aput-object v2, v0, v1
sput-object v0, Lcom/pinguo/share/bind/BindSharedPreferences;->ICONS:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static addClearWebSite(Ljava/lang/String;Landroid/content/Context;)V
.registers 9
invoke-static {p1}, Lcom/pinguo/share/bind/BindSharedPreferences;->getClearWebSite(Landroid/content/Context;)Ljava/util/Set;
move-result-object v2
invoke-static {p1}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v3
invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
:goto_14
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_3a
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v4
add-int/lit8 v4, v4, -0x1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v5
invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v4
const-string/jumbo v5, "clear_website"
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v4
invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
return-void
:cond_3a
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ","
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_14
.end method
.method public static changeActivate(Lcom/pinguo/share/website/WebSiteInfoBean;ZLandroid/content/Context;)Z
.registers 6
invoke-virtual {p0, p1}, Lcom/pinguo/share/website/WebSiteInfoBean;->setActivate(Z)V
invoke-static {p2}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "Activate"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v1
return v1
.end method
.method public static clearLocationTime(Landroid/content/Context;)Z
.registers 5
invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string/jumbo v1, "locationtime"
const-wide/16 v2, 0x0
invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v1
return v1
.end method
.method public static clearWebSite(Landroid/content/Context;Lcom/pinguo/share/website/WebSiteInfoBean;)Z
.registers 9
const-wide/16 v5, 0x0
const/4 v4, 0x0
const/4 v3, 0x0
iget-object v1, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/share/bind/SinaBinder;->isSinaSite(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_f
invoke-static {p0, v4}, Lcom/pinguo/share/bind/BindSharedPreferences;->setSinaNeedWebBind(Landroid/content/Context;Z)V
:cond_f
invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "message"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "text"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "status"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "token"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "loginUrl"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "binding"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "expire_in"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "timespan"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "nickname"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "avatar"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "uid"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "Activate"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "isTrue"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v1, Ljava/lang/StringBuilder;
iget-object v2, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "thirdFace"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-virtual {p1, v3}, Lcom/pinguo/share/website/WebSiteInfoBean;->setMessage(Ljava/lang/String;)V
invoke-virtual {p1, v3}, Lcom/pinguo/share/website/WebSiteInfoBean;->setText(Ljava/lang/String;)V
invoke-virtual {p1, v4}, Lcom/pinguo/share/website/WebSiteInfoBean;->setStatus(I)V
invoke-virtual {p1, v3}, Lcom/pinguo/share/website/WebSiteInfoBean;->setToken(Ljava/lang/String;)V
invoke-virtual {p1, v3}, Lcom/pinguo/share/website/WebSiteInfoBean;->setLoginUrl(Ljava/lang/String;)V
invoke-virtual {p1, v4}, Lcom/pinguo/share/website/WebSiteInfoBean;->setBinding(I)V
invoke-virtual {p1, v5, v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->setExpire_in(J)V
invoke-virtual {p1, v5, v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->setTimespan(J)V
invoke-virtual {p1, v3}, Lcom/pinguo/share/website/WebSiteInfoBean;->setNickName(Ljava/lang/String;)V
invoke-virtual {p1, v3}, Lcom/pinguo/share/website/WebSiteInfoBean;->setAvatar(Ljava/lang/String;)V
invoke-virtual {p1, v3}, Lcom/pinguo/share/website/WebSiteInfoBean;->setUid(Ljava/lang/String;)V
invoke-virtual {p1, v4}, Lcom/pinguo/share/website/WebSiteInfoBean;->setActivate(Z)V
invoke-virtual {p1, v4}, Lcom/pinguo/share/website/WebSiteInfoBean;->setIsTrue(I)V
invoke-virtual {p1, v3}, Lcom/pinguo/share/website/WebSiteInfoBean;->setThirdFace(Ljava/lang/String;)V
iget-object v1, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v1, p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->addClearWebSite(Ljava/lang/String;Landroid/content/Context;)V
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v1
return v1
.end method
.method public static getBindIcon(Ljava/lang/String;Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;Z)V
.registers 16
const/4 v5, 0x0
:goto_1
sget-object v9, Lcom/pinguo/share/bind/BindSharedPreferences;->ICONS:[Ljava/lang/String;
array-length v9, v9
if-lt v5, v9, :cond_7
return-void
:cond_7
const/4 v0, 0x0
:try_start_8
invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v9
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "icon/"
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v11, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
sget-object v11, Lcom/pinguo/share/bind/BindSharedPreferences;->ICONS:[Ljava/lang/String;
aget-object v11, v11, v5
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
move-result-object v9
invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/share/net/NetConnection;->getByteArray(Ljava/io/InputStream;)[B
:try_end_31
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_31} :catch_c0
move-result-object v0
:goto_32
if-nez v0, :cond_53
:try_start_34
new-instance v9, Ljava/lang/StringBuilder;
iget-object v10, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v10, Lcom/pinguo/share/bind/BindSharedPreferences;->ICONS:[Ljava/lang/String;
aget-object v10, v10, v5
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {p2, v9}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/share/net/NetConnection;->getByteArray(Ljava/io/InputStream;)[B
:try_end_52
.catch Ljava/lang/Exception; {:try_start_34 .. :try_end_52} :catch_c6
move-result-object v0
:cond_53
:goto_53
if-eqz p3, :cond_9d
if-nez v0, :cond_9d
if-eqz p0, :cond_9d
const-string/jumbo v9, "."
invoke-virtual {p0, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v6
const/4 v9, 0x0
invoke-virtual {p0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v4
new-instance v9, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v10, Lcom/pinguo/share/bind/BindSharedPreferences;->ICONS:[Ljava/lang/String;
aget-object v10, v10, v5
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/pinguo/share/net/NetConnection;->getByteArray(Ljava/lang/String;)[B
move-result-object v0
:try_start_7e
new-instance v9, Ljava/lang/StringBuilder;
iget-object v10, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v10, Lcom/pinguo/share/bind/BindSharedPreferences;->ICONS:[Ljava/lang/String;
aget-object v10, v10, v5
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
const/4 v10, 0x0
invoke-virtual {p2, v9, v10}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
move-result-object v9
invoke-static {v9, v0}, Lcom/pinguo/share/util/ShareModuleUtil;->saveFiles(Ljava/io/OutputStream;[B)V
:goto_9d
:try_end_9d
.catch Ljava/lang/Exception; {:try_start_7e .. :try_end_9d} :catch_cb
:cond_9d
if-eqz v0, :cond_bc
new-instance v8, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v9, 0x1
iput v9, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
const/4 v9, 0x0
iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
const/4 v9, 0x0
iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inDither:Z
sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
iput-object v9, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
const/4 v9, 0x0
array-length v10, v0
invoke-static {v0, v9, v10, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
if-nez v5, :cond_d0
invoke-virtual {p1, v1}, Lcom/pinguo/share/website/WebSiteInfoBean;->setOnBitmap(Landroid/graphics/Bitmap;)V
:goto_bc
:cond_bc
add-int/lit8 v5, v5, 0x1
goto/16 :goto_1
:catch_c0
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_32
:catch_c6
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_53
:catch_cb
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_9d
:cond_d0
invoke-virtual {p1, v1}, Lcom/pinguo/share/website/WebSiteInfoBean;->setOffBitmap(Landroid/graphics/Bitmap;)V
goto :goto_bc
.end method
.method public static getBufferWeb(Landroid/content/Context;)[Lcom/pinguo/share/website/WebSiteInfoBean;
.registers 10
const/4 v1, 0x0
invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v4
const-string/jumbo v5, "active_sites"
invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_f
:cond_e
return-object v1
:cond_f
const-string/jumbo v5, ","
invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
array-length v5, v3
new-array v1, v5, [Lcom/pinguo/share/website/WebSiteInfoBean;
const/4 v2, 0x0
:goto_1a
array-length v5, v1
if-ge v2, v5, :cond_e
new-instance v5, Lcom/pinguo/share/website/WebSiteInfoBean;
aget-object v6, v3, v2
new-instance v7, Ljava/lang/StringBuilder;
aget-object v8, v3, v2
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, "site_name"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
const-string/jumbo v8, ""
invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v6, v7}, Lcom/pinguo/share/website/WebSiteInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v5, v1, v2
aget-object v5, v1, v2
const/4 v6, 0x0
invoke-static {p0, v5, v6}, Lcom/pinguo/share/bind/BindSharedPreferences;->resetWebSiteInfoBean(Landroid/content/Context;Lcom/pinguo/share/website/WebSiteInfoBean;Z)V
add-int/lit8 v2, v2, 0x1
goto :goto_1a
.end method
.method public static getClearWebSite(Landroid/content/Context;)Ljava/util/Set;
.registers 7
invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v3
const-string/jumbo v4, "clear_website"
const/4 v5, 0x0
invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/util/HashSet;
invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
if-eqz v1, :cond_21
const-string/jumbo v4, ","
invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v4
invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
:cond_21
return-object v2
.end method
.method public static getServerDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;
.registers 8
const-wide/16 v5, 0x0
const/4 v2, 0x0
invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v1
invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->readFromSP(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_4c
new-instance v0, Lcom/pinguo/share/bind/DispatchBean;
invoke-direct {v0}, Lcom/pinguo/share/bind/DispatchBean;-><init>()V
const-string/jumbo v3, "auth"
invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/pinguo/share/bind/DispatchBean;->setAuth(Ljava/lang/String;)V
const-string/jumbo v3, "share"
invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/pinguo/share/bind/DispatchBean;->setShare(Ljava/lang/String;)V
const-string/jumbo v3, "timespan"
invoke-interface {v1, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v3
invoke-virtual {v0, v3, v4}, Lcom/pinguo/share/bind/DispatchBean;->setTimespan(J)V
const-string/jumbo v3, "locationtime"
invoke-interface {v1, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v3
invoke-virtual {v0, v3, v4}, Lcom/pinguo/share/bind/DispatchBean;->setLocationTime(J)V
const-string/jumbo v3, "last_locale"
invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/pinguo/share/bind/DispatchBean;->setLastLocale(Ljava/lang/String;)V
invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getBufferWeb(Landroid/content/Context;)[Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/pinguo/share/bind/DispatchBean;->setArray([Lcom/pinguo/share/website/WebSiteInfoBean;)V
:goto_4b
return-object v0
:cond_4c
move-object v0, v2
goto :goto_4b
.end method
.method private static getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
.registers 3
const-string/jumbo v0, "bind_info"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
return-object v0
.end method
.method public static isAttantionable(Ljava/lang/String;)Z
.registers 2
const-string/jumbo v0, "qq"
invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_26
const-string/jumbo v0, "sina"
invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_26
const-string/jumbo v0, "facebook"
invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_26
const-string/jumbo v0, "twitter"
invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_26
const/4 v0, 0x0
:goto_25
return v0
:cond_26
const/4 v0, 0x1
goto :goto_25
.end method
.method public static isSelectedBind(Landroid/content/Context;)Z
.registers 4
const/4 v2, 0x0
const-string/jumbo v0, "bind_info"
invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-string/jumbo v1, "isSelectedBind"
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public static needUpdateDispatchBean(Landroid/content/Context;)Z
.registers 4
invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string/jumbo v1, "pref_key_need_update_dispatch"
const/4 v2, 0x0
invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
return v1
.end method
.method public static readFromSP(Landroid/content/Context;)Z
.registers 5
invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v1
const-string/jumbo v2, "auth"
const/4 v3, 0x0
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_10
const/4 v2, 0x1
:goto_f
return v2
:cond_10
const/4 v2, 0x0
goto :goto_f
.end method
.method public static refreshWebSiteInfo(Landroid/content/Context;Lcom/pinguo/share/website/WebSiteInfoBean;)V
.registers 3
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
const/4 v0, 0x1
invoke-static {p0, p1, v0}, Lcom/pinguo/share/bind/BindSharedPreferences;->resetWebSiteInfoBean(Landroid/content/Context;Lcom/pinguo/share/website/WebSiteInfoBean;Z)V
goto :goto_2
.end method
.method public static refreshWebSiteTokenInfo(Landroid/content/Context;Lcom/pinguo/share/website/ShareResultBean;)Z
.registers 12
const/4 v7, 0x0
if-eqz p1, :cond_9
invoke-virtual {p1}, Lcom/pinguo/share/website/ShareResultBean;->isRefresh()Z
move-result v8
if-nez v8, :cond_a
:cond_9
:goto_9
return v7
:cond_a
invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v4
new-instance v8, Ljava/lang/StringBuilder;
invoke-virtual {p1}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v9
iget-object v9, v9, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v9, "token"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
const/4 v9, 0x0
invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v8
if-nez v8, :cond_9
invoke-virtual {p1}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v7
iget-object v5, v7, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-virtual {p1}, Lcom/pinguo/share/website/ShareResultBean;->getRefreshToken()Ljava/lang/String;
move-result-object v6
invoke-virtual {p1}, Lcom/pinguo/share/website/ShareResultBean;->getExpiredTime()J
move-result-wide v1
invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
new-instance v7, Ljava/lang/StringBuilder;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, "expire_in"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-interface {v0, v7, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
new-instance v7, Ljava/lang/StringBuilder;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, "token"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v7, Ljava/lang/StringBuilder;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, "timespan"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
invoke-interface {v0, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v7
goto/16 :goto_9
.end method
.method private static removeBufferedBindObj(Landroid/content/Context;Lcom/pinguo/share/bind/DispatchBean;)V
.registers 14
const/4 v8, 0x0
invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v5
const-string/jumbo v7, "active_sites"
const/4 v9, 0x0
invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_10
:cond_f
return-void
:cond_10
const-string/jumbo v7, ","
invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v4
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p1}, Lcom/pinguo/share/bind/DispatchBean;->getBindArray()Ljava/util/List;
move-result-object v7
invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_24
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-nez v9, :cond_bd
array-length v9, v4
move v7, v8
:goto_2c
if-ge v7, v9, :cond_f
aget-object v3, v4, v7
invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v10
if-nez v10, :cond_b9
invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v2
new-instance v10, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v11, "uid"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v10, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v11, "expire_in"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v10, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v11, "nickname"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v10, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v11, "avatar"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v10, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v11, "token"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-interface {v2, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
invoke-static {v3}, Lcom/pinguo/share/bind/SinaBinder;->isSinaSite(Ljava/lang/String;)Z
move-result v10
if-eqz v10, :cond_b9
invoke-static {p0, v8}, Lcom/pinguo/share/bind/BindSharedPreferences;->setSinaNeedWebBind(Landroid/content/Context;Z)V
:cond_b9
add-int/lit8 v7, v7, 0x1
goto/16 :goto_2c
:cond_bd
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/share/website/WebSiteInfoBean;
iget-object v9, v6, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_24
.end method
.method public static resetWebSiteInfoBean(Landroid/content/Context;Lcom/pinguo/share/website/WebSiteInfoBean;Z)V
.registers 15
const-wide/16 v6, 0x0
const/4 v11, 0x0
const/4 v10, 0x0
if-eqz p1, :cond_e
iget-object v8, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v8
if-eqz v8, :cond_f
:goto_e
:cond_e
return-void
:cond_f
iget-object v4, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v2
new-instance v8, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v9, "message"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v2, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-virtual {p1, v8}, Lcom/pinguo/share/website/WebSiteInfoBean;->setMessage(Ljava/lang/String;)V
new-instance v8, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v9, "text"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v2, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-virtual {p1, v8}, Lcom/pinguo/share/website/WebSiteInfoBean;->setText(Ljava/lang/String;)V
new-instance v8, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v9, "status"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v2, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v8
invoke-virtual {p1, v8}, Lcom/pinguo/share/website/WebSiteInfoBean;->setStatus(I)V
new-instance v8, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v9, "token"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v2, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-virtual {p1, v8}, Lcom/pinguo/share/website/WebSiteInfoBean;->setToken(Ljava/lang/String;)V
new-instance v8, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v9, "loginUrl"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v2, v8, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-virtual {p1, v8}, Lcom/pinguo/share/website/WebSiteInfoBean;->setLoginUrl(Ljava/lang/String;)V
new-instance v8, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v9, "binding"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v2, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v8
invoke-virtual {p1, v8}, Lcom/pinguo/share/website/WebSiteInfoBean;->setBinding(I)V
new-instance v8, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v9, "expire_in"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v2, v8, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v8
invoke-virtual {p1, v8, v9}, Lcom/pinguo/share/website/WebSiteInfoBean;->setExpire_in(J)V
new-instance v8, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v9, "timespan"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
if-eqz p2, :cond_228
:goto_e8
invoke-interface {v2, v8, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v6
invoke-virtual {p1, v6, v7}, Lcom/pinguo/share/website/WebSiteInfoBean;->setTimespan(J)V
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "nickname"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {v2, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {p1, v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->setNickName(Ljava/lang/String;)V
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "avatar"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {v2, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {p1, v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->setAvatar(Ljava/lang/String;)V
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "uid"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {v2, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {p1, v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->setUid(Ljava/lang/String;)V
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "isTrue"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {v2, v6, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v6
invoke-virtual {p1, v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->setIsTrue(I)V
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "thirdFace"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {v2, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {p1, v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->setThirdFace(Ljava/lang/String;)V
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "atable"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {v2, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v6
invoke-virtual {p1, v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->setAtable(Z)V
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "Activate"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {v2, v6, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v6
invoke-virtual {p1, v6}, Lcom/pinguo/share/website/WebSiteInfoBean;->setActivate(Z)V
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "site_url"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {v2, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-static {v6, p1, p0, v11}, Lcom/pinguo/share/bind/BindSharedPreferences;->getBindIcon(Ljava/lang/String;Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;Z)V
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "app_key"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {v2, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "app_secret"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {v2, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "redirect_url"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {v2, v6, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
if-eqz v0, :cond_e
if-eqz v1, :cond_e
if-eqz v3, :cond_e
new-instance v5, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;
invoke-direct {v5}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;-><init>()V
invoke-virtual {v5, v0}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->setAppKey(Ljava/lang/String;)V
invoke-virtual {v5, v1}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->setAppSecret(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->setRedirectUrl(Ljava/lang/String;)V
invoke-virtual {p1, v5}, Lcom/pinguo/share/website/WebSiteInfoBean;->setSso(Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;)V
goto/16 :goto_e
:cond_228
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
goto/16 :goto_e8
.end method
.method public static saveDispatch(Landroid/content/Context;Lcom/pinguo/share/bind/DispatchBean;Ljava/lang/String;)V
.registers 26
invoke-static/range {p0 .. p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v18
invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v7
new-instance v15, Lorg/json/JSONObject;
move-object/from16 v0, p2
invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v18, "auth"
move-object/from16 v0, v18
invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, p1
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/pinguo/share/bind/DispatchBean;->setAuth(Ljava/lang/String;)V
const-string/jumbo v18, "share"
move-object/from16 v0, v18
invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, p1
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/pinguo/share/bind/DispatchBean;->setShare(Ljava/lang/String;)V
const-string/jumbo v18, "timespan"
move-object/from16 v0, v18
invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v18
move-object/from16 v0, p1
move-wide/from16 v1, v18
invoke-virtual {v0, v1, v2}, Lcom/pinguo/share/bind/DispatchBean;->setTimespan(J)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v18
move-object/from16 v0, p1
move-wide/from16 v1, v18
invoke-virtual {v0, v1, v2}, Lcom/pinguo/share/bind/DispatchBean;->setLocationTime(J)V
invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;
move-result-object v18
move-object/from16 v0, p1
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/pinguo/share/bind/DispatchBean;->setLastLocale(Ljava/lang/String;)V
const-string/jumbo v18, "auth"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/bind/DispatchBean;->getAuth()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v18, "share"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/bind/DispatchBean;->getShare()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v18, "timespan"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/bind/DispatchBean;->getTimespan()J
move-result-wide v19
move-object/from16 v0, v18
move-wide/from16 v1, v19
invoke-interface {v7, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v18, "locationtime"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/bind/DispatchBean;->getLocationTime()J
move-result-wide v19
move-object/from16 v0, v18
move-wide/from16 v1, v19
invoke-interface {v7, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v18, "last_locale"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/bind/DispatchBean;->getLastLocale()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v18, "active_sites"
move-object/from16 v0, v18
invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v10
invoke-virtual {v10}, Lorg/json/JSONArray;->length()I
move-result v18
move/from16 v0, v18
new-array v0, v0, [Lcom/pinguo/share/website/WebSiteInfoBean;
move-object/from16 v17, v0
const/4 v14, 0x0
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const/4 v8, 0x0
:goto_b5
invoke-virtual {v10}, Lorg/json/JSONArray;->length()I
move-result v18
move/from16 v0, v18
if-lt v8, v0, :cond_f6
move-object/from16 v0, p1
move-object/from16 v1, v17
invoke-virtual {v0, v1}, Lcom/pinguo/share/bind/DispatchBean;->setArray([Lcom/pinguo/share/website/WebSiteInfoBean;)V
:try_start_c4
const-string/jumbo v18, "bind"
move-object/from16 v0, v18
invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v5
const/4 v8, 0x0
:goto_ce
invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
:try_end_d1
.catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_d1} :catch_2ff
move-result v18
move/from16 v0, v18
if-lt v8, v0, :cond_2b9
:goto_d6
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/bind/DispatchBean;->refreshBindArray()V
const-string/jumbo v18, "active_sites"
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V
invoke-static/range {p0 .. p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getBufferWeb(Landroid/content/Context;)[Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v18
move-object/from16 v0, p1
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/pinguo/share/bind/DispatchBean;->setArray([Lcom/pinguo/share/website/WebSiteInfoBean;)V
return-void
:cond_f6
invoke-virtual {v10, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v14
new-instance v18, Lcom/pinguo/share/website/WebSiteInfoBean;
const-string/jumbo v19, "site_code"
move-object/from16 v0, v19
invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
const-string/jumbo v20, "site_name"
move-object/from16 v0, v20
invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v20
invoke-direct/range {v18 .. v20}, Lcom/pinguo/share/website/WebSiteInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v18, v17, v8
:try_start_113
const-string/jumbo v18, "ssoable"
move-object/from16 v0, v18
invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v12
if-eqz v12, :cond_154
new-instance v11, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;
invoke-direct {v11}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;-><init>()V
const-string/jumbo v18, "app_key"
move-object/from16 v0, v18
invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v18
invoke-virtual {v11, v0}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->setAppKey(Ljava/lang/String;)V
const-string/jumbo v18, "app_secret"
move-object/from16 v0, v18
invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v18
invoke-virtual {v11, v0}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->setAppSecret(Ljava/lang/String;)V
const-string/jumbo v18, "redirect_url"
move-object/from16 v0, v18
invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
move-object/from16 v0, v18
invoke-virtual {v11, v0}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->setRedirectUrl(Ljava/lang/String;)V
aget-object v18, v17, v8
move-object/from16 v0, v18
invoke-virtual {v0, v11}, Lcom/pinguo/share/website/WebSiteInfoBean;->setSso(Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;)V
:goto_154
:cond_154
:try_end_154
.catch Ljava/lang/Exception; {:try_start_113 .. :try_end_154} :catch_2b3
aget-object v18, v17, v8
const-string/jumbo v19, "atable"
move-object/from16 v0, v19
invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v19
invoke-virtual/range {v18 .. v19}, Lcom/pinguo/share/website/WebSiteInfoBean;->setAtable(Z)V
const-string/jumbo v18, "site_url"
move-object/from16 v0, v18
invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v18
aget-object v19, v17, v8
const/16 v20, 0x1
move-object/from16 v0, v18
move-object/from16 v1, v19
move-object/from16 v2, p0
move/from16 v3, v20
invoke-static {v0, v1, v2, v3}, Lcom/pinguo/share/bind/BindSharedPreferences;->getBindIcon(Ljava/lang/String;Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;Z)V
aget-object v18, v17, v8
move-object/from16 v0, v18
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v18, v0
move-object/from16 v0, v18
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v10}, Lorg/json/JSONArray;->length()I
move-result v18
add-int/lit8 v18, v18, -0x1
move/from16 v0, v18
if-eq v8, v0, :cond_199
const-string/jumbo v18, ","
move-object/from16 v0, v18
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_199
new-instance v18, Ljava/lang/StringBuilder;
aget-object v19, v17, v8
move-object/from16 v0, v19
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v19, v0
invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v19, "site_url"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
const-string/jumbo v19, "site_url"
move-object/from16 v0, v19
invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v18, Ljava/lang/StringBuilder;
aget-object v19, v17, v8
move-object/from16 v0, v19
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v19, v0
invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v19, "site_name"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
aget-object v19, v17, v8
move-object/from16 v0, v19
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_name:Ljava/lang/String;
move-object/from16 v19, v0
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v18, Ljava/lang/StringBuilder;
aget-object v19, v17, v8
move-object/from16 v0, v19
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v19, v0
invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v19, "atable"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
aget-object v19, v17, v8
invoke-virtual/range {v19 .. v19}, Lcom/pinguo/share/website/WebSiteInfoBean;->isAtable()Z
move-result v19
move-object/from16 v0, v18
move/from16 v1, v19
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
aget-object v18, v17, v8
invoke-virtual/range {v18 .. v18}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;
move-result-object v18
if-eqz v18, :cond_2a8
new-instance v18, Ljava/lang/StringBuilder;
aget-object v19, v17, v8
move-object/from16 v0, v19
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v19, v0
invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v19, "app_key"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
aget-object v19, v17, v8
invoke-virtual/range {v19 .. v19}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->getAppKey()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v18, Ljava/lang/StringBuilder;
aget-object v19, v17, v8
move-object/from16 v0, v19
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v19, v0
invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v19, "app_secret"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
aget-object v19, v17, v8
invoke-virtual/range {v19 .. v19}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->getAppSecret()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v18, Ljava/lang/StringBuilder;
aget-object v19, v17, v8
move-object/from16 v0, v19
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v19, v0
invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v19, "redirect_url"
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
aget-object v19, v17, v8
invoke-virtual/range {v19 .. v19}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->getRedirectUrl()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v18
move-object/from16 v1, v19
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:cond_2a8
aget-object v18, v17, v8
const/16 v19, 0x1
invoke-virtual/range {v18 .. v19}, Lcom/pinguo/share/website/WebSiteInfoBean;->setActivate(Z)V
add-int/lit8 v8, v8, 0x1
goto/16 :goto_b5
:catch_2b3
move-exception v6
invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_154
:try_start_2b9
:cond_2b9
invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v9
const-string/jumbo v18, "site_code"
move-object/from16 v0, v18
invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/bind/DispatchBean;->getArray()[Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v19
move-object/from16 v0, v19
array-length v0, v0
move/from16 v20, v0
const/16 v18, 0x0
:goto_2d1
move/from16 v0, v18
move/from16 v1, v20
if-lt v0, v1, :cond_2db
add-int/lit8 v8, v8, 0x1
goto/16 :goto_ce
:cond_2db
aget-object v16, v19, v18
move-object/from16 v0, v16
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v21, v0
move-object/from16 v0, v21
invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v21
if-eqz v21, :cond_2fc
invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v21
const/16 v22, 0x0
move-object/from16 v0, v21
move-object/from16 v1, v16
move-object/from16 v2, p0
move/from16 v3, v22
invoke-static {v0, v1, v2, v3}, Lcom/pinguo/share/bind/BindSharedPreferences;->saveWebSiteInfo(Ljava/lang/String;Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;Z)Ljava/lang/String;
:try_end_2fc
.catch Ljava/lang/Exception; {:try_start_2b9 .. :try_end_2fc} :catch_2ff
:cond_2fc
add-int/lit8 v18, v18, 0x1
goto :goto_2d1
:catch_2ff
move-exception v6
invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_d6
.end method
.method public static saveDispatch(Landroid/content/Context;Lcom/pinguo/share/bind/DispatchBean;Ljava/lang/String;Z)V
.registers 28
if-eqz p2, :cond_a
invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I
move-result v19
if-eqz v19, :cond_a
if-nez p1, :cond_13
:cond_a
new-instance v19, Lorg/json/JSONException;
const-string/jumbo v20, "Server\'s response is null or dispathBean is null."
invoke-direct/range {v19 .. v20}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V
throw v19
:cond_13
invoke-static/range {p0 .. p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v19
invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v7
new-instance v16, Lorg/json/JSONObject;
move-object/from16 v0, v16
move-object/from16 v1, p2
invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v19, "auth"
move-object/from16 v0, v16
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, p1
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/pinguo/share/bind/DispatchBean;->setAuth(Ljava/lang/String;)V
const-string/jumbo v19, "share"
move-object/from16 v0, v16
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, p1
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/pinguo/share/bind/DispatchBean;->setShare(Ljava/lang/String;)V
const-string/jumbo v19, "timespan"
move-object/from16 v0, v16
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v19
move-object/from16 v0, p1
move-wide/from16 v1, v19
invoke-virtual {v0, v1, v2}, Lcom/pinguo/share/bind/DispatchBean;->setTimespan(J)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v19
move-object/from16 v0, p1
move-wide/from16 v1, v19
invoke-virtual {v0, v1, v2}, Lcom/pinguo/share/bind/DispatchBean;->setLocationTime(J)V
invoke-static {}, Lcom/pinguo/share/util/ShareModuleUtil;->getLocationInfo()Ljava/lang/String;
move-result-object v19
move-object/from16 v0, p1
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/pinguo/share/bind/DispatchBean;->setLastLocale(Ljava/lang/String;)V
const-string/jumbo v19, "auth"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/bind/DispatchBean;->getAuth()Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v19, "share"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/bind/DispatchBean;->getShare()Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v19, "timespan"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/bind/DispatchBean;->getTimespan()J
move-result-wide v20
move-object/from16 v0, v19
move-wide/from16 v1, v20
invoke-interface {v7, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v19, "locationtime"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/bind/DispatchBean;->getLocationTime()J
move-result-wide v20
move-object/from16 v0, v19
move-wide/from16 v1, v20
invoke-interface {v7, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v19, "last_locale"
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/bind/DispatchBean;->getLastLocale()Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
const-string/jumbo v19, "active_sites"
move-object/from16 v0, v16
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v11
invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
move-result v19
move/from16 v0, v19
new-array v0, v0, [Lcom/pinguo/share/website/WebSiteInfoBean;
move-object/from16 v18, v0
const/4 v15, 0x0
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const/4 v8, 0x0
:goto_d2
invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
move-result v19
move/from16 v0, v19
if-lt v8, v0, :cond_117
move-object/from16 v0, p1
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Lcom/pinguo/share/bind/DispatchBean;->setArray([Lcom/pinguo/share/website/WebSiteInfoBean;)V
:try_start_e1
const-string/jumbo v19, "bind"
move-object/from16 v0, v16
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v5
const/4 v8, 0x0
:goto_ed
invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
:try_end_f0
.catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_f0} :catch_33d
move-result v19
move/from16 v0, v19
if-lt v8, v0, :cond_2f7
:goto_f5
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/bind/DispatchBean;->refreshBindArray()V
const-string/jumbo v19, "active_sites"
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V
if-eqz p3, :cond_343
invoke-static/range {p0 .. p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getBufferWeb(Landroid/content/Context;)[Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v19
move-object/from16 v0, p1
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/pinguo/share/bind/DispatchBean;->setArray([Lcom/pinguo/share/website/WebSiteInfoBean;)V
:goto_116
return-void
:cond_117
invoke-virtual {v11, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v15
new-instance v19, Lcom/pinguo/share/website/WebSiteInfoBean;
const-string/jumbo v20, "site_code"
move-object/from16 v0, v20
invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v20
const-string/jumbo v21, "site_name"
move-object/from16 v0, v21
invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v21
invoke-direct/range {v19 .. v21}, Lcom/pinguo/share/website/WebSiteInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V
aput-object v19, v18, v8
:try_start_134
const-string/jumbo v19, "ssoable"
move-object/from16 v0, v19
invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v13
if-eqz v13, :cond_175
new-instance v12, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;
invoke-direct {v12}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;-><init>()V
const-string/jumbo v19, "app_key"
move-object/from16 v0, v19
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v12, v0}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->setAppKey(Ljava/lang/String;)V
const-string/jumbo v19, "app_secret"
move-object/from16 v0, v19
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v12, v0}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->setAppSecret(Ljava/lang/String;)V
const-string/jumbo v19, "redirect_url"
move-object/from16 v0, v19
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v19
invoke-virtual {v12, v0}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->setRedirectUrl(Ljava/lang/String;)V
aget-object v19, v18, v8
move-object/from16 v0, v19
invoke-virtual {v0, v12}, Lcom/pinguo/share/website/WebSiteInfoBean;->setSso(Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;)V
:try_end_175
.catch Ljava/lang/Exception; {:try_start_134 .. :try_end_175} :catch_2f1
:cond_175
:goto_175
aget-object v19, v18, v8
const-string/jumbo v20, "atable"
move-object/from16 v0, v20
invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v20
invoke-virtual/range {v19 .. v20}, Lcom/pinguo/share/website/WebSiteInfoBean;->setAtable(Z)V
const-string/jumbo v19, "site_url"
move-object/from16 v0, v19
invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
aget-object v20, v18, v8
const/16 v21, 0x1
move-object/from16 v0, v19
move-object/from16 v1, v20
move-object/from16 v2, p0
move/from16 v3, v21
invoke-static {v0, v1, v2, v3}, Lcom/pinguo/share/bind/BindSharedPreferences;->getBindIcon(Ljava/lang/String;Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;Z)V
aget-object v19, v18, v8
move-object/from16 v0, v19
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v19, v0
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v11}, Lorg/json/JSONArray;->length()I
move-result v19
add-int/lit8 v19, v19, -0x1
move/from16 v0, v19
if-eq v8, v0, :cond_1ba
const-string/jumbo v19, ","
move-object/from16 v0, v19
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_1ba
new-instance v19, Ljava/lang/StringBuilder;
aget-object v20, v18, v8
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v20, v0
invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v20
invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v20, "site_url"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
const-string/jumbo v20, "site_url"
move-object/from16 v0, v20
invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v19, Ljava/lang/StringBuilder;
aget-object v20, v18, v8
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v20, v0
invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v20
invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v20, "site_name"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
aget-object v20, v18, v8
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_name:Ljava/lang/String;
move-object/from16 v20, v0
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v19, Ljava/lang/StringBuilder;
aget-object v20, v18, v8
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v20, v0
invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v20
invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v20, "atable"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
aget-object v20, v18, v8
invoke-virtual/range {v20 .. v20}, Lcom/pinguo/share/website/WebSiteInfoBean;->isAtable()Z
move-result v20
move-object/from16 v0, v19
move/from16 v1, v20
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
aget-object v19, v18, v8
invoke-virtual/range {v19 .. v19}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;
move-result-object v19
if-eqz v19, :cond_2c9
new-instance v19, Ljava/lang/StringBuilder;
aget-object v20, v18, v8
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v20, v0
invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v20
invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v20, "app_key"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
aget-object v20, v18, v8
invoke-virtual/range {v20 .. v20}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->getAppKey()Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v19, Ljava/lang/StringBuilder;
aget-object v20, v18, v8
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v20, v0
invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v20
invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v20, "app_secret"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
aget-object v20, v18, v8
invoke-virtual/range {v20 .. v20}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->getAppSecret()Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v19, Ljava/lang/StringBuilder;
aget-object v20, v18, v8
move-object/from16 v0, v20
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v20, v0
invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v20
invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v20, "redirect_url"
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
aget-object v20, v18, v8
invoke-virtual/range {v20 .. v20}, Lcom/pinguo/share/website/WebSiteInfoBean;->getSso()Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Lcom/pinguo/share/website/WebSiteInfoBean$SsoBean;->getRedirectUrl()Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v19
move-object/from16 v1, v20
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:cond_2c9
const/4 v9, 0x1
aget-object v19, v18, v8
move-object/from16 v0, v19
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v19, v0
move-object/from16 v0, p1
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Lcom/pinguo/share/bind/DispatchBean;->getWebSite(Ljava/lang/String;)Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v17
if-eqz v17, :cond_2e6
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/share/website/WebSiteInfoBean;->isBindedWebSite()Z
move-result v19
if-eqz v19, :cond_2e6
invoke-virtual/range {v17 .. v17}, Lcom/pinguo/share/website/WebSiteInfoBean;->isActivate()Z
move-result v9
:cond_2e6
aget-object v19, v18, v8
move-object/from16 v0, v19
invoke-virtual {v0, v9}, Lcom/pinguo/share/website/WebSiteInfoBean;->setActivate(Z)V
add-int/lit8 v8, v8, 0x1
goto/16 :goto_d2
:catch_2f1
move-exception v6
invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_175
:cond_2f7
:try_start_2f7
invoke-virtual {v5, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v10
const-string/jumbo v19, "site_code"
move-object/from16 v0, v19
invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v14
invoke-virtual/range {p1 .. p1}, Lcom/pinguo/share/bind/DispatchBean;->getArray()[Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v20
move-object/from16 v0, v20
array-length v0, v0
move/from16 v21, v0
const/16 v19, 0x0
:goto_30f
move/from16 v0, v19
move/from16 v1, v21
if-lt v0, v1, :cond_319
add-int/lit8 v8, v8, 0x1
goto/16 :goto_ed
:cond_319
aget-object v17, v20, v19
move-object/from16 v0, v17
iget-object v0, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v22, v0
move-object/from16 v0, v22
invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v22
if-eqz v22, :cond_33a
invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v22
const/16 v23, 0x0
move-object/from16 v0, v22
move-object/from16 v1, v17
move-object/from16 v2, p0
move/from16 v3, v23
invoke-static {v0, v1, v2, v3}, Lcom/pinguo/share/bind/BindSharedPreferences;->saveWebSiteInfo(Ljava/lang/String;Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;Z)Ljava/lang/String;
:try_end_33a
.catch Ljava/lang/Exception; {:try_start_2f7 .. :try_end_33a} :catch_33d
:cond_33a
add-int/lit8 v19, v19, 0x1
goto :goto_30f
:catch_33d
move-exception v6
invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_f5
:cond_343
invoke-static/range {p0 .. p1}, Lcom/pinguo/share/bind/BindSharedPreferences;->removeBufferedBindObj(Landroid/content/Context;Lcom/pinguo/share/bind/DispatchBean;)V
goto/16 :goto_116
.end method
.method public static saveSelectedBind(Landroid/content/Context;Z)V
.registers 4
invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string/jumbo v1, "isSelectedBind"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
return-void
.end method
.method public static saveWebSiteInfo(Ljava/lang/String;Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;)Ljava/lang/String;
.registers 4
const/4 v0, 0x1
invoke-virtual {p1, v0}, Lcom/pinguo/share/website/WebSiteInfoBean;->setActivate(Z)V
invoke-static {p0, p1, p2, v0}, Lcom/pinguo/share/bind/BindSharedPreferences;->saveWebSiteInfo(Ljava/lang/String;Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static saveWebSiteInfo(Ljava/lang/String;Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;Z)Ljava/lang/String;
.registers 11
const/4 v3, 0x0
:try_start_1
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
if-eqz p3, :cond_20
const-string/jumbo v4, "200"
const-string/jumbo v5, "status"
invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_20
const-string/jumbo v4, "message"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
:goto_1f
return-object v4
:cond_20
const-string/jumbo v4, "nickname"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {p1, v4}, Lcom/pinguo/share/website/WebSiteInfoBean;->setNickName(Ljava/lang/String;)V
const-string/jumbo v4, "expire_in"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v4
invoke-virtual {p1, v4, v5}, Lcom/pinguo/share/website/WebSiteInfoBean;->setExpire_in(J)V
const-string/jumbo v4, "token"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {p1, v4}, Lcom/pinguo/share/website/WebSiteInfoBean;->setToken(Ljava/lang/String;)V
const-string/jumbo v4, "uid"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {p1, v4}, Lcom/pinguo/share/website/WebSiteInfoBean;->setUid(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
invoke-virtual {p1, v4, v5}, Lcom/pinguo/share/website/WebSiteInfoBean;->setTimespan(J)V
if-eqz p3, :cond_65
const-string/jumbo v4, "message"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {p1, v4}, Lcom/pinguo/share/website/WebSiteInfoBean;->setMessage(Ljava/lang/String;)V
const-string/jumbo v4, "status"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v4
invoke-virtual {p1, v4}, Lcom/pinguo/share/website/WebSiteInfoBean;->setStatus(I)V
:cond_65
const-string/jumbo v4, "avatar"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {p1, v4}, Lcom/pinguo/share/website/WebSiteInfoBean;->setAvatar(Ljava/lang/String;)V
invoke-static {p2}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v4
invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
new-instance v4, Ljava/lang/StringBuilder;
iget-object v5, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "nickname"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Lcom/pinguo/share/website/WebSiteInfoBean;->getNickName()Ljava/lang/String;
move-result-object v5
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v4, Ljava/lang/StringBuilder;
iget-object v5, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "Activate"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Lcom/pinguo/share/website/WebSiteInfoBean;->isActivate()Z
move-result v5
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
new-instance v4, Ljava/lang/StringBuilder;
iget-object v5, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "uid"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Lcom/pinguo/share/website/WebSiteInfoBean;->getUid()Ljava/lang/String;
move-result-object v5
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v4, Ljava/lang/StringBuilder;
iget-object v5, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "expire_in"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Lcom/pinguo/share/website/WebSiteInfoBean;->getExpire_in()J
move-result-wide v5
invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
new-instance v4, Ljava/lang/StringBuilder;
iget-object v5, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "token"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Lcom/pinguo/share/website/WebSiteInfoBean;->getToken()Ljava/lang/String;
move-result-object v5
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v4, Ljava/lang/StringBuilder;
iget-object v5, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "message"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Lcom/pinguo/share/website/WebSiteInfoBean;->getMessage()Ljava/lang/String;
move-result-object v5
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v4, Ljava/lang/StringBuilder;
iget-object v5, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "status"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Lcom/pinguo/share/website/WebSiteInfoBean;->getStatus()I
move-result v5
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
new-instance v4, Ljava/lang/StringBuilder;
iget-object v5, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "avatar"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Lcom/pinguo/share/website/WebSiteInfoBean;->getAvatar()Ljava/lang/String;
move-result-object v5
invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
new-instance v4, Ljava/lang/StringBuilder;
iget-object v5, p1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "timespan"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
:goto_17f
:try_end_17f
.catch Lorg/json/JSONException; {:try_start_1 .. :try_end_17f} :catch_182
move-object v4, v3
goto/16 :goto_1f
:catch_182
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
const-string/jumbo v3, ""
goto :goto_17f
.end method
.method public static setNeedUpdateDispatchBean(Landroid/content/Context;Z)V
.registers 4
invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string/jumbo v1, "pref_key_need_update_dispatch"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
return-void
.end method
.method public static setSinaNeedWebBind(Landroid/content/Context;Z)V
.registers 4
invoke-static {p0}, Lcom/pinguo/share/bind/BindSharedPreferences;->getShared(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string/jumbo v1, "isSinaNeedWebBind"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
return-void
.end method