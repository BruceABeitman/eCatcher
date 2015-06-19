.class public final Lnet/hockeyapp/android/c/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field protected a:Ljava/lang/String;
.field protected b:Ljava/lang/String;
.field private c:Landroid/app/Activity;
.field private d:Ljava/lang/Boolean;
.field private e:Lnet/hockeyapp/android/i;
.field private f:J
.method private static a(Ljava/io/InputStream;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/io/BufferedReader;
new-instance v1, Ljava/io/InputStreamReader;
invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
const/16 v2, 0x400
invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
:try_start_11
:goto_11
invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_3a
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_2d
.catchall {:try_start_11 .. :try_end_2d} :catchall_48
.catch Ljava/io/IOException; {:try_start_11 .. :try_end_2d} :catch_2e
goto :goto_11
:catch_2e
move-exception v0
:try_start_2f
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:try_end_32
.catchall {:try_start_2f .. :try_end_32} :catchall_48
:try_start_32
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
:goto_35
:try_end_35
.catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_43
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:try_start_3a
:cond_3a
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
:try_end_3d
.catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e
goto :goto_35
:catch_3e
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_35
:catch_43
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_35
:catchall_48
move-exception v0
:try_start_49
invoke-virtual {p0}, Ljava/io/InputStream;->close()V
:goto_4c
:try_end_4c
.catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d
throw v0
:catch_4d
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_4c
.end method
.method private a(Ljava/lang/String;)Ljava/lang/String;
.registers 6
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->a:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "api/2/apps/"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->b:Ljava/lang/String;
if-eqz v0, :cond_126
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->b:Ljava/lang/String;
:goto_15
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "?format="
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const-string v2, "android_id"
invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_5a
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "&udid="
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
const-string v3, "android_id"
invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lnet/hockeyapp/android/c/a;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_5a
const-string v0, "&os=Android"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "&os_version="
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Lnet/hockeyapp/android/a;->e:Ljava/lang/String;
invoke-static {v2}, Lnet/hockeyapp/android/c/a;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "&device="
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Lnet/hockeyapp/android/a;->f:Ljava/lang/String;
invoke-static {v2}, Lnet/hockeyapp/android/c/a;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "&oem="
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Lnet/hockeyapp/android/a;->g:Ljava/lang/String;
invoke-static {v2}, Lnet/hockeyapp/android/c/a;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "&app_version="
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Lnet/hockeyapp/android/a;->b:Ljava/lang/String;
invoke-static {v2}, Lnet/hockeyapp/android/c/a;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "&sdk="
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v2, "HockeySDK"
invoke-static {v2}, Lnet/hockeyapp/android/c/a;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "&sdk_version="
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v2, "3.0.1"
invoke-static {v2}, Lnet/hockeyapp/android/c/a;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "&lang="
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v2
invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lnet/hockeyapp/android/c/a;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "&usage_time="
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-wide v2, p0, Lnet/hockeyapp/android/c/a;->f:J
invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_126
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
move-result-object v0
goto/16 :goto_15
.end method
.method private varargs a()Lorg/json/JSONArray;
.registers 5
:try_start_0
sget-object v0, Lnet/hockeyapp/android/a;->b:Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
new-instance v0, Lorg/json/JSONArray;
iget-object v2, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
invoke-static {v2}, Lnet/hockeyapp/android/d/h;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0, v1}, Lnet/hockeyapp/android/c/a;->a(Lorg/json/JSONArray;I)Z
move-result v2
if-eqz v2, :cond_18
:goto_17
return-object v0
:cond_18
new-instance v0, Ljava/net/URL;
const-string v2, "json"
invoke-direct {p0, v2}, Lnet/hockeyapp/android/c/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
const-string v2, "User-Agent"
const-string v3, "HockeySDK/Android"
invoke-virtual {v0, v2, v3}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x9
if-gt v2, v3, :cond_3b
const-string v2, "connection"
const-string v3, "close"
invoke-virtual {v0, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
:cond_3b
invoke-static {v0}, Ldroidbox/java/net/URLConnection;->connect(Ljava/net/URLConnection;)V
new-instance v2, Ljava/io/BufferedInputStream;
invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
move-result-object v0
invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
invoke-static {v2}, Lnet/hockeyapp/android/c/a;->a(Ljava/io/InputStream;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
new-instance v2, Lorg/json/JSONArray;
invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v2, v1}, Lnet/hockeyapp/android/c/a;->a(Lorg/json/JSONArray;I)Z
move-result v0
if-eqz v0, :cond_62
invoke-static {v2}, Lnet/hockeyapp/android/c/a;->a(Lorg/json/JSONArray;)Lorg/json/JSONArray;
:try_end_5c
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5c} :catch_5e
move-result-object v0
goto :goto_17
:catch_5e
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_62
const/4 v0, 0x0
goto :goto_17
.end method
.method private static a(Lorg/json/JSONArray;)Lorg/json/JSONArray;
.registers 5
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
const/4 v0, 0x0
:goto_6
invoke-virtual {p0}, Lorg/json/JSONArray;->length()I
move-result v2
const/16 v3, 0x19
invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I
move-result v2
if-ge v0, v2, :cond_1c
:try_start_12
invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
:try_end_19
.catch Lorg/json/JSONException; {:try_start_12 .. :try_end_19} :catch_1d
:goto_19
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_1c
return-object v1
:catch_1d
move-exception v2
goto :goto_19
.end method
.method static synthetic a(Lnet/hockeyapp/android/c/a;)V
.registers 1
invoke-direct {p0}, Lnet/hockeyapp/android/c/a;->b()V
return-void
.end method
.method static synthetic a(Lnet/hockeyapp/android/c/a;Lorg/json/JSONArray;)V
.registers 9
const/4 v3, 0x0
const/4 v6, 0x0
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
if-eqz v0, :cond_61
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;
move-result-object v1
const/16 v0, 0x1001
invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;
move-result-object v0
const-string v2, "hockey_update_dialog"
invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
move-result-object v0
if-eqz v0, :cond_26
invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
:cond_26
invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;
const-class v0, Lnet/hockeyapp/android/UpdateFragment;
iget-object v2, p0, Lnet/hockeyapp/android/c/a;->e:Lnet/hockeyapp/android/i;
if-eqz v2, :cond_33
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->e:Lnet/hockeyapp/android/i;
const-class v0, Lnet/hockeyapp/android/UpdateFragment;
:cond_33
:try_start_33
const-string v2, "newInstance"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Class;
const/4 v4, 0x0
const-class v5, Lorg/json/JSONArray;
aput-object v5, v3, v4
const/4 v4, 0x1
const-class v5, Ljava/lang/String;
aput-object v5, v3, v4
invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
const/4 v2, 0x0
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p1, v3, v4
const/4 v4, 0x1
const-string v5, "apk"
invoke-direct {p0, v5}, Lnet/hockeyapp/android/c/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/DialogFragment;
const-string v2, "hockey_update_dialog"
invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
:goto_61
:cond_61
:try_end_61
.catch Ljava/lang/Exception; {:try_start_33 .. :try_end_61} :catch_62
return-void
:catch_62
move-exception v0
const-string v1, "HockeyApp"
const-string v2, "An exception happened while showing the update fragment:"
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v0, "HockeyApp"
const-string v1, "Showing update activity instead."
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/c/a;->a(Lorg/json/JSONArray;Ljava/lang/Boolean;)V
goto :goto_61
.end method
.method static synthetic a(Lnet/hockeyapp/android/c/a;Lorg/json/JSONArray;Ljava/lang/Boolean;)V
.registers 3
invoke-direct {p0, p1, p2}, Lnet/hockeyapp/android/c/a;->a(Lorg/json/JSONArray;Ljava/lang/Boolean;)V
return-void
.end method
.method private a(Lorg/json/JSONArray;Ljava/lang/Boolean;)V
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lnet/hockeyapp/android/c/a;->e:Lnet/hockeyapp/android/i;
if-eqz v1, :cond_9
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->e:Lnet/hockeyapp/android/i;
const-class v0, Lnet/hockeyapp/android/UpdateActivity;
:cond_9
if-nez v0, :cond_d
const-class v0, Lnet/hockeyapp/android/UpdateActivity;
:cond_d
iget-object v1, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
if-eqz v1, :cond_3f
new-instance v1, Landroid/content/Intent;
invoke-direct {v1}, Landroid/content/Intent;-><init>()V
iget-object v2, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
const-string v0, "json"
invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "url"
const-string v2, "apk"
invoke-direct {p0, v2}, Lnet/hockeyapp/android/c/a;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_3f
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->finish()V
:cond_3f
invoke-direct {p0}, Lnet/hockeyapp/android/c/a;->b()V
return-void
.end method
.method private a(Lorg/json/JSONArray;I)Z
.registers 8
const/4 v0, 0x0
move v1, v0
:goto_2
:try_start_2
invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
move-result v2
if-ge v1, v2, :cond_37
invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v2
const-string v3, "version"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v3
if-le v3, p2, :cond_38
const-string v3, "minimum_os_version"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
invoke-static {v3, v4}, Lnet/hockeyapp/android/d/i;->a(Ljava/lang/String;Ljava/lang/String;)I
move-result v3
if-gtz v3, :cond_38
const-string v1, "mandatory"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_36
const-string v1, "mandatory"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
iput-object v1, p0, Lnet/hockeyapp/android/c/a;->d:Ljava/lang/Boolean;
:cond_36
:try_end_36
.catch Lorg/json/JSONException; {:try_start_2 .. :try_end_36} :catch_3b
const/4 v0, 0x1
:goto_37
:cond_37
return v0
:cond_38
add-int/lit8 v1, v1, 0x1
goto :goto_2
:catch_3b
move-exception v1
goto :goto_37
.end method
.method static synthetic b(Lnet/hockeyapp/android/c/a;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
return-object v0
.end method
.method private static b(Ljava/lang/String;)Ljava/lang/String;
.registers 2
:try_start_0
const-string v0, "UTF-8"
invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_5
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
:goto_6
return-object v0
:catch_7
move-exception v0
const-string v0, ""
goto :goto_6
.end method
.method private b()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
iput-object v0, p0, Lnet/hockeyapp/android/c/a;->a:Ljava/lang/String;
iput-object v0, p0, Lnet/hockeyapp/android/c/a;->b:Ljava/lang/String;
return-void
.end method
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lnet/hockeyapp/android/c/a;->a()Lorg/json/JSONArray;
move-result-object v0
return-object v0
.end method
.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
.registers 6
const/4 v3, 0x1
check-cast p1, Lorg/json/JSONArray;
if-eqz p1, :cond_87
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->e:Lnet/hockeyapp/android/i;
if-eqz v0, :cond_b
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->e:Lnet/hockeyapp/android/i;
:cond_b
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lnet/hockeyapp/android/d/h;->a(Landroid/content/Context;Ljava/lang/String;)V
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
if-eqz v0, :cond_20
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z
move-result v0
if-eqz v0, :cond_21
:goto_20
:cond_20
return-void
:cond_21
new-instance v0, Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lnet/hockeyapp/android/c/a;->e:Lnet/hockeyapp/android/i;
const/16 v2, 0x9
invoke-static {v1, v2}, Lnet/hockeyapp/android/f;->a(Lnet/hockeyapp/android/e;I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lnet/hockeyapp/android/c/a;->d:Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
if-nez v1, :cond_6e
iget-object v1, p0, Lnet/hockeyapp/android/c/a;->e:Lnet/hockeyapp/android/i;
const/16 v2, 0xa
invoke-static {v1, v2}, Lnet/hockeyapp/android/f;->a(Lnet/hockeyapp/android/e;I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lnet/hockeyapp/android/c/a;->e:Lnet/hockeyapp/android/i;
const/16 v2, 0xb
invoke-static {v1, v2}, Lnet/hockeyapp/android/f;->a(Lnet/hockeyapp/android/e;I)Ljava/lang/String;
move-result-object v1
new-instance v2, Lnet/hockeyapp/android/c/a$1;
invoke-direct {v2, p0}, Lnet/hockeyapp/android/c/a$1;-><init>(Lnet/hockeyapp/android/c/a;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Lnet/hockeyapp/android/c/a;->e:Lnet/hockeyapp/android/i;
const/16 v2, 0xc
invoke-static {v1, v2}, Lnet/hockeyapp/android/f;->a(Lnet/hockeyapp/android/e;I)Ljava/lang/String;
move-result-object v1
new-instance v2, Lnet/hockeyapp/android/c/a$2;
invoke-direct {v2, p0, p1}, Lnet/hockeyapp/android/c/a$2;-><init>(Lnet/hockeyapp/android/c/a;Lorg/json/JSONArray;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
goto :goto_20
:cond_6e
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->c:Landroid/app/Activity;
iget-object v1, p0, Lnet/hockeyapp/android/c/a;->e:Lnet/hockeyapp/android/i;
const/16 v2, 0x8
invoke-static {v1, v2}, Lnet/hockeyapp/android/f;->a(Lnet/hockeyapp/android/e;I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-direct {p0, p1, v0}, Lnet/hockeyapp/android/c/a;->a(Lorg/json/JSONArray;Ljava/lang/Boolean;)V
goto :goto_20
:cond_87
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->e:Lnet/hockeyapp/android/i;
if-eqz v0, :cond_20
iget-object v0, p0, Lnet/hockeyapp/android/c/a;->e:Lnet/hockeyapp/android/i;
goto :goto_20
.end method