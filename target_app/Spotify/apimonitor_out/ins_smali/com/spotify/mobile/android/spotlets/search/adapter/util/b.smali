.class public final Lcom/spotify/mobile/android/spotlets/search/adapter/util/b;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/content/Context;Lcom/spotify/mobile/android/util/dg;)Lcom/spotify/mobile/android/util/dg;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/b$1;
invoke-direct {v0, p1, p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/b$1;-><init>(Lcom/spotify/mobile/android/util/dg;Landroid/content/Context;)V
return-object v0
.end method
.method public static a(ILjava/lang/Number;Landroid/content/Context;)Ljava/lang/String;
.registers 8
if-eqz p1, :cond_1d
invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {p1}, Ljava/lang/Number;->intValue()I
move-result v1
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-virtual {p1}, Ljava/lang/Number;->intValue()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_1c
return-object v0
:cond_1d
const/4 v0, 0x0
goto :goto_1c
.end method
.method public static a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/spotify/mobile/android/util/dg;)V
.registers 6
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/squareup/picasso/ad;->b(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v0
if-eqz p3, :cond_26
invoke-static {p0, p3}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;Lcom/spotify/mobile/android/util/dg;)Lcom/squareup/picasso/ai;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V
:goto_25
return-void
:cond_26
invoke-virtual {v0, p0}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
goto :goto_25
.end method
.method public static a(Lcom/spotify/android/paste/widget/ListItemView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/spotify/mobile/android/util/dg;)V
.registers 5
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;
move-result-object v0
invoke-static {v0, p1, p2, p3}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/b;->a(Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/spotify/mobile/android/util/dg;)V
return-void
.end method