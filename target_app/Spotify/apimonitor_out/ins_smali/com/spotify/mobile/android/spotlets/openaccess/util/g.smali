.class public final Lcom/spotify/mobile/android/spotlets/openaccess/util/g;
.super Ljava/lang/Object;
.source "SourceFile"
.method public static a(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/openaccess/model/Track;F)V
.registers 6
const/4 v0, 0x0
move v1, v0
:goto_2
invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I
move-result v0
if-gt v1, v0, :cond_23
invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_1f
invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v2
if-ne p1, v2, :cond_1f
check-cast v0, Lcom/spotify/android/paste/widget/ListItemView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->f()Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;
invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/spotlets/openaccess/view/ProgressPlayButton;->a(F)V
:cond_1f
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
:cond_23
return-void
.end method