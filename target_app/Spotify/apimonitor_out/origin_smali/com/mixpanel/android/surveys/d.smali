.class final Lcom/mixpanel/android/surveys/d;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/mixpanel/android/surveys/SurveyChoiceView;


# direct methods
.method private constructor <init>(Lcom/mixpanel/android/surveys/SurveyChoiceView;)V
    .registers 2

    iput-object p1, p0, Lcom/mixpanel/android/surveys/d;->a:Lcom/mixpanel/android/surveys/SurveyChoiceView;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mixpanel/android/surveys/SurveyChoiceView;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/mixpanel/android/surveys/d;-><init>(Lcom/mixpanel/android/surveys/SurveyChoiceView;)V

    return-void
.end method


# virtual methods
.method protected final applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 7

    const/high16 v0, 0x3f80

    const/high16 v3, 0x3f00

    const/4 v1, 0x0

    cmpg-float v2, p1, v3

    if-gtz v2, :cond_1b

    sub-float v1, p1, v3

    :goto_b
    iget-object v2, p0, Lcom/mixpanel/android/surveys/d;->a:Lcom/mixpanel/android/surveys/SurveyChoiceView;

    invoke-static {v2, v1}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->a(Lcom/mixpanel/android/surveys/SurveyChoiceView;F)F

    iget-object v1, p0, Lcom/mixpanel/android/surveys/d;->a:Lcom/mixpanel/android/surveys/SurveyChoiceView;

    invoke-static {v1, v0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->b(Lcom/mixpanel/android/surveys/SurveyChoiceView;F)F

    iget-object v0, p0, Lcom/mixpanel/android/surveys/d;->a:Lcom/mixpanel/android/surveys/SurveyChoiceView;

    invoke-virtual {v0}, Lcom/mixpanel/android/surveys/SurveyChoiceView;->requestLayout()V

    return-void

    :cond_1b
    sub-float v2, p1, v3

    const/high16 v3, 0x4000

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    goto :goto_b
.end method

.method public final willChangeBounds()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final willChangeTransformationMatrix()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
