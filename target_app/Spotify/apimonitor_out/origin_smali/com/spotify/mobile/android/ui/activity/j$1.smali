.class final Lcom/spotify/mobile/android/ui/activity/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/j;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/j;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/j$1;->a:Lcom/spotify/mobile/android/ui/activity/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "Clearing service crash counter."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/j$1;->a:Lcom/spotify/mobile/android/ui/activity/j;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/j;->a(Lcom/spotify/mobile/android/ui/activity/j;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/service/SpotifyService;->b:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;I)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->a()V

    return-void
.end method
