.class public final Lcom/spotify/mobile/android/ui/adapter/ad;
.super Landroid/support/v4/widget/b;
.source "SourceFile"
.field private j:Landroid/widget/Filter;
.field private final k:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/widget/b;-><init>(Landroid/content/Context;)V
const v0, 0x7f0f02d0
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ad;->k:Ljava/lang/String;
return-void
.end method
.method public final synthetic a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
invoke-static {p1, p3}, Lcom/spotify/android/paste/widget/h;->i(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.registers 9
const v4, 0x7f020078
move-object v0, p1
check-cast v0, Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/model/i;
if-nez v1, :cond_4e
iget-object v1, p0, Lcom/spotify/mobile/android/ui/adapter/ad;->k:Ljava/lang/String;
invoke-static {p3, v1}, Lcom/spotify/mobile/android/model/i;->a(Landroid/database/Cursor;Ljava/lang/String;)Lcom/spotify/mobile/android/model/i;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V
move-object v2, v1
:goto_18
invoke-virtual {v2}, Lcom/spotify/mobile/android/model/i;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
const-class v1, Lcom/spotify/mobile/android/util/df;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v1
invoke-virtual {v2}, Lcom/spotify/mobile/android/model/i;->d()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v1
invoke-virtual {v1, v4}, Lcom/squareup/picasso/ad;->a(I)Lcom/squareup/picasso/ad;
move-result-object v1
invoke-virtual {v1, v4}, Lcom/squareup/picasso/ad;->b(I)Lcom/squareup/picasso/ad;
move-result-object v1
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
invoke-virtual {v2}, Lcom/spotify/mobile/android/model/i;->c()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setEnabled(Z)V
return-void
:cond_4e
iget-object v2, p0, Lcom/spotify/mobile/android/ui/adapter/ad;->k:Ljava/lang/String;
invoke-virtual {v1, p3, v2}, Lcom/spotify/mobile/android/model/i;->b(Landroid/database/Cursor;Ljava/lang/String;)V
move-object v2, v1
goto :goto_18
.end method
.method public final a(Landroid/widget/Filter;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/adapter/ad;->j:Landroid/widget/Filter;
return-void
.end method
.method public final getFilter()Landroid/widget/Filter;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/adapter/ad;->j:Landroid/widget/Filter;
return-object v0
.end method