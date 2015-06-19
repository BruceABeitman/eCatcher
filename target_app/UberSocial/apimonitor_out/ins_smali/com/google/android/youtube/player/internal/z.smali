.class public final Lcom/google/android/youtube/player/internal/z;
.super Ljava/lang/Object;
.field private static final a:Landroid/net/Uri;
.method static constructor <clinit>()V
.registers 1
const-string v0, "http://play.google.com/store/apps/details"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lcom/google/android/youtube/player/internal/z;->a:Landroid/net/Uri;
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/content/Context;)I
.registers 6
const/4 v0, 0x0
if-eqz p1, :cond_13
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const-string v1, "clientTheme"
const-string v2, "style"
invoke-static {p0}, Lcom/google/android/youtube/player/internal/z;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
:cond_13
if-nez v0, :cond_1e
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_1f
const v0, 0x1030128
:goto_1e
:cond_1e
return v0
:cond_1f
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_29
const v0, 0x103006b
goto :goto_1e
:cond_29
const v0, 0x1030005
goto :goto_1e
.end method
.method public static a(Ljava/lang/String;)Landroid/content/Intent;
.registers 4
const-string v0, "package"
const/4 v1, 0x0
invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
return-object v1
.end method
.method public static a(Landroid/content/Context;)Ljava/lang/String;
.registers 4
new-instance v0, Landroid/content/Intent;
const-string v1, "com.google.android.youtube.api.service.START"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
move-result-object v0
if-eqz v0, :cond_21
iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
if-eqz v2, :cond_21
iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;
if-eqz v2, :cond_21
iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;
:goto_20
return-object v0
:cond_21
const-string v0, "com.google.android.tv"
invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2c
const-string v0, "com.google.android.youtube.googletv"
goto :goto_20
:cond_2c
const-string v0, "com.google.android.youtube"
goto :goto_20
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
.registers 6
const/4 v0, 0x1
:try_start_1
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
:try_end_8
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_8} :catch_28
move-result-object v1
const-string v2, "com.google.android.youtube.googletvdev"
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_13
const-string p1, "com.google.android.youtube.googletv"
:cond_13
const-string v2, "youtube_api_version_code"
const-string v3, "integer"
invoke-virtual {v1, v2, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v2
if-nez v2, :cond_1e
:goto_1d
:cond_1d
return v0
:cond_1e
const/16 v3, 0x3e8
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I
move-result v1
if-gt v3, v1, :cond_1d
const/4 v0, 0x0
goto :goto_1d
:catch_28
move-exception v1
goto :goto_1d
.end method
.method public static a(Landroid/content/pm/PackageManager;)Z
.registers 2
const-string v0, "com.google.android.tv"
invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public static b(Landroid/content/Context;)Landroid/content/Context;
.registers 3
:try_start_0
invoke-static {p0}, Lcom/google/android/youtube/player/internal/z;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
:try_end_8
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_a
move-result-object v0
:goto_9
return-object v0
:catch_a
move-exception v0
const/4 v0, 0x0
goto :goto_9
.end method
.method public static b(Ljava/lang/String;)Landroid/content/Intent;
.registers 4
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.VIEW"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
sget-object v1, Lcom/google/android/youtube/player/internal/z;->a:Landroid/net/Uri;
invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v1
const-string v2, "id"
invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
const-string v1, "com.android.vending"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
const/high16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
return-object v0
.end method
.method public static c(Landroid/content/Context;)I
.registers 2
invoke-static {p0}, Lcom/google/android/youtube/player/internal/z;->b(Landroid/content/Context;)Landroid/content/Context;
move-result-object v0
invoke-static {p0, v0}, Lcom/google/android/youtube/player/internal/z;->a(Landroid/content/Context;Landroid/content/Context;)I
move-result v0
return v0
.end method
.method public static d(Landroid/content/Context;)Ljava/lang/String;
.registers 4
:try_start_0
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v0
iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
:try_end_f
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10
return-object v0
:catch_10
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Cannot retrieve calling Context\'s PackageInfo"
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method