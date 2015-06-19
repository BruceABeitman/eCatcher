.class public Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/graphics/drawable/Drawable;

.field private final g:Lcom/spotify/android/paste/graphics/f;

.field private final h:Ljava/text/DateFormat;

.field private i:Landroid/view/ViewGroup;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/stuff/k;->g(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->f:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/spotify/android/paste/graphics/f;

    sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->Y:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {v0, p1, v1}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->g:Lcom/spotify/android/paste/graphics/f;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->g:Lcom/spotify/android/paste/graphics/f;

    const v1, 0x7f010190

    invoke-static {p1, v1}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->g:Lcom/spotify/android/paste/graphics/f;

    const/high16 v1, 0x41a0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(F)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE d MMMM y HH:mm"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->h:Ljava/text/DateFormat;

    const v0, 0x7f0300d8

    invoke-static {p1, v0, p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v0, 0x4180

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {p0, v3, v0, v3, v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->setPadding(IIII)V

    const v0, 0x7f0a039d

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a039e

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a03a0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->c:Landroid/widget/TextView;

    const v0, 0x7f0a01fc

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->d:Landroid/widget/TextView;

    const v0, 0x7f0a0219

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->d:Landroid/widget/TextView;

    const/high16 v1, 0x40c0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->b:Landroid/widget/ImageView;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView$1;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView$1;-><init>(Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView$2;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView$2;-><init>(Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a024e

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->i:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->i:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/spotify/mobile/android/ui/stuff/h;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;)V
    .registers 12

    const/4 v1, 0x4

    const/4 v9, 0x0

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0xd

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->b()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->h:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->a(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_ca

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0f02d0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, ": "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5f
    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->a:Landroid/widget/ImageView;

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->d()Z

    move-result v0

    if-eqz v0, :cond_f8

    move v0, v1

    :goto_68
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_7c
    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->Y:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->i()I

    move-result v4

    packed-switch v4, :pswitch_data_136

    :goto_85
    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->g:Lcom/spotify/android/paste/graphics/f;

    invoke-virtual {v4, v0}, Lcom/spotify/android/paste/graphics/f;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->j:Ljava/lang/String;

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->g:Lcom/spotify/android/paste/graphics/f;

    invoke-virtual {v0, v3, v9, v9, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->e:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->i:Landroid/view/ViewGroup;

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->q()Z

    move-result v3

    if-eqz v3, :cond_134

    :goto_c6
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    :cond_ca
    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->b(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f01018f

    invoke-static {v7, v8}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v7, 0x21

    invoke-virtual {v5, v6, v2, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_40

    :cond_f8
    move v0, v2

    goto/16 :goto_68

    :cond_fb
    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/phoenixinbox/d;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/phoenixinbox/InboxItemView;->b:Landroid/widget/ImageView;

    invoke-static {v4}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V

    goto/16 :goto_7c

    :pswitch_124
    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aG:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    goto/16 :goto_85

    :pswitch_128
    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->a:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    goto/16 :goto_85

    :pswitch_12c
    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->c:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    goto/16 :goto_85

    :pswitch_130
    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->Y:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    goto/16 :goto_85

    :cond_134
    move v2, v1

    goto :goto_c6

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_124
        :pswitch_128
        :pswitch_12c
        :pswitch_130
    .end packed-switch
.end method
