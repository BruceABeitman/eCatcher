.class  Lcom/mixpanel/android/surveys/SurveyChoiceView;
.super Landroid/widget/CheckedTextView;
.source "SourceFile"
.field private a:Landroid/graphics/drawable/Drawable;
.field private b:F
.field private c:F
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->a()V
return-void
.end method
.method static synthetic a(Lcom/mixpanel/android/surveys/SurveyChoiceView;F)F
.registers 2
iput p1, p0, Lcom/mixpanel/android/surveys/SurveyChoiceView;->b:F
return p1
.end method
.method private a()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/mixpanel/android/surveys/SurveyChoiceView;->b:F
const/high16 v0, 0x3fc0
iput v0, p0, Lcom/mixpanel/android/surveys/SurveyChoiceView;->c:F
return-void
.end method
.method static synthetic b(Lcom/mixpanel/android/surveys/SurveyChoiceView;F)F
.registers 2
iput p1, p0, Lcom/mixpanel/android/surveys/SurveyChoiceView;->c:F
return p1
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 10
const/4 v1, 0x0
iget-object v2, p0, Lcom/mixpanel/android/surveys/SurveyChoiceView;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v3, v0, Landroid/util/DisplayMetrics;->density:F
if-eqz v2, :cond_6f
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->isChecked()Z
move-result v0
if-eqz v0, :cond_6f
const/high16 v0, 0x4160
mul-float/2addr v0, v3
float-to-int v0, v0
:goto_19
const/high16 v4, 0x4140
mul-float/2addr v4, v3
float-to-int v4, v4
const/high16 v5, 0x41b0
mul-float/2addr v3, v5
float-to-int v3, v3
const/4 v5, 0x0
invoke-virtual {p0, v5}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
int-to-float v5, v3
iget v6, p0, Lcom/mixpanel/android/surveys/SurveyChoiceView;->c:F
int-to-float v7, v0
mul-float/2addr v6, v7
add-float/2addr v5, v6
float-to-int v5, v5
invoke-virtual {p0, v5, v4, v3, v4}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->setPadding(IIII)V
invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onDraw(Landroid/graphics/Canvas;)V
int-to-float v5, v3
iget v6, p0, Lcom/mixpanel/android/surveys/SurveyChoiceView;->b:F
int-to-float v7, v0
mul-float/2addr v6, v7
add-float/2addr v5, v6
float-to-int v5, v5
invoke-virtual {p0, v5, v4, v3, v4}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->setPadding(IIII)V
invoke-virtual {p0, v2}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
if-eqz v2, :cond_5d
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->getGravity()I
move-result v6
and-int/lit8 v6, v6, 0x70
sparse-switch v6, :sswitch_data_72
:goto_4a
add-int v6, v1, v0
add-int/2addr v0, v5
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->getScrollX()I
move-result v7
add-int/2addr v5, v7
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->getScrollX()I
move-result v7
add-int/2addr v0, v7
invoke-virtual {v2, v5, v1, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:cond_5d
invoke-virtual {p0, v3, v4, v3, v4}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->setPadding(IIII)V
return-void
:sswitch_61
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->getHeight()I
move-result v1
sub-int/2addr v1, v0
goto :goto_4a
:sswitch_67
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->getHeight()I
move-result v1
sub-int/2addr v1, v0
div-int/lit8 v1, v1, 0x2
goto :goto_4a
:cond_6f
move v0, v1
goto :goto_19
nop
:sswitch_data_72
.sparse-switch
0x10 -> :sswitch_67
0x50 -> :sswitch_61
.end sparse-switch
.end method
.method public setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 2
invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
iput-object p1, p0, Lcom/mixpanel/android/surveys/SurveyChoiceView;->a:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method public setChecked(Z)V
.registers 5
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->isChecked()Z
move-result v0
invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->isChecked()Z
move-result v1
if-eqz v1, :cond_1d
if-nez v0, :cond_1d
new-instance v0, Lcom/mixpanel/android/surveys/d;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/mixpanel/android/surveys/d;-><init>(Lcom/mixpanel/android/surveys/SurveyChoiceView;B)V
const-wide/16 v1, 0x12c
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->startAnimation(Landroid/view/animation/Animation;)V
:cond_1d
return-void
.end method