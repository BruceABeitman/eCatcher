.class public final Lcom/spotify/mobile/android/ui/contextmenu/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/util/Set;
.field private b:Landroid/widget/ImageView;
.field private final c:Landroid/content/Context;
.field private final d:Lcom/spotify/mobile/android/ui/contextmenu/a;
.field private final e:I
.field private f:Landroid/widget/LinearLayout;
.field private g:Landroid/widget/ProgressBar;
.field private h:Lcom/spotify/android/paste/widget/e;
.field private i:Landroid/os/Handler;
.field private j:Z
.field private k:Ljava/lang/Runnable;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/ui/contextmenu/c;->a:Ljava/util/Set;
const v1, 0x7f0a012c
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/spotify/mobile/android/ui/contextmenu/c;->a:Ljava/util/Set;
const v1, 0x7f0a0128
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/a;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/c$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/contextmenu/c$1;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/c;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->k:Ljava/lang/Runnable;
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->d:Lcom/spotify/mobile/android/ui/contextmenu/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->d:Lcom/spotify/mobile/android/ui/contextmenu/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->c:Landroid/content/Context;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->c:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f090071
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->e:I
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->i:Landroid/os/Handler;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->j:Z
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/contextmenu/c;)Lcom/spotify/mobile/android/ui/contextmenu/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->d:Lcom/spotify/mobile/android/ui/contextmenu/a;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/contextmenu/c;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->g:Landroid/widget/ProgressBar;
return-object v0
.end method
.method final a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;Z)Landroid/widget/LinearLayout;
.registers 7
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->j:Z
if-nez v0, :cond_6e
move v0, v1
:goto_6
invoke-static {v0}, Lcom/google/common/base/i;->b(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->c:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v2, 0x7f030058
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->f:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->f:Landroid/widget/LinearLayout;
const v2, 0x7f0a027e
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->b:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->f:Landroid/widget/LinearLayout;
const v2, 0x7f0a027d
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->c:Landroid/content/Context;
const v3, 0x7f0101c5
invoke-static {v2, v0, v3}, Lcom/spotify/android/paste/widget/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/e;
move-result-object v2
iput-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->h:Lcom/spotify/android/paste/widget/e;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->h:Lcom/spotify/android/paste/widget/e;
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->f:Landroid/widget/LinearLayout;
const v2, 0x7f0a027f
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->g:Landroid/widget/ProgressBar;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->b:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->c:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f090026
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->j:Z
invoke-virtual {p0, p1, p2}, Lcom/spotify/mobile/android/ui/contextmenu/c;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->f:Landroid/widget/LinearLayout;
return-object v0
:cond_6e
const/4 v0, 0x0
goto :goto_6
.end method
.method final a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Z)V
.registers 15
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->j:Z
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->h:Lcom/spotify/android/paste/widget/e;
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v2
invoke-interface {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->e()Ljava/lang/String;
move-result-object v0
const-string v3, "http"
invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_99
invoke-static {v0}, Lcom/spotify/mobile/android/provider/i;->b(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
:goto_23
invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v3
new-instance v4, Lcom/spotify/mobile/android/ui/c/a;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->c:Landroid/content/Context;
const/4 v6, 0x0
invoke-direct {v4, v5, v6}, Lcom/spotify/mobile/android/ui/c/a;-><init>(Landroid/content/Context;B)V
invoke-virtual {v3, v4}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ad;
move-result-object v3
const v4, 0x7f02016e
invoke-virtual {v3, v4}, Lcom/squareup/picasso/ad;->a(I)Lcom/squareup/picasso/ad;
move-result-object v3
iget-object v4, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->b:Landroid/widget/ImageView;
invoke-virtual {v3, v4}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->c:Landroid/content/Context;
invoke-interface {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->f()Lcom/spotify/android/paste/graphics/SpotifyIcon;
move-result-object v3
invoke-static {v2, v3}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
invoke-interface {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->g()Z
move-result v2
if-eqz v2, :cond_9e
invoke-virtual {v1}, Lcom/spotify/android/paste/widget/e;->b()Landroid/widget/ImageView;
move-result-object v2
invoke-static {v2}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V
:goto_61
invoke-interface {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->g()Z
move-result v0
if-nez v0, :cond_70
invoke-virtual {v1}, Lcom/spotify/android/paste/widget/e;->b()Landroid/widget/ImageView;
move-result-object v0
iget v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->e:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V
:cond_70
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->h:Lcom/spotify/android/paste/widget/e;
invoke-interface {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/e;->a(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->h:Lcom/spotify/android/paste/widget/e;
invoke-interface {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/e;->b(Ljava/lang/CharSequence;)V
invoke-interface {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->i()Z
move-result v0
if-eqz v0, :cond_a6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->g:Landroid/widget/ProgressBar;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->i:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->k:Ljava/lang/Runnable;
const-wide/16 v2, 0xc8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto/16 :goto_4
:cond_99
invoke-static {v0}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
goto :goto_23
:cond_9e
invoke-virtual {v1}, Lcom/spotify/android/paste/widget/e;->b()Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
goto :goto_61
:cond_a6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->i:Landroid/os/Handler;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->k:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->g:Landroid/widget/ProgressBar;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->f:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->f:Landroid/widget/LinearLayout;
const v1, 0x7f0a0280
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V
const/4 v1, 0x0
invoke-interface {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->h()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_cd
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_168
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;
if-nez p2, :cond_15f
sget-object v2, Lcom/spotify/mobile/android/ui/contextmenu/c;->a:Ljava/util/Set;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->a()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_15f
const/4 v2, 0x1
move v3, v2
:goto_ed
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->c()Landroid/graphics/drawable/Drawable;
move-result-object v6
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->b()I
move-result v7
iget-object v8, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->c:Landroid/content/Context;
if-nez v6, :cond_162
const v2, 0x7f0101c2
:goto_fc
invoke-static {v8, v4, v2}, Lcom/spotify/android/paste/widget/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/e;
move-result-object v2
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->b()Landroid/widget/ImageView;
move-result-object v8
sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
if-eqz v6, :cond_112
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->b()Landroid/widget/ImageView;
move-result-object v8
invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_112
iget-object v6, p0, Lcom/spotify/mobile/android/ui/contextmenu/c;->c:Landroid/content/Context;
invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v2, v6}, Lcom/spotify/android/paste/widget/e;->a(Ljava/lang/CharSequence;)V
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;
move-result-object v6
invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I
move-result v7
invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I
move-result v8
invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I
move-result v9
invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I
move-result v10
const v11, 0x7f0200e0
invoke-virtual {v6, v11}, Landroid/view/View;->setBackgroundResource(I)V
invoke-virtual {v6, v10, v8, v9, v7}, Landroid/view/View;->setPadding(IIII)V
const/4 v6, 0x1
invoke-virtual {v2, v6}, Lcom/spotify/android/paste/widget/e;->d(Z)V
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;
move-result-object v6
new-instance v7, Lcom/spotify/mobile/android/ui/contextmenu/d;
const/4 v8, 0x0
invoke-direct {v7, p0, v1, v8}, Lcom/spotify/mobile/android/ui/contextmenu/d;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/c;Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;B)V
invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/e;->d()Z
move-result v1
if-eqz v1, :cond_166
if-nez v3, :cond_166
const/4 v1, 0x1
:goto_152
invoke-virtual {v2, v1}, Lcom/spotify/android/paste/widget/e;->a(Z)V
invoke-virtual {v2}, Lcom/spotify/android/paste/widget/e;->a()Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
move-object v1, v2
goto/16 :goto_cd
:cond_15f
const/4 v2, 0x0
move v3, v2
goto :goto_ed
:cond_162
const v2, 0x7f0101c3
goto :goto_fc
:cond_166
const/4 v1, 0x0
goto :goto_152
:cond_168
if-eqz v1, :cond_4
const/4 v0, 0x0
invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/e;->d(Z)V
goto/16 :goto_4
.end method