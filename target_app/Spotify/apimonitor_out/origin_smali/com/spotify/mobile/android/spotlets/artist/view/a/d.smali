.class final Lcom/spotify/mobile/android/spotlets/artist/view/a/d;
.super Landroid/content/AsyncQueryHandler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/view/a/c;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/view/a/c;Landroid/content/ContentResolver;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/d;->a:Lcom/spotify/mobile/android/spotlets/artist/view/a/c;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    check-cast p2, Ljava/lang/String;

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/d;->a:Lcom/spotify/mobile/android/spotlets/artist/view/a/c;

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->a(Ljava/lang/String;)V

    :goto_10
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_14
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/d;->a:Lcom/spotify/mobile/android/spotlets/artist/view/a/c;

    invoke-static {v0, p3, p2}, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->a(Lcom/spotify/mobile/android/spotlets/artist/view/a/c;Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_10
.end method
