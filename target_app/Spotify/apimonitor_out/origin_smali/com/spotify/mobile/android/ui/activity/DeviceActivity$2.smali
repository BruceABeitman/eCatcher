.class final Lcom/spotify/mobile/android/ui/activity/DeviceActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/DeviceActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v0

    const-string v1, "tag_device_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/fragments/b;

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/spotify/mobile/android/ui/fragments/b;->c()Lcom/spotify/mobile/android/ui/fragments/b;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->y_()Landroid/support/v4/app/r;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;

    move-result-object v1

    const v2, 0x7f0a01db

    const-string v3, "tag_device_fragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/w;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/w;->b()I

    :cond_2a
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->a(Lcom/spotify/mobile/android/ui/activity/s;)V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->j:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->f(Lcom/spotify/mobile/android/ui/activity/DeviceActivity;)Lcom/spotify/mobile/android/ui/fragments/logic/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a(Lcom/spotify/mobile/android/ui/fragments/logic/g;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeviceActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/DeviceActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/DeviceActivity;->setVisible(Z)V

    return-void
.end method
