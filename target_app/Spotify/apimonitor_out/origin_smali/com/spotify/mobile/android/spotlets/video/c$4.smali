.class final Lcom/spotify/mobile/android/spotlets/video/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/video/c;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/video/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/video/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/c$4;->a:Lcom/spotify/mobile/android/spotlets/video/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c$4;->a:Lcom/spotify/mobile/android/spotlets/video/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/c;->b(Lcom/spotify/mobile/android/spotlets/video/c;)Lcom/spotify/mobile/android/spotlets/video/d;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c$4;->a:Lcom/spotify/mobile/android/spotlets/video/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/c;->b(Lcom/spotify/mobile/android/spotlets/video/c;)Lcom/spotify/mobile/android/spotlets/video/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/video/d;->h()V

    :cond_11
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/c$4;->a:Lcom/spotify/mobile/android/spotlets/video/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/c;->a()V

    return-void
.end method
