.class final Lcom/spotify/mobile/android/spotlets/activityfeed/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/activityfeed/client/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/activityfeed/b;->d(Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/activityfeed/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/activityfeed/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b$1;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b$1;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->b(Lcom/spotify/mobile/android/spotlets/activityfeed/b;)Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->c(Z)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b$1;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/b;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/b;Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;)Lcom/spotify/mobile/android/spotlets/activityfeed/model/StoryModel;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/b$1;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/b;->a(Lcom/spotify/mobile/android/spotlets/activityfeed/b;)V

    return-void
.end method
