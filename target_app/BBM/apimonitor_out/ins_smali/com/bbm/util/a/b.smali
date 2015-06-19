.class public final Lcom/bbm/util/a/b;
.super Ljava/lang/Object;
.source "GlympseInfoWindowAdapter.java"
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
.field private final a:Landroid/content/Context;
.field private final b:Lcom/bbm/ui/activities/xo;
.field private final c:Ljava/util/List;
.field private final d:Lcom/bbm/d/es;
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/bbm/d/es;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/ui/activities/xo;
invoke-direct {v0}, Lcom/bbm/ui/activities/xo;-><init>()V
iput-object v0, p0, Lcom/bbm/util/a/b;->b:Lcom/bbm/ui/activities/xo;
iput-object p1, p0, Lcom/bbm/util/a/b;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/bbm/util/a/b;->c:Ljava/util/List;
iput-object p3, p0, Lcom/bbm/util/a/b;->d:Lcom/bbm/d/es;
return-void
.end method
.method private a(Lcom/glympse/android/api/GUser;)Landroid/view/View;
.registers 10
iget-object v0, p0, Lcom/bbm/util/a/b;->a:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03012e
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v5
const v0, 0x7f0a05af
invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
const v1, 0x7f0a05ae
invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/LinearLayout;
const v2, 0x7f0a05b0
invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Lcom/bbm/ui/InlineImageTextView;
const v3, 0x7f0a05b1
invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v4
invoke-interface {v4}, Lcom/glympse/android/api/GImage;->getState()I
move-result v6
const/4 v7, 0x2
if-ne v6, v7, :cond_76
invoke-interface {v4}, Lcom/glympse/android/api/GImage;->getDrawable()Lcom/glympse/android/core/GDrawable;
move-result-object v4
check-cast v4, Lcom/glympse/android/ui/GDrawableExt;
if-eqz v4, :cond_58
invoke-interface {v4}, Lcom/glympse/android/ui/GDrawableExt;->getImage()Landroid/graphics/drawable/BitmapDrawable;
move-result-object v4
if-eqz v4, :cond_58
invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v6
if-eqz v6, :cond_58
invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v4
invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_58
:goto_58
iget-object v0, p0, Lcom/bbm/util/a/b;->c:Ljava/util/List;
iget-object v4, p0, Lcom/bbm/util/a/b;->b:Lcom/bbm/ui/activities/xo;
iget-object v6, p0, Lcom/bbm/util/a/b;->d:Lcom/bbm/d/es;
invoke-static {p1, v0, v4, v6}, Lcom/bbm/util/a/k;->a(Lcom/glympse/android/api/GUser;Ljava/util/List;Lcom/bbm/ui/activities/xo;Lcom/bbm/d/es;)I
move-result v0
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V
invoke-interface {p1}, Lcom/glympse/android/api/GUser;->getNickname()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/util/a/b;->a:Landroid/content/Context;
invoke-static {p1, v0}, Lcom/bbm/util/a/k;->a(Lcom/glympse/android/api/GUser;Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object v5
:cond_76
const v6, 0x7f0200d6
invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V
new-instance v6, Lcom/bbm/util/a/c;
invoke-direct {v6, p0, v4, v0}, Lcom/bbm/util/a/c;-><init>(Lcom/bbm/util/a/b;Lcom/glympse/android/api/GImage;Landroid/widget/ImageView;)V
invoke-interface {v4, v6}, Lcom/glympse/android/api/GImage;->addListener(Lcom/glympse/android/api/GEventListener;)Z
invoke-interface {v4}, Lcom/glympse/android/api/GImage;->load()Z
goto :goto_58
.end method
.method private static a(Ljava/lang/String;)Lcom/glympse/android/api/GUser;
.registers 2
invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;
move-result-object v0
iget-object v0, v0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0, p0}, Lcom/glympse/android/api/GUserManager;->findUserByUserId(Ljava/lang/String;)Lcom/glympse/android/api/GUser;
move-result-object v0
if-nez v0, :cond_1e
invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;
move-result-object v0
iget-object v0, v0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;
move-result-object v0
:cond_1e
return-object v0
.end method
.method public final getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
.registers 3
invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTitle()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/a/b;->a(Ljava/lang/String;)Lcom/glympse/android/api/GUser;
move-result-object v0
invoke-direct {p0, v0}, Lcom/bbm/util/a/b;->a(Lcom/glympse/android/api/GUser;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public final getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
.registers 3
invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getTitle()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/a/b;->a(Ljava/lang/String;)Lcom/glympse/android/api/GUser;
move-result-object v0
invoke-direct {p0, v0}, Lcom/bbm/util/a/b;->a(Lcom/glympse/android/api/GUser;)Landroid/view/View;
move-result-object v0
return-object v0
.end method