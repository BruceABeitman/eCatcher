.class final Lcom/spotify/mobile/android/spotlets/browse/a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/browse/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/a$1;->a:Lcom/spotify/mobile/android/spotlets/browse/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f0a0121

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$1;->a:Lcom/spotify/mobile/android/spotlets/browse/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Lcom/spotify/mobile/android/spotlets/browse/a;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$1;->a:Lcom/spotify/mobile/android/spotlets/browse/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->b(Lcom/spotify/mobile/android/spotlets/browse/a;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$1;->a:Lcom/spotify/mobile/android/spotlets/browse/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;->a:Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils;->a(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f0a0122

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$1;->a:Lcom/spotify/mobile/android/spotlets/browse/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->c(Lcom/spotify/mobile/android/spotlets/browse/a;)V

    goto :goto_1f
.end method
