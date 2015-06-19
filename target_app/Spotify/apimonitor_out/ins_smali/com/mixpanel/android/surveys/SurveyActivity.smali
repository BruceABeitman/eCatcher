.class public Lcom/mixpanel/android/surveys/SurveyActivity;
.super Landroid/app/Activity;
.source "SourceFile"
.field private static final i:I
.field private a:Lcom/mixpanel/android/mpmetrics/l;
.field private b:Landroid/view/View;
.field private c:Landroid/view/View;
.field private d:Landroid/widget/TextView;
.field private e:Lcom/mixpanel/android/surveys/CardCarouselLayout;
.field private f:Lcom/mixpanel/android/mpmetrics/SurveyState;
.field private g:I
.field private h:I
.method static constructor <clinit>()V
.registers 2
const/16 v1, 0x5a
const/16 v0, 0xff
invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I
move-result v0
sput v0, Lcom/mixpanel/android/surveys/SurveyActivity;->i:I
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I
const/4 v0, -0x1
iput v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->h:I
return-void
.end method
.method private a(I)V
.registers 8
const/4 v2, 0x0
const/4 v5, 0x1
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState;->a()Lcom/mixpanel/android/mpmetrics/Survey;
move-result-object v0
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/Survey;->d()Ljava/util/List;
move-result-object v1
if-eqz p1, :cond_14
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_74
:cond_14
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->b:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V
:goto_19
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-lt p1, v0, :cond_7a
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->c:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V
:goto_26
iget v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I
iput p1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I
invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mixpanel/android/mpmetrics/w;
iget-object v3, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;
invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/SurveyState;->e()Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;
move-result-object v3
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/w;->a()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;->a(Ljava/lang/Integer;)Ljava/lang/String;
move-result-object v3
if-ge v2, p1, :cond_80
:try_start_44
iget-object v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->e:Lcom/mixpanel/android/surveys/CardCarouselLayout;
sget-object v4, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;
invoke-virtual {v2, v0, v3, v4}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Lcom/mixpanel/android/mpmetrics/w;Ljava/lang/String;Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;)V
:try_end_4b
.catch Lcom/mixpanel/android/surveys/CardCarouselLayout$UnrecognizedAnswerTypeException; {:try_start_44 .. :try_end_4b} :catch_8a
:goto_4b
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v0
if-le v0, v5, :cond_95
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->d:Landroid/widget/TextView;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
add-int/lit8 v3, p1, 0x1
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " of "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_73
return-void
:cond_74
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->b:Landroid/view/View;
invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V
goto :goto_19
:cond_7a
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->c:Landroid/view/View;
invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V
goto :goto_26
:cond_80
if-le v2, p1, :cond_8f
:try_start_82
iget-object v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->e:Lcom/mixpanel/android/surveys/CardCarouselLayout;
sget-object v4, Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;->b:Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;
invoke-virtual {v2, v0, v3, v4}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Lcom/mixpanel/android/mpmetrics/w;Ljava/lang/String;Lcom/mixpanel/android/surveys/CardCarouselLayout$Direction;)V
:try_end_89
.catch Lcom/mixpanel/android/surveys/CardCarouselLayout$UnrecognizedAnswerTypeException; {:try_start_82 .. :try_end_89} :catch_8a
goto :goto_4b
:catch_8a
move-exception v0
invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToNextQuestion()V
goto :goto_73
:try_start_8f
:cond_8f
iget-object v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->e:Lcom/mixpanel/android/surveys/CardCarouselLayout;
invoke-virtual {v2, v0, v3}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Lcom/mixpanel/android/mpmetrics/w;Ljava/lang/String;)V
:try_end_94
.catch Lcom/mixpanel/android/surveys/CardCarouselLayout$UnrecognizedAnswerTypeException; {:try_start_8f .. :try_end_94} :catch_8a
goto :goto_4b
:cond_95
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->d:Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_73
.end method
.method static synthetic a(Lcom/mixpanel/android/surveys/SurveyActivity;)V
.registers 1
invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToNextQuestion()V
return-void
.end method
.method static synthetic a(Lcom/mixpanel/android/surveys/SurveyActivity;Lcom/mixpanel/android/mpmetrics/w;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState;->e()Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;
move-result-object v0
invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/w;->a()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;->a(Ljava/lang/Integer;Ljava/lang/String;)V
return-void
.end method
.method private completeSurvey()V
.registers 1
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->finish()V
return-void
.end method
.method private goToNextQuestion()V
.registers 3
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState;->a()Lcom/mixpanel/android/mpmetrics/Survey;
move-result-object v0
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/Survey;->d()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
iget v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I
add-int/lit8 v0, v0, -0x1
if-ge v1, v0, :cond_1c
iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I
add-int/lit8 v0, v0, 0x1
invoke-direct {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->a(I)V
:goto_1b
return-void
:cond_1c
invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->completeSurvey()V
goto :goto_1b
.end method
.method private goToPreviousQuestion()V
.registers 2
iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I
if-lez v0, :cond_c
iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I
add-int/lit8 v0, v0, -0x1
invoke-direct {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->a(I)V
:goto_b
return-void
:cond_c
invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->completeSurvey()V
goto :goto_b
.end method
.method public completeSurvey(Landroid/view/View;)V
.registers 2
invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->completeSurvey()V
return-void
.end method
.method public goToNextQuestion(Landroid/view/View;)V
.registers 2
invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToNextQuestion()V
return-void
.end method
.method public goToPreviousQuestion(Landroid/view/View;)V
.registers 2
invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToPreviousQuestion()V
return-void
.end method
.method public onBackPressed()V
.registers 2
iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I
if-lez v0, :cond_8
invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToPreviousQuestion()V
:goto_7
return-void
:cond_8
invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
goto :goto_7
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/mixpanel/android/surveys/SurveyActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const/4 v0, 0x0
if-eqz p1, :cond_e
const-string v0, "com.mixpanel.android.surveys.SurveyActivity.SURVEY_STATE_BUNDLE_KEY"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/mixpanel/android/mpmetrics/SurveyState;
:cond_e
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v2, "intentID"
const v3, 0x7fffffff
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->h:I
iget v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->h:I
invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/SurveyState;->a(Lcom/mixpanel/android/mpmetrics/SurveyState;I)Lcom/mixpanel/android/mpmetrics/SurveyState;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;
if-nez v0, :cond_34
const-string v0, "MixpanelAPI"
const-string v1, "Survey intent received, but no survey was found."
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->finish()V
:goto_33
const-string v1, " - Lcom/mixpanel/android/surveys/SurveyActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_34
if-eqz p1, :cond_3f
const-string v0, "com.mixpanel.android.surveys.SurveyActivity.CURRENT_QUESTION_BUNDLE_KEY"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I
:cond_3f
sget v0, Lcom/mixpanel/android/c;->a:I
invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->setContentView(I)V
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState;->d()Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_9e
sget v0, Lcom/mixpanel/android/b;->a:I
invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
sget v1, Lcom/mixpanel/android/surveys/SurveyActivity;->i:I
invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V
:goto_57
sget v0, Lcom/mixpanel/android/b;->c:I
invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->b:Landroid/view/View;
sget v0, Lcom/mixpanel/android/b;->b:I
invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->c:Landroid/view/View;
sget v0, Lcom/mixpanel/android/b;->e:I
invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->d:Landroid/widget/TextView;
sget v0, Lcom/mixpanel/android/b;->f:I
invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/mixpanel/android/surveys/CardCarouselLayout;
iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->e:Lcom/mixpanel/android/surveys/CardCarouselLayout;
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->e:Lcom/mixpanel/android/surveys/CardCarouselLayout;
new-instance v1, Lcom/mixpanel/android/surveys/SurveyActivity$1;
invoke-direct {v1, p0}, Lcom/mixpanel/android/surveys/SurveyActivity$1;-><init>(Lcom/mixpanel/android/surveys/SurveyActivity;)V
invoke-virtual {v0, v1}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Lcom/mixpanel/android/surveys/b;)V
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState;->a()Lcom/mixpanel/android/mpmetrics/Survey;
move-result-object v0
iget-object v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/SurveyState;->b()Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_af
const-string v0, "MixpanelAPI"
const-string v1, "Can\'t show a survey to a user with no distinct id set"
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->finish()V
goto :goto_33
:cond_9e
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getWindow()Landroid/view/Window;
move-result-object v1
new-instance v2, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_57
:cond_af
iget-object v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;
invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/SurveyState;->c()Ljava/lang/String;
move-result-object v2
invoke-static {p0, v2}, Lcom/mixpanel/android/mpmetrics/l;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/l;
move-result-object v2
iput-object v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->a:Lcom/mixpanel/android/mpmetrics/l;
iget-object v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->a:Lcom/mixpanel/android/mpmetrics/l;
invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/l;->b()Lcom/mixpanel/android/mpmetrics/o;
move-result-object v2
invoke-interface {v2, v1}, Lcom/mixpanel/android/mpmetrics/o;->b(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/o;
move-result-object v1
const-string v2, "$surveys"
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/Survey;->b()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/mixpanel/android/mpmetrics/o;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v2, "$collections"
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/Survey;->c()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-interface {v1, v2, v0}, Lcom/mixpanel/android/mpmetrics/o;->a(Ljava/lang/String;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->a:Lcom/mixpanel/android/mpmetrics/l;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/l;->a()V
iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I
invoke-direct {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->a(I)V
goto/16 :goto_33
.end method
.method protected onDestroy()V
.registers 10
const-string v1, " + Lcom/mixpanel/android/surveys/SurveyActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->a:Lcom/mixpanel/android/mpmetrics/l;
if-eqz v0, :cond_b7
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;
if-eqz v0, :cond_b2
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState;->a()Lcom/mixpanel/android/mpmetrics/Survey;
move-result-object v1
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/Survey;->d()Ljava/util/List;
move-result-object v0
iget-object v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;
invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/SurveyState;->b()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->a:Lcom/mixpanel/android/mpmetrics/l;
invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/l;->b()Lcom/mixpanel/android/mpmetrics/o;
move-result-object v3
invoke-interface {v3, v2}, Lcom/mixpanel/android/mpmetrics/o;->b(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/o;
move-result-object v2
const-string v3, "$responses"
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/Survey;->c()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-interface {v2, v3, v4}, Lcom/mixpanel/android/mpmetrics/o;->a(Ljava/lang/String;Ljava/lang/Object;)V
iget-object v3, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;
invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/SurveyState;->e()Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;
move-result-object v3
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_39
:goto_39
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_b2
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mixpanel/android/mpmetrics/w;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/w;->a()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v3, v5}, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;->a(Ljava/lang/Integer;)Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_39
:try_start_53
new-instance v6, Lorg/json/JSONObject;
invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
const-string v7, "$survey_id"
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/Survey;->b()I
move-result v8
invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string v7, "$collection_id"
invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/Survey;->c()I
move-result v8
invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string v7, "$question_id"
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/w;->a()I
move-result v8
invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string v7, "$question_type"
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/w;->d()Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
move-result-object v0
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v7, "yyyy-MM-dd\'T\'HH:mm:ss"
invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
const-string v7, "UTC"
invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v7
invoke-virtual {v0, v7}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
const-string v7, "$time"
new-instance v8, Ljava/util/Date;
invoke-direct {v8}, Ljava/util/Date;-><init>()V
invoke-virtual {v0, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "$value"
invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "$answers"
invoke-interface {v2, v0, v6}, Lcom/mixpanel/android/mpmetrics/o;->a(Ljava/lang/String;Ljava/lang/Object;)V
:try_end_a8
.catch Lorg/json/JSONException; {:try_start_53 .. :try_end_a8} :catch_a9
goto :goto_39
:catch_a9
move-exception v0
const-string v5, "MixpanelAPI"
const-string v6, "Couldn\'t record user\'s answer."
invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_39
:cond_b2
iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->a:Lcom/mixpanel/android/mpmetrics/l;
invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/l;->a()V
:cond_b7
iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->h:I
invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState;->a(I)V
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
const-string v1, " - Lcom/mixpanel/android/surveys/SurveyActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/mixpanel/android/surveys/SurveyActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "com.mixpanel.android.surveys.SurveyActivity.CURRENT_QUESTION_BUNDLE_KEY"
iget v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "com.mixpanel.android.surveys.SurveyActivity.SURVEY_STATE_BUNDLE_KEY"
iget-object v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v1, " - Lcom/mixpanel/android/surveys/SurveyActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method