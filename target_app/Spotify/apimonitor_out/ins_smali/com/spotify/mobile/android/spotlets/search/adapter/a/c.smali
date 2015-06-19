.class abstract Lcom/spotify/mobile/android/spotlets/search/adapter/a/c;
.super Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;
.source "SourceFile"
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/Class;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/Class;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
return-void
.end method
.method public final synthetic a(ILandroid/view/ViewGroup;)Landroid/view/View;
.registers 4
invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;->b(ILandroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v0
return-object v0
.end method
.method protected a(Lcom/spotify/mobile/android/spotlets/search/model/entity/e;)Lcom/spotify/mobile/android/util/dg;
.registers 3
invoke-static {}, Lcom/spotify/mobile/android/ui/b/a;->a()Lcom/spotify/mobile/android/util/dg;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic a(ILandroid/view/View;Ljava/lang/Object;Landroid/view/ViewGroup;)V
.registers 5
check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;
check-cast p3, Lcom/spotify/mobile/android/spotlets/search/model/entity/e;
invoke-super {p0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;->a(ILcom/spotify/android/paste/widget/ListItemView;Lcom/spotify/mobile/android/spotlets/search/model/entity/e;Landroid/view/ViewGroup;)V
return-void
.end method
.method public final bridge synthetic a(ILcom/spotify/android/paste/widget/ListItemView;Lcom/spotify/mobile/android/spotlets/search/model/entity/b;Landroid/view/ViewGroup;)V
.registers 5
check-cast p3, Lcom/spotify/mobile/android/spotlets/search/model/entity/e;
invoke-super {p0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/b;->a(ILcom/spotify/android/paste/widget/ListItemView;Lcom/spotify/mobile/android/spotlets/search/model/entity/e;Landroid/view/ViewGroup;)V
return-void
.end method