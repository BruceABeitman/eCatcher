.class public final Lcom/spotify/mobile/android/spotlets/share/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.field private a:Ljava/lang/String;
.field private b:Lcom/spotify/mobile/android/spotlets/share/a/a;
.field private c:Lcom/squareup/picasso/Picasso;
.field private d:Lcom/spotify/mobile/android/ui/c/a;
.field private e:Landroid/widget/ImageView;
.field private f:Landroid/widget/TextView;
.field private g:Landroid/widget/TextView;
.field private h:Landroid/widget/ImageView;
.field private i:Landroid/widget/EditText;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/share/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a;->a:Ljava/lang/String;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/share/a;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a;->i:Landroid/widget/EditText;
return-object v0
.end method
.method public static b(Landroid/content/Intent;)Lcom/spotify/mobile/android/spotlets/share/a;
.registers 4
const-string v0, "android.intent.extra.TEXT"
invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;)V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "share_uri"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/share/a;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/share/a;-><init>()V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/share/a;->c_(Landroid/os/Bundle;)V
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/share/a;)Lcom/spotify/mobile/android/spotlets/share/a/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a;->b:Lcom/spotify/mobile/android/spotlets/share/a/a;
return-object v0
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
const v0, 0x7f030075
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
const v1, 0x7f0a038d
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/share/a;->e:Landroid/widget/ImageView;
const v1, 0x7f0a038e
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/share/a;->f:Landroid/widget/TextView;
const v1, 0x7f0a038f
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/share/a;->g:Landroid/widget/TextView;
const v1, 0x7f0a038c
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/share/a;->h:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/share/a;->h:Landroid/widget/ImageView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/share/a;->k()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f090026
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V
const v1, 0x7f0a02c2
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/EditText;
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/share/a;->i:Landroid/widget/EditText;
return-object v0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const v0, 0x7f0f0374
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/share/a;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "share_uri"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a;->a:Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a;->a:Ljava/lang/String;
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/share/a/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/share/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/share/a/a;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a;->b:Lcom/spotify/mobile/android/spotlets/share/a/a;
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a;->c:Lcom/squareup/picasso/Picasso;
new-instance v0, Lcom/spotify/mobile/android/ui/c/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/share/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/c/a;-><init>(Landroid/content/Context;B)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a;->d:Lcom/spotify/mobile/android/ui/c/a;
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/share/a;->a(Z)V
return-void
.end method
.method public final a(Landroid/view/Menu;)V
.registers 6
const/4 v3, 0x0
const v0, 0x7f0a0116
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/share/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f0f0010
invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/spotlets/share/a$2;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/share/a$2;-><init>(Lcom/spotify/mobile/android/spotlets/share/a;)V
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
move-result-object v0
const/4 v1, 0x1
invoke-static {v0, v1}, Landroid/support/v4/view/x;->a(Landroid/view/MenuItem;I)V
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 8
invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a;->b:Lcom/spotify/mobile/android/spotlets/share/a/a;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/share/a;->a:Ljava/lang/String;
new-instance v2, Lcom/spotify/mobile/android/spotlets/share/PostFragment$1;
new-instance v3, Landroid/os/Handler;
invoke-direct {v3}, Landroid/os/Handler;-><init>()V
const-class v4, Lcom/spotify/mobile/android/spotlets/share/model/Info$Response;
invoke-direct {v2, p0, v3, v4}, Lcom/spotify/mobile/android/spotlets/share/PostFragment$1;-><init>(Lcom/spotify/mobile/android/spotlets/share/a;Landroid/os/Handler;Ljava/lang/Class;)V
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/share/a/a;->a(Ljava/lang/String;Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a;->i:Landroid/widget/EditText;
new-instance v1, Lcom/spotify/mobile/android/spotlets/share/a$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/share/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/share/a;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a;->i:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/share/model/Resource;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a;->f:Landroid/widget/TextView;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->getTitle()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a;->g:Landroid/widget/TextView;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->getSubtitle()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a;->c:Lcom/squareup/picasso/Picasso;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->getImage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/share/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->Z:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/share/a;->e:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a;->c:Lcom/squareup/picasso/Picasso;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/share/model/Resource;->getImage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/share/a;->d:Lcom/spotify/mobile/android/ui/c/a;
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ad;
move-result-object v0
const v1, 0x7f02016e
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(I)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/share/a;->h:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
return-void
.end method
.method public final f()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a;->b:Lcom/spotify/mobile/android/spotlets/share/a/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/share/a/a;->a()V
return-void
.end method