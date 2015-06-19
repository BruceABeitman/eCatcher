.class public final Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field private static final d:I
.field private a:Ljava/util/List;
.field private b:Ljava/util/List;
.field private c:Ljava/lang/String;
.field private e:Landroid/content/Context;
.field private f:Landroid/database/Cursor;
.field private g:Z
.field private h:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field private final i:Lcom/spotify/mobile/android/ui/contextmenu/f;
.field private final j:Lcom/spotify/mobile/android/ui/contextmenu/f;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;->values()[Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;
move-result-object v0
array-length v0, v0
sput v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->d:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;ZLcom/spotify/mobile/android/util/ViewUri$Verified;)V
.registers 5
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->a:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->b:Ljava/util/List;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$1;-><init>(Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->i:Lcom/spotify/mobile/android/ui/contextmenu/f;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$2;-><init>(Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->j:Lcom/spotify/mobile/android/ui/contextmenu/f;
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->e:Landroid/content/Context;
iput-boolean p2, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->g:Z
const v0, 0x7f0f02d0
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->c:Ljava/lang/String;
const-string v0, "ViewUri must not be null"
invoke-static {p3, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->h:Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->h:Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->e:Landroid/content/Context;
return-object v0
.end method
.method public final a()Landroid/database/Cursor;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->f:Landroid/database/Cursor;
return-object v0
.end method
.method public final a(Landroid/database/Cursor;)V
.registers 9
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->f:Landroid/database/Cursor;
if-eqz p1, :cond_15
invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-nez v0, :cond_19
:cond_15
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->notifyDataSetInvalidated()V
:goto_18
return-void
:cond_19
const/4 v0, 0x0
move-object v2, v0
move v0, v1
:goto_1c
invoke-interface {p1}, Landroid/database/Cursor;->getCount()I
move-result v3
if-ge v0, v3, :cond_80
new-instance v3, Lcom/spotify/mobile/android/model/h;
invoke-direct {v3}, Lcom/spotify/mobile/android/model/h;-><init>()V
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->c:Ljava/lang/String;
invoke-virtual {v3, p1, v4}, Lcom/spotify/mobile/android/model/h;->a(Landroid/database/Cursor;Ljava/lang/String;)V
invoke-virtual {v3}, Lcom/spotify/mobile/android/model/h;->getAlbumUri()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_7e
const/4 v2, 0x1
:goto_37
if-lez v0, :cond_55
if-eqz v2, :cond_55
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->a:Ljava/util/List;
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->a:Ljava/util/List;
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->a:Ljava/util/List;
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v6
add-int/lit8 v6, v6, -0x1
invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->b:Ljava/util/List;
sget-object v5, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;->c:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_55
if-eqz v2, :cond_68
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->a:Ljava/util/List;
new-instance v4, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;
invoke-direct {v4, p0, v3}, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;-><init>(Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;Lcom/spotify/mobile/android/model/n;)V
invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->b:Ljava/util/List;
sget-object v4, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;->b:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;
invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_68
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->a:Ljava/util/List;
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->b:Ljava/util/List;
sget-object v4, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;->a:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;
invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v3}, Lcom/spotify/mobile/android/model/h;->getAlbumUri()Ljava/lang/String;
move-result-object v2
invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
add-int/lit8 v0, v0, 0x1
goto :goto_1c
:cond_7e
move v2, v1
goto :goto_37
:cond_80
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->notifyDataSetChanged()V
goto :goto_18
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public final getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final getItemId(I)J
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;->b:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;
if-ne v0, v1, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;->a()J
move-result-wide v0
:goto_16
return-wide v0
:cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/model/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getTrackId()J
move-result-wide v0
goto :goto_16
.end method
.method public final getItemViewType(I)I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;->ordinal()I
move-result v0
return v0
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 12
const v7, 0x7f0a013c
const/4 v4, 0x0
const/4 v3, 0x1
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;
if-eqz p2, :cond_13
instance-of v1, p2, Lcom/spotify/android/paste/widget/ListItemView;
if-nez v1, :cond_81
:cond_13
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->g:Z
if-eqz v1, :cond_6d
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;->a:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;
if-ne v0, v1, :cond_6d
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->e:Landroid/content/Context;
invoke-static {v1, p3}, Lcom/spotify/android/paste/widget/h;->j(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v1
move-object v2, v1
:goto_22
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;->a:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;
if-ne v0, v1, :cond_3c
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->e:Landroid/content/Context;
invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
const v5, 0x7f03005d
const/4 v6, 0x0
invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;
invoke-virtual {v2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->c(Landroid/view/View;)V
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->a()V
:cond_3c
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;->b:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;
if-ne v0, v1, :cond_4f
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/ListItemView;->b()Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/ListItemView;->b()Landroid/widget/TextView;
move-result-object v5
invoke-virtual {v5}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;
move-result-object v5
invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
:goto_4f
:cond_4f
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$3;->a:[I
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;->ordinal()I
move-result v5
aget v1, v1, v5
packed-switch v1, :pswitch_data_13a
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Unknown type "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
:goto_6c
return-object v2
:cond_6d
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;->c:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;
if-ne v0, v1, :cond_79
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->e:Landroid/content/Context;
invoke-static {v1, p3}, Lcom/spotify/android/paste/widget/h;->k(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v1
move-object v2, v1
goto :goto_22
:cond_79
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->e:Landroid/content/Context;
invoke-static {v1, p3}, Lcom/spotify/android/paste/widget/h;->i(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v1
move-object v2, v1
goto :goto_22
:cond_81
check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;
move-object v2, p2
goto :goto_4f
:pswitch_85
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;
invoke-virtual {v2, v3}, Lcom/spotify/android/paste/widget/ListItemView;->b(Z)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
const-class v1, Lcom/spotify/mobile/android/util/df;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v1
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/a;->e()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v1
const v3, 0x7f020073
invoke-virtual {v1, v3}, Lcom/squareup/picasso/ad;->a(I)Lcom/squareup/picasso/ad;
move-result-object v1
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-virtual {v2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->e:Landroid/content/Context;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->j:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-static {v1, v3, v0}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)Landroid/view/View;
move-result-object v1
invoke-virtual {v2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/a/a;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->j:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-direct {v1, v3, v0}, Lcom/spotify/mobile/android/ui/contextmenu/a/a;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
invoke-virtual {v2, v7, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(ILjava/lang/Object;)V
goto :goto_6c
:pswitch_dd
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/model/n;
invoke-virtual {v2, v3}, Lcom/spotify/android/paste/widget/ListItemView;->b(Z)V
invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getTrackName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getArtistName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V
invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->isPlaying()Z
move-result v1
invoke-virtual {v2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->c(Z)V
invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->isAvailable()Z
move-result v1
invoke-virtual {v2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setEnabled(Z)V
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->g:Z
if-nez v1, :cond_133
move v1, v3
:goto_109
invoke-virtual {v2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Z)V
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/ListItemView;->h()Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getOfflineState()I
move-result v3
invoke-virtual {v1, v3}, Lcom/spotify/mobile/android/ui/view/DownloadIndicatorView;->a(I)V
invoke-virtual {v2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->e:Landroid/content/Context;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->i:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-static {v1, v3, v0}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)Landroid/view/View;
move-result-object v1
invoke-virtual {v2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/a/a;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->i:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-direct {v1, v3, v0}, Lcom/spotify/mobile/android/ui/contextmenu/a/a;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
invoke-virtual {v2, v7, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(ILjava/lang/Object;)V
goto/16 :goto_6c
:cond_133
move v1, v4
goto :goto_109
:pswitch_135
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/ListItemView;->d()V
goto/16 :goto_6c
:pswitch_data_13a
.packed-switch 0x1
:pswitch_85
:pswitch_dd
:pswitch_135
.end packed-switch
.end method
.method public final getViewTypeCount()I
.registers 2
sget v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->d:I
return v0
.end method
.method public final isEnabled(I)Z
.registers 4
invoke-static {}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;->values()[Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;
move-result-object v0
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter;->getItemViewType(I)I
move-result v1
aget-object v0, v0, v1
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;->c:Lcom/spotify/mobile/android/spotlets/collection/adapter/AlbumsWithTracksAdapter$Type;
if-eq v0, v1, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method