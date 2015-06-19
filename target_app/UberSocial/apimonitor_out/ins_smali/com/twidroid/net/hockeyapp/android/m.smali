.class public Lcom/twidroid/net/hockeyapp/android/m;
.super Landroid/app/DialogFragment;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twidroid/net/hockeyapp/android/o;
.field private a:Lcom/twidroid/net/hockeyapp/android/f;
.field private b:Lorg/json/JSONArray;
.field private c:Ljava/lang/String;
.field private d:Lcom/twidroid/net/hockeyapp/android/t;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V
return-void
.end method
.method public static a(Lorg/json/JSONArray;Ljava/lang/String;)Lcom/twidroid/net/hockeyapp/android/m;
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "url"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "versionInfo"
invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/twidroid/net/hockeyapp/android/m;
invoke-direct {v1}, Lcom/twidroid/net/hockeyapp/android/m;-><init>()V
invoke-virtual {v1, v0}, Lcom/twidroid/net/hockeyapp/android/m;->setArguments(Landroid/os/Bundle;)V
return-object v1
.end method
.method private a(Landroid/app/Activity;)V
.registers 5
new-instance v0, Lcom/twidroid/net/hockeyapp/android/f;
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/m;->c:Ljava/lang/String;
new-instance v2, Lcom/twidroid/net/hockeyapp/android/m$1;
invoke-direct {v2, p0, p1}, Lcom/twidroid/net/hockeyapp/android/m$1;-><init>(Lcom/twidroid/net/hockeyapp/android/m;Landroid/app/Activity;)V
invoke-direct {v0, p1, v1, v2}, Lcom/twidroid/net/hockeyapp/android/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/e;)V
iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/m;->a:Lcom/twidroid/net/hockeyapp/android/f;
iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/m;->a:Lcom/twidroid/net/hockeyapp/android/f;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/twidroid/net/hockeyapp/android/f;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method
.method static synthetic a(Lcom/twidroid/net/hockeyapp/android/m;Landroid/app/Activity;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/net/hockeyapp/android/m;->a(Landroid/app/Activity;)V
return-void
.end method
.method public a()Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/m;->getActivity()Landroid/app/Activity;
move-result-object v0
:try_start_4
invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
:try_end_18
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_18} :catch_1a
move-result-object v0
:goto_19
return-object v0
:catch_1a
move-exception v0
const-string v0, ""
goto :goto_19
.end method
.method public b()Landroid/view/View;
.registers 5
new-instance v0, Lcom/twidroid/net/hockeyapp/android/r;
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/m;->getActivity()Landroid/app/Activity;
move-result-object v1
const/4 v2, 0x0
const/4 v3, 0x1
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/net/hockeyapp/android/r;-><init>(Landroid/content/Context;ZZ)V
return-object v0
.end method
.method public c()I
.registers 5
const/4 v0, -0x1
:try_start_1
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/m;->getActivity()Landroid/app/Activity;
move-result-object v1
invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/m;->getActivity()Landroid/app/Activity;
move-result-object v2
invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;
move-result-object v2
const/16 v3, 0x80
invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v1
iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
:try_end_19
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_19} :catch_1c
.catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_19} :catch_1a
:goto_19
return v0
:catch_1a
move-exception v1
goto :goto_19
:catch_1c
move-exception v1
goto :goto_19
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/net/hockeyapp/android/m; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/m;->getActivity()Landroid/app/Activity;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/net/hockeyapp/android/m;->a(Landroid/app/Activity;)V
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/m;->dismiss()V
const-string v1, " - Lcom/twidroid/net/hockeyapp/android/m; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/twidroid/net/hockeyapp/android/m; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V
:try_start_3
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/m;->getArguments()Landroid/os/Bundle;
move-result-object v0
const-string v1, "url"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/m;->c:Ljava/lang/String;
new-instance v0, Lorg/json/JSONArray;
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/m;->getArguments()Landroid/os/Bundle;
move-result-object v1
const-string v2, "versionInfo"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/m;->b:Lorg/json/JSONArray;
:try_end_20
.catch Lorg/json/JSONException; {:try_start_3 .. :try_end_20} :catch_28
const/4 v0, 0x1
const v1, 0x1030073
invoke-virtual {p0, v0, v1}, Lcom/twidroid/net/hockeyapp/android/m;->setStyle(II)V
:goto_27
const-string v1, " - Lcom/twidroid/net/hockeyapp/android/m; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_28
move-exception v0
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/m;->dismiss()V
goto :goto_27
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 11
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/m;->b()Landroid/view/View;
move-result-object v6
new-instance v0, Lcom/twidroid/net/hockeyapp/android/t;
iget-object v1, p0, Lcom/twidroid/net/hockeyapp/android/m;->b:Lorg/json/JSONArray;
invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/twidroid/net/hockeyapp/android/t;-><init>(Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/o;)V
iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/m;->d:Lcom/twidroid/net/hockeyapp/android/t;
const/16 v0, 0x1002
invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/m;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/16 v0, 0x1003
invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Version "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/net/hockeyapp/android/m;->d:Lcom/twidroid/net/hockeyapp/android/t;
invoke-virtual {v2}, Lcom/twidroid/net/hockeyapp/android/t;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/net/hockeyapp/android/m;->d:Lcom/twidroid/net/hockeyapp/android/t;
invoke-virtual {v2}, Lcom/twidroid/net/hockeyapp/android/t;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/16 v0, 0x1004
invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const/16 v0, 0x1005
invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
const-string v1, "https://rink.hockeyapp.net/"
iget-object v2, p0, Lcom/twidroid/net/hockeyapp/android/m;->d:Lcom/twidroid/net/hockeyapp/android/t;
invoke-virtual {v2}, Lcom/twidroid/net/hockeyapp/android/t;->c()Ljava/lang/String;
move-result-object v2
const-string v3, "text/html"
const-string v4, "utf-8"
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-object v6
.end method