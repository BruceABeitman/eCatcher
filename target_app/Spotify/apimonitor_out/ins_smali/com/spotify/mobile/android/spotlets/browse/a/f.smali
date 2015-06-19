.class public final Lcom/spotify/mobile/android/spotlets/browse/a/f;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"
.field private a:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field private b:Lcom/spotify/mobile/android/util/ViewUri$SubView;
.field private c:Landroid/view/LayoutInflater;
.field private d:Lcom/spotify/mobile/android/util/df;
.field private e:Landroid/graphics/drawable/Drawable;
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Lcom/spotify/mobile/android/spotlets/browse/a/f;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;B)V
return-void
.end method
.method private constructor <init>(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;B)V
.registers 7
const v0, 0x7f030030
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/a/f;->a:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/a/f;->b:Lcom/spotify/mobile/android/util/ViewUri$SubView;
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/f;->d:Lcom/spotify/mobile/android/util/df;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/f;->c:Landroid/view/LayoutInflater;
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->Z:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/f;->e:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
if-nez p2, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a/f;->c:Landroid/view/LayoutInflater;
const v1, 0x7f030030
const/4 v2, 0x0
invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
:cond_c
const v0, 0x7f0a0248
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/android/paste/widget/CardView;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CardView;->b()V
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/browse/a/f;->getItem(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylist;
iget-object v2, v1, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylist;->name:Ljava/lang/String;
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->a(Ljava/lang/CharSequence;)V
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/CardView;->c()Landroid/widget/ImageView;
move-result-object v0
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylist;->imageUri:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/a/f;->d:Lcom/spotify/mobile/android/util/df;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v2
invoke-static {v1}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v2, v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/a/f;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, v2}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
return-object p2
.end method