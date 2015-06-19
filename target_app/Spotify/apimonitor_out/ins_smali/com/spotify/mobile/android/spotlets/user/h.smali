.class public final Lcom/spotify/mobile/android/spotlets/user/h;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/follow/b;
.field private final a:Landroid/content/Context;
.field private final b:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
.field private final c:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;Ljava/lang/String;)V
.registers 10
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/h;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/user/h;->b:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/user/h;->c:Ljava/lang/String;
const-class v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/h;->b:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
array-length v3, v2
const/4 v1, 0x0
:goto_15
if-ge v1, v3, :cond_2a
aget-object v4, v2, v1
invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getFollowData()Lcom/spotify/mobile/android/spotlets/follow/a;
move-result-object v5
invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a(Lcom/spotify/mobile/android/spotlets/follow/a;)V
invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getUri()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4, p0}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/follow/b;)V
add-int/lit8 v1, v1, 0x1
goto :goto_15
:cond_2a
return-void
.end method
.method public final a()V
.registers 6
const-class v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/h;->b:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
array-length v3, v2
const/4 v1, 0x0
:goto_c
if-ge v1, v3, :cond_1a
aget-object v4, v2, v1
invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getUri()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4, p0}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->b(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/follow/b;)V
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_1a
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/follow/a;)V
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/h;->notifyDataSetChanged()V
return-void
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/h;->b:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
array-length v0, v0
return v0
.end method
.method public final getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/h;->b:[Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
aget-object v0, v0, p1
return-object v0
.end method
.method public final getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 15
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/user/h;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getFollowData()Lcom/spotify/mobile/android/spotlets/follow/a;
move-result-object v4
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/h;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
if-nez p2, :cond_123
new-instance p2, Lcom/spotify/android/paste/widget/ListItemView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/h;->a:Landroid/content/Context;
invoke-direct {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/h;->a:Landroid/content/Context;
const/high16 v2, 0x41d0
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-static {v2, v3}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v3
new-instance v2, Lcom/spotify/android/paste/graphics/f;
sget-object v6, Lcom/spotify/android/paste/graphics/SpotifyIcon;->ca:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {v2, v1, v6}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
const v6, 0x7f010187
invoke-static {v1, v6}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I
move-result v6
invoke-virtual {v2, v6}, Lcom/spotify/android/paste/graphics/f;->a(I)V
new-instance v6, Lcom/spotify/android/paste/graphics/f;
sget-object v7, Lcom/spotify/android/paste/graphics/SpotifyIcon;->l:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {v6, v1, v7}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v8, 0x7f0900f5
invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I
move-result v7
invoke-virtual {v6, v7}, Lcom/spotify/android/paste/graphics/f;->a(I)V
invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/spotify/android/paste/graphics/d;
move-result-object v2
invoke-static {v1, v6}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/spotify/android/paste/graphics/d;
move-result-object v6
new-instance v7, Landroid/graphics/drawable/StateListDrawable;
invoke-direct {v7}, Landroid/graphics/drawable/StateListDrawable;-><init>()V
const/4 v8, 0x1
new-array v8, v8, [I
const/4 v9, 0x0
const v10, -0x10100a0
aput v10, v8, v9
invoke-virtual {v7, v8, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
const/4 v2, 0x1
new-array v2, v2, [I
const/4 v8, 0x0
const v9, 0x10100a0
aput v9, v2, v8
invoke-virtual {v7, v2, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V
new-instance v2, Lcom/spotify/android/paste/widget/CheckableImageButton;
invoke-direct {v2, v1}, Lcom/spotify/android/paste/widget/CheckableImageButton;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v2, v1}, Lcom/spotify/android/paste/widget/CheckableImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v2, v7}, Lcom/spotify/android/paste/widget/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v2, v1}, Lcom/spotify/android/paste/widget/CheckableImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
const/4 v1, 0x0
invoke-virtual {v2, v1}, Lcom/spotify/android/paste/widget/CheckableImageButton;->setBackgroundResource(I)V
const/4 v1, 0x0
const/4 v3, 0x0
const/4 v6, 0x0
const/4 v7, 0x0
invoke-virtual {v2, v1, v3, v6, v7}, Lcom/spotify/android/paste/widget/CheckableImageButton;->setPadding(IIII)V
const/4 v1, 0x0
invoke-virtual {v2, v1}, Lcom/spotify/android/paste/widget/CheckableImageButton;->setFocusable(Z)V
const v1, 0x7f0a0142
invoke-virtual {v2, v1}, Landroid/view/View;->setId(I)V
invoke-virtual {p2, v2}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->g()V
:goto_a0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getImageHttpUrl()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_135
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
move-object v3, v1
:goto_ab
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/h;->a:Landroid/content/Context;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/stuff/k;->g(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v6
const-class v1, Lcom/spotify/mobile/android/util/df;
invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v1
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-eqz v7, :cond_c4
const/4 v3, 0x0
:cond_c4
invoke-virtual {v1, v3}, Lcom/squareup/picasso/Picasso;->a(Ljava/lang/String;)Lcom/squareup/picasso/ad;
move-result-object v1
invoke-virtual {v1, v6}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v1
invoke-virtual {v1, v6}, Lcom/squareup/picasso/ad;->b(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v1
invoke-virtual {p2}, Lcom/spotify/android/paste/widget/ListItemView;->a()Landroid/widget/ImageView;
move-result-object v3
invoke-static {v3}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getDisplayName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V
invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/follow/a;->b()I
move-result v1
const v3, 0x7f0e0016
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v6, v7
invoke-virtual {v5, v3, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->c(Ljava/lang/CharSequence;)V
move-object v1, v2
check-cast v1, Landroid/widget/Checkable;
invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/follow/a;->d()Z
move-result v3
invoke-interface {v1, v3}, Landroid/widget/Checkable;->setChecked(Z)V
new-instance v1, Lcom/spotify/mobile/android/spotlets/user/h$1;
invoke-direct {v1, p0, v0, v2}, Lcom/spotify/mobile/android/spotlets/user/h$1;-><init>(Lcom/spotify/mobile/android/spotlets/user/h;Lcom/spotify/mobile/android/spotlets/user/ProfileModel;Landroid/view/View;)V
invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfileModel;->getUsername()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_12e
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/h;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12e
const/4 v0, 0x1
:goto_11b
if-eqz v0, :cond_130
const/16 v0, 0x8
invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V
:goto_122
return-object p2
:cond_123
check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;
const v1, 0x7f0a0142
invoke-virtual {p2, v1}, Lcom/spotify/android/paste/widget/ListItemView;->findViewById(I)Landroid/view/View;
move-result-object v2
goto/16 :goto_a0
:cond_12e
const/4 v0, 0x0
goto :goto_11b
:cond_130
const/4 v0, 0x0
invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V
goto :goto_122
:cond_135
move-object v3, v1
goto/16 :goto_ab
.end method