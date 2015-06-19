.class public Landroid/support/v4/view/PagerTabStrip;
.super Landroid/support/v4/view/PagerTitleStrip;
.source "SourceFile"
.field private static final FULL_UNDERLINE_HEIGHT:I = 0x1
.field private static final INDICATOR_HEIGHT:I = 0x3
.field private static final MIN_PADDING_BOTTOM:I = 0x6
.field private static final MIN_STRIP_HEIGHT:I = 0x20
.field private static final MIN_TEXT_SPACING:I = 0x40
.field private static final TAB_PADDING:I = 0x10
.field private static final TAB_SPACING:I = 0x20
.field private static final TAG:Ljava/lang/String; = "PagerTabStrip"
.field private mDrawFullUnderline:Z
.field private mDrawFullUnderlineSet:Z
.field private mFullUnderlineHeight:I
.field private mIgnoreTap:Z
.field private mIndicatorColor:I
.field private mIndicatorHeight:I
.field private mInitialMotionX:F
.field private mInitialMotionY:F
.field private mMinPaddingBottom:I
.field private mMinStripHeight:I
.field private mMinTextSpacing:I
.field private mTabAlpha:I
.field private mTabPadding:I
.field private final mTabPaint:Landroid/graphics/Paint;
.field private final mTempRect:Landroid/graphics/Rect;
.field private mTouchSlop:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 9
const/4 v5, 0x1
const/4 v4, 0x0
const/high16 v2, 0x3f00
invoke-direct {p0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;
const/16 v0, 0xff
iput v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTabAlpha:I
iput-boolean v4, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z
iput-boolean v4, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z
iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTextColor:I
iput v0, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I
iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;
iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
const/high16 v1, 0x4040
mul-float/2addr v1, v0
add-float/2addr v1, v2
float-to-int v1, v1
iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorHeight:I
const/high16 v1, 0x40c0
mul-float/2addr v1, v0
add-float/2addr v1, v2
float-to-int v1, v1
iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mMinPaddingBottom:I
const/high16 v1, 0x4280
mul-float/2addr v1, v0
float-to-int v1, v1
iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mMinTextSpacing:I
const/high16 v1, 0x4180
mul-float/2addr v1, v0
add-float/2addr v1, v2
float-to-int v1, v1
iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I
const/high16 v1, 0x3f80
mul-float/2addr v1, v0
add-float/2addr v1, v2
float-to-int v1, v1
iput v1, p0, Landroid/support/v4/view/PagerTabStrip;->mFullUnderlineHeight:I
const/high16 v1, 0x4200
mul-float/2addr v0, v1
add-float/2addr v0, v2
float-to-int v0, v0
iput v0, p0, Landroid/support/v4/view/PagerTabStrip;->mMinStripHeight:I
invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
move-result v0
iput v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTouchSlop:I
invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingLeft()I
move-result v0
invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingTop()I
move-result v1
invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingRight()I
move-result v2
invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingBottom()I
move-result v3
invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v4/view/PagerTabStrip;->setPadding(IIII)V
invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getTextSpacing()I
move-result v0
invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTabStrip;->setTextSpacing(I)V
invoke-virtual {p0, v4}, Landroid/support/v4/view/PagerTabStrip;->setWillNotDraw(Z)V
iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mPrevText:Landroid/widget/TextView;
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V
iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mPrevText:Landroid/widget/TextView;
new-instance v1, Landroid/support/v4/view/PagerTabStrip$1;
invoke-direct {v1, p0}, Landroid/support/v4/view/PagerTabStrip$1;-><init>(Landroid/support/v4/view/PagerTabStrip;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mNextText:Landroid/widget/TextView;
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setFocusable(Z)V
iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mNextText:Landroid/widget/TextView;
new-instance v1, Landroid/support/v4/view/PagerTabStrip$2;
invoke-direct {v1, p0}, Landroid/support/v4/view/PagerTabStrip$2;-><init>(Landroid/support/v4/view/PagerTabStrip;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-nez v0, :cond_a8
iput-boolean v5, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z
:cond_a8
return-void
.end method
.method public getDrawFullUnderline()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z
return v0
.end method
.method  getMinHeight()I
.registers 3
invoke-super {p0}, Landroid/support/v4/view/PagerTitleStrip;->getMinHeight()I
move-result v0
iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->mMinStripHeight:I
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
return v0
.end method
.method public getTabIndicatorColor()I
.registers 2
iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I
return v0
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 10
const v7, 0xffffff
invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->onDraw(Landroid/graphics/Canvas;)V
invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getHeight()I
move-result v6
iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I
move-result v0
iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I
sub-int/2addr v0, v1
iget-object v1, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I
move-result v1
iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I
add-int v3, v1, v2
iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorHeight:I
sub-int v2, v6, v1
iget-object v1, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;
iget v4, p0, Landroid/support/v4/view/PagerTabStrip;->mTabAlpha:I
shl-int/lit8 v4, v4, 0x18
iget v5, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I
and-int/2addr v5, v7
or-int/2addr v4, v5
invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V
int-to-float v1, v0
int-to-float v2, v2
int-to-float v3, v3
int-to-float v4, v6
iget-object v5, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z
if-eqz v0, :cond_62
iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;
const/high16 v1, -0x100
iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I
and-int/2addr v2, v7
or-int/2addr v1, v2
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingLeft()I
move-result v0
int-to-float v1, v0
iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mFullUnderlineHeight:I
sub-int v0, v6, v0
int-to-float v2, v0
invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getWidth()I
move-result v0
invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getPaddingRight()I
move-result v3
sub-int/2addr v0, v3
int-to-float v3, v0
int-to-float v4, v6
iget-object v5, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
:cond_62
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v2
if-eqz v2, :cond_d
iget-boolean v3, p0, Landroid/support/v4/view/PagerTabStrip;->mIgnoreTap:Z
if-eqz v3, :cond_d
:goto_c
return v0
:cond_d
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v3
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v4
packed-switch v2, :pswitch_data_7a
:cond_18
:goto_18
move v0, v1
goto :goto_c
:pswitch_1a
iput v3, p0, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionX:F
iput v4, p0, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionY:F
iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mIgnoreTap:Z
goto :goto_18
:pswitch_21
iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionX:F
sub-float v0, v3, v0
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->mTouchSlop:I
int-to-float v2, v2
cmpl-float v0, v0, v2
if-gtz v0, :cond_3f
iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mInitialMotionY:F
sub-float v0, v4, v0
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->mTouchSlop:I
int-to-float v2, v2
cmpl-float v0, v0, v2
if-lez v0, :cond_18
:cond_3f
iput-boolean v1, p0, Landroid/support/v4/view/PagerTabStrip;->mIgnoreTap:Z
goto :goto_18
:pswitch_42
iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I
move-result v0
iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I
sub-int/2addr v0, v2
int-to-float v0, v0
cmpg-float v0, v3, v0
if-gez v0, :cond_5e
iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;
iget-object v2, p0, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
goto :goto_18
:cond_5e
iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I
move-result v0
iget v2, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I
add-int/2addr v0, v2
int-to-float v0, v0
cmpl-float v0, v3, v0
if-lez v0, :cond_18
iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;
iget-object v2, p0, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v2
add-int/lit8 v2, v2, 0x1
invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
goto :goto_18
:pswitch_data_7a
.packed-switch 0x0
:pswitch_1a
:pswitch_42
:pswitch_21
.end packed-switch
.end method
.method public setBackgroundColor(I)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundColor(I)V
iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z
if-nez v0, :cond_f
const/high16 v0, -0x100
and-int/2addr v0, p1
if-nez v0, :cond_10
const/4 v0, 0x1
:goto_d
iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z
:cond_f
return-void
:cond_10
const/4 v0, 0x0
goto :goto_d
.end method
.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z
if-nez v0, :cond_c
if-nez p1, :cond_d
const/4 v0, 0x1
:goto_a
iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z
:cond_c
return-void
:cond_d
const/4 v0, 0x0
goto :goto_a
.end method
.method public setBackgroundResource(I)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setBackgroundResource(I)V
iget-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z
if-nez v0, :cond_c
if-nez p1, :cond_d
const/4 v0, 0x1
:goto_a
iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z
:cond_c
return-void
:cond_d
const/4 v0, 0x0
goto :goto_a
.end method
.method public setDrawFullUnderline(Z)V
.registers 3
iput-boolean p1, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderline:Z
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/view/PagerTabStrip;->mDrawFullUnderlineSet:Z
invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->invalidate()V
return-void
.end method
.method public setPadding(IIII)V
.registers 6
iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mMinPaddingBottom:I
if-ge p4, v0, :cond_6
iget p4, p0, Landroid/support/v4/view/PagerTabStrip;->mMinPaddingBottom:I
:cond_6
invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/view/PagerTitleStrip;->setPadding(IIII)V
return-void
.end method
.method public setTabIndicatorColor(I)V
.registers 4
iput p1, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I
iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPaint:Landroid/graphics/Paint;
iget v1, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorColor:I
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->invalidate()V
return-void
.end method
.method public setTabIndicatorColorResource(I)V
.registers 3
invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTabStrip;->setTabIndicatorColor(I)V
return-void
.end method
.method public setTextSpacing(I)V
.registers 3
iget v0, p0, Landroid/support/v4/view/PagerTabStrip;->mMinTextSpacing:I
if-ge p1, v0, :cond_6
iget p1, p0, Landroid/support/v4/view/PagerTabStrip;->mMinTextSpacing:I
:cond_6
invoke-super {p0, p1}, Landroid/support/v4/view/PagerTitleStrip;->setTextSpacing(I)V
return-void
.end method
.method  updateTextPositions(IFZ)V
.registers 10
iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip;->mTempRect:Landroid/graphics/Rect;
invoke-virtual {p0}, Landroid/support/v4/view/PagerTabStrip;->getHeight()I
move-result v1
iget-object v2, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;
invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I
move-result v2
iget v3, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I
sub-int/2addr v2, v3
iget-object v3, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;
invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I
move-result v3
iget v4, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I
add-int/2addr v3, v4
iget v4, p0, Landroid/support/v4/view/PagerTabStrip;->mIndicatorHeight:I
sub-int v4, v1, v4
invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/Rect;->set(IIII)V
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V
const/high16 v2, 0x3f00
sub-float v2, p2, v2
invoke-static {v2}, Ljava/lang/Math;->abs(F)F
move-result v2
const/high16 v3, 0x4000
mul-float/2addr v2, v3
const/high16 v3, 0x437f
mul-float/2addr v2, v3
float-to-int v2, v2
iput v2, p0, Landroid/support/v4/view/PagerTabStrip;->mTabAlpha:I
iget-object v2, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;
invoke-virtual {v2}, Landroid/widget/TextView;->getLeft()I
move-result v2
iget v3, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I
sub-int/2addr v2, v3
iget-object v3, p0, Landroid/support/v4/view/PagerTabStrip;->mCurrText:Landroid/widget/TextView;
invoke-virtual {v3}, Landroid/widget/TextView;->getRight()I
move-result v3
iget v5, p0, Landroid/support/v4/view/PagerTabStrip;->mTabPadding:I
add-int/2addr v3, v5
invoke-virtual {v0, v2, v4, v3, v1}, Landroid/graphics/Rect;->union(IIII)V
invoke-virtual {p0, v0}, Landroid/support/v4/view/PagerTabStrip;->invalidate(Landroid/graphics/Rect;)V
return-void
.end method