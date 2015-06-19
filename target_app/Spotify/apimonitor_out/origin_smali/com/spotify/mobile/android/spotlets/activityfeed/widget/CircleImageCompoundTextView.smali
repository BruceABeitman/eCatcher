.class public Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/picasso/ai;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010194

    invoke-static {v0, p0, v1}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->setGravity(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010194

    invoke-static {v0, p0, v1}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->setGravity(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010194

    invoke-static {v0, p0, v1}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .registers 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/spotify/mobile/android/ui/b/a;->a()Lcom/spotify/mobile/android/util/dg;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/util/dg;->a(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v3, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p1, v2, v2, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_15
    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .registers 11

    const/16 v6, 0x21

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p2, p3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_23
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v2, v5, [I

    const v3, 0x7f010197

    aput v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v3, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, p1, v2, v2, v2}, Lcom/spotify/mobile/android/spotlets/activityfeed/widget/CircleImageCompoundTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_15
    return-void
.end method
