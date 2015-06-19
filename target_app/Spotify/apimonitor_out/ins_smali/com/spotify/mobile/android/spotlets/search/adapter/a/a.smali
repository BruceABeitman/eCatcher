.class abstract Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/common/adapter/f;
.field final a:Lcom/spotify/mobile/android/spotlets/search/a;
.field private final b:Ljava/lang/Class;
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/Class;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->b:Ljava/lang/Class;
return-void
.end method
.method public synthetic a(ILandroid/view/ViewGroup;)Landroid/view/View;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->b(ILandroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v0
return-object v0
.end method
.method public a()Ljava/lang/Class;
.registers 2
const-class v0, Lcom/spotify/android/paste/widget/ListItemView;
return-object v0
.end method
.method protected final a(ILjava/lang/Number;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;
move-result-object v0
invoke-static {p1, p2, v0}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/b;->a(ILjava/lang/Number;Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected a(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public bridge synthetic a(ILandroid/view/View;Ljava/lang/Object;Landroid/view/ViewGroup;)V
.registers 5
check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;
check-cast p3, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->a(ILcom/spotify/android/paste/widget/ListItemView;Lcom/spotify/mobile/android/spotlets/search/model/entity/b;Landroid/view/ViewGroup;)V
return-void
.end method
.method public a(ILcom/spotify/android/paste/widget/ListItemView;Lcom/spotify/mobile/android/spotlets/search/model/entity/b;Landroid/view/ViewGroup;)V
.registers 8
const/4 v0, 0x1
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Z)V
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->d()Z
move-result v0
if-eqz v0, :cond_72
const/4 v0, 0x0
:goto_f
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V
sget-object v0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {p3}, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;->b(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/String;)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->f()Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-virtual {p0, p3}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->a(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;->b(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/String;)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, p3}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->b(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;)Z
move-result v1
if-eqz v1, :cond_75
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->c(Ljava/lang/CharSequence;)V
:goto_38
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->o_()Lcom/spotify/mobile/android/spotlets/search/player/c;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/player/c;->b()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
move-result-object v0
invoke-virtual {p0, p3, v0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->a(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;)Z
move-result v0
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->c(Z)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->e()Lcom/google/common/base/Optional;
move-result-object v0
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v1
if-eqz v1, :cond_71
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/f;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;
move-result-object v1
invoke-static {v1, v0, p3}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)Landroid/view/View;
move-result-object v1
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V
const v1, 0x7f0a013c
new-instance v2, Lcom/spotify/mobile/android/ui/contextmenu/a/a;
invoke-direct {v2, v0, p3}, Lcom/spotify/mobile/android/ui/contextmenu/a/a;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
invoke-virtual {p2, v1, v2}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(ILjava/lang/Object;)V
:cond_71
return-void
:cond_72
const/16 v0, 0x8
goto :goto_f
:cond_75
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V
goto :goto_38
.end method
.method protected a(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;)Z
.registers 5
invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;->getUri()Ljava/lang/String;
move-result-object v0
iget-object v1, p2, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->contextUri:Ljava/lang/String;
invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
return v0
.end method
.method public b(ILandroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->c()Z
move-result v0
if-eqz v0, :cond_25
invoke-static {v1, p2}, Lcom/spotify/android/paste/widget/h;->i(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v0
:goto_10
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->a:Lcom/spotify/mobile/android/spotlets/search/a;
invoke-interface {v2}, Lcom/spotify/mobile/android/spotlets/search/a;->l_()Z
move-result v2
if-eqz v2, :cond_24
invoke-static {v1, v0}, Lcom/spotify/android/paste/widget/h;->h(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/SpotifyIconView;
move-result-object v1
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->cQ:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/SpotifyIconView;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V
:cond_24
return-object v0
:cond_25
invoke-static {v1, p2}, Lcom/spotify/android/paste/widget/h;->j(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v0
goto :goto_10
.end method
.method public b()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/a/a;->b:Ljava/lang/Class;
return-object v0
.end method
.method protected b(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method protected c()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected d()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method protected abstract e()Lcom/google/common/base/Optional;
.end method
.method protected f()Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
.registers 2
sget-object v0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;->b:Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
return-object v0
.end method