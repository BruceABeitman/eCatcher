.class Lcom/twidroid/activity/UberSocialSettings20$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialSettings20;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialSettings20;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialSettings20;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialSettings20$7;->a:Lcom/twidroid/activity/UberSocialSettings20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    const-string v0, "enable_background_notifications"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20$7;->a:Lcom/twidroid/activity/UberSocialSettings20;

    invoke-static {v0}, Lcom/twidroid/activity/UberSocialSettings20;->b(Lcom/twidroid/activity/UberSocialSettings20;)V

    :cond_d
    return-void
.end method
