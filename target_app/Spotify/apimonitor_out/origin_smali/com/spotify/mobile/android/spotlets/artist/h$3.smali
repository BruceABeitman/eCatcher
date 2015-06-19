.class final Lcom/spotify/mobile/android/spotlets/artist/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/artist/h;->E()Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/h;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/h;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/h$3;->a:Lcom/spotify/mobile/android/spotlets/artist/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/h$3;->a:Lcom/spotify/mobile/android/spotlets/artist/h;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/h;->a(Lcom/spotify/mobile/android/spotlets/artist/h;)Lcom/spotify/mobile/android/spotlets/artist/adapters/h;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/spotify/mobile/android/spotlets/artist/adapters/h;->a(I)Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/h$3;->a:Lcom/spotify/mobile/android/spotlets/artist/h;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/h;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/h$3;->a:Lcom/spotify/mobile/android/spotlets/artist/h;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/h;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->uri:Ljava/lang/String;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ArtistInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
