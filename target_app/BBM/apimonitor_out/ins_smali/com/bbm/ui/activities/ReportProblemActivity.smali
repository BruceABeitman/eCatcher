.class public Lcom/bbm/ui/activities/ReportProblemActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "ReportProblemActivity.java"
.field protected a:Lcom/bbm/d/a;
.field public b:Lcom/bbm/j/k;
.field private c:Lcom/bbm/ui/HeaderButtonActionBar;
.field private d:Landroid/view/View;
.field private e:Landroid/view/View;
.field private f:Landroid/widget/TextView;
.field private g:Landroid/widget/EditText;
.field private h:Landroid/widget/EditText;
.field private i:Landroid/widget/Button;
.field private j:Landroid/widget/Button;
.field private k:Landroid/view/View;
.field private l:Landroid/widget/ProgressBar;
.field private m:Landroid/widget/TextView;
.field private n:Landroid/view/View;
.field private o:Landroid/widget/TextView;
.field private p:Landroid/widget/TextView;
.field private q:Z
.field private final r:Landroid/view/View$OnTouchListener;
.field private final s:Landroid/text/TextWatcher;
.field private final t:Landroid/text/TextWatcher;
.field private u:Z
.field private v:Lcom/bbm/ui/activities/ado;
.field private w:Lcom/google/b/a/l;
.field private x:Lcom/google/b/a/l;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->a:Lcom/bbm/d/a;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->q:Z
new-instance v0, Lcom/bbm/ui/activities/ade;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ade;-><init>(Lcom/bbm/ui/activities/ReportProblemActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->r:Landroid/view/View$OnTouchListener;
new-instance v0, Lcom/bbm/ui/activities/adf;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/adf;-><init>(Lcom/bbm/ui/activities/ReportProblemActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->s:Landroid/text/TextWatcher;
new-instance v0, Lcom/bbm/ui/activities/adg;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/adg;-><init>(Lcom/bbm/ui/activities/ReportProblemActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->t:Landroid/text/TextWatcher;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->u:Z
new-instance v0, Lcom/bbm/ui/activities/adh;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/adh;-><init>(Lcom/bbm/ui/activities/ReportProblemActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->b:Lcom/bbm/j/k;
sget-object v0, Lcom/bbm/ui/activities/ado;->a:Lcom/bbm/ui/activities/ado;
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->v:Lcom/bbm/ui/activities/ado;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->w:Lcom/google/b/a/l;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->x:Lcom/google/b/a/l;
new-instance v0, Lcom/bbm/ui/fv;
invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Lcom/bbm/ui/activities/aka;)V
new-instance v0, Lcom/bbm/ui/voice/o;
invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Lcom/bbm/ui/activities/aka;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ReportProblemActivity;)Lcom/google/b/a/l;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->w:Lcom/google/b/a/l;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ReportProblemActivity;Lcom/google/b/a/l;)Lcom/google/b/a/l;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->w:Lcom/google/b/a/l;
return-object p1
.end method
.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/bbm/ui/activities/ReportProblemActivity;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(Lcom/bbm/ui/activities/ado;)V
.registers 8
const/4 v3, 0x1
const/16 v2, 0x8
const/4 v1, 0x0
invoke-static {p0, v3}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;Z)V
iput-object p1, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->v:Lcom/bbm/ui/activities/ado;
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->v:Lcom/bbm/ui/activities/ado;
sget-object v4, Lcom/bbm/ui/activities/ado;->d:Lcom/bbm/ui/activities/ado;
if-ne v0, v4, :cond_13
invoke-virtual {p0}, Lcom/bbm/ui/activities/ReportProblemActivity;->finish()V
:pswitch_12
:goto_12
return-void
:cond_13
iget-object v4, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->e:Landroid/view/View;
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->v:Lcom/bbm/ui/activities/ado;
sget-object v5, Lcom/bbm/ui/activities/ado;->a:Lcom/bbm/ui/activities/ado;
if-ne v0, v5, :cond_7e
move v0, v1
:goto_1c
invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v4, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->k:Landroid/view/View;
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->v:Lcom/bbm/ui/activities/ado;
sget-object v5, Lcom/bbm/ui/activities/ado;->b:Lcom/bbm/ui/activities/ado;
if-ne v0, v5, :cond_80
move v0, v1
:goto_28
invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v4, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->n:Landroid/view/View;
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->v:Lcom/bbm/ui/activities/ado;
sget-object v5, Lcom/bbm/ui/activities/ado;->c:Lcom/bbm/ui/activities/ado;
if-ne v0, v5, :cond_82
move v0, v1
:goto_34
invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V
iget-object v4, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->c:Lcom/bbm/ui/HeaderButtonActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->v:Lcom/bbm/ui/activities/ado;
sget-object v5, Lcom/bbm/ui/activities/ado;->c:Lcom/bbm/ui/activities/ado;
if-eq v0, v5, :cond_84
move v0, v3
:goto_40
invoke-virtual {v4, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonEnabled(Z)V
iget-object v4, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->c:Lcom/bbm/ui/HeaderButtonActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->v:Lcom/bbm/ui/activities/ado;
sget-object v5, Lcom/bbm/ui/activities/ado;->c:Lcom/bbm/ui/activities/ado;
if-ne v0, v5, :cond_86
move v0, v3
:goto_4c
invoke-virtual {v4, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
sget-object v0, Lcom/bbm/ui/activities/adi;->a:[I
iget-object v4, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->v:Lcom/bbm/ui/activities/ado;
invoke-virtual {v4}, Lcom/bbm/ui/activities/ado;->ordinal()I
move-result v4
aget v0, v0, v4
packed-switch v0, :pswitch_data_c4
goto :goto_12
:pswitch_5d
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->m:Landroid/widget/TextView;
const v2, 0x7f0e0610
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V
new-instance v0, Lcom/bbm/ui/activities/adj;
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/adj;-><init>(Lcom/bbm/ui/activities/ReportProblemActivity;B)V
invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->w:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->w:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/adj;
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/adj;->c([Ljava/lang/Object;)Lcom/bbm/util/b;
goto :goto_12
:cond_7e
move v0, v2
goto :goto_1c
:cond_80
move v0, v2
goto :goto_28
:cond_82
move v0, v2
goto :goto_34
:cond_84
move v0, v1
goto :goto_40
:cond_86
move v0, v1
goto :goto_4c
:pswitch_88
iget-object v4, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->o:Landroid/widget/TextView;
iget-boolean v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->q:Z
if-eqz v0, :cond_b5
move v0, v1
:goto_8f
invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V
invoke-direct {p0}, Lcom/bbm/ui/activities/ReportProblemActivity;->a()Z
move-result v0
if-eqz v0, :cond_b7
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->p:Landroid/widget/TextView;
const v2, 0x7f0e0612
new-array v3, v3, [Ljava/lang/Object;
iget-object v4, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->h:Landroid/widget/EditText;
invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v4
aput-object v4, v3, v1
invoke-virtual {p0, v2, v3}, Lcom/bbm/ui/activities/ReportProblemActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->p:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_12
:cond_b5
move v0, v2
goto :goto_8f
:cond_b7
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->p:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_12
:pswitch_be
invoke-virtual {p0}, Lcom/bbm/ui/activities/ReportProblemActivity;->finish()V
goto/16 :goto_12
nop
:pswitch_data_c4
.packed-switch 0x1
:pswitch_12
:pswitch_5d
:pswitch_88
:pswitch_be
.end packed-switch
.end method
.method private a()Z
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->h:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "INC[0-9]{12}"
invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/ReportProblemActivity;)Lcom/google/b/a/l;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->x:Lcom/google/b/a/l;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/ReportProblemActivity;Lcom/google/b/a/l;)Lcom/google/b/a/l;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->x:Lcom/google/b/a/l;
return-object p1
.end method
.method private static b(Ljava/lang/String;)Ljava/lang/String;
.registers 2
:try_start_0
const-string v0, "UTF-8"
invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:try_end_5
.catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
:goto_6
return-object v0
:catch_7
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
const-string v0, ""
goto :goto_6
.end method
.method static synthetic c(Lcom/bbm/ui/activities/ReportProblemActivity;)V
.registers 3
sget-object v0, Lcom/bbm/ui/activities/adi;->a:[I
iget-object v1, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->v:Lcom/bbm/ui/activities/ado;
invoke-virtual {v1}, Lcom/bbm/ui/activities/ado;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_20
:goto_d
return-void
:pswitch_e
sget-object v0, Lcom/bbm/ui/activities/ado;->b:Lcom/bbm/ui/activities/ado;
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Lcom/bbm/ui/activities/ado;)V
goto :goto_d
:pswitch_14
sget-object v0, Lcom/bbm/ui/activities/ado;->c:Lcom/bbm/ui/activities/ado;
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Lcom/bbm/ui/activities/ado;)V
goto :goto_d
:pswitch_1a
sget-object v0, Lcom/bbm/ui/activities/ado;->d:Lcom/bbm/ui/activities/ado;
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->a(Lcom/bbm/ui/activities/ado;)V
goto :goto_d
:pswitch_data_20
.packed-switch 0x1
:pswitch_e
:pswitch_14
:pswitch_1a
.end packed-switch
.end method
.method static synthetic d(Lcom/bbm/ui/activities/ReportProblemActivity;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->q:Z
return v0
.end method
.method static synthetic e(Lcom/bbm/ui/activities/ReportProblemActivity;)V
.registers 4
iget-object v1, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->i:Landroid/widget/Button;
sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;
iget-object v2, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->g:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
move-result-object v0
invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z
move-result v0
if-eqz v0, :cond_1f
invoke-direct {p0}, Lcom/bbm/ui/activities/ReportProblemActivity;->a()Z
move-result v0
if-eqz v0, :cond_1f
const/4 v0, 0x1
:goto_1b
invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V
return-void
:cond_1f
const/4 v0, 0x0
goto :goto_1b
.end method
.method static synthetic f(Lcom/bbm/ui/activities/ReportProblemActivity;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->a:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->i()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_e
const-string v0, "00000000"
:cond_e
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/activities/ReportProblemActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->f:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic h(Lcom/bbm/ui/activities/ReportProblemActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->u:Z
return v0
.end method
.method static synthetic i(Lcom/bbm/ui/activities/ReportProblemActivity;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->u:Z
return v0
.end method
.method static synthetic j(Lcom/bbm/ui/activities/ReportProblemActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->g:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/activities/ReportProblemActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->q:Z
return v0
.end method
.method static synthetic l(Lcom/bbm/ui/activities/ReportProblemActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->m:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic m(Lcom/bbm/ui/activities/ReportProblemActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->h:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic n(Lcom/bbm/ui/activities/ReportProblemActivity;)Z
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/ReportProblemActivity;->a()Z
move-result v0
return v0
.end method
.method static synthetic o(Lcom/bbm/ui/activities/ReportProblemActivity;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->l:Landroid/widget/ProgressBar;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/bbm/ui/activities/ReportProblemActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, -0x1
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03004c
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->setContentView(I)V
new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;
const v1, 0x7f0e0614
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ReportProblemActivity;->getString(I)Ljava/lang/String;
move-result-object v1
const v2, 0x7f0e0173
invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/ReportProblemActivity;->getString(I)Ljava/lang/String;
move-result-object v2
const v3, 0x7f0e0302
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/ReportProblemActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->c:Lcom/bbm/ui/HeaderButtonActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->c:Lcom/bbm/ui/HeaderButtonActionBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->c:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/ada;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ada;-><init>(Lcom/bbm/ui/activities/ReportProblemActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->c:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/adb;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/adb;-><init>(Lcom/bbm/ui/activities/ReportProblemActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/ReportProblemActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->c:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v2, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
const v0, 0x7f0a027f
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->d:Landroid/view/View;
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->d:Landroid/view/View;
iget-object v1, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->r:Landroid/view/View$OnTouchListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v0, 0x7f0a027e
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->e:Landroid/view/View;
const v0, 0x7f0a0280
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->f:Landroid/widget/TextView;
const v0, 0x7f0a0281
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->g:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->g:Landroid/widget/EditText;
iget-object v1, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->s:Landroid/text/TextWatcher;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
const v0, 0x7f0a0282
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->h:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->h:Landroid/widget/EditText;
iget-object v1, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->t:Landroid/text/TextWatcher;
invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
const v0, 0x7f0a0283
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->i:Landroid/widget/Button;
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->i:Landroid/widget/Button;
new-instance v1, Lcom/bbm/ui/activities/adc;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/adc;-><init>(Lcom/bbm/ui/activities/ReportProblemActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0284
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->j:Landroid/widget/Button;
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->j:Landroid/widget/Button;
new-instance v1, Lcom/bbm/ui/activities/add;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/add;-><init>(Lcom/bbm/ui/activities/ReportProblemActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0285
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->k:Landroid/view/View;
const v0, 0x7f0a0286
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->l:Landroid/widget/ProgressBar;
const v0, 0x7f0a0287
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->m:Landroid/widget/TextView;
const v0, 0x7f0a0288
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->n:Landroid/view/View;
const v0, 0x7f0a0289
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->o:Landroid/widget/TextView;
const v0, 0x7f0a028a
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ReportProblemActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->p:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/bbm/ui/activities/ReportProblemActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "incidentId"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_118
iget-object v1, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->h:Landroid/widget/EditText;
invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:cond_118
const-string v1, " - Lcom/bbm/ui/activities/ReportProblemActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/ReportProblemActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->b:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/ReportProblemActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/ReportProblemActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onResume()V
iget-object v0, p0, Lcom/bbm/ui/activities/ReportProblemActivity;->b:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
const-string v1, " - Lcom/bbm/ui/activities/ReportProblemActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method