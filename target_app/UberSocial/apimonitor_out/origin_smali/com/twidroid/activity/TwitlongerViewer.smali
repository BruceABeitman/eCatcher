.class public Lcom/twidroid/activity/TwitlongerViewer;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field static final b:Ljava/lang/String; = "TwitLongerpreview"

.field public static final f:I = 0x49c8


# instance fields
.field a:Landroid/widget/TextView;

.field c:Landroid/net/Uri;

.field d:Landroid/os/Handler;

.field e:Landroid/widget/TextView;

.field g:Landroid/widget/ProgressBar;

.field h:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/activity/TwitlongerViewer;->h:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/twidroid/activity/TwitlongerViewer;->setProgressBarVisibility(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/TwitlongerViewer;->g:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/twidroid/activity/TwitlongerViewer;->g:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twidroid/activity/TwitlongerViewer;->h:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/TwitlongerViewer;->setProgressBarVisibility(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/TwitlongerViewer;->g:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_21} :catch_22

    goto :goto_12

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030078

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/TwitlongerViewer;->setContentView(I)V

    const v0, 0x7f0900f7

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/TwitlongerViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twidroid/activity/TwitlongerViewer;->g:Landroid/widget/ProgressBar;

    const v0, 0x7f09019e

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/TwitlongerViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/activity/TwitlongerViewer;->a:Landroid/widget/TextView;

    const v0, 0x7f09019f

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/TwitlongerViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twidroid/activity/TwitlongerViewer;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/twidroid/activity/TwitlongerViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/activity/TwitlongerViewer;->c:Landroid/net/Uri;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twidroid/activity/TwitlongerViewer;->d:Landroid/os/Handler;

    return-void
.end method

.method protected onStart()V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/TwitlongerViewer;->a(Z)V

    iput-boolean v0, p0, Lcom/twidroid/activity/TwitlongerViewer;->h:Z

    iget-object v0, p0, Lcom/twidroid/activity/TwitlongerViewer;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-object v0, Lcom/twidroid/y;->s:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/twidroid/net/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {}, Lcom/flurry/android/FlurryAgent;->onPageView()V

    const-string v0, "/preview/twitlonger"

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;)V

    :try_start_1c
    invoke-virtual {p0}, Lcom/twidroid/activity/TwitlongerViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3d

    new-instance v0, Lcom/twidroid/activity/v;

    invoke-direct {v0, p0}, Lcom/twidroid/activity/v;-><init>(Lcom/twidroid/activity/TwitlongerViewer;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/twidroid/activity/TwitlongerViewer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/activity/v;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    :goto_3c
    return-void

    :cond_3d
    invoke-virtual {p0}, Lcom/twidroid/activity/TwitlongerViewer;->finish()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_40} :catch_41

    goto :goto_3c

    :catch_41
    move-exception v0

    invoke-virtual {p0}, Lcom/twidroid/activity/TwitlongerViewer;->finish()V

    goto :goto_3c
.end method

.method protected onStop()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/twidroid/net/a/a;->a(Landroid/content/Context;)V

    return-void
.end method
