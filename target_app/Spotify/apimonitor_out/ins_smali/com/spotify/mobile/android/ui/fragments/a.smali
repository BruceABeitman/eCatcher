.class public final Lcom/spotify/mobile/android/ui/fragments/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.field private a:Landroid/widget/ListView;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Lcom/spotify/mobile/android/ui/adapter/a;
.field private f:Landroid/widget/AdapterView$OnItemClickListener;
.field private g:Landroid/support/v4/app/z;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/a$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/a$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a;->f:Landroid/widget/AdapterView$OnItemClickListener;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/a$4;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/a$4;-><init>(Lcom/spotify/mobile/android/ui/fragments/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a;->g:Landroid/support/v4/app/z;
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/a;
.registers 3
const/4 v0, 0x0
invoke-static {v0, p0, p1}, Lcom/spotify/mobile/android/ui/fragments/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/a;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/ui/fragments/a;
.registers 5
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "folder_uri"
invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "item_uri"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "default_name"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/spotify/mobile/android/ui/fragments/a;
invoke-direct {v1}, Lcom/spotify/mobile/android/ui/fragments/a;-><init>()V
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/fragments/a;->c_(Landroid/os/Bundle;)V
return-object v1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a;->c:Ljava/lang/String;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/a;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
.registers 6
const/4 v3, 0x0
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->Z:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v2, "duplicates-popup"
invoke-static {v2, p1, v3, v3}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/a;ZLandroid/content/ContentValues;Lcom/spotify/mobile/android/model/j;Z)V
.registers 7
invoke-interface {p3}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/o;->b(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-static {v0, p4}, Lcom/spotify/mobile/android/provider/o;->a(Landroid/net/Uri;Z)Landroid/net/Uri;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-virtual {v1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
if-eqz p1, :cond_28
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->A(Landroid/content/Context;)V
:goto_20
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
return-void
:cond_28
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->z(Landroid/content/Context;)V
goto :goto_20
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/a;ZZLandroid/content/ContentValues;Lcom/spotify/mobile/android/model/j;)V
.registers 16
if-eqz p1, :cond_5b
const v3, 0x7f0f002c
const v2, 0x7f0f0026
const v1, 0x7f0f002a
const v0, 0x7f0f0028
move v6, v0
move v7, v1
move v8, v3
move v0, v2
:goto_12
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const/4 v2, 0x0
invoke-static {v1, v2}, Lcom/spotify/android/paste/widget/h;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/TextView;
move-result-object v9
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f10007f
invoke-static {v1, v9, v2}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V
invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V
new-instance v10, Lcom/spotify/android/paste/app/b;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f1000ab
invoke-direct {v10, v0, v1}, Lcom/spotify/android/paste/app/b;-><init>(Landroid/content/Context;I)V
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/a$3;
move-object v1, p0
move v2, p1
move v3, p2
move-object v4, p3
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/fragments/a$3;-><init>(Lcom/spotify/mobile/android/ui/fragments/a;ZZLandroid/content/ContentValues;Lcom/spotify/mobile/android/model/j;)V
invoke-virtual {v10, v7, v0}, Lcom/spotify/android/paste/app/b;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/ui/fragments/a$2;
invoke-direct {v1, p0, p1, p3, p4}, Lcom/spotify/mobile/android/ui/fragments/a$2;-><init>(Lcom/spotify/mobile/android/ui/fragments/a;ZLandroid/content/ContentValues;Lcom/spotify/mobile/android/model/j;)V
invoke-virtual {v0, v6, v1}, Lcom/spotify/android/paste/app/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;
move-result-object v0
invoke-virtual {v0, v9}, Lcom/spotify/android/paste/app/b;->a(Landroid/view/View;)Lcom/spotify/android/paste/app/b;
move-result-object v0
invoke-virtual {v0, v8}, Lcom/spotify/android/paste/app/b;->a(I)Lcom/spotify/android/paste/app/b;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/android/paste/app/b;->a()Lcom/spotify/android/paste/app/a;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/android/paste/app/a;->show()V
return-void
:cond_5b
const v3, 0x7f0f002d
const v2, 0x7f0f0027
const v1, 0x7f0f002b
const v0, 0x7f0f0029
move v6, v0
move v7, v1
move v8, v3
move v0, v2
goto :goto_12
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a;->b:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/a;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a;->d:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/a;)Lcom/spotify/mobile/android/ui/adapter/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a;->e:Lcom/spotify/mobile/android/ui/adapter/a;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 9
const v0, 0x7f030060
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a028d
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a;->a:Landroid/widget/ListView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a;->a:Landroid/widget/ListView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const v3, 0x7f010178
invoke-static {v2, v3}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v2
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/a;->a:Landroid/widget/ListView;
invoke-static {v0, v2}, Lcom/spotify/android/paste/widget/h;->i(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v0
const v2, 0x7f0f0224
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/ui/fragments/a;->b(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
new-instance v2, Lcom/spotify/android/paste/graphics/f;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aR:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {v2, v3, v4}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
const v4, 0x7f010187
invoke-static {v3, v4}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/spotify/android/paste/graphics/f;->a(Landroid/content/res/ColorStateList;)V
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;
move-result-object v3
invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;
move-result-object v2
sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
new-instance v2, Lcom/spotify/mobile/android/ui/adapter/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/adapter/a;-><init>(Landroid/content/Context;)V
iput-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/a;->e:Lcom/spotify/mobile/android/ui/adapter/a;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/a;->a:Landroid/widget/ListView;
const/4 v3, 0x0
const/4 v4, 0x1
invoke-virtual {v2, v0, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a;->a:Landroid/widget/ListView;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/a;->e:Lcom/spotify/mobile/android/ui/adapter/a;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a;->a:Landroid/widget/ListView;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/a;->f:Landroid/widget/AdapterView$OnItemClickListener;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return-object v1
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "folder_uri"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a;->c:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "item_uri"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a;->b:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "default_name"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/a;->d:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/a;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a014f
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/a;->g:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-void
.end method