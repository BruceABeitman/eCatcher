.class final Lcom/spotify/mobile/android/spotlets/artist/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/spotlets/artist/i;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/i;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/i;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/i$1;->a:Lcom/spotify/mobile/android/spotlets/artist/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/artist/view/b/k;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/i$1;->a:Lcom/spotify/mobile/android/spotlets/artist/i;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/i;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/b/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/i$1;->a:Lcom/spotify/mobile/android/spotlets/artist/i;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/i;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
