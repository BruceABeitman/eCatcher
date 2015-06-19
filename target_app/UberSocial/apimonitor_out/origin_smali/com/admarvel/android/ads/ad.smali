.class Lcom/admarvel/android/ads/ad;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field static a:I


# instance fields
.field public b:Z

.field c:Landroid/widget/LinearLayout;

.field final d:Ljava/lang/String;

.field e:Lcom/admarvel/android/ads/AdMarvelXMLReader;

.field f:Lcom/admarvel/android/ads/AdMarvelXMLElement;

.field private final g:Ljava/lang/ref/WeakReference;

.field private final h:Ljava/lang/ref/WeakReference;

.field private i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x186a1

    sput v0, Lcom/admarvel/android/ads/ad;->a:I

    return-void
.end method

.method constructor <init>(Lcom/admarvel/android/ads/p;Lcom/admarvel/android/ads/AdMarvelVideoActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/admarvel/android/ads/ad;->b:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/admarvel/android/ads/ad;->j:Z

    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/admarvel/android/ads/ad;->g:Ljava/lang/ref/WeakReference;

    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/admarvel/android/ads/ad;->h:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/admarvel/android/ads/ad;->i:Z

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/admarvel/android/ads/ad;->d:Ljava/lang/String;

    sget v2, Lcom/admarvel/android/ads/ad;->a:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ad;->setId(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x10

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ad;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ad;->setGravity(I)V

    const/4 v2, 0x1

    const/high16 v3, 0x4220

    invoke-virtual/range {p0 .. p0}, Lcom/admarvel/android/ads/ad;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v16

    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v6, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v5, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v2, 0x1

    const/high16 v3, 0x4200

    invoke-virtual/range {p0 .. p0}, Lcom/admarvel/android/ads/ad;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    float-to-int v2, v2

    invoke-direct {v4, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x5

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v2, 0x1

    const/high16 v3, 0x4210

    invoke-virtual/range {p0 .. p0}, Lcom/admarvel/android/ads/ad;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v2, v3, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v9, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    const/high16 v3, 0x40a0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/admarvel/android/ads/ad;->a(F)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/admarvel/android/ads/ad;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v2, v3, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x5

    invoke-virtual {v9, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v9, v2, v3, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v3, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v2, Lcom/admarvel/android/ads/AdMarvelXMLReader;

    invoke-direct {v2}, Lcom/admarvel/android/ads/AdMarvelXMLReader;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/admarvel/android/ads/ad;->e:Lcom/admarvel/android/ads/AdMarvelXMLReader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/admarvel/android/ads/ad;->e:Lcom/admarvel/android/ads/AdMarvelXMLReader;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->parseXMLString(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/admarvel/android/ads/ad;->e:Lcom/admarvel/android/ads/AdMarvelXMLReader;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLReader;->getParsedXMLData()Lcom/admarvel/android/ads/AdMarvelXMLElement;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/admarvel/android/ads/ad;->f:Lcom/admarvel/android/ads/AdMarvelXMLElement;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/admarvel/android/ads/ad;->f:Lcom/admarvel/android/ads/AdMarvelXMLElement;

    if-eqz v2, :cond_217

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/admarvel/android/ads/ad;->f:Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v3, "toolbar"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_217

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/admarvel/android/ads/ad;->f:Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v3, "toolbar"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    const-string v7, "#3E3E3E"

    if-nez v2, :cond_18a

    const/4 v3, 0x0

    :goto_117
    if-eqz v3, :cond_197

    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_124
    if-nez v2, :cond_1a3

    const/4 v3, 0x0

    :goto_127
    if-eqz v3, :cond_1b1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_12d
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/admarvel/android/ads/ad;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_217

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v6, "item"

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_217

    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/util/ArrayList;

    const/4 v2, 0x0

    move v15, v2

    :goto_152
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_217

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v7, "subtype"

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v7, "SystemItem"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1c7

    const-string v2, "UIBarButtonSystemItemFlexibleSpace"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b5

    :cond_186
    :goto_186
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_152

    :cond_18a
    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v8, "background"

    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_117

    :cond_197
    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_124

    :cond_1a3
    invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v7, "alpha"

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto/16 :goto_127

    :cond_1b1
    const/16 v3, 0xaf

    goto/16 :goto_12d

    :cond_1b5
    const-string v2, "UIBarButtonSystemItemFixedSpace"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_186

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/admarvel/android/ads/ad;->a(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Lcom/admarvel/android/ads/AdMarvelXMLElement;Landroid/view/ViewGroup;)V

    goto :goto_186

    :cond_1c7
    const-string v3, "Title"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1db

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object v10, v5

    move-object v11, v6

    move-object/from16 v12, p0

    invoke-direct/range {v7 .. v12}, Lcom/admarvel/android/ads/ad;->b(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Lcom/admarvel/android/ads/AdMarvelXMLElement;Landroid/view/ViewGroup;)V

    goto :goto_186

    :cond_1db
    const-string v3, "Image"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ed

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/admarvel/android/ads/ad;->c(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Lcom/admarvel/android/ads/AdMarvelXMLElement;Landroid/view/ViewGroup;)V

    goto :goto_186

    :cond_1ed
    const-string v3, "Timer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_201

    move-object/from16 v0, p2

    iget v3, v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->k:I

    if-lez v3, :cond_201

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/admarvel/android/ads/ad;->j:Z

    goto :goto_186

    :cond_201
    const-string v3, "Toggle"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_186

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move-object/from16 v13, p0

    invoke-direct/range {v7 .. v13}, Lcom/admarvel/android/ads/ad;->a(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Lcom/admarvel/android/ads/AdMarvelXMLElement;Landroid/view/ViewGroup;)V

    goto/16 :goto_186

    :cond_217
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    move/from16 v0, v16

    float-to-int v4, v0

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x3

    sget v4, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->VIEW_ID:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/admarvel/android/ads/ad;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/admarvel/android/ads/ad;->j:Z

    if-eqz v2, :cond_23d

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v9, v5}, Lcom/admarvel/android/ads/ad;->a(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_23d
    return-void
.end method

.method private a(F)F
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/admarvel/android/ads/ad;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;)V
    .registers 12

    const/4 v7, -0x1

    const/4 v3, -0x2

    const/high16 v6, 0x4200

    const/high16 v4, 0x40a0

    const/4 v5, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x5

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v2, 0x3f80

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v2, 0xf

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/admarvel/android/ads/ad;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TIMER_BUTTON_LAYOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setClickable(Z)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->addStatesFromChildren()Z

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v4}, Lcom/admarvel/android/ads/ad;->a(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v4}, Lcom/admarvel/android/ads/ad;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-string v3, "#0e78b9"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x10

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const-string v3, "time"

    invoke-virtual {p0}, Lcom/admarvel/android/ads/ad;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getBitMapDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v6}, Lcom/admarvel/android/ads/ad;->a(F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v6}, Lcom/admarvel/android/ads/ad;->a(F)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x10

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/ad;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Lcom/admarvel/android/ads/AdMarvelXMLElement;Landroid/view/ViewGroup;)V
    .registers 16

    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v8, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x4220

    invoke-direct {p0, v4}, Lcom/admarvel/android/ads/ad;->a(F)F

    move-result v4

    const-string v5, "#AAFFFFFF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "#AA3E3E3E"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    invoke-virtual {v0, v1, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/admarvel/android/ads/ad$d;

    invoke-direct {v1, p0, p1, p4, p3}, Lcom/admarvel/android/ads/ad$d;-><init>(Lcom/admarvel/android/ads/ad;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelXMLElement;Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v2, v1, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    if-nez v2, :cond_48

    :goto_47
    return-void

    :cond_48
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/ad$d;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v1, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v3, "done"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    const-string v0, "close"

    invoke-virtual {p0}, Lcom/admarvel/android/ads/ad;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getBitMapDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x4210

    invoke-direct {p0, v4}, Lcom/admarvel/android/ads/ad;->a(F)F

    move-result v4

    float-to-int v4, v4

    const/high16 v5, 0x4210

    invoke-direct {p0, v5}, Lcom/admarvel/android/ads/ad;->a(F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x35

    iput v4, p3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v3, "ADM_VIDEO_SYSTEM_ICON_DONE_BUTTON"

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/ad;->a(Landroid/widget/LinearLayout;)V

    :goto_8e
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_47

    :cond_92
    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, v1, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/admarvel/android/ads/ad;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/admarvel/android/util/AdMarvelBitmapDrawableUtils;->getBitMapDrawable(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/ad$d;->addView(Landroid/view/View;)V

    invoke-virtual {p5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_8e
.end method

.method private a(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Lcom/admarvel/android/ads/AdMarvelXMLElement;Landroid/view/ViewGroup;)V
    .registers 16

    :try_start_0
    new-instance v6, Landroid/widget/ViewSwitcher;

    invoke-direct {v6, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p4}, Landroid/widget/ViewSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->addStatesFromChildren()Z

    if-eqz p5, :cond_93

    invoke-virtual {p5}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "subitem"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/admarvel/android/ads/ad;->b:Z

    invoke-virtual {p5}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "subitem"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v7, v0

    const/4 v1, 0x0

    move v8, v1

    :goto_2c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_93

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/admarvel/android/ads/AdMarvelXMLElement;

    invoke-virtual {v5}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "SystemItem"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/admarvel/android/ads/ad;->a(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Lcom/admarvel/android/ads/AdMarvelXMLElement;Landroid/view/ViewGroup;)V

    :cond_53
    :goto_53
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_2c

    :cond_57
    const-string v2, "Title"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/admarvel/android/ads/ad;->b(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Lcom/admarvel/android/ads/AdMarvelXMLElement;Landroid/view/ViewGroup;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_66} :catch_67

    goto :goto_53

    :catch_67
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in addToggleButton API"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    :cond_82
    :goto_82
    return-void

    :cond_83
    :try_start_83
    const-string v2, "Image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/admarvel/android/ads/ad;->c(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Lcom/admarvel/android/ads/AdMarvelXMLElement;Landroid/view/ViewGroup;)V

    goto :goto_53

    :cond_93
    invoke-virtual {v6}, Landroid/widget/ViewSwitcher;->getChildCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_82

    invoke-virtual {p6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_9d} :catch_67

    goto :goto_82
.end method

.method private a(Landroid/view/View;)V
    .registers 6

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    instance-of v0, p1, Lcom/admarvel/android/ads/ad$d;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/admarvel/android/ads/ad$d;

    iget-object v1, p0, Lcom/admarvel/android/ads/ad;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->onUserInteraction()V

    iget-object v2, v0, Lcom/admarvel/android/ads/ad$d;->e:Ljava/util/List;

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/admarvel/android/ads/ad$d;->e:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Ljava/util/List;)V

    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ViewSwitcher;

    if-eqz v2, :cond_39

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewSwitcher;

    if-eqz v2, :cond_39

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getDisplayedChild()I

    move-result v3

    if-nez v3, :cond_4b

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showNext()V

    :cond_39
    :goto_39
    iget-object v2, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    if-eqz v2, :cond_4f

    iget-object v2, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v3, "open_url"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-direct {p0, v0}, Lcom/admarvel/android/ads/ad;->a(Lcom/admarvel/android/ads/ad$d;)V

    goto :goto_2

    :cond_4b
    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showPrevious()V

    goto :goto_39

    :cond_4f
    iget-object v2, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    if-eqz v2, :cond_67

    iget-object v2, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v3, "play_movie"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v1, v0, Lcom/admarvel/android/ads/ad$d;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/admarvel/android/ads/ad$d;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/admarvel/android/ads/ad;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_67
    iget-object v2, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    if-eqz v2, :cond_7b

    iget-object v2, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v3, "done"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7b

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->c()V

    goto :goto_2

    :cond_7b
    iget-object v1, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    if-eqz v1, :cond_8e

    iget-object v1, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-direct {p0}, Lcom/admarvel/android/ads/ad;->d()V

    goto/16 :goto_2

    :cond_8e
    iget-object v1, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    if-eqz v1, :cond_a1

    iget-object v1, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v2, "replay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-direct {p0}, Lcom/admarvel/android/ads/ad;->c()V

    goto/16 :goto_2

    :cond_a1
    iget-object v1, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    if-eqz v1, :cond_b5

    iget-object v1, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v2, "pause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/admarvel/android/ads/ad;->a(Z)V

    goto/16 :goto_2

    :cond_b5
    iget-object v1, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    if-eqz v1, :cond_c8

    iget-object v1, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v2, "resume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c8

    invoke-direct {p0}, Lcom/admarvel/android/ads/ad;->e()V

    goto/16 :goto_2

    :cond_c8
    iget-object v1, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    if-eqz v1, :cond_db

    iget-object v1, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v2, "mute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_db

    invoke-direct {p0}, Lcom/admarvel/android/ads/ad;->f()V

    goto/16 :goto_2

    :cond_db
    iget-object v1, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v1, "unmute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/admarvel/android/ads/ad;->g()V

    goto/16 :goto_2
.end method

.method private a(Lcom/admarvel/android/ads/ad$d;)V
    .registers 9

    const/4 v4, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/admarvel/android/ads/ad;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    if-eqz v1, :cond_3

    iget-object v0, p1, Lcom/admarvel/android/ads/ad$d;->d:Lcom/admarvel/android/ads/ad$c;

    sget-object v2, Lcom/admarvel/android/ads/ad$c;->a:Lcom/admarvel/android/ads/ad$c;

    if-ne v0, v2, :cond_62

    invoke-direct {p0, v4}, Lcom/admarvel/android/ads/ad;->a(Z)V

    :cond_17
    :goto_17
    iget-object v0, p1, Lcom/admarvel/android/ads/ad$d;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/admarvel/android/ads/ad$d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getEnableClickRedirect()Z

    move-result v0

    if-eqz v0, :cond_53

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->d:Z

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/admarvel/android/ads/AdMarvelActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "url"

    iget-object v3, p1, Lcom/admarvel/android/ads/ad$d;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "isInterstitial"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "isInterstitialClick"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "GUID"

    iget-object v3, p0, Lcom/admarvel/android/ads/ad;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->startActivity(Landroid/content/Intent;)V

    :cond_53
    invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;

    move-result-object v0

    iget-object v2, p1, Lcom/admarvel/android/ads/ad$d;->a:Ljava/lang/String;

    const-string v3, ""

    const/4 v5, 0x0

    const-string v6, ""

    invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    goto :goto_3

    :cond_62
    iget-object v0, p1, Lcom/admarvel/android/ads/ad$d;->d:Lcom/admarvel/android/ads/ad$c;

    sget-object v2, Lcom/admarvel/android/ads/ad$c;->b:Lcom/admarvel/android/ads/ad$c;

    if-ne v0, v2, :cond_6c

    invoke-direct {p0}, Lcom/admarvel/android/ads/ad;->d()V

    goto :goto_17

    :cond_6c
    iget-object v0, p1, Lcom/admarvel/android/ads/ad$d;->d:Lcom/admarvel/android/ads/ad$c;

    sget-object v2, Lcom/admarvel/android/ads/ad$c;->c:Lcom/admarvel/android/ads/ad$c;

    if-ne v0, v2, :cond_17

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->c()V

    goto :goto_17
.end method

.method static synthetic a(Lcom/admarvel/android/ads/ad;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/admarvel/android/ads/ad;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/admarvel/android/ads/ad;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->c(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/ad;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a(Z)V

    :cond_d
    return-void
.end method

.method static synthetic a(Lcom/admarvel/android/ads/ad;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/admarvel/android/ads/ad;->i:Z

    return p1
.end method

.method private b(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Lcom/admarvel/android/ads/AdMarvelXMLElement;Landroid/view/ViewGroup;)V
    .registers 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v3, Lcom/admarvel/android/ads/ad$d;

    invoke-direct {v3, p0, p1, p4, p3}, Lcom/admarvel/android/ads/ad$d;-><init>(Lcom/admarvel/android/ads/ad;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelXMLElement;Landroid/widget/LinearLayout$LayoutParams;)V

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const-string v4, "#000000FF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const-string v4, "#AA3E3E3E"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v5, 0x0

    const v6, 0x10100a7

    aput v6, v2, v5

    invoke-virtual {v4, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v5, 0x0

    const v6, -0x10100a1

    aput v6, v2, v5

    invoke-virtual {v4, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v5, 0x10100a1

    aput v5, v1, v2

    invoke-virtual {v4, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v6, 0x10100a7

    aput v6, v1, v2

    invoke-virtual {v5, v1, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    iget-object v0, v3, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    if-nez v0, :cond_77

    :goto_76
    return-void

    :cond_77
    invoke-virtual {p4}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, -0xffff01

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/16 v1, 0x11

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v1, 0xf

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setClickable(Z)V

    invoke-virtual {v6}, Landroid/widget/TextView;->setSingleLine()V

    const-string v1, "#84c043"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v1, 0x4188

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p4}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v7, "textSize"

    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_ef

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_ef

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    if-eqz v2, :cond_ef

    :try_start_e7
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ef} :catch_13f

    :cond_ef
    :goto_ef
    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_160

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_fa
    if-eqz v0, :cond_105

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_105

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_105
    invoke-virtual {v3, v5}, Lcom/admarvel/android/ads/ad$d;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v3, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v2, "done"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_164

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x5

    iput v3, p3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "ADM_VIDEO_CUSTOM_DONE_BUTTON"

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    if-eqz v0, :cond_137

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_137

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_137
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/ad;->a(Landroid/widget/LinearLayout;)V

    goto/16 :goto_76

    :catch_13f
    move-exception v1

    const/high16 v2, 0x4190

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in setting Done button text size"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_ef

    :cond_160
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_fa

    :cond_164
    invoke-virtual {v3, v6}, Lcom/admarvel/android/ads/ad$d;->addView(Landroid/view/View;)V

    invoke-virtual {p5, v3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_76
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/ad;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->f()V

    :cond_d
    return-void
.end method

.method private c(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/LinearLayout$LayoutParams;Lcom/admarvel/android/ads/AdMarvelXMLElement;Landroid/view/ViewGroup;)V
    .registers 16

    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v8, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v9

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x4220

    invoke-direct {p0, v4}, Lcom/admarvel/android/ads/ad;->a(F)F

    move-result v4

    const-string v5, "#AAFFFFFF"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const-string v6, "#AA3E3E3E"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v4, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    invoke-virtual {v4, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-instance v5, Lcom/admarvel/android/ads/ad$d;

    invoke-direct {v5, p0, p1, p4, p3}, Lcom/admarvel/android/ads/ad$d;-><init>(Lcom/admarvel/android/ads/ad;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelXMLElement;Landroid/widget/LinearLayout$LayoutParams;)V

    iget-object v0, v5, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    if-nez v0, :cond_48

    :cond_47
    :goto_47
    return-void

    :cond_48
    invoke-virtual {p4}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v1

    const-string v2, "image_high"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/admarvel/android/ads/AdMarvelXMLElement;->getAttributes()Ljava/util/LinkedHashMap;

    move-result-object v2

    const-string v3, "image_retina"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/admarvel/android/ads/ad;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    if-eqz v3, :cond_47

    invoke-static {v3}, Lcom/admarvel/android/ads/ab;->i(Landroid/content/Context;)F

    move-result v6

    const/high16 v7, 0x3f80

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_ec

    :cond_80
    :goto_80
    const/high16 v1, 0x4200

    invoke-direct {p0, v1}, Lcom/admarvel/android/ads/ad;->a(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/high16 v1, 0x4200

    invoke-direct {p0, v1}, Lcom/admarvel/android/ads/ad;->a(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v1, 0xd

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v2

    const/16 v6, 0xb

    if-lt v2, v6, :cond_10e

    invoke-virtual {v3}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->a()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/admarvel/android/ads/ad$b;

    invoke-direct {v3, p0, v1, v0}, Lcom/admarvel/android/ads/ad$b;-><init>(Lcom/admarvel/android/ads/ad;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_b3
    invoke-virtual {v5, v4}, Lcom/admarvel/android/ads/ad$d;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v5, Lcom/admarvel/android/ads/ad$d;->c:Ljava/lang/String;

    const-string v2, "done"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11d

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x4220

    invoke-direct {p0, v3}, Lcom/admarvel/android/ads/ad;->a(F)F

    move-result v3

    float-to-int v3, v3

    const/high16 v4, 0x4220

    invoke-direct {p0, v4}, Lcom/admarvel/android/ads/ad;->a(F)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v3, 0x41c8

    iput v3, p3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v3, 0x5

    iput v3, p3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v2, "ADM_VIDEO_IMAGE_ICON_DONE_BUTTON"

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/ad;->a(Landroid/widget/LinearLayout;)V

    goto/16 :goto_47

    :cond_ec
    const/high16 v7, 0x3f80

    cmpl-float v7, v6, v7

    if-lez v7, :cond_103

    const/high16 v7, 0x4000

    cmpg-float v6, v6, v7

    if-gez v6, :cond_103

    if-eqz v1, :cond_80

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_80

    move-object v0, v1

    goto/16 :goto_80

    :cond_103
    if-eqz v2, :cond_80

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_80

    move-object v0, v2

    goto/16 :goto_80

    :cond_10e
    new-instance v2, Lcom/admarvel/android/ads/ad$a;

    invoke-direct {v2, p0, v1}, Lcom/admarvel/android/ads/ad$a;-><init>(Lcom/admarvel/android/ads/ad;Landroid/widget/ImageView;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Lcom/admarvel/android/ads/ad$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_b3

    :cond_11d
    invoke-virtual {v5, v1}, Lcom/admarvel/android/ads/ad$d;->addView(Landroid/view/View;)V

    invoke-virtual {p5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_47
.end method

.method private d()V
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/ad;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->d()V

    :cond_d
    return-void
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/ad;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->e()V

    :cond_d
    return-void
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/ad;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    iget-object v1, p0, Lcom/admarvel/android/ads/ad;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/p;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/admarvel/android/ads/p;->b()V

    :cond_15
    if-eqz v0, :cond_1b

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;->a:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;

    iput-object v1, v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->j:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;

    :cond_1b
    return-void
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/admarvel/android/ads/ad;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;

    iget-object v1, p0, Lcom/admarvel/android/ads/ad;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/admarvel/android/ads/p;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/admarvel/android/ads/p;->c()V

    :cond_15
    if-eqz v0, :cond_1b

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;->b:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;

    iput-object v1, v0, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->j:Lcom/admarvel/android/ads/AdMarvelVideoActivity$m;

    :cond_1b
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/admarvel/android/ads/ad;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public a(Landroid/widget/LinearLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/admarvel/android/ads/ad;->c:Landroid/widget/LinearLayout;

    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/admarvel/android/ads/ad;->i:Z

    return v0
.end method
