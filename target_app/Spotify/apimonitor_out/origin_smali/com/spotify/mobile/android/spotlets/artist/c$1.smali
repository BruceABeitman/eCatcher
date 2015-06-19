.class final Lcom/spotify/mobile/android/spotlets/artist/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/artist/c;->b(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;

.field final synthetic b:Lcom/spotify/mobile/android/spotlets/artist/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/c;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/c$1;->b:Lcom/spotify/mobile/android/spotlets/artist/c;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/c$1;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://maps.google.com/maps?q=loc:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/c$1;->b:Lcom/spotify/mobile/android/spotlets/artist/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/c$1;->a:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/c;->a(Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Concert;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/c$1;->b:Lcom/spotify/mobile/android/spotlets/artist/c;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/artist/c;->a(Landroid/content/Intent;)V

    return-void
.end method
