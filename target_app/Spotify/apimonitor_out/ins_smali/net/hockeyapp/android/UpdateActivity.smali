.class public Lnet/hockeyapp/android/UpdateActivity;
.super Landroid/app/Activity;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.implements Lnet/hockeyapp/android/g;
.field protected a:Lnet/hockeyapp/android/c/b;
.field protected b:Lnet/hockeyapp/android/d/i;
.field private final c:I
.field private d:Lnet/hockeyapp/android/objects/ErrorObject;
.field private e:Landroid/content/Context;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lnet/hockeyapp/android/UpdateActivity;->c:I
return-void
.end method
.method static synthetic a(Lnet/hockeyapp/android/UpdateActivity;)Lnet/hockeyapp/android/objects/ErrorObject;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->d:Lnet/hockeyapp/android/objects/ErrorObject;
return-object v0
.end method
.method private c()Ljava/lang/String;
.registers 4
:try_start_0
invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageName()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
:try_end_14
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_14} :catch_16
move-result-object v0
:goto_15
return-object v0
:catch_16
move-exception v0
const-string v0, ""
goto :goto_15
.end method
.method protected final a()V
.registers 4
invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "url"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
new-instance v1, Lnet/hockeyapp/android/UpdateActivity$1;
invoke-direct {v1, p0}, Lnet/hockeyapp/android/UpdateActivity$1;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V
new-instance v2, Lnet/hockeyapp/android/c/b;
invoke-direct {v2, p0, v0, v1}, Lnet/hockeyapp/android/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/b/a;)V
iput-object v2, p0, Lnet/hockeyapp/android/UpdateActivity;->a:Lnet/hockeyapp/android/c/b;
iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->a:Lnet/hockeyapp/android/c/b;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/c/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method public final b()V
.registers 3
const/16 v0, 0x1004
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V
return-void
.end method
.method public getCurrentVersionCode()I
.registers 5
const/4 v0, -0x1
:try_start_1
invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getPackageName()Ljava/lang/String;
move-result-object v2
const/16 v3, 0x80
invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v1
iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
:try_end_11
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_11} :catch_12
:goto_11
return v0
:catch_12
move-exception v1
goto :goto_11
.end method
.method public onClick(Landroid/view/View;)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lnet/hockeyapp/android/UpdateActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
const/4 v4, 0x2
const/4 v6, 0x1
const/4 v7, 0x0
iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->e:Landroid/content/Context;
const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"
invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_28
move v0, v6
:goto_f
if-nez v0, :cond_2a
new-instance v0, Lnet/hockeyapp/android/objects/ErrorObject;
invoke-direct {v0}, Lnet/hockeyapp/android/objects/ErrorObject;-><init>()V
iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->d:Lnet/hockeyapp/android/objects/ErrorObject;
iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->d:Lnet/hockeyapp/android/objects/ErrorObject;
const-string v1, "The permission to access the external storage permission is not set. Please contact the developer."
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/ErrorObject;->a(Ljava/lang/String;)V
new-instance v0, Lnet/hockeyapp/android/UpdateActivity$2;
invoke-direct {v0, p0}, Lnet/hockeyapp/android/UpdateActivity$2;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V
:goto_27
const-string v1, " - Lnet/hockeyapp/android/UpdateActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_28
move v0, v7
goto :goto_f
:cond_2a
new-array v2, v6, [Ljava/lang/String;
const-string v0, "value"
aput-object v0, v2, v7
const-string v3, "name = ? AND value = ?"
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x11
if-lt v0, v1, :cond_6c
new-array v4, v4, [Ljava/lang/String;
const-string v0, "install_non_market_apps"
aput-object v0, v4, v7
const-string v0, "1"
aput-object v0, v4, v6
invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
:goto_4c
invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
move-result v0
if-ne v0, v6, :cond_81
move v0, v6
:goto_53
if-nez v0, :cond_83
new-instance v0, Lnet/hockeyapp/android/objects/ErrorObject;
invoke-direct {v0}, Lnet/hockeyapp/android/objects/ErrorObject;-><init>()V
iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->d:Lnet/hockeyapp/android/objects/ErrorObject;
iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->d:Lnet/hockeyapp/android/objects/ErrorObject;
const-string v1, "The installation from unknown sources is not enabled. Please check the device settings."
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/ErrorObject;->a(Ljava/lang/String;)V
new-instance v0, Lnet/hockeyapp/android/UpdateActivity$3;
invoke-direct {v0, p0}, Lnet/hockeyapp/android/UpdateActivity$3;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V
goto :goto_27
:cond_6c
new-array v4, v4, [Ljava/lang/String;
const-string v0, "install_non_market_apps"
aput-object v0, v4, v7
const-string v0, "1"
aput-object v0, v4, v6
invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
goto :goto_4c
:cond_81
move v0, v7
goto :goto_53
:cond_83
invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->a()V
invoke-virtual {p1, v7}, Landroid/view/View;->setEnabled(Z)V
goto :goto_27
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lnet/hockeyapp/android/UpdateActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const-string v0, "App Update"
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->setTitle(Ljava/lang/CharSequence;)V
new-instance v0, Lnet/hockeyapp/android/views/UpdateView;
invoke-direct {v0, p0}, Lnet/hockeyapp/android/views/UpdateView;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->setContentView(Landroid/view/View;)V
iput-object p0, p0, Lnet/hockeyapp/android/UpdateActivity;->e:Landroid/content/Context;
new-instance v0, Lnet/hockeyapp/android/d/i;
invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v2, "json"
invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p0}, Lnet/hockeyapp/android/d/i;-><init>(Ljava/lang/String;Lnet/hockeyapp/android/g;)V
iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->b:Lnet/hockeyapp/android/d/i;
const/16 v0, 0x1002
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-direct {p0}, Lnet/hockeyapp/android/UpdateActivity;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/16 v0, 0x1003
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Version "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lnet/hockeyapp/android/UpdateActivity;->b:Lnet/hockeyapp/android/d/i;
invoke-virtual {v2}, Lnet/hockeyapp/android/d/i;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lnet/hockeyapp/android/UpdateActivity;->b:Lnet/hockeyapp/android/d/i;
invoke-virtual {v2}, Lnet/hockeyapp/android/d/i;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/16 v0, 0x1004
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const/16 v0, 0x1005
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V
invoke-virtual {v0}, Landroid/webkit/WebView;->destroyDrawingCache()V
const-string v1, "https://sdk.hockeyapp.net/"
iget-object v2, p0, Lnet/hockeyapp/android/UpdateActivity;->b:Lnet/hockeyapp/android/d/i;
invoke-virtual {v2}, Lnet/hockeyapp/android/d/i;->c()Ljava/lang/String;
move-result-object v2
const-string v3, "text/html"
const-string v4, "utf-8"
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lnet/hockeyapp/android/c/b;
iput-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->a:Lnet/hockeyapp/android/c/b;
iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->a:Lnet/hockeyapp/android/c/b;
if-eqz v0, :cond_9d
iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->a:Lnet/hockeyapp/android/c/b;
invoke-virtual {v0, p0}, Lnet/hockeyapp/android/c/b;->a(Landroid/content/Context;)V
:cond_9d
const-string v1, " - Lnet/hockeyapp/android/UpdateActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 5
packed-switch p1, :pswitch_data_32
const/4 v0, 0x0
:goto_4
return-object v0
:pswitch_5
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const-string v1, "An error has occured"
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
move-result-object v0
const-string v1, "Error"
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x1080027
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const-string v1, "OK"
new-instance v2, Lnet/hockeyapp/android/UpdateActivity$4;
invoke-direct {v2, p0}, Lnet/hockeyapp/android/UpdateActivity$4;-><init>(Lnet/hockeyapp/android/UpdateActivity;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto :goto_4
:pswitch_data_32
.packed-switch 0x0
:pswitch_5
.end packed-switch
.end method
.method protected onPrepareDialog(ILandroid/app/Dialog;)V
.registers 4
packed-switch p1, :pswitch_data_1a
:goto_3
return-void
:pswitch_4
check-cast p2, Landroid/app/AlertDialog;
iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->d:Lnet/hockeyapp/android/objects/ErrorObject;
if-eqz v0, :cond_14
iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->d:Lnet/hockeyapp/android/objects/ErrorObject;
invoke-virtual {v0}, Lnet/hockeyapp/android/objects/ErrorObject;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V
goto :goto_3
:cond_14
const-string v0, "An unknown error has occured."
invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V
goto :goto_3
:pswitch_data_1a
.packed-switch 0x0
:pswitch_4
.end packed-switch
.end method
.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->a:Lnet/hockeyapp/android/c/b;
if-eqz v0, :cond_9
iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->a:Lnet/hockeyapp/android/c/b;
invoke-virtual {v0}, Lnet/hockeyapp/android/c/b;->a()V
:cond_9
iget-object v0, p0, Lnet/hockeyapp/android/UpdateActivity;->a:Lnet/hockeyapp/android/c/b;
return-object v0
.end method