.class final Lcom/spotify/mobile/android/spotlets/artist/view/c/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/artist/view/c/d;->a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)Lcom/spotify/mobile/android/spotlets/artist/view/headers/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/artist/view/c/d;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/c/d;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/d$1;->b:Lcom/spotify/mobile/android/spotlets/artist/view/c/d;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/d$1;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/d$1;->b:Lcom/spotify/mobile/android/spotlets/artist/view/c/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/c/d;->d()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/d$1;->b:Lcom/spotify/mobile/android/spotlets/artist/view/c/d;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/view/c/d;->d()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/c/d$1;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->uri:Ljava/lang/String;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/b/i;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/artist/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/b/a;->c()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
