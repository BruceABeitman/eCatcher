.class final Lcom/spotify/mobile/android/spotlets/artist/model/d;
.super Lcom/spotify/mobile/android/spotlets/artist/model/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/model/a;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/model/a;Landroid/content/ContentResolver;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/d;->a:Lcom/spotify/mobile/android/spotlets/artist/model/a;

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/artist/model/f;-><init>(Lcom/spotify/mobile/android/spotlets/artist/model/a;Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/spotlets/artist/model/f;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/d;->a:Lcom/spotify/mobile/android/spotlets/artist/model/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/d;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    invoke-static {v0, p3, v1}, Lcom/spotify/mobile/android/spotlets/artist/model/a;->a(Lcom/spotify/mobile/android/spotlets/artist/model/a;Landroid/database/Cursor;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/d;->a:Lcom/spotify/mobile/android/spotlets/artist/model/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/a;->c(Lcom/spotify/mobile/android/spotlets/artist/model/a;)Lcom/spotify/mobile/android/spotlets/artist/model/e;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/d;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    invoke-virtual {v0, p3, v1}, Lcom/spotify/mobile/android/spotlets/artist/model/e;->a(Landroid/database/Cursor;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V

    goto :goto_13
.end method
