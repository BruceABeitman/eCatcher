.class public Lcom/tencent/open/yyb/b;
.super Ljava/lang/Object;
.source "ProGuard"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 4
const/4 v1, 0x0
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V
invoke-static {p0, p1, v0}, Lcom/tencent/open/yyb/b;->a(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;
.registers 11
const/4 v6, 0x0
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v0
:try_start_9
invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
:try_end_c
.catchall {:try_start_9 .. :try_end_c} :catchall_6f
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_54
move-result-object v7
if-nez v7, :cond_1a
if-eqz v7, :cond_14
:try_start_11
invoke-virtual {v7}, Ljava/io/InputStream;->close()V
:cond_14
:goto_14
:try_end_14
.catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_15
return-object v6
:catch_15
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_14
:try_start_1a
:cond_1a
const-string/jumbo v0, ".9.png"
invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4a
invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_3f
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B
move-result-object v3
new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const/4 v5, 0x0
move-object v4, p2
invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V
:goto_38
:try_end_38
.catchall {:try_start_1a .. :try_end_38} :catchall_7c
.catch Ljava/io/IOException; {:try_start_1a .. :try_end_38} :catch_81
if-eqz v7, :cond_3d
:try_start_3a
invoke-virtual {v7}, Ljava/io/InputStream;->close()V
:cond_3d
:try_end_3d
.catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_4f
:goto_3d
move-object v6, v0
goto :goto_14
:cond_3f
if-eqz v7, :cond_14
:try_start_41
invoke-virtual {v7}, Ljava/io/InputStream;->close()V
:try_end_44
.catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45
goto :goto_14
:catch_45
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_14
:try_start_4a
:cond_4a
invoke-static {v7, p0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
:try_end_4d
.catchall {:try_start_4a .. :try_end_4d} :catchall_7c
.catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_81
move-result-object v0
goto :goto_38
:catch_4f
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_3d
:catch_54
move-exception v0
move-object v1, v6
:goto_56
:try_start_56
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
const-string/jumbo v0, "openSDK_LOG"
const-string/jumbo v2, "-->(AppbarUtil)getDrawable : IOException"
invoke-static {v0, v2}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
:try_end_62
.catchall {:try_start_56 .. :try_end_62} :catchall_7e
if-eqz v1, :cond_84
:try_start_64
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:try_end_67
.catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_69
move-object v0, v6
goto :goto_3d
:catch_69
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
move-object v0, v6
goto :goto_3d
:catchall_6f
move-exception v0
move-object v7, v6
:goto_71
if-eqz v7, :cond_76
:try_start_73
invoke-virtual {v7}, Ljava/io/InputStream;->close()V
:goto_76
:cond_76
:try_end_76
.catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77
throw v0
:catch_77
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_76
:catchall_7c
move-exception v0
goto :goto_71
:catchall_7e
move-exception v0
move-object v7, v1
goto :goto_71
:catch_81
move-exception v0
move-object v1, v7
goto :goto_56
:cond_84
move-object v0, v6
goto :goto_3d
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
move-result-object v1
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
const/4 v0, 0x0
const-string/jumbo v3, ".qq.com"
invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_2b
const-string/jumbo v0, ".qq.com"
:cond_2b
const-string/jumbo v2, "logintype"
const-string/jumbo v3, "MOBILEQ"
invoke-static {v2, v3, v0}, Lcom/tencent/open/yyb/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, p1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "qopenid"
invoke-static {v2, p2, v0}, Lcom/tencent/open/yyb/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, p1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "qaccesstoken"
invoke-static {v2, p3, v0}, Lcom/tencent/open/yyb/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, p1, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "openappid"
invoke-static {v2, p4, v0}, Lcom/tencent/open/yyb/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;
move-result-object v0
invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
goto :goto_6
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string/jumbo v1, "uin"
const-string/jumbo v2, "1000"
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "action"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "appid"
invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "via"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/tencent/open/yyb/b$b;
const/4 v2, 0x0
invoke-direct {v1, v2}, Lcom/tencent/open/yyb/b$b;-><init>(Lcom/tencent/open/yyb/b$1;)V
const/4 v2, 0x1
new-array v2, v2, [Landroid/os/Bundle;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-virtual {v1, v2}, Lcom/tencent/open/yyb/b$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
if-eqz p2, :cond_46
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "; path=/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "; domain="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_46
return-object v0
.end method