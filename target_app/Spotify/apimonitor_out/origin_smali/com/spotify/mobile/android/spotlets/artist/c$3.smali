.class final Lcom/spotify/mobile/android/spotlets/artist/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/artist/c;->b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/artist/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/c;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/c$3;->b:Lcom/spotify/mobile/android/spotlets/artist/c;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/c$3;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c$3;->b:Lcom/spotify/mobile/android/spotlets/artist/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/c$3;->b:Lcom/spotify/mobile/android/spotlets/artist/c;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/c$3;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->uri:Ljava/lang/String;

    invoke-static {v1, v2, v3, v3}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/c;->a(Landroid/content/Intent;)V

    return-void
.end method
