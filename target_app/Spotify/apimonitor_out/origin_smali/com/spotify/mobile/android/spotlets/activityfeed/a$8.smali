.class final Lcom/spotify/mobile/android/spotlets/activityfeed/a$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/activityfeed/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/activityfeed/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/activityfeed/a;Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$8;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/a;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$8;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$8;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$8;->b:Lcom/spotify/mobile/android/spotlets/activityfeed/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$8;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getParent()Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/model/ResourceModel;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
