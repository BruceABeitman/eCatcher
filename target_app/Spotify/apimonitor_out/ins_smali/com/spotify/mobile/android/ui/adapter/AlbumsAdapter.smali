.class public final Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;
.super Landroid/support/v4/widget/b;
.source "SourceFile"
.field private j:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;
.field private k:Ljava/lang/String;
.field private l:Ljava/lang/String;
.field private final m:Lcom/spotify/mobile/android/ui/contextmenu/f;
.field private n:Lcom/spotify/mobile/android/util/df;
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;Lcom/spotify/mobile/android/ui/contextmenu/f;)V
.registers 6
invoke-direct {p0, p1}, Landroid/support/v4/widget/b;-><init>(Landroid/content/Context;)V
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->n:Lcom/spotify/mobile/android/util/df;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->j:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;
const-string v0, "Context menu listener cannot be null!"
invoke-static {p3, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/f;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->m:Lcom/spotify/mobile/android/ui/contextmenu/f;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->d:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0f02d0
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->k:Ljava/lang/String;
return-void
.end method
.method public final a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->j:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;
const v0, 0x7f0101c5
invoke-static {p1, p3, v0}, Lcom/spotify/android/paste/widget/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/e;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->m:Lcom/spotify/mobile/android/ui/contextmenu/f;
if-nez v1, :cond_14
invoke-static {p1}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/e;->b(Landroid/view/View;)V
:cond_14
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->j:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;
invoke-interface {v1}, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;->a()Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;->c:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;
if-ne v1, v2, :cond_28
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/e;->d()Landroid/widget/TextView;
move-result-object v1
const v2, 0x7f01019a
invoke-static {p1, v1, v2}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
:cond_28
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/e;->d(Z)V
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.registers 13
const/4 v1, 0x1
const/4 v2, 0x0
invoke-static {p1}, Lcom/spotify/android/paste/widget/e;->a(Landroid/view/View;)Lcom/spotify/android/paste/widget/e;
move-result-object v3
new-instance v4, Lcom/spotify/mobile/android/model/d;
invoke-direct {v4}, Lcom/spotify/mobile/android/model/d;-><init>()V
invoke-virtual {v4, p3}, Lcom/spotify/mobile/android/model/d;->a(Landroid/database/Cursor;)V
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/d;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->a(Ljava/lang/CharSequence;)V
iget-boolean v0, v4, Lcom/spotify/mobile/android/model/d;->o:Z
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->l:Ljava/lang/String;
if-eqz v0, :cond_c0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->l:Ljava/lang/String;
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/d;->getCollectionUri()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c0
move v0, v1
:goto_2b
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->c(Z)V
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/d;->isAvailable()Z
move-result v0
if-nez v0, :cond_3c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->j:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;->b()Z
move-result v0
if-eqz v0, :cond_c3
:cond_3c
move v0, v1
:goto_3d
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->a(Z)V
invoke-virtual {v3, v4}, Lcom/spotify/android/paste/widget/e;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->j:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->n:Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/d;->getAlbumImageUri()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-virtual {v0, v5}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
const v5, 0x7f020073
invoke-virtual {v0, v5}, Lcom/squareup/picasso/ad;->a(I)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v3}, Lcom/spotify/android/paste/widget/e;->b()Landroid/widget/ImageView;
move-result-object v5
invoke-virtual {v0, v5}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
sget-object v0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$1;->a:[I
iget-object v5, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->j:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;
invoke-interface {v5}, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;->a()Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;
move-result-object v5
invoke-virtual {v5}, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options$ArtistViewType;->ordinal()I
move-result v5
aget v0, v0, v5
packed-switch v0, :pswitch_data_15a
:goto_76
invoke-virtual {v3}, Lcom/spotify/android/paste/widget/e;->d()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/d;->getOfflineState()I
move-result v5
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/d;->getSyncProgress()I
move-result v6
invoke-static {p2, v0, v5, v6}, Lcom/spotify/mobile/android/util/aq;->a(Landroid/content/Context;Landroid/widget/TextView;II)Z
move-result v0
if-eqz v0, :cond_14d
invoke-virtual {v3}, Lcom/spotify/android/paste/widget/e;->d()Landroid/widget/TextView;
move-result-object v0
const v5, 0x7f01019a
invoke-static {p2, v0, v5}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->d:Landroid/content/Context;
const v5, 0x7f0f022a
new-array v1, v1, [Ljava/lang/Object;
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/d;->getSyncProgress()I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v1, v2
invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/CharSequence;)V
:goto_aa
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->d:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->m:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-static {v0, v1, v4}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Landroid/view/View;)V
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/a/a;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->m:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/ui/contextmenu/a/a;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/Object;)V
return-void
:cond_c0
move v0, v2
goto/16 :goto_2b
:cond_c3
move v0, v2
goto/16 :goto_3d
:pswitch_c6
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/d;->getArtistName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_d6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->k:Ljava/lang/String;
:goto_d2
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/CharSequence;)V
goto :goto_76
:cond_d6
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/d;->getArtistName()Ljava/lang/String;
move-result-object v0
goto :goto_d2
:pswitch_db
iget-object v0, v4, Lcom/spotify/mobile/android/model/d;->u:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_e9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->k:Ljava/lang/String;
:goto_e5
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/CharSequence;)V
goto :goto_76
:cond_e9
iget-object v0, v4, Lcom/spotify/mobile/android/model/d;->u:Ljava/lang/String;
goto :goto_e5
:pswitch_ec
iget v0, v4, Lcom/spotify/mobile/android/model/d;->q:I
if-gtz v0, :cond_10e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->d:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v5, 0x7f0e0007
iget v6, v4, Lcom/spotify/mobile/android/model/d;->r:I
new-array v7, v1, [Ljava/lang/Object;
iget v8, v4, Lcom/spotify/mobile/android/model/d;->r:I
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v7, v2
invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/CharSequence;)V
goto/16 :goto_76
:cond_10e
iget v0, v4, Lcom/spotify/mobile/android/model/d;->r:I
iget v5, v4, Lcom/spotify/mobile/android/model/d;->q:I
if-ne v0, v5, :cond_126
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->d:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v5, 0x7f0f00f5
invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/CharSequence;)V
goto/16 :goto_76
:cond_126
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->d:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v5, 0x7f0e0006
iget v6, v4, Lcom/spotify/mobile/android/model/d;->q:I
const/4 v7, 0x2
new-array v7, v7, [Ljava/lang/Object;
iget v8, v4, Lcom/spotify/mobile/android/model/d;->r:I
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v7, v2
iget v8, v4, Lcom/spotify/mobile/android/model/d;->q:I
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v7, v1
invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/CharSequence;)V
goto/16 :goto_76
:cond_14d
invoke-virtual {v3}, Lcom/spotify/android/paste/widget/e;->d()Landroid/widget/TextView;
move-result-object v0
const v1, 0x7f010196
invoke-static {p2, v0, v1}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
goto/16 :goto_aa
nop
:pswitch_data_15a
.packed-switch 0x1
:pswitch_c6
:pswitch_db
:pswitch_ec
.end packed-switch
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->l:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;->notifyDataSetChanged()V
return-void
.end method