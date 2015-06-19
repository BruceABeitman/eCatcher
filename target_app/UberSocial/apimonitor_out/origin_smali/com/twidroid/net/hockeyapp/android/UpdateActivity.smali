.class public Lcom/twidroid/net/hockeyapp/android/UpdateActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/twidroid/net/hockeyapp/android/l;
.implements Lcom/twidroid/net/hockeyapp/android/o;


# instance fields
.field private a:Lcom/twidroid/net/hockeyapp/android/f;

.field private b:Lcom/twidroid/net/hockeyapp/android/t;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/net/hockeyapp/android/UpdateActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->g()V

    return-void
.end method

.method private g()V
    .registers 4

    invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/twidroid/net/hockeyapp/android/f;

    new-instance v2, Lcom/twidroid/net/hockeyapp/android/UpdateActivity$1;

    invoke-direct {v2, p0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity$1;-><init>(Lcom/twidroid/net/hockeyapp/android/UpdateActivity;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/twidroid/net/hockeyapp/android/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/e;)V

    iput-object v1, p0, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->a:Lcom/twidroid/net/hockeyapp/android/f;

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->a:Lcom/twidroid/net/hockeyapp/android/f;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twidroid/net/hockeyapp/android/f;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 7

    const/16 v0, 0x1002

    invoke-virtual {p0, v0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x1003

    invoke-virtual {p0, v0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->b:Lcom/twidroid/net/hockeyapp/android/t;

    invoke-virtual {v2}, Lcom/twidroid/net/hockeyapp/android/t;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->b:Lcom/twidroid/net/hockeyapp/android/t;

    invoke-virtual {v2}, Lcom/twidroid/net/hockeyapp/android/t;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x1004

    invoke-virtual {p0, v0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x1005

    invoke-virtual {p0, v0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "https://rink.hockeyapp.net/"

    iget-object v2, p0, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->b:Lcom/twidroid/net/hockeyapp/android/t;

    invoke-virtual {v2}, Lcom/twidroid/net/hockeyapp/android/t;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .registers 3

    const/16 v0, 0x1004

    invoke-virtual {p0, v0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public c()I
    .registers 5

    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->getPackageName()Ljava/lang/String;

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

.method public d()Landroid/view/ViewGroup;
    .registers 2

    new-instance v0, Lcom/twidroid/net/hockeyapp/android/r;

    invoke-direct {v0, p0}, Lcom/twidroid/net/hockeyapp/android/r;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->getPackageName()Ljava/lang/String;

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

.method public synthetic f()Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->d()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->g()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "App Update"

    invoke-virtual {p0, v0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->d()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->setContentView(Landroid/view/View;)V

    new-instance v0, Lcom/twidroid/net/hockeyapp/android/t;

    invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "json"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/twidroid/net/hockeyapp/android/t;-><init>(Ljava/lang/String;Lcom/twidroid/net/hockeyapp/android/o;)V

    iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->b:Lcom/twidroid/net/hockeyapp/android/t;

    invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->a()V

    invoke-virtual {p0}, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/net/hockeyapp/android/f;

    iput-object v0, p0, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->a:Lcom/twidroid/net/hockeyapp/android/f;

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->a:Lcom/twidroid/net/hockeyapp/android/f;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->a:Lcom/twidroid/net/hockeyapp/android/f;

    invoke-virtual {v0, p0}, Lcom/twidroid/net/hockeyapp/android/f;->a(Landroid/content/Context;)V

    :cond_34
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->a:Lcom/twidroid/net/hockeyapp/android/f;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->a:Lcom/twidroid/net/hockeyapp/android/f;

    invoke-virtual {v0}, Lcom/twidroid/net/hockeyapp/android/f;->c()V

    :cond_9
    iget-object v0, p0, Lcom/twidroid/net/hockeyapp/android/UpdateActivity;->a:Lcom/twidroid/net/hockeyapp/android/f;

    return-object v0
.end method
