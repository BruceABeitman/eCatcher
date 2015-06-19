.class public final Lcom/spotify/mobile/android/spotlets/collection/adapter/b;
.super Landroid/support/v4/widget/b;
.source "SourceFile"
.field private j:Ljava/lang/String;
.field private k:Landroid/graphics/drawable/Drawable;
.field private l:Z
.field private final m:Lcom/spotify/mobile/android/ui/contextmenu/f;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/widget/b;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/b$1;-><init>(Lcom/spotify/mobile/android/spotlets/collection/adapter/b;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->m:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-static {p1}, Lcom/spotify/mobile/android/ui/stuff/k;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->k:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/adapter/b;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->d:Landroid/content/Context;
return-object v0
.end method
.method public final a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
const v0, 0x7f0101c5
invoke-static {p1, p3, v0}, Lcom/spotify/android/paste/widget/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/e;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/e;->d()Landroid/widget/TextView;
move-result-object v1
const v2, 0x7f01019a
invoke-static {p1, v1, v2}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.registers 12
const/4 v1, 0x1
const/4 v2, 0x0
invoke-static {p1}, Lcom/spotify/android/paste/widget/e;->a(Landroid/view/View;)Lcom/spotify/android/paste/widget/e;
move-result-object v3
new-instance v4, Lcom/spotify/mobile/android/model/e;
invoke-direct {v4}, Lcom/spotify/mobile/android/model/e;-><init>()V
invoke-virtual {v4, p3}, Lcom/spotify/mobile/android/model/e;->a(Landroid/database/Cursor;)V
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/e;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->a(Ljava/lang/CharSequence;)V
invoke-virtual {v3, v4}, Lcom/spotify/android/paste/widget/e;->a(Ljava/lang/Object;)V
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/e;->c()Z
move-result v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Z)V
invoke-virtual {v3, v1}, Lcom/spotify/android/paste/widget/e;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->j:Ljava/lang/String;
if-eqz v0, :cond_b9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->j:Ljava/lang/String;
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/e;->getCollectionUri()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b9
move v0, v1
:goto_33
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->c(Z)V
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/e;->getImageUri()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
invoke-virtual {v0, v5}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->k:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v5}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->k:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v5}, Lcom/squareup/picasso/ad;->b(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
invoke-virtual {v3}, Lcom/spotify/android/paste/widget/e;->b()Landroid/widget/ImageView;
move-result-object v5
invoke-static {v5}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;
move-result-object v5
invoke-virtual {v0, v5}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V
invoke-virtual {v3}, Lcom/spotify/android/paste/widget/e;->b()Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/e;->a()I
move-result v0
iget-boolean v5, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->l:Z
if-eqz v5, :cond_76
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/e;->b()I
move-result v0
:cond_76
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/e;->isFollowed()Z
move-result v5
if-eqz v5, :cond_bc
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->d:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0e0008
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v1, v2
invoke-virtual {v5, v6, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/CharSequence;)V
:goto_94
invoke-virtual {v3}, Lcom/spotify/android/paste/widget/e;->d()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/e;->getOfflineState()I
move-result v1
invoke-virtual {v4}, Lcom/spotify/mobile/android/model/e;->getSyncProgress()I
move-result v2
invoke-static {p2, v0, v1, v2}, Lcom/spotify/mobile/android/util/aq;->a(Landroid/content/Context;Landroid/widget/TextView;II)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->d:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->m:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-static {v0, v1, v4}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Landroid/view/View;)V
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/a/a;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->m:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-direct {v0, v1, v4}, Lcom/spotify/mobile/android/ui/contextmenu/a/a;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/Object;)V
return-void
:cond_b9
move v0, v2
goto/16 :goto_33
:cond_bc
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->d:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0e0007
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v1, v2
invoke-virtual {v5, v6, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/CharSequence;)V
goto :goto_94
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->j:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->notifyDataSetChanged()V
return-void
.end method