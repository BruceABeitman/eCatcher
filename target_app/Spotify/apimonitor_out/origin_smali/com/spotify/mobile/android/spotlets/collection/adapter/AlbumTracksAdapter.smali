.class public final Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field private static final b:I


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/model/n;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Landroid/database/Cursor;

.field private e:Z

.field private f:Ljava/lang/String;

.field private final g:Lcom/spotify/mobile/android/ui/contextmenu/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<",
            "Lcom/spotify/mobile/android/model/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;->values()[Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;

    move-result-object v0

    array-length v0, v0

    sput v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/spotify/mobile/android/ui/contextmenu/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<",
            "Lcom/spotify/mobile/android/model/n;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->c:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->e:Z

    const-string v0, "Context menu listener must be provided."

    invoke-static {p3, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/f;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->g:Lcom/spotify/mobile/android/ui/contextmenu/f;

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/Cursor;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->d:Landroid/database/Cursor;

    return-object v0
.end method

.method public final a(Landroid/database/Cursor;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->d:Landroid/database/Cursor;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_f
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->notifyDataSetInvalidated()V

    :goto_12
    return-void

    :cond_13
    new-instance v0, Lcom/spotify/mobile/android/model/h;

    invoke-direct {v0}, Lcom/spotify/mobile/android/model/h;-><init>()V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->f:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/spotify/mobile/android/model/h;->a(Landroid/database/Cursor;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->notifyDataSetChanged()V

    goto :goto_12
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->f:Ljava/lang/String;

    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/model/n;

    invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getTrackId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;->a:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    const/4 v3, 0x0

    invoke-static {}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;->values()[Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->getItemViewType(I)I

    move-result v1

    aget-object v2, v0, v1

    invoke-static {p2}, Lcom/spotify/android/paste/widget/e;->a(Landroid/view/View;)Lcom/spotify/android/paste/widget/e;

    move-result-object v0

    if-nez v0, :cond_ca

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->c:Landroid/content/Context;

    const v1, 0x7f0101c4

    invoke-static {v0, p3, v1}, Lcom/spotify/android/paste/widget/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/e;

    move-result-object v0

    move-object v1, v0

    :goto_1b
    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->e:Z

    if-eqz v0, :cond_5d

    sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;->a:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;

    if-ne v2, v0, :cond_5d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/e;->c()Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f010198

    invoke-static {v0, v4, v5}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/e;->d()Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f010199

    invoke-static {v0, v4, v5}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V

    :goto_3b
    sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$1;->a:[I

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter$Type;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_ce

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unknown type "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    :goto_58
    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_5d
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/e;->c()Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f010194

    invoke-static {v0, v4, v5}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/e;->d()Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f010196

    invoke-static {v0, v4, v5}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V

    goto :goto_3b

    :pswitch_76
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/model/n;

    invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/e;->a(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/CharSequence;)V

    invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/e;->b(Z)V

    invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->isAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/e;->a(Z)V

    iget-boolean v2, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->e:Z

    if-nez v2, :cond_c8

    const/4 v2, 0x1

    :goto_9f
    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/e;->d(Z)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->c:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/spotify/android/paste/widget/e;->d()Landroid/widget/TextView;

    move-result-object v4

    invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getOfflineState()I

    move-result v5

    invoke-static {v2, v4, v5, v3}, Lcom/spotify/mobile/android/util/aq;->a(Landroid/content/Context;Landroid/widget/TextView;II)Z

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/e;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->g:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-static {v2, v3, v0}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/e;->b(Landroid/view/View;)V

    new-instance v2, Lcom/spotify/mobile/android/ui/contextmenu/a/a;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->g:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-direct {v2, v3, v0}, Lcom/spotify/mobile/android/ui/contextmenu/a/a;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/Object;)V

    goto :goto_58

    :cond_c8
    move v2, v3

    goto :goto_9f

    :cond_ca
    move-object v1, v0

    goto/16 :goto_1b

    nop

    :pswitch_data_ce
    .packed-switch 0x1
        :pswitch_76
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .registers 2

    sget v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumTracksAdapter;->b:I

    return v0
.end method

.method public final isEnabled(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
