.class final Lcom/spotify/mobile/android/ui/fragments/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/dk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/b;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/b;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/b;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/b$2;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b$2;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/b;->a(Lcom/spotify/mobile/android/ui/fragments/b;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b$2;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/fragments/b;->a(Lcom/spotify/mobile/android/ui/fragments/b;F)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b$2;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/fragments/b;->b(Lcom/spotify/mobile/android/ui/fragments/b;F)F

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/b$2;->a:Lcom/spotify/mobile/android/ui/fragments/b;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/b;->b(Lcom/spotify/mobile/android/ui/fragments/b;)Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a(F)V

    :cond_1e
    return-void
.end method
