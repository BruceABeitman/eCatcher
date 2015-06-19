.class final Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$1;
.super Lcom/spotify/mobile/android/ui/adapter/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$1;->a:Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter;

    invoke-direct {p0, p2}, Lcom/spotify/mobile/android/ui/adapter/x;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/View;Ljava/lang/String;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/adapter/x;->a(ILandroid/view/View;Ljava/lang/String;)V

    check-cast p2, Lcom/spotify/android/paste/widget/SectionHeaderView;

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->values()[Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;->a(Lcom/spotify/mobile/android/spotlets/artist/adapters/ArtistPageAdapter$Section;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/SectionHeaderView;->a(Z)V

    return-void
.end method
