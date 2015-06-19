.class final Lcom/mixpanel/android/surveys/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/mixpanel/android/surveys/CardCarouselLayout;
.field private b:Lcom/mixpanel/android/mpmetrics/w;
.field private final c:Landroid/view/View;
.field private final d:Landroid/widget/TextView;
.field private final e:Landroid/widget/TextView;
.field private final f:Landroid/widget/ListView;
.method public constructor <init>(Lcom/mixpanel/android/surveys/CardCarouselLayout;Landroid/view/View;)V
.registers 5
iput-object p1, p0, Lcom/mixpanel/android/surveys/c;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/mixpanel/android/surveys/c;->c:Landroid/view/View;
const-string v0, "com_mixpanel_android_TAG_prompt_text"
invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/mixpanel/android/surveys/c;->d:Landroid/widget/TextView;
const-string v0, "com_mixpanel_android_TAG_text_answer"
invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/mixpanel/android/surveys/c;->e:Landroid/widget/TextView;
const-string v0, "com_mixpanel_android_TAG_choice_list"
invoke-virtual {p2, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/mixpanel/android/surveys/c;->f:Landroid/widget/ListView;
iget-object v0, p0, Lcom/mixpanel/android/surveys/c;->e:Landroid/widget/TextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/mixpanel/android/surveys/c;->e:Landroid/widget/TextView;
new-instance v1, Lcom/mixpanel/android/surveys/c$1;
invoke-direct {v1, p0, p1}, Lcom/mixpanel/android/surveys/c$1;-><init>(Lcom/mixpanel/android/surveys/c;Lcom/mixpanel/android/surveys/CardCarouselLayout;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
iget-object v0, p0, Lcom/mixpanel/android/surveys/c;->f:Landroid/widget/ListView;
new-instance v1, Lcom/mixpanel/android/surveys/c$2;
invoke-direct {v1, p0, p1}, Lcom/mixpanel/android/surveys/c$2;-><init>(Lcom/mixpanel/android/surveys/c;Lcom/mixpanel/android/surveys/CardCarouselLayout;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return-void
.end method
.method static synthetic a(Lcom/mixpanel/android/surveys/c;)Lcom/mixpanel/android/mpmetrics/w;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/surveys/c;->b:Lcom/mixpanel/android/mpmetrics/w;
return-object v0
.end method
.method public final a()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/mixpanel/android/surveys/c;->c:Landroid/view/View;
return-object v0
.end method
.method public final a(Lcom/mixpanel/android/mpmetrics/w;Ljava/lang/String;)V
.registers 9
const/16 v5, 0x8
const/4 v4, 0x1
const/4 v1, 0x0
iput-object p1, p0, Lcom/mixpanel/android/surveys/c;->b:Lcom/mixpanel/android/mpmetrics/w;
iget-object v0, p0, Lcom/mixpanel/android/surveys/c;->d:Landroid/widget/TextView;
iget-object v2, p0, Lcom/mixpanel/android/surveys/c;->b:Lcom/mixpanel/android/mpmetrics/w;
invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/w;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/mixpanel/android/surveys/c;->c:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v0
const-string v2, "input_method"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/w;->d()Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
move-result-object v2
sget-object v3, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->c:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
if-ne v3, v2, :cond_60
iget-object v2, p0, Lcom/mixpanel/android/surveys/c;->f:Landroid/widget/ListView;
invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v2, p0, Lcom/mixpanel/android/surveys/c;->e:Landroid/widget/TextView;
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V
if-eqz p2, :cond_38
iget-object v2, p0, Lcom/mixpanel/android/surveys/c;->e:Landroid/widget/TextView;
invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_38
iget-object v2, p0, Lcom/mixpanel/android/surveys/c;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;
invoke-virtual {v2}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v2
iget v2, v2, Landroid/content/res/Configuration;->orientation:I
if-ne v2, v4, :cond_56
iget-object v2, p0, Lcom/mixpanel/android/surveys/c;->e:Landroid/widget/TextView;
invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z
iget-object v2, p0, Lcom/mixpanel/android/surveys/c;->e:Landroid/widget/TextView;
invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
:goto_50
:cond_50
iget-object v0, p0, Lcom/mixpanel/android/surveys/c;->c:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->invalidate()V
return-void
:cond_56
iget-object v2, p0, Lcom/mixpanel/android/surveys/c;->c:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v2
invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
goto :goto_50
:cond_60
sget-object v3, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->b:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
if-ne v3, v2, :cond_af
iget-object v2, p0, Lcom/mixpanel/android/surveys/c;->c:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v2
invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
iget-object v0, p0, Lcom/mixpanel/android/surveys/c;->f:Landroid/widget/ListView;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/mixpanel/android/surveys/c;->e:Landroid/widget/TextView;
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
new-instance v2, Lcom/mixpanel/android/surveys/a;
invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/w;->c()Ljava/util/List;
move-result-object v0
iget-object v3, p0, Lcom/mixpanel/android/surveys/c;->a:Lcom/mixpanel/android/surveys/CardCarouselLayout;
invoke-virtual {v3}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v3
invoke-direct {v2, v0, v3}, Lcom/mixpanel/android/surveys/a;-><init>(Ljava/util/List;Landroid/view/LayoutInflater;)V
iget-object v0, p0, Lcom/mixpanel/android/surveys/c;->f:Landroid/widget/ListView;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/mixpanel/android/surveys/c;->f:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V
if-eqz p2, :cond_50
move v0, v1
:goto_97
invoke-virtual {v2}, Lcom/mixpanel/android/surveys/a;->getCount()I
move-result v1
if-ge v0, v1, :cond_50
invoke-virtual {v2, v0}, Lcom/mixpanel/android/surveys/a;->a(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_ac
iget-object v1, p0, Lcom/mixpanel/android/surveys/c;->f:Landroid/widget/ListView;
invoke-virtual {v1, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V
:cond_ac
add-int/lit8 v0, v0, 0x1
goto :goto_97
:cond_af
new-instance v0, Lcom/mixpanel/android/surveys/CardCarouselLayout$UnrecognizedAnswerTypeException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "No way to display question type "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2, v1}, Lcom/mixpanel/android/surveys/CardCarouselLayout$UnrecognizedAnswerTypeException;-><init>(Ljava/lang/String;B)V
throw v0
.end method