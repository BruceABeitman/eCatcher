.class final Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$4;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$4;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->b(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/c;->a()V

    return-void
.end method
