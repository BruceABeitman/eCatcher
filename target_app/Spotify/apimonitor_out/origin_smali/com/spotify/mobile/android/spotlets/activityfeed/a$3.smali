.class final Lcom/spotify/mobile/android/spotlets/activityfeed/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/activityfeed/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/activityfeed/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$3;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$3;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$3;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "spotify:follow"

    invoke-static {v1, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$3;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->b(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/util/ActivityFeedClientEventLogger;->a()V

    return-void
.end method
