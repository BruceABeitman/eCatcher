.class final Lcom/spotify/mobile/android/spotlets/artist/model/c;
.super Lcom/spotify/mobile/android/spotlets/artist/model/f;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/model/a;

.field private d:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/model/a;Landroid/content/ContentResolver;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/c;->a:Lcom/spotify/mobile/android/spotlets/artist/model/a;

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/artist/model/f;-><init>(Lcom/spotify/mobile/android/spotlets/artist/model/a;Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/c;->d:Landroid/database/Cursor;

    return-void
.end method

.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/spotify/mobile/android/spotlets/artist/model/f;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/c;->d:Landroid/database/Cursor;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/c;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/c;->d:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_14
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/c;->a:Lcom/spotify/mobile/android/spotlets/artist/model/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/c;->b:Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;

    invoke-static {v0, p3, v1}, Lcom/spotify/mobile/android/spotlets/artist/model/a;->a(Lcom/spotify/mobile/android/spotlets/artist/model/a;Landroid/database/Cursor;Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;)V

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return-void
.end method
