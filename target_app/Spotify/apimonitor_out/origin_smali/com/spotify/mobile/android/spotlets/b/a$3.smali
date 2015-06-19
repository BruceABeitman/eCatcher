.class final Lcom/spotify/mobile/android/spotlets/b/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/b/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/b/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/b/a$3;->a:Lcom/spotify/mobile/android/spotlets/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a$3;->a:Lcom/spotify/mobile/android/spotlets/b/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/b/a;->c(Lcom/spotify/mobile/android/spotlets/b/a;)Lcom/spotify/mobile/android/service/player/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->h()Lcom/spotify/mobile/android/service/player/a/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/player/a/f;->b()V

    return-void
.end method
