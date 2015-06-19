.class public final Lcom/spotify/mobile/android/ui/cell/b;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private final a:Landroid/graphics/drawable/Drawable;
.field private final b:Landroid/graphics/drawable/Drawable;
.field private final c:Landroid/graphics/drawable/Drawable;
.field private final d:Landroid/graphics/drawable/Drawable;
.field private final e:Landroid/graphics/drawable/Drawable;
.field private f:Lcom/spotify/mobile/android/util/df;
.field private g:I
.field private h:Lcom/spotify/mobile/android/spotlets/discover/c/a;
.field private final i:Landroid/view/View$OnClickListener;
.method public constructor <init>(Landroid/content/Context;ILcom/spotify/mobile/android/spotlets/discover/c/a;)V
.registers 11
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/b;->f:Lcom/spotify/mobile/android/util/df;
new-instance v0, Lcom/spotify/mobile/android/ui/cell/b$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/cell/b$1;-><init>(Lcom/spotify/mobile/android/ui/cell/b;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/b;->i:Landroid/view/View$OnClickListener;
if-lez p2, :cond_84
const/4 v0, 0x1
:goto_18
const-string v2, "Each row should have at least one item"
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
invoke-static {p1}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/b;->a:Landroid/graphics/drawable/Drawable;
invoke-static {p1}, Lcom/spotify/mobile/android/ui/stuff/k;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/b;->b:Landroid/graphics/drawable/Drawable;
invoke-static {p1}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/b;->c:Landroid/graphics/drawable/Drawable;
invoke-static {p1}, Lcom/spotify/mobile/android/ui/stuff/k;->d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/b;->d:Landroid/graphics/drawable/Drawable;
sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aH:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/b;->e:Landroid/graphics/drawable/Drawable;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/cell/b;->h:Lcom/spotify/mobile/android/spotlets/discover/c/a;
iput p2, p0, Lcom/spotify/mobile/android/ui/cell/b;->g:I
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/cell/b;->setOrientation(I)V
const v0, 0x7f0201ce
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/b;->setBackgroundResource(I)V
iget v0, p0, Lcom/spotify/mobile/android/ui/cell/b;->g:I
int-to-float v0, v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/b;->setWeightSum(F)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/b;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f0b003d
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
move v0, v1
:goto_5c
if-ge v0, p2, :cond_86
new-instance v3, Lcom/spotify/mobile/android/ui/view/f;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/b;->getContext()Landroid/content/Context;
move-result-object v4
invoke-direct {v3, v4}, Lcom/spotify/mobile/android/ui/view/f;-><init>(Landroid/content/Context;)V
const v4, 0x7f0a0284
invoke-virtual {v3, v4}, Lcom/spotify/mobile/android/ui/view/f;->findViewById(I)Landroid/view/View;
move-result-object v4
iget-object v5, p0, Lcom/spotify/mobile/android/ui/cell/b;->i:Landroid/view/View$OnClickListener;
invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v4, Landroid/widget/LinearLayout$LayoutParams;
const/4 v5, -0x2
const/high16 v6, 0x3f80
invoke-direct {v4, v1, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {p0, v3, v0, v4}, Lcom/spotify/mobile/android/ui/cell/b;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
add-int/lit8 v0, v0, 0x1
goto :goto_5c
:cond_84
move v0, v1
goto :goto_18
:cond_86
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/cell/b;)Lcom/spotify/mobile/android/spotlets/discover/c/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/b;->h:Lcom/spotify/mobile/android/spotlets/discover/c/a;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/discover/model/Story;)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f()Lcom/spotify/mobile/android/util/SpotifyLink;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->al:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
if-ne v0, v1, :cond_1b
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->i()Lcom/spotify/mobile/android/util/SpotifyLink;
move-result-object v0
if-eqz v0, :cond_1b
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->i()Lcom/spotify/mobile/android/util/SpotifyLink;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v0
:goto_1a
return-object v0
:cond_1b
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f()Lcom/spotify/mobile/android/util/SpotifyLink;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v0
goto :goto_1a
.end method
.method public final a()V
.registers 4
const/4 v0, 0x0
move v2, v0
:goto_2
iget v0, p0, Lcom/spotify/mobile/android/ui/cell/b;->g:I
if-ge v2, v0, :cond_23
invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/ui/cell/b;->getChildAt(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/f;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/spotlets/discover/model/Story;
if-eqz v1, :cond_1f
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/f;->c()Lcom/spotify/mobile/android/ui/view/PlayButton;
move-result-object v0
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->o()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/PlayButton;->a(Z)V
:cond_1f
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_2
:cond_23
return-void
.end method
.method public final a(Ljava/util/Map;Ljava/util/List;Lcom/spotify/mobile/android/a/b;)V
.registers 15
const/4 v0, 0x0
move v8, v0
:goto_2
iget v0, p0, Lcom/spotify/mobile/android/ui/cell/b;->g:I
if-ge v8, v0, :cond_238
invoke-virtual {p0, v8}, Lcom/spotify/mobile/android/ui/cell/b;->getChildAt(I)Landroid/view/View;
move-result-object v0
move-object v6, v0
check-cast v6, Lcom/spotify/mobile/android/ui/view/f;
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v0
if-ge v8, v0, :cond_22e
invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
move-object v7, v0
check-cast v7, Lcom/spotify/mobile/android/spotlets/discover/model/Story;
invoke-virtual {v6, v7}, Lcom/spotify/mobile/android/ui/view/f;->setTag(Ljava/lang/Object;)V
invoke-virtual {v6}, Lcom/spotify/mobile/android/ui/view/f;->d()V
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->n()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
check-cast v0, Landroid/text/Spannable;
new-instance v1, Lcom/spotify/mobile/android/ui/cell/b$2;
invoke-direct {v1, p0, v7}, Lcom/spotify/mobile/android/ui/cell/b$2;-><init>(Lcom/spotify/mobile/android/ui/cell/b;Lcom/spotify/mobile/android/spotlets/discover/model/Story;)V
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/HtmlUtil;->a(Landroid/text/Spannable;Lcom/spotify/mobile/android/util/bd;)V
invoke-virtual {v6}, Lcom/spotify/mobile/android/ui/view/f;->a()Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->e()I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_1b7
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->m()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1b7
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->m()Ljava/lang/String;
move-result-object v0
:goto_59
const-string v1, "Card\'s title can not be empty!"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/CharSequence;Ljava/lang/String;)V
invoke-virtual {v6, v0}, Lcom/spotify/mobile/android/ui/view/f;->a(Ljava/lang/CharSequence;)V
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->e()I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_1bd
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->h()Ljava/lang/String;
move-result-object v0
:goto_6c
invoke-virtual {v6, v0}, Lcom/spotify/mobile/android/ui/view/f;->b(Ljava/lang/CharSequence;)V
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->e()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v1
const/4 v2, 0x1
if-eq v1, v2, :cond_8d
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v1
const/4 v2, 0x2
if-eq v1, v2, :cond_8d
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
const/16 v1, 0x8
if-ne v0, v1, :cond_1d3
:cond_8d
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:goto_92
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_1f7
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->e()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->q()J
move-result-wide v2
invoke-static {v2, v3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->l()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_1da
const-string v0, ""
:goto_b4
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
const/4 v3, 0x3
if-ne v1, v3, :cond_1f1
invoke-virtual {v6, v2, v0}, Lcom/spotify/mobile/android/ui/view/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
:goto_be
invoke-virtual {v6}, Lcom/spotify/mobile/android/ui/view/f;->b()Landroid/widget/ImageView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->k()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/b;->f:Lcom/spotify/mobile/android/util/df;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/b;->d:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v6}, Lcom/spotify/mobile/android/ui/view/f;->b()Landroid/widget/ImageView;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V
:goto_e9
const/4 v0, 0x0
sget-object v1, Lcom/spotify/mobile/android/ui/cell/b$3;->a:[I
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f()Lcom/spotify/mobile/android/util/SpotifyLink;
move-result-object v2
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v2
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_23a
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/b;->b:Landroid/graphics/drawable/Drawable;
move v10, v0
move-object v0, v1
move v1, v10
:goto_102
if-eqz v1, :cond_108
invoke-static {v0}, Lcom/spotify/mobile/android/ui/b/b;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
move-result-object v0
:cond_108
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->b()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/ui/cell/b;->f:Lcom/spotify/mobile/android/util/df;
invoke-virtual {v3}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v3
invoke-virtual {v3, v2}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v2
invoke-virtual {v2, v0}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v0
if-eqz v1, :cond_225
invoke-virtual {v6}, Lcom/spotify/mobile/android/ui/view/f;->e()Landroid/widget/ImageView;
move-result-object v1
invoke-static {}, Lcom/spotify/mobile/android/ui/b/b;->a()Lcom/spotify/mobile/android/util/dg;
move-result-object v2
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;Lcom/spotify/mobile/android/util/dg;)Lcom/squareup/picasso/ai;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V
:goto_12f
invoke-virtual {v6}, Lcom/spotify/mobile/android/ui/view/f;->c()Lcom/spotify/mobile/android/ui/view/PlayButton;
move-result-object v0
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->o()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/PlayButton;->a(Z)V
new-instance v0, Lcom/spotify/mobile/android/a/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/b;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f()Lcom/spotify/mobile/android/util/SpotifyLink;
move-result-object v2
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->g:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v4, Lcom/spotify/mobile/android/util/ViewUri;->g:Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/a/a;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/a/b;)V
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->I:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
const-string v3, "story_id"
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->d()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v3, "story_music_uri"
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f()Lcom/spotify/mobile/android/util/SpotifyLink;
move-result-object v4
invoke-virtual {v4}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v3, v4}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v3, "action"
const-string v4, "play"
invoke-virtual {v2, v3, v4}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
new-instance v3, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v5, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->I:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v3, v4, v5}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
const-string v4, "story_id"
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->d()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v4, "story_music_uri"
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->f()Lcom/spotify/mobile/android/util/SpotifyLink;
move-result-object v5
invoke-virtual {v5}, Lcom/spotify/mobile/android/util/SpotifyLink;->e()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v4, "action"
const-string v5, "pause"
invoke-virtual {v3, v4, v5}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/a/a;->a(Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;Lcom/spotify/mobile/android/util/ClientEvent;)V
invoke-virtual {v6}, Lcom/spotify/mobile/android/ui/view/f;->c()Lcom/spotify/mobile/android/ui/view/PlayButton;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/view/PlayButton;->a(Lcom/spotify/mobile/android/ui/view/o;)V
const v0, 0x7f0a0284
invoke-virtual {v6, v0}, Lcom/spotify/mobile/android/ui/view/f;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
const/4 v0, 0x0
invoke-virtual {v6, v0}, Lcom/spotify/mobile/android/ui/view/f;->setVisibility(I)V
:goto_1b2
add-int/lit8 v0, v8, 0x1
move v8, v0
goto/16 :goto_2
:cond_1b7
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->g()Ljava/lang/String;
move-result-object v0
goto/16 :goto_59
:cond_1bd
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->m()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_1cd
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->h()Ljava/lang/String;
move-result-object v0
goto/16 :goto_6c
:cond_1cd
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->m()Ljava/lang/String;
move-result-object v0
goto/16 :goto_6c
:cond_1d3
const/4 v0, 0x1
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto/16 :goto_92
:cond_1da
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/b;->getContext()Landroid/content/Context;
move-result-object v0
const v3, 0x7f0f01ef
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-virtual {v7}, Lcom/spotify/mobile/android/spotlets/discover/model/Story;->l()Ljava/lang/String;
move-result-object v9
aput-object v9, v4, v5
invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_b4
:cond_1f1
const/4 v0, 0x0
invoke-virtual {v6, v2, v0}, Lcom/spotify/mobile/android/ui/view/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
goto/16 :goto_be
:cond_1f7
const/4 v0, 0x0
const/4 v1, 0x0
invoke-virtual {v6, v0, v1}, Lcom/spotify/mobile/android/ui/view/f;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
invoke-virtual {v6}, Lcom/spotify/mobile/android/ui/view/f;->b()Landroid/widget/ImageView;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
goto/16 :goto_e9
:pswitch_207
const/4 v0, 0x1
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/b;->d:Landroid/graphics/drawable/Drawable;
move v10, v0
move-object v0, v1
move v1, v10
goto/16 :goto_102
:pswitch_20f
const/4 v0, 0x1
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/b;->c:Landroid/graphics/drawable/Drawable;
move v10, v0
move-object v0, v1
move v1, v10
goto/16 :goto_102
:pswitch_217
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/b;->a:Landroid/graphics/drawable/Drawable;
move v10, v0
move-object v0, v1
move v1, v10
goto/16 :goto_102
:pswitch_21e
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/b;->e:Landroid/graphics/drawable/Drawable;
move v10, v0
move-object v0, v1
move v1, v10
goto/16 :goto_102
:cond_225
invoke-virtual {v6}, Lcom/spotify/mobile/android/ui/view/f;->e()Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V
goto/16 :goto_12f
:cond_22e
const/4 v0, 0x4
invoke-virtual {v6, v0}, Lcom/spotify/mobile/android/ui/view/f;->setVisibility(I)V
const/4 v0, 0x0
invoke-virtual {v6, v0}, Lcom/spotify/mobile/android/ui/view/f;->setTag(Ljava/lang/Object;)V
goto/16 :goto_1b2
:cond_238
return-void
nop
:pswitch_data_23a
.packed-switch 0x2
:pswitch_21e
:pswitch_217
:pswitch_20f
:pswitch_207
.end packed-switch
.end method