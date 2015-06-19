.class final Lcom/spotify/mobile/android/ui/activity/PlayerActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->a(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->b(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)Lcom/spotify/mobile/android/ui/fragments/logic/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a(Lcom/spotify/mobile/android/ui/fragments/logic/g;)V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->W:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_45

    new-instance v0, Lcom/spotify/mobile/android/spotlets/b/a;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/b/a;-><init>()V

    :goto_21
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/a/a;->a(Landroid/support/v4/app/r;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v1

    const v2, 0x7f0a0224

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/w;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->setVisible(Z)V

    goto :goto_8

    :cond_45
    new-instance v0, Lcom/spotify/mobile/android/ui/fragments/p;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/fragments/p;-><init>()V

    goto :goto_21
.end method
