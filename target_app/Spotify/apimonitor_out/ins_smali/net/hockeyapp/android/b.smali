.class public final Lnet/hockeyapp/android/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Ljava/lang/String;
.field private static b:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lnet/hockeyapp/android/b;->a:Ljava/lang/String;
sput-object v0, Lnet/hockeyapp/android/b;->b:Ljava/lang/String;
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/c;)V
.registers 5
const-string v0, "https://sdk.hockeyapp.net/"
if-eqz p0, :cond_2c
sput-object v0, Lnet/hockeyapp/android/b;->b:Ljava/lang/String;
sput-object p1, Lnet/hockeyapp/android/b;->a:Ljava/lang/String;
invoke-static {p0}, Lnet/hockeyapp/android/a;->a(Landroid/content/Context;)V
sget-object v0, Lnet/hockeyapp/android/b;->a:Ljava/lang/String;
if-nez v0, :cond_13
sget-object v0, Lnet/hockeyapp/android/a;->d:Ljava/lang/String;
sput-object v0, Lnet/hockeyapp/android/b;->a:Ljava/lang/String;
:cond_13
if-eqz p2, :cond_2d
invoke-virtual {p2}, Lnet/hockeyapp/android/c;->b()Z
move-result v0
if-eqz v0, :cond_2d
const/4 v0, 0x1
:goto_1c
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
new-instance v1, Ljava/lang/ref/WeakReference;
invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-static {p2, v0}, Lnet/hockeyapp/android/b;->b(Lnet/hockeyapp/android/c;Z)V
:cond_2c
return-void
:cond_2d
const/4 v0, 0x0
goto :goto_1c
.end method
.method public static a(Landroid/content/Context;Lnet/hockeyapp/android/c;)V
.registers 9
const/4 v6, 0x2
const/4 v1, 0x1
const/4 v2, 0x0
if-eqz p1, :cond_7e
invoke-virtual {p1}, Lnet/hockeyapp/android/c;->b()Z
move-result v0
if-eqz v0, :cond_7e
move v0, v1
:goto_c
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
new-instance v4, Ljava/lang/ref/WeakReference;
invoke-direct {v4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-static {v4}, Lnet/hockeyapp/android/b;->b(Ljava/lang/ref/WeakReference;)I
move-result v0
if-ne v0, v1, :cond_88
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
if-eqz p1, :cond_38
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {p1}, Lnet/hockeyapp/android/c;->d()Z
move-result v5
or-int/2addr v0, v5
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
or-int/lit8 v0, v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:cond_38
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_80
invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
move-result v3
invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-eqz v0, :cond_7d
new-instance v5, Landroid/app/AlertDialog$Builder;
invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-static {p1, v2}, Lnet/hockeyapp/android/f;->a(Lnet/hockeyapp/android/e;I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
invoke-static {p1, v1}, Lnet/hockeyapp/android/f;->a(Lnet/hockeyapp/android/e;I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
invoke-static {p1, v6}, Lnet/hockeyapp/android/f;->a(Lnet/hockeyapp/android/e;I)Ljava/lang/String;
move-result-object v0
new-instance v1, Lnet/hockeyapp/android/b$1;
invoke-direct {v1, p1, v4, v3}, Lnet/hockeyapp/android/b$1;-><init>(Lnet/hockeyapp/android/c;Ljava/lang/ref/WeakReference;Z)V
invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
const/4 v0, 0x3
invoke-static {p1, v0}, Lnet/hockeyapp/android/f;->a(Lnet/hockeyapp/android/e;I)Ljava/lang/String;
move-result-object v0
new-instance v1, Lnet/hockeyapp/android/b$2;
invoke-direct {v1, v4, p1, v3}, Lnet/hockeyapp/android/b$2;-><init>(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/c;Z)V
invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
:goto_7d
:cond_7d
return-void
:cond_7e
move v0, v2
goto :goto_c
:cond_80
invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-static {v4, p1, v0}, Lnet/hockeyapp/android/b;->b(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/c;Z)V
goto :goto_7d
:cond_88
if-ne v0, v6, :cond_92
invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-static {v4, p1, v0}, Lnet/hockeyapp/android/b;->b(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/c;Z)V
goto :goto_7d
:cond_92
invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-static {p1, v0}, Lnet/hockeyapp/android/b;->b(Lnet/hockeyapp/android/c;Z)V
goto :goto_7d
.end method
.method public static a(Ljava/lang/ref/WeakReference;)V
.registers 6
invoke-static {}, Lnet/hockeyapp/android/b;->a()[Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_62
array-length v0, v2
if-lez v0, :cond_62
const-string v0, "HockeyApp"
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Found "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
array-length v3, v2
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, " stacktrace(s)."
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
move v1, v0
:goto_26
array-length v0, v2
if-ge v1, v0, :cond_62
if-eqz p0, :cond_59
:try_start_2b
const-string v0, "HockeyApp"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Delete stacktrace "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
aget-object v4, v2, v1
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "."
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
aget-object v0, v2, v1
invoke-static {p0, v0}, Lnet/hockeyapp/android/b;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-eqz v0, :cond_59
aget-object v3, v2, v1
invoke-virtual {v0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
:cond_59
:try_end_59
.catch Ljava/lang/Exception; {:try_start_2b .. :try_end_59} :catch_5d
:goto_59
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_26
:catch_5d
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_59
:cond_62
return-void
.end method
.method private static a(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
.registers 5
if-eqz p0, :cond_2e
invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-eqz v0, :cond_2e
invoke-virtual {v0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
const-string v1, ".stacktrace"
const-string v2, ".user"
invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
const-string v1, ".stacktrace"
const-string v2, ".contact"
invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
const-string v1, ".stacktrace"
const-string v2, ".description"
invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
:cond_2e
return-void
.end method
.method public static a(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/c;)V
.registers 13
const/4 v0, 0x0
invoke-static {}, Lnet/hockeyapp/android/b;->a()[Ljava/lang/String;
move-result-object v3
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
if-eqz v3, :cond_130
array-length v2, v3
if-lez v2, :cond_130
const-string v2, "HockeyApp"
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Found "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
array-length v5, v3
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " stacktrace(s)."
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
move-object v2, v1
move v1, v0
:goto_2b
array-length v0, v3
if-ge v1, v0, :cond_130
:try_start_2e
aget-object v4, v3, v1
invoke-static {p0, v4}, Lnet/hockeyapp/android/b;->b(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_f9
const-string v0, "HockeyApp"
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "Transmitting crash data: \n"
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Lnet/hockeyapp/android/d/a;->a()Lnet/hockeyapp/android/d/a;
move-result-object v0
invoke-virtual {v0}, Lnet/hockeyapp/android/d/a;->b()Lorg/apache/http/client/HttpClient;
move-result-object v0
check-cast v0, Lorg/apache/http/impl/client/DefaultHttpClient;
new-instance v6, Lorg/apache/http/client/methods/HttpPost;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
sget-object v8, Lnet/hockeyapp/android/b;->b:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "api/2/apps/"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
sget-object v8, Lnet/hockeyapp/android/b;->a:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, "/crashes/"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
new-instance v8, Lorg/apache/http/message/BasicNameValuePair;
const-string v9, "raw"
invoke-direct {v8, v9, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Lorg/apache/http/message/BasicNameValuePair;
const-string v8, "userID"
const-string v9, ".stacktrace"
const-string v10, ".user"
invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v9
invoke-static {p0, v9}, Lnet/hockeyapp/android/b;->b(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-direct {v5, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Lorg/apache/http/message/BasicNameValuePair;
const-string v8, "contact"
const-string v9, ".stacktrace"
const-string v10, ".contact"
invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v9
invoke-static {p0, v9}, Lnet/hockeyapp/android/b;->b(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-direct {v5, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Lorg/apache/http/message/BasicNameValuePair;
const-string v8, "description"
const-string v9, ".stacktrace"
const-string v10, ".description"
invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v4
invoke-static {p0, v4}, Lnet/hockeyapp/android/b;->b(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-direct {v5, v8, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v4, Lorg/apache/http/message/BasicNameValuePair;
const-string v5, "sdk"
const-string v8, "HockeySDK"
invoke-direct {v4, v5, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v4, Lorg/apache/http/message/BasicNameValuePair;
const-string v5, "sdk_version"
const-string v8, "3.0.1"
invoke-direct {v4, v5, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;
const-string v5, "UTF-8"
invoke-direct {v4, v7, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
invoke-virtual {v6, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
invoke-virtual {v0, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
:try_end_f8
.catchall {:try_start_2e .. :try_end_f8} :catchall_123
.catch Ljava/lang/Exception; {:try_start_2e .. :try_end_f8} :catch_10e
move-result-object v2
:cond_f9
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_10b
aget-object v0, v3, v1
invoke-static {p0, v0}, Lnet/hockeyapp/android/b;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
if-eqz p1, :cond_106
:goto_106
:cond_106
add-int/lit8 v0, v1, 0x1
move v1, v0
goto/16 :goto_2b
:cond_10b
if-eqz p1, :cond_106
goto :goto_106
:catch_10e
move-exception v0
:try_start_10f
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:try_end_112
.catchall {:try_start_10f .. :try_end_112} :catchall_123
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_120
aget-object v0, v3, v1
invoke-static {p0, v0}, Lnet/hockeyapp/android/b;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
if-eqz p1, :cond_106
goto :goto_106
:cond_120
if-eqz p1, :cond_106
goto :goto_106
:catchall_123
move-exception v0
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-eqz v2, :cond_12f
aget-object v1, v3, v1
invoke-static {p0, v1}, Lnet/hockeyapp/android/b;->a(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
:cond_12f
throw v0
:cond_130
return-void
.end method
.method static synthetic a(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/c;Z)V
.registers 3
invoke-static {p0, p1, p2}, Lnet/hockeyapp/android/b;->b(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/c;Z)V
return-void
.end method
.method static synthetic a(Lnet/hockeyapp/android/c;Z)V
.registers 2
invoke-static {p0, p1}, Lnet/hockeyapp/android/b;->b(Lnet/hockeyapp/android/c;Z)V
return-void
.end method
.method private static a()[Ljava/lang/String;
.registers 3
sget-object v0, Lnet/hockeyapp/android/a;->a:Ljava/lang/String;
if-eqz v0, :cond_4e
const-string v0, "HockeyApp"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Looking for exceptions in: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Lnet/hockeyapp/android/a;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lnet/hockeyapp/android/a;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
move-result v1
if-nez v1, :cond_44
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_44
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/String;
:goto_43
return-object v0
:cond_44
new-instance v1, Lnet/hockeyapp/android/b$4;
invoke-direct {v1}, Lnet/hockeyapp/android/b$4;-><init>()V
invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;
move-result-object v0
goto :goto_43
:cond_4e
const-string v0, "HockeyApp"
const-string v1, "Can\'t search for exception as file path is null."
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
goto :goto_43
.end method
.method private static b(Ljava/lang/ref/WeakReference;)I
.registers 7
const/4 v2, 0x0
invoke-static {}, Lnet/hockeyapp/android/b;->a()[Ljava/lang/String;
move-result-object v3
const/4 v1, 0x0
if-eqz v3, :cond_44
array-length v0, v3
if-lez v0, :cond_44
:try_start_b
invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-eqz v0, :cond_42
const-string v4, "HockeySDK"
const/4 v5, 0x0
invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-string v4, "ConfirmedFilenames"
const-string v5, ""
invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v4, "\\|"
invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
:try_end_2b
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_2b} :catch_40
move-result-object v0
:goto_2c
move-object v1, v0
:goto_2d
if-eqz v1, :cond_3e
const/4 v0, 0x2
array-length v4, v3
:goto_31
if-ge v2, v4, :cond_3f
aget-object v5, v3, v2
invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_3e
add-int/lit8 v2, v2, 0x1
goto :goto_31
:cond_3e
const/4 v0, 0x1
:goto_3f
:cond_3f
return v0
:catch_40
move-exception v0
goto :goto_2d
:cond_42
move-object v0, v1
goto :goto_2c
:cond_44
move v0, v2
goto :goto_3f
.end method
.method private static b(Ljava/lang/ref/WeakReference;Ljava/lang/String;)Ljava/lang/String;
.registers 7
const/4 v1, 0x0
if-eqz p0, :cond_58
invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-eqz v0, :cond_58
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
:try_start_10
new-instance v2, Ljava/io/BufferedReader;
new-instance v4, Ljava/io/InputStreamReader;
invoke-virtual {v0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
move-result-object v0
invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:try_end_1e
.catchall {:try_start_10 .. :try_end_1e} :catchall_50
.catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_1e} :catch_62
.catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_43
:try_start_1e
:goto_1e
invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3d
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v0, "line.separator"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:try_end_30
.catchall {:try_start_1e .. :try_end_30} :catchall_5e
.catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_30} :catch_31
.catch Ljava/io/IOException; {:try_start_1e .. :try_end_30} :catch_60
goto :goto_1e
:catch_31
move-exception v0
move-object v1, v2
:goto_33
if-eqz v1, :cond_38
:try_start_35
invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
:cond_38
:goto_38
:try_end_38
.catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_5a
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_3c
return-object v0
:try_start_3d
:cond_3d
invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
:try_end_40
.catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41
goto :goto_38
:catch_41
move-exception v0
goto :goto_38
:catch_43
move-exception v0
move-object v2, v1
:try_start_45
:goto_45
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:try_end_48
.catchall {:try_start_45 .. :try_end_48} :catchall_5e
if-eqz v2, :cond_38
:try_start_4a
invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
:try_end_4d
.catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e
goto :goto_38
:catch_4e
move-exception v0
goto :goto_38
:catchall_50
move-exception v0
move-object v2, v1
:goto_52
if-eqz v2, :cond_57
:try_start_54
invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
:goto_57
:cond_57
:try_end_57
.catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_5c
throw v0
:cond_58
move-object v0, v1
goto :goto_3c
:catch_5a
move-exception v0
goto :goto_38
:catch_5c
move-exception v1
goto :goto_57
:catchall_5e
move-exception v0
goto :goto_52
:catch_60
move-exception v0
goto :goto_45
:catch_62
move-exception v0
goto :goto_33
.end method
.method private static b(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/c;Z)V
.registers 10
const/4 v1, 0x0
if-eqz p0, :cond_41
invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-eqz v0, :cond_41
:try_start_b
invoke-static {}, Lnet/hockeyapp/android/b;->a()[Ljava/lang/String;
move-result-object v2
const-string v3, "HockeySDK"
const/4 v4, 0x0
invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v3
const-string v4, "ConfirmedFilenames"
const-string v5, "|"
new-instance v6, Ljava/lang/StringBuffer;
invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V
move v0, v1
:goto_24
array-length v1, v2
if-ge v0, v1, :cond_37
aget-object v1, v2, v0
invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
array-length v1, v2
add-int/lit8 v1, v1, -0x1
if-ge v0, v1, :cond_34
invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_34
add-int/lit8 v0, v0, 0x1
goto :goto_24
:cond_37
invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-static {v3}, Lnet/hockeyapp/android/d/e;->a(Landroid/content/SharedPreferences$Editor;)V
:goto_41
:try_end_41
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_41} :catch_4a
:cond_41
new-instance v0, Lnet/hockeyapp/android/b$3;
invoke-direct {v0, p0, p1, p2}, Lnet/hockeyapp/android/b$3;-><init>(Ljava/lang/ref/WeakReference;Lnet/hockeyapp/android/c;Z)V
invoke-virtual {v0}, Lnet/hockeyapp/android/b$3;->start()V
return-void
:catch_4a
move-exception v0
goto :goto_41
.end method
.method private static b(Lnet/hockeyapp/android/c;Z)V
.registers 6
sget-object v0, Lnet/hockeyapp/android/a;->b:Ljava/lang/String;
if-eqz v0, :cond_3d
sget-object v0, Lnet/hockeyapp/android/a;->d:Ljava/lang/String;
if-eqz v0, :cond_3d
invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
move-result-object v0
if-eqz v0, :cond_2a
const-string v1, "HockeyApp"
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Current handler class = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_2a
instance-of v1, v0, Lnet/hockeyapp/android/d;
if-eqz v1, :cond_34
check-cast v0, Lnet/hockeyapp/android/d;
invoke-virtual {v0, p0}, Lnet/hockeyapp/android/d;->a(Lnet/hockeyapp/android/c;)V
:goto_33
return-void
:cond_34
new-instance v1, Lnet/hockeyapp/android/d;
invoke-direct {v1, v0, p0, p1}, Lnet/hockeyapp/android/d;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lnet/hockeyapp/android/c;Z)V
invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
goto :goto_33
:cond_3d
const-string v0, "HockeyApp"
const-string v1, "Exception handler not set because version or package is null."
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_33
.end method