.class public Lcom/instagram/android/activity/UrlHandlerActivity;
.super Lcom/instagram/base/activity/a;
.source "UrlHandlerActivity.java"


# static fields
.field private static final p:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/android/activity/UrlHandlerActivity;

    sput-object v0, Lcom/instagram/android/activity/UrlHandlerActivity;->p:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/base/activity/a;-><init>()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_e

    const/4 v1, 0x2

    aget-object v0, v0, v1

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private g()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/UrlHandlerActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/instagram/android/activity/UrlHandlerActivity;->finish()V

    return-void
.end method


# virtual methods
.method public final a_()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/activity/UrlHandlerActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->g()I

    move-result v0

    if-lez v0, :cond_e

    invoke-super {p0}, Lcom/instagram/base/activity/a;->a_()V

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    const-string v1, "up"

    invoke-virtual {v0, p0, v1}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/instagram/android/activity/UrlHandlerActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/instagram/android/activity/UrlHandlerActivity;->finish()V

    goto :goto_d
.end method

.method protected final h()V
    .registers 7

    const/4 v5, 0x0

    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    invoke-static {}, Lcom/instagram/service/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_17

    sget v0, Lcom/facebook/az;->must_be_logged_in:I

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/instagram/android/activity/UrlHandlerActivity;->g()V

    :goto_16
    return-void

    :cond_17
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/activity/UrlHandlerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/_u/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    const-string v1, "/_uid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a0

    :cond_3c
    invoke-static {v0}, Lcom/instagram/android/activity/UrlHandlerActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_52

    sget-object v0, Lcom/instagram/android/activity/UrlHandlerActivity;->p:Ljava/lang/Class;

    const-string v1, "Improper user url: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/instagram/android/activity/UrlHandlerActivity;->finish()V

    goto :goto_16

    :cond_52
    new-instance v1, Lcom/instagram/android/fragment/fb;

    invoke-direct {v1}, Lcom/instagram/android/fragment/fb;-><init>()V

    const-string v5, "/_u/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9d

    const-string v0, "UserDetailFragment.EXTRA_USER_NAME"

    :goto_61
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :goto_65
    new-instance v1, Lcom/instagram/android/activity/aa;

    invoke-direct {v1, p0}, Lcom/instagram/android/activity/aa;-><init>(Lcom/instagram/android/activity/UrlHandlerActivity;)V

    new-instance v4, Lcom/instagram/common/analytics/b;

    const-string v5, "ig_url_loaded"

    invoke-direct {v4, v5, v1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v1, "url"

    invoke-virtual {v4, v1, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v3, "attribution_id"

    invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/instagram/k/a/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/common/analytics/b;->a()V

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->g(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/activity/UrlHandlerActivity;->d()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    sget v2, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    invoke-virtual {v1}, Landroid/support/v4/app/ag;->b()I

    goto/16 :goto_16

    :cond_9d
    const-string v0, "UserDetailFragment.EXTRA_USER_ID"

    goto :goto_61

    :cond_a0
    new-instance v0, Lcom/instagram/android/fragment/es;

    invoke-direct {v0}, Lcom/instagram/android/fragment/es;-><init>()V

    const-string v1, "com.instagram.android.fragment.ARGUMENTS_KEY_SHORT_URL"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_65
.end method
