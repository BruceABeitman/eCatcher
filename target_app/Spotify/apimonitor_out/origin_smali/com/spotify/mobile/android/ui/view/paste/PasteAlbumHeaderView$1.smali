.class final Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->a(Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->b(Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView$1;->a:Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/paste/PasteAlbumHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
