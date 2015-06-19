.class final Lcom/spotify/mobile/android/ui/fragments/x$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/x;->d(Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/x;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/x;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/x$6;->a:Lcom/spotify/mobile/android/ui/fragments/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$6;->a:Lcom/spotify/mobile/android/ui/fragments/x;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/x;->f(Lcom/spotify/mobile/android/ui/fragments/x;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$6;->a:Lcom/spotify/mobile/android/ui/fragments/x;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/x;->h(Lcom/spotify/mobile/android/ui/fragments/x;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/x$6;->a:Lcom/spotify/mobile/android/ui/fragments/x;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/x;->g(Lcom/spotify/mobile/android/ui/fragments/x;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$6;->a:Lcom/spotify/mobile/android/ui/fragments/x;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/x;->i(Lcom/spotify/mobile/android/ui/fragments/x;)Ljava/lang/Runnable;

    return-void
.end method
