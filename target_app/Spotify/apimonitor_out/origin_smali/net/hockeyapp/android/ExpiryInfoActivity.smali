.class public Lnet/hockeyapp/android/ExpiryInfoActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lnet/hockeyapp/android/h;->b()Lnet/hockeyapp/android/i;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lnet/hockeyapp/android/f;->a(Lnet/hockeyapp/android/e;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/ExpiryInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Lnet/hockeyapp/android/views/a;

    invoke-static {}, Lnet/hockeyapp/android/h;->b()Lnet/hockeyapp/android/i;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v1, v2}, Lnet/hockeyapp/android/f;->a(Lnet/hockeyapp/android/e;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/hockeyapp/android/views/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/hockeyapp/android/ExpiryInfoActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
