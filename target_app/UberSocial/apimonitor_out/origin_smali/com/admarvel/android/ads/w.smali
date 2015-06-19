.class Lcom/admarvel/android/ads/w;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field static a:I


# instance fields
.field final b:Ljava/lang/String;

.field private final c:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x186a1

    sput v0, Lcom/admarvel/android/ads/w;->a:I

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;)V
    .registers 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/admarvel/android/ads/w;->c:Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    sget v1, Lcom/admarvel/android/ads/w;->a:I

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/w;->setId(I)V

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/w;->setGravity(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/w;->setOrientation(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/w;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    const/high16 v2, 0x40a0

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    float-to-int v1, v1

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    const-string v4, "#33B5E5"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v3, Landroid/graphics/drawable/ClipDrawable;

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct {v3, v1, v4, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    new-instance v1, Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    const v5, 0x1010078

    move-object/from16 v0, p2

    invoke-direct {v1, v0, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "PROGRESS_BAR"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v2, 0x1

    const/high16 v3, 0x4208

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/high16 v5, 0x4210

    invoke-direct {p0, v5}, Lcom/admarvel/android/ads/w;->a(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x41c8

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v4, 0x11

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v5, v2

    float-to-int v2, v2

    invoke-direct {v4, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v2, Lcom/admarvel/android/ads/w$a;

    move-object/from16 v0, p2

    invoke-direct {v2, p0, v0}, Lcom/admarvel/android/ads/w$a;-><init>(Lcom/admarvel/android/ads/w;Landroid/content/Context;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "CLOSE_BUTTON"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/admarvel/android/ads/w$a;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcom/admarvel/android/ads/w$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "CLOSE_BUTTON_LAYOUT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v6, Lcom/admarvel/android/ads/w$1;

    invoke-direct {v6, p0}, Lcom/admarvel/android/ads/w$1;-><init>(Lcom/admarvel/android/ads/w;)V

    invoke-virtual {v2, v6}, Lcom/admarvel/android/ads/w$a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v6, "done"

    move-object/from16 v0, p2

    invoke-static {v6, v0}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getBitMapDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/admarvel/android/ads/w$a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/admarvel/android/ads/w$a;

    move-object/from16 v0, p2

    invoke-direct {v2, p0, v0}, Lcom/admarvel/android/ads/w$a;-><init>(Lcom/admarvel/android/ads/w;Landroid/content/Context;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "BACK_BUTTON"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/admarvel/android/ads/w$a;->setTag(Ljava/lang/Object;)V

    new-instance v6, Lcom/admarvel/android/ads/w$2;

    invoke-direct {v6, p0}, Lcom/admarvel/android/ads/w$2;-><init>(Lcom/admarvel/android/ads/w;)V

    invoke-virtual {v2, v6}, Lcom/admarvel/android/ads/w$a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v4}, Lcom/admarvel/android/ads/w$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/admarvel/android/ads/w$a;->setEnabled(Z)V

    new-instance v6, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "BACK_BUTTON_LAYOUT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/admarvel/android/ads/w$a;

    move-object/from16 v0, p2

    invoke-direct {v2, p0, v0}, Lcom/admarvel/android/ads/w$a;-><init>(Lcom/admarvel/android/ads/w;Landroid/content/Context;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "FORWARD_BUTTON"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/admarvel/android/ads/w$a;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcom/admarvel/android/ads/w$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/admarvel/android/ads/w$a;->setEnabled(Z)V

    new-instance v7, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/admarvel/android/ads/w$3;

    invoke-direct {v8, p0}, Lcom/admarvel/android/ads/w$3;-><init>(Lcom/admarvel/android/ads/w;)V

    invoke-virtual {v2, v8}, Lcom/admarvel/android/ads/w$a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "FORWARD_BUTTON_LAYOUT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v7, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v7, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/admarvel/android/ads/w$a;

    move-object/from16 v0, p2

    invoke-direct {v2, p0, v0}, Lcom/admarvel/android/ads/w$a;-><init>(Lcom/admarvel/android/ads/w;Landroid/content/Context;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "RELOAD_BUTTON"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/admarvel/android/ads/w$a;->setTag(Ljava/lang/Object;)V

    new-instance v8, Lcom/admarvel/android/ads/w$4;

    invoke-direct {v8, p0}, Lcom/admarvel/android/ads/w$4;-><init>(Lcom/admarvel/android/ads/w;)V

    invoke-virtual {v2, v8}, Lcom/admarvel/android/ads/w$a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v4}, Lcom/admarvel/android/ads/w$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    new-instance v9, Landroid/graphics/RectF;

    const/high16 v10, 0x4170

    const/high16 v11, 0x4220

    const/high16 v12, 0x42aa

    const/high16 v13, 0x4296

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v10, 0x0

    const/high16 v11, 0x4387

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    const/4 v9, 0x0

    const/high16 v10, 0x4120

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    const/high16 v9, 0x4220

    const/high16 v10, -0x3e90

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    const/high16 v9, -0x3de0

    const/high16 v10, -0x3e90

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    const/4 v9, 0x0

    const/high16 v10, 0x4120

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    new-instance v9, Landroid/graphics/RectF;

    const/high16 v10, 0x40a0

    const/high16 v11, 0x41f0

    const/high16 v12, 0x42be

    const/high16 v13, 0x42aa

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v10, 0x4387

    const/high16 v11, -0x3c79

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    new-instance v9, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v10, Landroid/graphics/drawable/shapes/PathShape;

    const/high16 v11, 0x42c8

    const/high16 v12, 0x42c8

    invoke-direct {v10, v8, v11, v12}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    invoke-direct {v9, v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    const/4 v10, -0x1

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v9}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    sget-object v10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v2, v9}, Lcom/admarvel/android/ads/w$a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v8, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "RELOAD_BUTTON_LAYOUT"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v8, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/admarvel/android/ads/w$a;

    move-object/from16 v0, p2

    invoke-direct {v2, p0, v0}, Lcom/admarvel/android/ads/w$a;-><init>(Lcom/admarvel/android/ads/w;Landroid/content/Context;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "BROWSER_BUTTON"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/admarvel/android/ads/w$a;->setTag(Ljava/lang/Object;)V

    new-instance v8, Lcom/admarvel/android/ads/w$5;

    invoke-direct {v8, p0}, Lcom/admarvel/android/ads/w$5;-><init>(Lcom/admarvel/android/ads/w;)V

    invoke-virtual {v2, v8}, Lcom/admarvel/android/ads/w$a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v4}, Lcom/admarvel/android/ads/w$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v4, "open_url"

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getBitMapDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/admarvel/android/ads/w$a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "BROWSER_BUTTON_LAYOUT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    const/high16 v3, 0x4220

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    invoke-static {v2, v3, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v8, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v8}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v3, v8}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    const-string v9, "#FF1D1C1D"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    float-to-int v2, v2

    invoke-direct {v8, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v9, 0x11

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "BUTTON_BAR_LAYOUT"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v8, 0x42c8

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/w;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/admarvel/android/ads/w;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(F)I
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method static synthetic a(Lcom/admarvel/android/ads/w;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/w;->c:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private b()V
    .registers 4

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WEBVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->goBack()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->a()V

    :cond_2d
    return-void
.end method

.method static synthetic b(Lcom/admarvel/android/ads/w;)V
    .registers 1

    invoke-direct {p0}, Lcom/admarvel/android/ads/w;->b()V

    return-void
.end method

.method private c()V
    .registers 4

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WEBVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->goForward()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->a()V

    :cond_2d
    return-void
.end method

.method static synthetic c(Lcom/admarvel/android/ads/w;)V
    .registers 1

    invoke-direct {p0}, Lcom/admarvel/android/ads/w;->c()V

    return-void
.end method

.method private d()V
    .registers 4

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WEBVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->reload()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->a()V

    return-void
.end method

.method static synthetic d(Lcom/admarvel/android/ads/w;)V
    .registers 1

    invoke-direct {p0}, Lcom/admarvel/android/ads/w;->d()V

    return-void
.end method

.method private e()V
    .registers 4

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WEBVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/admarvel/android/ads/w;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_6d

    instance-of v2, v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    if-eqz v2, :cond_6d

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->startActivity(Landroid/content/Intent;)V

    :cond_52
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->c()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_63

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/admarvel/android/ads/i;->b()Z

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->b()V

    :cond_63
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->a()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_6e

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->finish()V

    :cond_6d
    :goto_6d
    return-void

    :cond_6e
    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->finish()V

    goto :goto_6d
.end method

.method static synthetic e(Lcom/admarvel/android/ads/w;)V
    .registers 1

    invoke-direct {p0}, Lcom/admarvel/android/ads/w;->e()V

    return-void
.end method


# virtual methods
.method a()V
    .registers 9

    const/high16 v3, 0x41f0

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/high16 v1, 0x4248

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v1, 0x42a0

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    const/high16 v1, -0x3d90

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    const/high16 v1, -0x3d60

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WEBVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BACK_BUTTON_LAYOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/w;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BACK_BUTTON"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/w$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "FORWARD_BUTTON_LAYOUT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/admarvel/android/ads/w;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FORWARD_BUTTON"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/w$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "BROWSER_BUTTON_LAYOUT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/admarvel/android/ads/w;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/admarvel/android/ads/w;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "BROWSER_BUTTON"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/admarvel/android/ads/w$a;

    const-string v4, ""

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->canGoBack()Z

    move-result v4

    if-eqz v4, :cond_131

    invoke-virtual {v1, v7}, Lcom/admarvel/android/ads/w$a;->setEnabled(Z)V

    const-string v4, "backward.png"

    const-string v4, "backward"

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getBitMapDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    :goto_f5
    invoke-virtual {v1, v4}, Lcom/admarvel/android/ads/w$a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v1, ""

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_141

    invoke-virtual {v2, v7}, Lcom/admarvel/android/ads/w$a;->setEnabled(Z)V

    const-string v1, "resume.png"

    const-string v1, "resume"

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getBitMapDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    :goto_10f
    invoke-virtual {v2, v1}, Lcom/admarvel/android/ads/w$a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "open_url"

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getBitMapDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/admarvel/android/ads/w$a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_151

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_151

    invoke-virtual {v3, v7}, Lcom/admarvel/android/ads/w$a;->setEnabled(Z)V

    :goto_130
    return-void

    :cond_131
    invoke-virtual {v1, v6}, Lcom/admarvel/android/ads/w$a;->setEnabled(Z)V

    const-string v4, "backward_disable.png"

    const-string v4, "backward_disable"

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getBitMapDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    goto :goto_f5

    :cond_141
    invoke-virtual {v2, v6}, Lcom/admarvel/android/ads/w$a;->setEnabled(Z)V

    const-string v1, "resume_disable.png"

    const-string v1, "resume_disable"

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getBitMapDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_10f

    :cond_151
    invoke-virtual {v3, v6}, Lcom/admarvel/android/ads/w$a;->setEnabled(Z)V

    goto :goto_130
.end method

.method public setVisibility(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/admarvel/android/ads/w;->a()V

    :cond_8
    return-void
.end method
