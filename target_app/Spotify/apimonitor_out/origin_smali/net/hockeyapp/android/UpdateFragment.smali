.class public Lnet/hockeyapp/android/UpdateFragment;
.super Landroid/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnet/hockeyapp/android/g;


# instance fields
.field private downloadTask:Lnet/hockeyapp/android/c/b;

.field private urlString:Ljava/lang/String;

.field private versionHelper:Lnet/hockeyapp/android/d/i;

.field private versionInfo:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/hockeyapp/android/UpdateFragment;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lnet/hockeyapp/android/UpdateFragment;->startDownloadTask(Landroid/app/Activity;)V

    return-void
.end method

.method public static newInstance(Lorg/json/JSONArray;Ljava/lang/String;)Lnet/hockeyapp/android/UpdateFragment;
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "versionInfo"

    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lnet/hockeyapp/android/UpdateFragment;

    invoke-direct {v1}, Lnet/hockeyapp/android/UpdateFragment;-><init>()V

    invoke-virtual {v1, v0}, Lnet/hockeyapp/android/UpdateFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private startDownloadTask(Landroid/app/Activity;)V
    .registers 5

    new-instance v0, Lnet/hockeyapp/android/c/b;

    iget-object v1, p0, Lnet/hockeyapp/android/UpdateFragment;->urlString:Ljava/lang/String;

    new-instance v2, Lnet/hockeyapp/android/UpdateFragment$1;

    invoke-direct {v2, p0, p1}, Lnet/hockeyapp/android/UpdateFragment$1;-><init>(Lnet/hockeyapp/android/UpdateFragment;Landroid/app/Activity;)V

    invoke-direct {v0, p1, v1, v2}, Lnet/hockeyapp/android/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/b/a;)V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateFragment;->downloadTask:Lnet/hockeyapp/android/c/b;

    iget-object v0, p0, Lnet/hockeyapp/android/UpdateFragment;->downloadTask:Lnet/hockeyapp/android/c/b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/hockeyapp/android/c/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

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

.method public getCurrentVersionCode()I
    .registers 5

    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

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

.method public getLayoutView()Landroid/view/View;
    .registers 5

    new-instance v0, Lnet/hockeyapp/android/views/UpdateView;

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/hockeyapp/android/views/UpdateView;-><init>(Landroid/content/Context;ZZ)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/hockeyapp/android/UpdateFragment;->startDownloadTask(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    :try_start_3
    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateFragment;->urlString:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "versionInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateFragment;->versionInfo:Lorg/json/JSONArray;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_20} :catch_28

    const/4 v0, 0x1

    const v1, 0x1030073

    invoke-virtual {p0, v0, v1}, Lnet/hockeyapp/android/UpdateFragment;->setStyle(II)V

    :goto_27
    return-void

    :catch_28
    move-exception v0

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->dismiss()V

    goto :goto_27
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getLayoutView()Landroid/view/View;

    move-result-object v6

    new-instance v0, Lnet/hockeyapp/android/d/i;

    iget-object v1, p0, Lnet/hockeyapp/android/UpdateFragment;->versionInfo:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lnet/hockeyapp/android/d/i;-><init>(Ljava/lang/String;Lnet/hockeyapp/android/g;)V

    iput-object v0, p0, Lnet/hockeyapp/android/UpdateFragment;->versionHelper:Lnet/hockeyapp/android/d/i;

    const/16 v0, 0x1002

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/hockeyapp/android/UpdateFragment;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x1003

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/hockeyapp/android/UpdateFragment;->versionHelper:Lnet/hockeyapp/android/d/i;

    invoke-virtual {v2}, Lnet/hockeyapp/android/d/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lnet/hockeyapp/android/UpdateFragment;->versionHelper:Lnet/hockeyapp/android/d/i;

    invoke-virtual {v2}, Lnet/hockeyapp/android/d/i;->b()Ljava/lang/String;

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

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroyDrawingCache()V

    const-string v1, "https://sdk.hockeyapp.net/"

    iget-object v2, p0, Lnet/hockeyapp/android/UpdateFragment;->versionHelper:Lnet/hockeyapp/android/d/i;

    invoke-virtual {v2}, Lnet/hockeyapp/android/d/i;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method
