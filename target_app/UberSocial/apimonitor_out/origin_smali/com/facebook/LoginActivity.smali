.class public Lcom/facebook/LoginActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "com.facebook.LoginActivity:Result"

.field private static final b:Ljava/lang/String; = "Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance."

.field private static final c:Ljava/lang/String; = "callingPackage"

.field private static final d:Ljava/lang/String; = "authorizationClient"

.field private static final e:Ljava/lang/String; = "request"


# instance fields
.field private f:Ljava/lang/String;

.field private g:Lcom/facebook/d;

.field private h:Lcom/facebook/g;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static a(Lcom/facebook/g;)Landroid/os/Bundle;
    .registers 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/LoginActivity;Lcom/facebook/n;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/LoginActivity;->a(Lcom/facebook/n;)V

    return-void
.end method

.method private a(Lcom/facebook/n;)V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/LoginActivity;->h:Lcom/facebook/g;

    iget-object v0, p1, Lcom/facebook/n;->a:Lcom/facebook/o;

    sget-object v1, Lcom/facebook/o;->b:Lcom/facebook/o;

    if-ne v0, v1, :cond_23

    const/4 v0, 0x0

    :goto_a
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.facebook.LoginActivity:Result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/LoginActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/facebook/LoginActivity;->finish()V

    return-void

    :cond_23
    const/4 v0, -0x1

    goto :goto_a
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/LoginActivity;->g:Lcom/facebook/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/d;->a(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/facebook/a/s;->com_facebook_login_activity_layout:I

    invoke-virtual {p0, v0}, Lcom/facebook/LoginActivity;->setContentView(I)V

    if-eqz p1, :cond_36

    const-string v0, "callingPackage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/LoginActivity;->f:Ljava/lang/String;

    const-string v0, "authorizationClient"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/d;

    iput-object v0, p0, Lcom/facebook/LoginActivity;->g:Lcom/facebook/d;

    :goto_1c
    iget-object v0, p0, Lcom/facebook/LoginActivity;->g:Lcom/facebook/d;

    invoke-virtual {v0, p0}, Lcom/facebook/d;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/facebook/LoginActivity;->g:Lcom/facebook/d;

    new-instance v1, Lcom/facebook/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/LoginActivity$1;-><init>(Lcom/facebook/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/d;->a(Lcom/facebook/m;)V

    iget-object v0, p0, Lcom/facebook/LoginActivity;->g:Lcom/facebook/d;

    new-instance v1, Lcom/facebook/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/facebook/LoginActivity$2;-><init>(Lcom/facebook/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/facebook/d;->a(Lcom/facebook/h;)V

    return-void

    :cond_36
    invoke-virtual {p0}, Lcom/facebook/LoginActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/LoginActivity;->f:Ljava/lang/String;

    new-instance v0, Lcom/facebook/d;

    invoke-direct {v0}, Lcom/facebook/d;-><init>()V

    iput-object v0, p0, Lcom/facebook/LoginActivity;->g:Lcom/facebook/d;

    invoke-virtual {p0}, Lcom/facebook/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "request"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/g;

    iput-object v0, p0, Lcom/facebook/LoginActivity;->h:Lcom/facebook/g;

    goto :goto_1c
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/facebook/LoginActivity;->g:Lcom/facebook/d;

    invoke-virtual {v0}, Lcom/facebook/d;->c()V

    sget v0, Lcom/facebook/a/r;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {p0, v0}, Lcom/facebook/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/facebook/LoginActivity;->f:Ljava/lang/String;

    if-nez v0, :cond_f

    new-instance v0, Lcom/facebook/t;

    const-string v1, "Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance."

    invoke-direct {v0, v1}, Lcom/facebook/t;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-object v0, p0, Lcom/facebook/LoginActivity;->g:Lcom/facebook/d;

    iget-object v1, p0, Lcom/facebook/LoginActivity;->h:Lcom/facebook/g;

    invoke-virtual {v0, v1}, Lcom/facebook/d;->a(Lcom/facebook/g;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "callingPackage"

    iget-object v1, p0, Lcom/facebook/LoginActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "authorizationClient"

    iget-object v1, p0, Lcom/facebook/LoginActivity;->g:Lcom/facebook/d;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
