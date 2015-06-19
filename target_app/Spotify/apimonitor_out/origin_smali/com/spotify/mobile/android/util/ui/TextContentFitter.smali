.class public final Lcom/spotify/mobile/android/util/ui/TextContentFitter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:F

.field private final c:F

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;FLjava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "F",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    :goto_d
    const-string v2, "Minimum text size must be positive"

    invoke-static {v0, v2}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a:Landroid/widget/TextView;

    iput p3, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->b:F

    iput v1, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->c:F

    iput-object p4, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->d:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->e:Landroid/widget/TextView;

    return-void

    :cond_1d
    const/4 v0, 0x0

    goto :goto_d
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;FLjava/util/ArrayList;B)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/util/ui/TextContentFitter;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;FLjava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/util/ui/TextContentFitter;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    sget-boolean v1, Lcom/spotify/mobile/android/util/ab;->a:Z

    if-eqz v1, :cond_e

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_d
    return-void

    :cond_e
    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_d
.end method

.method private a(Landroid/text/Layout;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    move v1, v0

    :goto_6
    if-ge v1, v2, :cond_12

    invoke-virtual {p1, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_12
    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    iget v4, v3, Landroid/graphics/Rect;->right:I

    if-lt v2, v4, :cond_e

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v2, :cond_e

    const/4 v0, 0x1

    goto :goto_e
.end method

.method private static a(Landroid/widget/TextView;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    const-class v2, Landroid/widget/TextView;

    const-string v3, "mMaximum"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const-class v3, Landroid/widget/TextView;

    const-string v4, "mMaxMode"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const-class v4, Landroid/widget/TextView;

    const-string v5, "LINES"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_19
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_19} :catch_47

    move-result-object v4

    if-eqz v2, :cond_55

    if-eqz v3, :cond_55

    if-eqz v4, :cond_55

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :try_start_29
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    const v6, 0x7fffffff

    if-ge v5, v6, :cond_4a

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_46} :catch_4c
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_46} :catch_4f
    .catch Ljava/lang/NullPointerException; {:try_start_29 .. :try_end_46} :catch_52

    :goto_46
    return v0

    :catch_47
    move-exception v0

    move v0, v1

    goto :goto_46

    :cond_4a
    move v0, v1

    goto :goto_46

    :catch_4c
    move-exception v0

    move v0, v1

    goto :goto_46

    :catch_4f
    move-exception v0

    move v0, v1

    goto :goto_46

    :catch_52
    move-exception v0

    move v0, v1

    goto :goto_46

    :cond_55
    move v0, v1

    goto :goto_46
.end method


# virtual methods
.method public final a()Lcom/spotify/mobile/android/util/ui/TextContentFitter;
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/util/ui/TextContentFitter$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/ui/TextContentFitter$1;-><init>(Lcom/spotify/mobile/android/util/ui/TextContentFitter;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object p0
.end method

.method final b()V
    .registers 16

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-direct {p0, v3}, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a(Landroid/text/Layout;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;

    sget-object v1, Lcom/spotify/mobile/android/util/ui/TextContentFitter$2;->a:[I

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_c4

    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a()Lcom/spotify/mobile/android/util/ui/TextContentFitter;

    goto :goto_15

    :pswitch_35
    iget-object v0, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a:Landroid/widget/TextView;

    sget-boolean v1, Lcom/spotify/mobile/android/util/ab;->a:Z

    if-eqz v1, :cond_45

    invoke-static {v0}, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a(Landroid/widget/TextView;)Z

    invoke-virtual {v0}, Landroid/widget/TextView;->requestLayout()V

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_29

    :cond_45
    invoke-virtual {v0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    const v2, 0x7fffffff

    if-ge v1, v2, :cond_29

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_29

    :pswitch_54
    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget v1, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->b:F

    iget v0, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->c:F

    move v12, v0

    move v13, v1

    move-object v11, v3

    :goto_67
    add-float v0, v13, v12

    const/high16 v1, 0x4000

    div-float v14, v0, v1

    invoke-virtual {v4, v14}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {v11}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v0, Landroid/text/StaticLayout;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iget-object v5, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    invoke-virtual {v11}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-virtual {v11}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v7

    invoke-virtual {v11}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v8

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v10

    invoke-virtual {v11}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v11

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a(Landroid/text/Layout;)Z

    move-result v5

    if-eqz v5, :cond_bc

    move v1, v12

    move v3, v14

    :goto_a2
    sub-float v6, v1, v3

    const/high16 v7, 0x3f80

    cmpl-float v6, v6, v7

    if-lez v6, :cond_ac

    if-eqz v5, :cond_bf

    :cond_ac
    iget-object v0, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/spotify/mobile/android/util/ui/TextContentFitter;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_29

    :cond_bc
    move v1, v14

    move v3, v13

    goto :goto_a2

    :cond_bf
    move v12, v1

    move v13, v3

    move-object v11, v0

    goto :goto_67

    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_35
        :pswitch_54
    .end packed-switch
.end method
