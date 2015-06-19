.class final Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$1;
.super Lcom/spotify/mobile/android/ui/menus/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;

    return-object v0
.end method

.method public final b()Lcom/spotify/mobile/android/util/ViewUri$Verified;
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->y:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    return-object v0
.end method
