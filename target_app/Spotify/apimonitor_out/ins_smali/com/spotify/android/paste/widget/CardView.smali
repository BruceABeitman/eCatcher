.class public Lcom/spotify/android/paste/widget/CardView;
.super Landroid/view/ViewGroup;
.source "SourceFile"
.field private static final a:[I
.field private b:Landroid/widget/ImageView;
.field private c:Landroid/widget/TextView;
.field private d:Landroid/widget/TextView;
.field private e:Landroid/widget/TextView;
.field private f:I
.field private g:F
.field private h:Z
.field private i:Lcom/spotify/android/paste/widget/b;
.field private j:Landroid/view/ViewGroup;
.field private k:Lcom/spotify/android/paste/widget/internal/a;
.field private l:I
.field private m:Landroid/graphics/drawable/Drawable;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
const v2, 0x10100a2
aput v2, v0, v1
sput-object v0, Lcom/spotify/android/paste/widget/CardView;->a:[I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/android/paste/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/android/paste/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 23
invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const-class v2, Lcom/spotify/android/paste/widget/CardView;
move-object/from16 v0, p0
invoke-static {v2, v0}, Lcom/spotify/android/paste/widget/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V
sget-object v2, Lcom/spotify/android/paste/e;->h:[I
sget v3, Lcom/spotify/android/paste/b;->i:I
const/4 v4, 0x0
move-object/from16 v0, p1
move-object/from16 v1, p2
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v2
const/4 v3, 0x4
invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
const/16 v5, 0x9
const v6, -0x777778
invoke-virtual {v2, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v5
const/16 v6, 0x8
const/4 v7, 0x0
invoke-virtual {v2, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v6
const/16 v7, 0xa
const/4 v8, 0x0
invoke-virtual {v2, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v7
const/16 v8, 0xb
const/4 v9, 0x0
invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v8
const/16 v9, 0xc
const/4 v10, 0x0
invoke-virtual {v2, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v9
const/4 v10, 0x6
invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v10
const/4 v11, 0x7
invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v11
const/16 v12, 0xe
invoke-virtual {v2, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v12
const/4 v13, 0x0
const/4 v14, 0x1
invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v13
const/4 v14, 0x2
const/4 v15, 0x1
invoke-virtual {v2, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v14
const/4 v15, 0x3
const/16 v16, 0x1
move/from16 v0, v16
invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v15
const/16 v16, 0x5
move/from16 v0, v16
invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v16
const/16 v17, 0xd
const/16 v18, 0x0
move/from16 v0, v17
move/from16 v1, v18
invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v17
move/from16 v0, v17
move-object/from16 v1, p0
iput v0, v1, Lcom/spotify/android/paste/widget/CardView;->f:I
invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
new-instance v2, Landroid/widget/ImageView;
move-object/from16 v0, p1
invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
move-object/from16 v0, p0
iput-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->b:Landroid/widget/ImageView;
new-instance v2, Landroid/widget/TextView;
move-object/from16 v0, p1
invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
move-object/from16 v0, p0
iput-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->c:Landroid/widget/TextView;
new-instance v2, Landroid/widget/TextView;
move-object/from16 v0, p1
invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
move-object/from16 v0, p0
iput-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->d:Landroid/widget/TextView;
new-instance v2, Landroid/widget/TextView;
move-object/from16 v0, p1
invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
move-object/from16 v0, p0
iput-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->e:Landroid/widget/TextView;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->c:Landroid/widget/TextView;
invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->d:Landroid/widget/TextView;
invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->e:Landroid/widget/TextView;
invoke-virtual {v2, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->c:Landroid/widget/TextView;
const/4 v10, 0x1
invoke-virtual {v2, v10}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->d:Landroid/widget/TextView;
const/4 v10, 0x1
invoke-virtual {v2, v10}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->e:Landroid/widget/TextView;
const/4 v10, 0x1
invoke-virtual {v2, v10}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V
if-nez v4, :cond_20b
const v2, -0x333334
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->setBackgroundColor(I)V
:goto_eb
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->b:Landroid/widget/ImageView;
sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->b:Landroid/widget/ImageView;
invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V
if-eqz v16, :cond_106
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->b:Landroid/widget/ImageView;
move-object/from16 v0, v16
invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_106
if-nez v6, :cond_212
new-instance v2, Lcom/spotify/android/paste/widget/c;
const/4 v4, 0x0
move-object/from16 v0, p0
invoke-direct {v2, v0, v4}, Lcom/spotify/android/paste/widget/c;-><init>(Lcom/spotify/android/paste/widget/CardView;B)V
:goto_110
move-object/from16 v0, p0
iput-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->i:Lcom/spotify/android/paste/widget/b;
if-eqz v7, :cond_11f
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->c:Landroid/widget/TextView;
move-object/from16 v0, p1
invoke-static {v0, v2, v7}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V
:cond_11f
if-eqz v8, :cond_12a
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->d:Landroid/widget/TextView;
move-object/from16 v0, p1
invoke-static {v0, v2, v8}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V
:cond_12a
if-eqz v9, :cond_135
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->e:Landroid/widget/TextView;
move-object/from16 v0, p1
invoke-static {v0, v2, v9}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V
:cond_135
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->c:Landroid/widget/TextView;
const/4 v4, 0x2
invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->d:Landroid/widget/TextView;
const/4 v4, 0x1
invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->e:Landroid/widget/TextView;
const/4 v4, 0x1
invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->c:Landroid/widget/TextView;
sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->d:Landroid/widget/TextView;
sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->e:Landroid/widget/TextView;
sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
new-instance v2, Landroid/widget/LinearLayout;
move-object/from16 v0, p1
invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
move-object/from16 v0, p0
iput-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->j:Landroid/view/ViewGroup;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->j:Landroid/view/ViewGroup;
const/4 v4, 0x1
invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setDuplicateParentStateEnabled(Z)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->j:Landroid/view/ViewGroup;
const/4 v4, 0x0
invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V
new-instance v2, Lcom/spotify/android/paste/widget/internal/a;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/spotify/android/paste/widget/CardView;->j:Landroid/view/ViewGroup;
invoke-direct {v2, v4}, Lcom/spotify/android/paste/widget/internal/a;-><init>(Landroid/view/ViewGroup;)V
move-object/from16 v0, p0
iput-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->k:Lcom/spotify/android/paste/widget/internal/a;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->b:Landroid/widget/ImageView;
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->addView(Landroid/view/View;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->c:Landroid/widget/TextView;
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->addView(Landroid/view/View;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->d:Landroid/widget/TextView;
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->addView(Landroid/view/View;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->e:Landroid/widget/TextView;
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->addView(Landroid/view/View;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->j:Landroid/view/ViewGroup;
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->addView(Landroid/view/View;)V
move-object/from16 v0, p0
invoke-virtual {v0, v15}, Lcom/spotify/android/paste/widget/CardView;->setClickable(Z)V
move-object/from16 v0, p0
invoke-virtual {v0, v14}, Lcom/spotify/android/paste/widget/CardView;->setFocusable(Z)V
move-object/from16 v0, p0
invoke-virtual {v0, v13}, Lcom/spotify/android/paste/widget/CardView;->setEnabled(Z)V
const/4 v2, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->setClipChildren(Z)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->m:Landroid/graphics/drawable/Drawable;
if-eq v2, v3, :cond_20a
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->m:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_1ef
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->m:Landroid/graphics/drawable/Drawable;
const/4 v4, 0x0
invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/spotify/android/paste/widget/CardView;->m:Landroid/graphics/drawable/Drawable;
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/CardView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_1ef
move-object/from16 v0, p0
iput-object v3, v0, Lcom/spotify/android/paste/widget/CardView;->m:Landroid/graphics/drawable/Drawable;
if-eqz v3, :cond_207
move-object/from16 v0, p0
invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v2
if-eqz v2, :cond_207
invoke-virtual/range {p0 .. p0}, Lcom/spotify/android/paste/widget/CardView;->getDrawableState()[I
move-result-object v2
invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_207
invoke-virtual/range {p0 .. p0}, Lcom/spotify/android/paste/widget/CardView;->invalidate()V
:cond_20a
return-void
:cond_20b
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto/16 :goto_eb
:cond_212
new-instance v2, Lcom/spotify/android/paste/widget/a;
const/4 v4, 0x0
move-object/from16 v0, p0
invoke-direct {v2, v0, v4}, Lcom/spotify/android/paste/widget/a;-><init>(Lcom/spotify/android/paste/widget/CardView;B)V
goto/16 :goto_110
.end method
.method static synthetic a(II)I
.registers 4
invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
sub-int/2addr v0, p1
invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
return v0
.end method
.method public static a(IIII)I
.registers 8
const v3, 0x3e4ccccd
int-to-float v0, p0
sub-int v1, p1, p2
add-int/2addr v1, p3
int-to-float v1, v1
div-float/2addr v0, v1
float-to-int v1, v0
int-to-float v1, v1
sub-float v1, v0, v1
cmpg-float v2, v1, v3
if-gez v2, :cond_22
float-to-int v0, v0
int-to-float v0, v0
add-float/2addr v0, v3
:goto_14
:cond_14
const v1, 0x400ccccd
invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F
move-result v0
int-to-float v1, p0
div-float v0, v1, v0
float-to-int v0, v0
sub-int/2addr v0, p3
add-int/2addr v0, p2
return v0
:cond_22
const v2, 0x3f4ccccd
cmpl-float v1, v1, v2
if-lez v1, :cond_14
const/high16 v1, 0x3f80
add-float/2addr v0, v1
float-to-int v0, v0
int-to-float v0, v0
add-float/2addr v0, v3
goto :goto_14
.end method
.method private static a(Landroid/widget/TextView;I)I
.registers 5
invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;
move-result-object v0
invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
move-result-object v0
iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I
iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I
sub-int/2addr v1, v2
iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->leading:I
add-int/2addr v0, v1
mul-int/2addr v0, p1
return v0
.end method
.method static synthetic a(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->b:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/android/paste/widget/CardView;II)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/spotify/android/paste/widget/CardView;->setMeasuredDimension(II)V
return-void
.end method
.method static synthetic b(I)I
.registers 2
const/high16 v0, 0x4000
invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
return v0
.end method
.method static synthetic b(Lcom/spotify/android/paste/widget/CardView;)Landroid/view/ViewGroup;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->j:Landroid/view/ViewGroup;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/android/paste/widget/CardView;II)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/spotify/android/paste/widget/CardView;->setMeasuredDimension(II)V
return-void
.end method
.method static synthetic c(Lcom/spotify/android/paste/widget/CardView;)I
.registers 2
iget v0, p0, Lcom/spotify/android/paste/widget/CardView;->f:I
return v0
.end method
.method static synthetic d(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->c:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->d:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/android/paste/widget/CardView;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->e:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic g(Lcom/spotify/android/paste/widget/CardView;)I
.registers 2
iget v0, p0, Lcom/spotify/android/paste/widget/CardView;->l:I
return v0
.end method
.method static synthetic h(Lcom/spotify/android/paste/widget/CardView;)F
.registers 2
iget v0, p0, Lcom/spotify/android/paste/widget/CardView;->g:F
return v0
.end method
.method protected final a()I
.registers 7
const/4 v2, 0x0
const/4 v1, 0x1
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->d:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_3d
move v0, v1
:goto_f
iget-object v3, p0, Lcom/spotify/android/paste/widget/CardView;->e:Landroid/widget/TextView;
invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_1c
move v2, v1
:cond_1c
iget-object v3, p0, Lcom/spotify/android/paste/widget/CardView;->c:Landroid/widget/TextView;
const/4 v4, 0x2
invoke-static {v3, v4}, Lcom/spotify/android/paste/widget/CardView;->a(Landroid/widget/TextView;I)I
move-result v3
iget-object v4, p0, Lcom/spotify/android/paste/widget/CardView;->d:Landroid/widget/TextView;
invoke-static {v4, v1}, Lcom/spotify/android/paste/widget/CardView;->a(Landroid/widget/TextView;I)I
move-result v4
iget-object v5, p0, Lcom/spotify/android/paste/widget/CardView;->e:Landroid/widget/TextView;
invoke-static {v5, v1}, Lcom/spotify/android/paste/widget/CardView;->a(Landroid/widget/TextView;I)I
move-result v1
if-eqz v0, :cond_3f
add-int v0, v3, v4
:goto_33
add-int/2addr v0, v4
if-eqz v2, :cond_37
add-int/2addr v0, v1
:cond_37
iget v1, p0, Lcom/spotify/android/paste/widget/CardView;->f:I
mul-int/lit8 v1, v1, 0x2
add-int/2addr v0, v1
return v0
:cond_3d
move v0, v2
goto :goto_f
:cond_3f
move v0, v3
goto :goto_33
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/spotify/android/paste/widget/CardView;->l:I
return-void
.end method
.method public final a(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->k:Lcom/spotify/android/paste/widget/internal/a;
invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/internal/a;->a(Landroid/view/View;)V
return-void
.end method
.method public final a(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->c:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final a(Z)V
.registers 4
const/4 v1, 0x0
if-nez p1, :cond_a
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->k:Lcom/spotify/android/paste/widget/internal/a;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->c()V
iput v1, p0, Lcom/spotify/android/paste/widget/CardView;->l:I
:cond_a
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->b:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
const-string v0, ""
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/CardView;->a(Ljava/lang/CharSequence;)V
const-string v0, ""
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/CardView;->b(Ljava/lang/CharSequence;)V
const-string v0, ""
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/CardView;->c(Ljava/lang/CharSequence;)V
invoke-virtual {p0, v1}, Lcom/spotify/android/paste/widget/CardView;->b(Z)V
return-void
.end method
.method public final b()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/spotify/android/paste/widget/CardView;->a(Z)V
return-void
.end method
.method public final b(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->d:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final b(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/android/paste/widget/CardView;->h:Z
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/CardView;->refreshDrawableState()V
return-void
.end method
.method public final c()Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->b:Landroid/widget/ImageView;
return-object v0
.end method
.method public final c(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->e:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final d()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->k:Lcom/spotify/android/paste/widget/internal/a;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->b()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 6
const/4 v3, 0x0
invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->m:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_24
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/CardView;->getRight()I
move-result v0
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/CardView;->getLeft()I
move-result v1
sub-int/2addr v0, v1
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/CardView;->getBottom()I
move-result v1
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/CardView;->getTop()I
move-result v2
sub-int/2addr v1, v2
iget-object v2, p0, Lcom/spotify/android/paste/widget/CardView;->m:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->m:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:cond_24
return-void
.end method
.method protected drawableStateChanged()V
.registers 3
invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->m:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->m:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->m:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/CardView;->getDrawableState()[I
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_18
return-void
.end method
.method public hasFocusable()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public jumpDrawablesToCurrentState()V
.registers 2
invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->m:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->m:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
:cond_c
return-void
.end method
.method protected onCreateDrawableState(I)[I
.registers 4
add-int/lit8 v0, p1, 0x1
invoke-super {p0, v0}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I
move-result-object v0
iget-boolean v1, p0, Lcom/spotify/android/paste/widget/CardView;->h:Z
if-eqz v1, :cond_f
sget-object v1, Lcom/spotify/android/paste/widget/CardView;->a:[I
invoke-static {v0, v1}, Lcom/spotify/android/paste/widget/CardView;->mergeDrawableStates([I[I)[I
:cond_f
return-object v0
.end method
.method protected onLayout(ZIIII)V
.registers 7
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->i:Lcom/spotify/android/paste/widget/b;
invoke-interface {v0, p2, p3, p4, p5}, Lcom/spotify/android/paste/widget/b;->a(IIII)V
return-void
.end method
.method protected onMeasure(II)V
.registers 4
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->k:Lcom/spotify/android/paste/widget/internal/a;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->a()V
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->i:Lcom/spotify/android/paste/widget/b;
invoke-interface {v0, p1, p2}, Lcom/spotify/android/paste/widget/b;->a(II)V
return-void
.end method
.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
.registers 3
invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
move-result v0
if-nez v0, :cond_a
iget-object v0, p0, Lcom/spotify/android/paste/widget/CardView;->m:Landroid/graphics/drawable/Drawable;
if-ne p1, v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method