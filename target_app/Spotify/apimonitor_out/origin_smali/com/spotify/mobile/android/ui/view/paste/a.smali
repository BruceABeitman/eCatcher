.class public final Lcom/spotify/mobile/android/ui/view/paste/a;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const v5, 0x7f0900a8

    const/high16 v4, 0x3fa0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/paste/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030085

    invoke-static {v0, v1, p0}, Lcom/spotify/mobile/android/ui/view/paste/a;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a0219

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/paste/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->a:Landroid/widget/TextView;

    const v0, 0x7f0a01f8

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/paste/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a025a

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/paste/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->c:Landroid/widget/Button;

    const v0, 0x7f0a02f0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/paste/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/spotify/android/paste/graphics/f;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/paste/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->bj:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {v1, v0, v2}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/paste/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/graphics/f;->a(I)V

    const v0, 0x7f0a02f1

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/paste/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    mul-float/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/graphics/f;->a(F)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/spotify/android/paste/graphics/f;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/paste/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->aD:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {v1, v0, v2}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/paste/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/graphics/f;->a(I)V

    const v0, 0x7f0a02f2

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/paste/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    mul-float/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/spotify/android/paste/graphics/f;->a(F)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final a(I)V
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    div-int/lit8 v0, p1, 0x3c

    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    if-lez v1, :cond_2a

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/paste/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0235

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_24
    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2a
    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/paste/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0236

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method public final a(J)V
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_29

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_28
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->f:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->a:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/paste/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d
.end method

.method public final a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/paste/a;->c:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
