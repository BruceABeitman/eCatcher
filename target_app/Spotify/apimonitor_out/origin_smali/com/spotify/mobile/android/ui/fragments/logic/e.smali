.class public final Lcom/spotify/mobile/android/ui/fragments/logic/e;
.super Lcom/spotify/mobile/android/ui/fragments/logic/r;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/content/Intent;

.field private d:Z

.field private final e:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;-><init>()V

    iput v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->b:Landroid/content/Intent;

    iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->d:Z

    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/logic/e$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/logic/e$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/logic/e;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->e:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.spotify.mobile.android.service.broadcast.session.FEATURE_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/logic/e;I)V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->b:Landroid/content/Intent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->b(Lcom/spotify/mobile/android/ui/fragments/logic/r;)V

    :cond_13
    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->c:Lcom/spotify/mobile/android/util/DialogPresenter;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/util/DialogPresenter;->c(Lcom/spotify/mobile/android/ui/fragments/logic/r;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a:I

    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(IILandroid/content/Intent;)V

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a:I

    if-ne p1, v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->d:Z

    :cond_a
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->a(Landroid/os/Bundle;)V

    if-eqz p1, :cond_16

    const-string v0, "queued"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->d:Z

    const-string v0, "request_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a:I

    :cond_16
    return-void
.end method

.method public final c()V
    .registers 3

    iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->b:Landroid/content/Intent;

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a:I

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a(Landroid/content/Intent;I)V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->d(Landroid/os/Bundle;)V

    const-string v0, "queued"

    iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->d:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "request_code"

    iget v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final x()V
    .registers 5

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->x()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->e:Landroid/content/BroadcastReceiver;

    const-string v2, "com.spotify.mobile.android.service.broadcast.session.FEATURE_ERROR"

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final y()V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/e;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/e;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/fragments/logic/r;->y()V

    return-void
.end method
