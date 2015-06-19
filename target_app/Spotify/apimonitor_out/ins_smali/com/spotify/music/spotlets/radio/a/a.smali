.class public Lcom/spotify/music/spotlets/radio/a/a;
.super Lcom/spotify/music/spotlets/radio/a/b;
.source "SourceFile"
.field private final a:Z
.field private final b:Landroid/view/View$OnClickListener;
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;ZZ)V
.registers 7
invoke-direct/range {p0 .. p5}, Lcom/spotify/music/spotlets/radio/a/b;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;ZZ)V
new-instance v0, Lcom/spotify/music/spotlets/radio/a/a$1;
invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/radio/a/a$1;-><init>(Lcom/spotify/music/spotlets/radio/a/a;)V
iput-object v0, p0, Lcom/spotify/music/spotlets/radio/a/a;->b:Landroid/view/View$OnClickListener;
iput-boolean p5, p0, Lcom/spotify/music/spotlets/radio/a/a;->a:Z
return-void
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
if-nez p2, :cond_5a
invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/a/a;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p3}, Lcom/spotify/android/paste/widget/h;->i(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object p2
invoke-virtual {p0, p2}, Lcom/spotify/music/spotlets/radio/a/a;->b(Landroid/view/View;)V
iget-boolean v0, p0, Lcom/spotify/music/spotlets/radio/a/a;->a:Z
if-eqz v0, :cond_21
invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/a/a;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/a/a;->b:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V
:cond_21
:goto_21
const/4 v0, 0x1
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Z)V
invoke-virtual {p0, p1}, Lcom/spotify/music/spotlets/radio/a/a;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/music/spotlets/radio/model/a;
invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->setTag(Ljava/lang/Object;)V
invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/model/a;->getTitle()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/model/a;->getSubtitle()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->b(Ljava/lang/CharSequence;)V
invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/model/a;->getSeedUris()[Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/spotify/music/spotlets/radio/a/a;->a([Ljava/lang/String;)Z
move-result v1
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->c(Z)V
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {p0, v1, v0}, Lcom/spotify/music/spotlets/radio/a/a;->a(Landroid/widget/ImageView;Lcom/spotify/music/spotlets/radio/model/a;)V
iget-boolean v1, p0, Lcom/spotify/music/spotlets/radio/a/a;->a:Z
if-eqz v1, :cond_59
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->f()Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:cond_59
return-object p2
:cond_5a
check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;
goto :goto_21
.end method