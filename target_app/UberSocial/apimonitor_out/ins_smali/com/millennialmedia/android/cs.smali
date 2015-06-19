.class  Lcom/millennialmedia/android/cs;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"
.field private static final b:Ljava/lang/String; = "mm_use_geo_location"
.field  a:Ljava/lang/ref/WeakReference;
.method constructor <init>(Lcom/millennialmedia/android/cq;)V
.registers 3
invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/cs;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method private a(Landroid/content/Context;)Ljava/lang/String;
.registers 5
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
:try_start_8
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
:try_end_10
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_10} :catch_1c
move-result-object v0
:goto_11
if-eqz v0, :cond_1f
invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
move-result-object v0
:goto_17
check-cast v0, Ljava/lang/String;
check-cast v0, Ljava/lang/String;
return-object v0
:catch_1c
move-exception v0
const/4 v0, 0x0
goto :goto_11
:cond_1f
const-string v0, "This app"
goto :goto_17
.end method
.method static synthetic a(Lcom/millennialmedia/android/cs;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/millennialmedia/android/cs;->a(Z)V
return-void
.end method
.method private a(Z)V
.registers 5
iget-object v0, p0, Lcom/millennialmedia/android/cs;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_21
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "MillennialMediaSettings"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "mm_use_geo_location"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_21
return-void
.end method
.method private a()Z
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/cs;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_21
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v0
const-string v2, "MillennialMediaSettings"
invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-string v2, "mm_use_geo_location"
invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1f
const/4 v0, 0x1
:goto_1e
return v0
:cond_1f
move v0, v1
goto :goto_1e
:cond_21
move v0, v1
goto :goto_1e
.end method
.method private b()Z
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/cs;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_1c
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v0
const-string v2, "MillennialMediaSettings"
invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
const-string v2, "mm_use_geo_location"
invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
:goto_1b
return v0
:cond_1c
move v0, v1
goto :goto_1b
.end method
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
return-void
.end method
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.registers 7
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Lcom/millennialmedia/android/cs;->a()Z
move-result v0
if-eqz v0, :cond_51
invoke-direct {p0}, Lcom/millennialmedia/android/cs;->b()Z
move-result v0
if-eqz v0, :cond_12
invoke-interface {p2, p1, v2, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V
:goto_11
:cond_11
return-void
:cond_12
iget-object v0, p0, Lcom/millennialmedia/android/cs;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_11
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->j()Landroid/app/Activity;
move-result-object v0
if-eqz v0, :cond_11
new-instance v1, Landroid/app/AlertDialog$Builder;
invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-direct {p0, v0}, Lcom/millennialmedia/android/cs;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
const-string v0, "Would like to use your Current Location."
invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const-string v2, "Allow"
new-instance v3, Lcom/millennialmedia/android/cs$2;
invoke-direct {v3, p0, p2, p1}, Lcom/millennialmedia/android/cs$2;-><init>(Lcom/millennialmedia/android/cs;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const-string v2, "Don\'t Allow"
new-instance v3, Lcom/millennialmedia/android/cs$1;
invoke-direct {v3, p0, p2, p1}, Lcom/millennialmedia/android/cs$1;-><init>(Lcom/millennialmedia/android/cs;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
goto :goto_11
:cond_51
invoke-interface {p2, p1, v1, v1}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V
goto :goto_11
.end method
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.registers 8
iget-object v0, p0, Lcom/millennialmedia/android/cs;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_29
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
if-eq v1, v2, :cond_1d
invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
move-result v0
:goto_1c
return v0
:cond_1d
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_29
const/4 v0, 0x1
goto :goto_1c
.end method
.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.registers 8
iget-object v0, p0, Lcom/millennialmedia/android/cs;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_29
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
if-eq v1, v2, :cond_1d
invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
move-result v0
:goto_1c
return v0
:cond_1d
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_29
const/4 v0, 0x1
goto :goto_1c
.end method
.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.registers 8
iget-object v0, p0, Lcom/millennialmedia/android/cs;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_29
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
if-eq v1, v2, :cond_1d
invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
move-result v0
:goto_1c
return v0
:cond_1d
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_29
const/4 v0, 0x1
goto :goto_1c
.end method
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.registers 9
iget-object v0, p0, Lcom/millennialmedia/android/cs;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_29
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v2
if-eq v1, v2, :cond_1d
invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
move-result v0
:goto_1c
return v0
:cond_1d
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getContext()Landroid/content/Context;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, p3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_29
const/4 v0, 0x1
goto :goto_1c
.end method