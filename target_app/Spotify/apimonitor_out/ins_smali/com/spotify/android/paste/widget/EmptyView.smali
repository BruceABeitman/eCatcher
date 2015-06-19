.class public Lcom/spotify/android/paste/widget/EmptyView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private static final a:[I
.field private final b:Landroid/widget/TextView;
.field private final c:Landroid/widget/TextView;
.field private final d:Landroid/widget/ImageView;
.field private e:Lcom/spotify/android/paste/widget/internal/a;
.field private f:I
.field private g:F
.field private h:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x3
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Lcom/spotify/android/paste/widget/EmptyView;->a:[I
return-void
nop
:array_a
.array-data 0x4
0x99t 0x1t 0x1t 0x1t
0xe1t 0x1t 0x1t 0x1t
0x4ft 0x1t 0x1t 0x1t
.end array-data
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/android/paste/widget/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Lcom/spotify/android/paste/b;->n:I
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/android/paste/widget/EmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 24
invoke-direct/range {p0 .. p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const-class v5, Lcom/spotify/android/paste/widget/EmptyView;
move-object/from16 v0, p0
invoke-static {v5, v0}, Lcom/spotify/android/paste/widget/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V
const/4 v5, 0x1
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Lcom/spotify/android/paste/widget/EmptyView;->setOrientation(I)V
const/16 v5, 0x11
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Lcom/spotify/android/paste/widget/EmptyView;->setGravity(I)V
sget-object v5, Lcom/spotify/android/paste/widget/EmptyView;->a:[I
const/4 v6, 0x0
move-object/from16 v0, p1
move-object/from16 v1, p2
move/from16 v2, p3
invoke-virtual {v0, v1, v5, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v5
const/4 v6, 0x0
invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v7
const/4 v6, 0x1
invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v8
const/4 v6, 0x2
invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v9
invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
sget-object v5, Lcom/spotify/android/paste/e;->l:[I
const/4 v6, 0x0
move-object/from16 v0, p1
move-object/from16 v1, p2
move/from16 v2, p3
invoke-virtual {v0, v1, v5, v2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v6
const/4 v5, 0x0
const/4 v10, 0x0
invoke-virtual {v6, v5, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v10
const/4 v5, 0x1
invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v11
const/4 v5, 0x2
const/4 v12, 0x0
invoke-virtual {v6, v5, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v12
const/4 v5, 0x3
invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v13
const/4 v5, 0x4
const/4 v14, 0x0
invoke-virtual {v6, v5, v14}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v14
const/4 v5, 0x5
const/4 v15, 0x0
invoke-virtual {v6, v5, v15}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v15
const/4 v5, 0x6
const/16 v16, 0x0
move/from16 v0, v16
invoke-virtual {v6, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v16
const/4 v5, 0x7
const/high16 v17, 0x42c0
invoke-virtual/range {p0 .. p0}, Lcom/spotify/android/paste/widget/EmptyView;->getResources()Landroid/content/res/Resources;
move-result-object v18
invoke-static/range {v17 .. v18}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v17
move/from16 v0, v17
invoke-virtual {v6, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v5
move-object/from16 v0, p0
iput v5, v0, Lcom/spotify/android/paste/widget/EmptyView;->f:I
invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
const/4 v5, 0x0
const/16 v17, 0x1
:try_start_89
move/from16 v0, v17
new-array v0, v0, [I
move-object/from16 v17, v0
const/16 v18, 0x0
const v19, 0x1010054
aput v19, v17, v18
const/16 v18, 0x0
move-object/from16 v0, p1
move-object/from16 v1, p2
move-object/from16 v2, v17
move/from16 v3, p3
move/from16 v4, v18
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v6
const/16 v17, 0x0
move/from16 v0, v17
invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
:try_end_ad
.catchall {:try_start_89 .. :try_end_ad} :catchall_19f
.catch Landroid/content/res/Resources$NotFoundException; {:try_start_89 .. :try_end_ad} :catch_198
move-result-object v5
invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
move-object v6, v5
:goto_b2
sget v5, Lcom/spotify/android/paste/d;->c:I
move-object/from16 v0, p1
move-object/from16 v1, p0
invoke-static {v0, v5, v1}, Lcom/spotify/android/paste/widget/EmptyView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
sget v5, Lcom/spotify/android/paste/c;->r:I
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Lcom/spotify/android/paste/widget/EmptyView;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/TextView;
move-object/from16 v0, p0
iput-object v5, v0, Lcom/spotify/android/paste/widget/EmptyView;->b:Landroid/widget/TextView;
sget v5, Lcom/spotify/android/paste/c;->q:I
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Lcom/spotify/android/paste/widget/EmptyView;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/TextView;
move-object/from16 v0, p0
iput-object v5, v0, Lcom/spotify/android/paste/widget/EmptyView;->c:Landroid/widget/TextView;
sget v5, Lcom/spotify/android/paste/c;->f:I
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Lcom/spotify/android/paste/widget/EmptyView;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/widget/ImageView;
move-object/from16 v0, p0
iput-object v5, v0, Lcom/spotify/android/paste/widget/EmptyView;->d:Landroid/widget/ImageView;
new-instance v17, Lcom/spotify/android/paste/widget/internal/a;
sget v5, Lcom/spotify/android/paste/c;->a:I
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Lcom/spotify/android/paste/widget/EmptyView;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/view/ViewGroup;
move-object/from16 v0, v17
invoke-direct {v0, v5}, Lcom/spotify/android/paste/widget/internal/a;-><init>(Landroid/view/ViewGroup;)V
move-object/from16 v0, v17
move-object/from16 v1, p0
iput-object v0, v1, Lcom/spotify/android/paste/widget/EmptyView;->e:Lcom/spotify/android/paste/widget/internal/a;
move-object/from16 v0, p0
invoke-virtual {v0, v8}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
invoke-virtual {v0, v9}, Lcom/spotify/android/paste/widget/EmptyView;->b(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
invoke-virtual {v0, v7}, Lcom/spotify/android/paste/widget/EmptyView;->a(Landroid/graphics/drawable/Drawable;)V
move-object/from16 v0, p0
invoke-static {v0, v6}, Lcom/spotify/android/paste/widget/g;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v5
iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I
int-to-float v6, v6
iget v5, v5, Landroid/util/DisplayMetrics;->density:F
div-float v5, v6, v5
const v6, 0x43a08000
cmpg-float v5, v5, v6
if-gez v5, :cond_1a4
const/high16 v5, 0x4200
invoke-virtual/range {p0 .. p0}, Lcom/spotify/android/paste/widget/EmptyView;->getResources()Landroid/content/res/Resources;
move-result-object v6
invoke-static {v5, v6}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I
move-result v6
const/high16 v5, 0x4180
invoke-virtual/range {p0 .. p0}, Lcom/spotify/android/paste/widget/EmptyView;->getResources()Landroid/content/res/Resources;
move-result-object v7
invoke-static {v5, v7}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I
move-result v5
:goto_13a
move-object/from16 v0, p0
invoke-virtual {v0, v6, v5, v6, v5}, Lcom/spotify/android/paste/widget/EmptyView;->setPadding(IIII)V
if-eqz v10, :cond_14a
move-object/from16 v0, p0
iget-object v5, v0, Lcom/spotify/android/paste/widget/EmptyView;->b:Landroid/widget/TextView;
move-object/from16 v0, p1
invoke-static {v0, v5, v10}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V
:cond_14a
if-eqz v12, :cond_155
move-object/from16 v0, p0
iget-object v5, v0, Lcom/spotify/android/paste/widget/EmptyView;->c:Landroid/widget/TextView;
move-object/from16 v0, p1
invoke-static {v0, v5, v12}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V
:cond_155
if-eqz v11, :cond_15e
move-object/from16 v0, p0
iget-object v5, v0, Lcom/spotify/android/paste/widget/EmptyView;->b:Landroid/widget/TextView;
invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
:cond_15e
if-eqz v13, :cond_167
move-object/from16 v0, p0
iget-object v5, v0, Lcom/spotify/android/paste/widget/EmptyView;->c:Landroid/widget/TextView;
invoke-virtual {v5, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
:cond_167
if-lez v14, :cond_175
move-object/from16 v0, p0
iget-object v5, v0, Lcom/spotify/android/paste/widget/EmptyView;->d:Landroid/widget/ImageView;
invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v5
check-cast v5, Landroid/widget/LinearLayout$LayoutParams;
iput v14, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
:cond_175
if-lez v15, :cond_183
move-object/from16 v0, p0
iget-object v5, v0, Lcom/spotify/android/paste/widget/EmptyView;->c:Landroid/widget/TextView;
invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v5
check-cast v5, Landroid/widget/LinearLayout$LayoutParams;
iput v15, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
:cond_183
if-lez v16, :cond_197
sget v5, Lcom/spotify/android/paste/c;->a:I
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Lcom/spotify/android/paste/widget/EmptyView;->findViewById(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v5
check-cast v5, Landroid/widget/LinearLayout$LayoutParams;
move/from16 v0, v16
iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
:cond_197
return-void
:catch_198
move-exception v17
invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
move-object v6, v5
goto/16 :goto_b2
:catchall_19f
move-exception v5
invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
throw v5
:cond_1a4
const/high16 v5, 0x4240
invoke-virtual/range {p0 .. p0}, Lcom/spotify/android/paste/widget/EmptyView;->getResources()Landroid/content/res/Resources;
move-result-object v6
invoke-static {v5, v6}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I
move-result v6
const/high16 v5, 0x4200
invoke-virtual/range {p0 .. p0}, Lcom/spotify/android/paste/widget/EmptyView;->getResources()Landroid/content/res/Resources;
move-result-object v7
invoke-static {v5, v7}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I
move-result v5
goto :goto_13a
.end method
.method public final a()V
.registers 2
const/high16 v0, 0x3f80
iput v0, p0, Lcom/spotify/android/paste/widget/EmptyView;->g:F
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/android/paste/widget/EmptyView;->h:Z
return-void
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/spotify/android/paste/widget/EmptyView;->f:I
return-void
.end method
.method public final a(Landroid/graphics/drawable/Drawable;)V
.registers 4
if-eqz p1, :cond_e
iget-object v0, p0, Lcom/spotify/android/paste/widget/EmptyView;->d:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/EmptyView;->d:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/spotify/android/paste/widget/EmptyView;->d:Landroid/widget/ImageView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_d
.end method
.method public final a(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/widget/EmptyView;->e:Lcom/spotify/android/paste/widget/internal/a;
invoke-virtual {v0, p1}, Lcom/spotify/android/paste/widget/internal/a;->a(Landroid/view/View;)V
return-void
.end method
.method public final a(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/widget/EmptyView;->b:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final b()Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/EmptyView;->b:Landroid/widget/TextView;
return-object v0
.end method
.method public final b(Ljava/lang/CharSequence;)V
.registers 4
iget-object v1, p0, Lcom/spotify/android/paste/widget/EmptyView;->c:Landroid/widget/TextView;
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_13
const/16 v0, 0x8
:goto_a
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/EmptyView;->c:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
:cond_13
const/4 v0, 0x0
goto :goto_a
.end method
.method public final c()Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/EmptyView;->c:Landroid/widget/TextView;
return-object v0
.end method
.method public final d()Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/EmptyView;->d:Landroid/widget/ImageView;
return-object v0
.end method
.method public final e()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/widget/EmptyView;->e:Lcom/spotify/android/paste/widget/internal/a;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->b()Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method protected onMeasure(II)V
.registers 6
iget-object v0, p0, Lcom/spotify/android/paste/widget/EmptyView;->e:Lcom/spotify/android/paste/widget/internal/a;
invoke-virtual {v0}, Lcom/spotify/android/paste/widget/internal/a;->a()V
iget-object v0, p0, Lcom/spotify/android/paste/widget/EmptyView;->d:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_2c
iget v1, p0, Lcom/spotify/android/paste/widget/EmptyView;->f:I
iget-boolean v2, p0, Lcom/spotify/android/paste/widget/EmptyView;->h:Z
if-eqz v2, :cond_30
iget v0, p0, Lcom/spotify/android/paste/widget/EmptyView;->g:F
:goto_15
int-to-float v2, v1
div-float v0, v2, v0
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
iget-object v2, p0, Lcom/spotify/android/paste/widget/EmptyView;->d:Landroid/widget/ImageView;
invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
iget-object v1, p0, Lcom/spotify/android/paste/widget/EmptyView;->d:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
:cond_2c
invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V
return-void
:cond_30
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v2
int-to-float v2, v2
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v0
int-to-float v0, v0
div-float v0, v2, v0
goto :goto_15
.end method