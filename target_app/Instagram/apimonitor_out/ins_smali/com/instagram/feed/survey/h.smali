.class public final Lcom/instagram/feed/survey/h;
.super Ljava/lang/Object;
.source "SurveyToolHelper.java"
.implements Lcom/instagram/feed/survey/a;
.field private final a:Landroid/os/Handler;
.field private final b:J
.field private final c:Lcom/instagram/feed/g/a;
.field private final d:Lcom/instagram/feed/survey/g;
.field private final e:Landroid/app/Activity;
.field private f:Lcom/instagram/feed/survey/b;
.field private g:Landroid/app/Dialog;
.field private h:Z
.field private i:I
.field private j:Z
.method public constructor <init>(Landroid/app/Activity;Lcom/instagram/feed/g/a;Lcom/instagram/feed/survey/g;)V
.registers 7
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v2, p0, Lcom/instagram/feed/survey/h;->j:Z
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/instagram/feed/survey/h;->b:J
new-instance v0, Lcom/instagram/feed/survey/n;
invoke-direct {v0, p0, v2}, Lcom/instagram/feed/survey/n;-><init>(Lcom/instagram/feed/survey/h;B)V
iput-object v0, p0, Lcom/instagram/feed/survey/h;->a:Landroid/os/Handler;
iput-object p1, p0, Lcom/instagram/feed/survey/h;->e:Landroid/app/Activity;
iput-object p2, p0, Lcom/instagram/feed/survey/h;->c:Lcom/instagram/feed/g/a;
iput-object p3, p0, Lcom/instagram/feed/survey/h;->d:Lcom/instagram/feed/survey/g;
return-void
.end method
.method private a(Landroid/app/Dialog;Lcom/instagram/feed/survey/b;)V
.registers 10
const/4 v6, 0x0
sget v0, Lcom/facebook/av;->surveySwitcher:I
invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ViewSwitcher;
sget v1, Lcom/facebook/av;->surveyList:I
invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ListView;
iget-object v2, p0, Lcom/instagram/feed/survey/h;->e:Landroid/app/Activity;
sget v3, Lcom/facebook/aw;->sentiment_tool_question:I
invoke-static {v2, v3, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/view/ViewGroup;
sget v3, Lcom/facebook/av;->title:I
invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/widget/TextView;
sget v4, Lcom/facebook/av;->subtitle:I
invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
invoke-virtual {p2}, Lcom/instagram/feed/survey/b;->b()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p2}, Lcom/instagram/feed/survey/b;->c()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p2}, Lcom/instagram/feed/survey/b;->c()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_4d
sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;
invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
const/16 v3, 0x8
invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V
:cond_4d
const/4 v3, 0x0
invoke-virtual {v1, v2, v6, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
new-instance v2, Lcom/instagram/feed/survey/e;
iget-object v3, p0, Lcom/instagram/feed/survey/h;->e:Landroid/app/Activity;
invoke-direct {v2, v3, p2}, Lcom/instagram/feed/survey/e;-><init>(Landroid/content/Context;Lcom/instagram/feed/survey/b;)V
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
new-instance v2, Lcom/instagram/feed/survey/l;
invoke-direct {v2, p0, v0, p2}, Lcom/instagram/feed/survey/l;-><init>(Lcom/instagram/feed/survey/h;Landroid/widget/ViewSwitcher;Lcom/instagram/feed/survey/b;)V
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
new-instance v0, Lcom/instagram/feed/survey/m;
invoke-direct {v0, p0, p2}, Lcom/instagram/feed/survey/m;-><init>(Lcom/instagram/feed/survey/h;Lcom/instagram/feed/survey/b;)V
invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/feed/survey/h;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/feed/survey/h;->c()V
return-void
.end method
.method static synthetic b(Lcom/instagram/feed/survey/h;)Lcom/instagram/feed/g/a;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/survey/h;->c:Lcom/instagram/feed/g/a;
return-object v0
.end method
.method static synthetic c(Lcom/instagram/feed/survey/h;)Landroid/app/Dialog;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/survey/h;->g:Landroid/app/Dialog;
return-object v0
.end method
.method private c()V
.registers 3
const/4 v0, 0x0
const/4 v1, 0x0
iput-object v0, p0, Lcom/instagram/feed/survey/h;->g:Landroid/app/Dialog;
iput-object v0, p0, Lcom/instagram/feed/survey/h;->f:Lcom/instagram/feed/survey/b;
iput-boolean v1, p0, Lcom/instagram/feed/survey/h;->j:Z
iget-object v0, p0, Lcom/instagram/feed/survey/h;->a:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/instagram/feed/survey/h;->a:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/instagram/feed/survey/h;->d:Lcom/instagram/feed/survey/g;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/instagram/feed/survey/h;->d:Lcom/instagram/feed/survey/g;
invoke-interface {v0, p0}, Lcom/instagram/feed/survey/g;->b(Lcom/instagram/feed/survey/a;)V
:cond_1c
return-void
.end method
.method private c(Lcom/instagram/feed/survey/b;)V
.registers 5
new-instance v0, Lcom/instagram/ui/dialog/b;
iget-object v1, p0, Lcom/instagram/feed/survey/h;->e:Landroid/app/Activity;
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->survey_help_improve_instagram_message:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->b()Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->survey_dialog_title:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->survey_dialog_next:I
new-instance v2, Lcom/instagram/feed/survey/j;
invoke-direct {v2, p0, p1}, Lcom/instagram/feed/survey/j;-><init>(Lcom/instagram/feed/survey/h;Lcom/instagram/feed/survey/b;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
new-instance v1, Lcom/instagram/feed/survey/k;
invoke-direct {v1, p0, p1}, Lcom/instagram/feed/survey/k;-><init>(Lcom/instagram/feed/survey/h;Lcom/instagram/feed/survey/b;)V
invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method private d()V
.registers 5
const/4 v3, 0x1
iget-object v0, p0, Lcom/instagram/feed/survey/h;->a:Landroid/os/Handler;
invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V
iget v0, p0, Lcom/instagram/feed/survey/h;->i:I
if-nez v0, :cond_18
iget-boolean v0, p0, Lcom/instagram/feed/survey/h;->h:Z
if-nez v0, :cond_18
iget-object v0, p0, Lcom/instagram/feed/survey/h;->a:Landroid/os/Handler;
invoke-direct {p0}, Lcom/instagram/feed/survey/h;->e()I
move-result v1
int-to-long v1, v1
invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:cond_18
return-void
.end method
.method static synthetic d(Lcom/instagram/feed/survey/h;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/feed/survey/h;->j:Z
return v0
.end method
.method private e()I
.registers 9
const-wide/16 v0, 0x7d0
const-wide/16 v2, 0x3a98
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
iget-wide v6, p0, Lcom/instagram/feed/survey/h;->b:J
sub-long/2addr v4, v6
sub-long/2addr v2, v4
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J
move-result-wide v0
long-to-int v0, v0
return v0
.end method
.method static synthetic e(Lcom/instagram/feed/survey/h;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/survey/h;->a:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic f(Lcom/instagram/feed/survey/h;)Landroid/app/Activity;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/survey/h;->e:Landroid/app/Activity;
return-object v0
.end method
.method private f()Z
.registers 2
iget-object v0, p0, Lcom/instagram/feed/survey/h;->d:Lcom/instagram/feed/survey/g;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/instagram/feed/survey/h;->d:Lcom/instagram/feed/survey/g;
invoke-interface {v0}, Lcom/instagram/feed/survey/g;->r()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x0
:goto_d
return v0
:cond_e
const/4 v0, 0x1
goto :goto_d
.end method
.method static synthetic g(Lcom/instagram/feed/survey/h;)Z
.registers 2
invoke-direct {p0}, Lcom/instagram/feed/survey/h;->f()Z
move-result v0
return v0
.end method
.method static synthetic h(Lcom/instagram/feed/survey/h;)Lcom/instagram/feed/survey/b;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/survey/h;->f:Lcom/instagram/feed/survey/b;
return-object v0
.end method
.method static synthetic i(Lcom/instagram/feed/survey/h;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/feed/survey/h;->d()V
return-void
.end method
.method static synthetic j(Lcom/instagram/feed/survey/h;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/feed/survey/h;->j:Z
return v0
.end method
.method public final a()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/feed/survey/h;->h:Z
iget-object v0, p0, Lcom/instagram/feed/survey/h;->f:Lcom/instagram/feed/survey/b;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/feed/survey/h;->f:Lcom/instagram/feed/survey/b;
invoke-virtual {p0, v0}, Lcom/instagram/feed/survey/h;->b(Lcom/instagram/feed/survey/b;)V
:cond_c
return-void
.end method
.method public final a(I)V
.registers 2
invoke-virtual {p0, p1}, Lcom/instagram/feed/survey/h;->b(I)V
invoke-direct {p0}, Lcom/instagram/feed/survey/h;->d()V
return-void
.end method
.method public final a(Lcom/instagram/feed/survey/b;)V
.registers 6
if-eqz p1, :cond_15
invoke-virtual {p1}, Lcom/instagram/feed/survey/b;->f()I
move-result v0
sget v1, Lcom/instagram/feed/survey/d;->b:I
if-ne v0, v1, :cond_16
iget-object v0, p0, Lcom/instagram/feed/survey/h;->c:Lcom/instagram/feed/g/a;
invoke-interface {v0}, Lcom/instagram/feed/g/a;->n_()Z
move-result v0
if-nez v0, :cond_16
invoke-direct {p0}, Lcom/instagram/feed/survey/h;->c()V
:cond_15
:goto_15
return-void
:cond_16
new-instance v0, Lcom/instagram/ui/dialog/b;
iget-object v1, p0, Lcom/instagram/feed/survey/h;->e:Landroid/app/Activity;
sget v2, Lcom/facebook/aw;->sentiment_tool:I
sget v3, Lcom/facebook/ba;->IgDialog:I
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;II)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->survey_dialog_title:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
iput-object v0, p0, Lcom/instagram/feed/survey/h;->g:Landroid/app/Dialog;
iget-object v0, p0, Lcom/instagram/feed/survey/h;->g:Landroid/app/Dialog;
invoke-direct {p0, v0, p1}, Lcom/instagram/feed/survey/h;->a(Landroid/app/Dialog;Lcom/instagram/feed/survey/b;)V
iget-object v0, p0, Lcom/instagram/feed/survey/h;->g:Landroid/app/Dialog;
new-instance v1, Lcom/instagram/feed/survey/i;
invoke-direct {v1, p0}, Lcom/instagram/feed/survey/i;-><init>(Lcom/instagram/feed/survey/h;)V
invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
invoke-virtual {p1}, Lcom/instagram/feed/survey/b;->e()Z
move-result v0
if-eqz v0, :cond_4b
invoke-direct {p0, p1}, Lcom/instagram/feed/survey/h;->c(Lcom/instagram/feed/survey/b;)V
goto :goto_15
:cond_4b
iget-object v0, p0, Lcom/instagram/feed/survey/h;->g:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
goto :goto_15
.end method
.method public final b()V
.registers 3
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/instagram/feed/survey/h;->h:Z
iget-object v0, p0, Lcom/instagram/feed/survey/h;->a:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/instagram/feed/survey/h;->a:Landroid/os/Handler;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/instagram/feed/survey/h;->d:Lcom/instagram/feed/survey/g;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/instagram/feed/survey/h;->d:Lcom/instagram/feed/survey/g;
invoke-interface {v0, p0}, Lcom/instagram/feed/survey/g;->b(Lcom/instagram/feed/survey/a;)V
:cond_17
iget-object v0, p0, Lcom/instagram/feed/survey/h;->g:Landroid/app/Dialog;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/instagram/feed/survey/h;->g:Landroid/app/Dialog;
invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
:cond_20
return-void
.end method
.method public final b(I)V
.registers 2
iput p1, p0, Lcom/instagram/feed/survey/h;->i:I
return-void
.end method
.method public final b(Lcom/instagram/feed/survey/b;)V
.registers 3
iput-object p1, p0, Lcom/instagram/feed/survey/h;->f:Lcom/instagram/feed/survey/b;
iget-object v0, p0, Lcom/instagram/feed/survey/h;->d:Lcom/instagram/feed/survey/g;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/instagram/feed/survey/h;->d:Lcom/instagram/feed/survey/g;
invoke-interface {v0, p0}, Lcom/instagram/feed/survey/g;->a(Lcom/instagram/feed/survey/a;)V
:cond_b
invoke-direct {p0}, Lcom/instagram/feed/survey/h;->d()V
return-void
.end method