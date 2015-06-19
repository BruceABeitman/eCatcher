.class public Lnet/hockeyapp/android/FeedbackActivity;
.super Landroid/app/Activity;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field private final a:I
.field private b:Landroid/content/Context;
.field private c:Landroid/widget/TextView;
.field private d:Landroid/widget/EditText;
.field private e:Landroid/widget/EditText;
.field private f:Landroid/widget/EditText;
.field private g:Landroid/widget/EditText;
.field private h:Landroid/widget/Button;
.field private i:Landroid/widget/Button;
.field private j:Landroid/widget/Button;
.field private k:Landroid/widget/ScrollView;
.field private l:Landroid/widget/LinearLayout;
.field private m:Landroid/widget/ListView;
.field private n:Lnet/hockeyapp/android/c/d;
.field private o:Landroid/os/Handler;
.field private p:Lnet/hockeyapp/android/c/c;
.field private q:Landroid/os/Handler;
.field private r:Ljava/lang/String;
.field private s:Lnet/hockeyapp/android/objects/ErrorObject;
.field private t:Lnet/hockeyapp/android/a/a;
.field private u:Ljava/util/ArrayList;
.field private v:Z
.field private w:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->a:I
return-void
.end method
.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->u:Ljava/util/ArrayList;
return-object p1
.end method
.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/a/a;)Lnet/hockeyapp/android/a/a;
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->t:Lnet/hockeyapp/android/a/a;
return-object p1
.end method
.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/objects/ErrorObject;
.registers 2
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->s:Lnet/hockeyapp/android/objects/ErrorObject;
return-object v0
.end method
.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/ErrorObject;)Lnet/hockeyapp/android/objects/ErrorObject;
.registers 2
iput-object p1, p0, Lnet/hockeyapp/android/FeedbackActivity;->s:Lnet/hockeyapp/android/objects/ErrorObject;
return-object p1
.end method
.method private a()V
.registers 10
const/4 v8, 0x1
const/4 v2, 0x0
invoke-static {}, Lnet/hockeyapp/android/d/e;->a()Lnet/hockeyapp/android/d/e;
move-result-object v0
invoke-virtual {v0, p0}, Lnet/hockeyapp/android/d/e;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->w:Ljava/lang/String;
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->w:Ljava/lang/String;
if-nez v0, :cond_15
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->a(Z)V
:goto_14
return-void
:cond_15
invoke-virtual {p0, v8}, Lnet/hockeyapp/android/FeedbackActivity;->a(Z)V
iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->r:Ljava/lang/String;
iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity;->w:Ljava/lang/String;
iget-object v7, p0, Lnet/hockeyapp/android/FeedbackActivity;->o:Landroid/os/Handler;
move-object v0, p0
move-object v3, v2
move-object v4, v2
move-object v5, v2
invoke-direct/range {v0 .. v8}, Lnet/hockeyapp/android/FeedbackActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
goto :goto_14
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
.registers 19
new-instance v0, Lnet/hockeyapp/android/c/d;
iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->b:Landroid/content/Context;
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
move-object/from16 v7, p6
move-object/from16 v8, p7
move/from16 v9, p8
invoke-direct/range {v0 .. v9}, Lnet/hockeyapp/android/c/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->n:Lnet/hockeyapp/android/c/d;
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->n:Lnet/hockeyapp/android/c/d;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/c/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;Ljava/lang/String;)V
.registers 4
new-instance v0, Lnet/hockeyapp/android/c/c;
iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->q:Landroid/os/Handler;
invoke-direct {v0, p0, p1, v1}, Lnet/hockeyapp/android/c/c;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->p:Lnet/hockeyapp/android/c/c;
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->p:Lnet/hockeyapp/android/c/c;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/c/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method static synthetic a(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/FeedbackResponse;)V
.registers 3
new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$4;
invoke-direct {v0, p0, p1}, Lnet/hockeyapp/android/FeedbackActivity$4;-><init>(Lnet/hockeyapp/android/FeedbackActivity;Lnet/hockeyapp/android/objects/FeedbackResponse;)V
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic b(Lnet/hockeyapp/android/FeedbackActivity;)V
.registers 2
new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$1;
invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$1;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic c(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->b:Landroid/content/Context;
return-object v0
.end method
.method static synthetic d(Lnet/hockeyapp/android/FeedbackActivity;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->v:Z
return v0
.end method
.method static synthetic e(Lnet/hockeyapp/android/FeedbackActivity;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->u:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic f(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->c:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic g(Lnet/hockeyapp/android/FeedbackActivity;)Lnet/hockeyapp/android/a/a;
.registers 2
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->t:Lnet/hockeyapp/android/a/a;
return-object v0
.end method
.method static synthetic h(Lnet/hockeyapp/android/FeedbackActivity;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->m:Landroid/widget/ListView;
return-object v0
.end method
.method protected final a(Z)V
.registers 7
const/16 v4, 0x8
const/4 v3, 0x0
const v0, 0x20017
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ScrollView;
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->k:Landroid/widget/ScrollView;
const v0, 0x20015
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->l:Landroid/widget/LinearLayout;
const v0, 0x20016
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->m:Landroid/widget/ListView;
if-eqz p1, :cond_5b
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->l:Landroid/widget/LinearLayout;
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->k:Landroid/widget/ScrollView;
invoke-virtual {v0, v4}, Landroid/widget/ScrollView;->setVisibility(I)V
const/16 v0, 0x2000
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->c:Landroid/widget/TextView;
const v0, 0x20010
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->i:Landroid/widget/Button;
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->i:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x20011
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->j:Landroid/widget/Button;
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->j:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_5a
return-void
:cond_5b
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->l:Landroid/widget/LinearLayout;
invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->k:Landroid/widget/ScrollView;
invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setVisibility(I)V
const/16 v0, 0x2002
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->d:Landroid/widget/EditText;
const/16 v0, 0x2004
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/widget/EditText;
const/16 v0, 0x2006
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/EditText;
const/16 v0, 0x2008
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->g:Landroid/widget/EditText;
invoke-static {}, Lnet/hockeyapp/android/d/e;->a()Lnet/hockeyapp/android/d/e;
move-result-object v0
iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->b:Landroid/content/Context;
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/d/e;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_e5
const-string v1, "\\|"
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_bc
array-length v1, v0
const/4 v2, 0x3
if-ne v1, v2, :cond_bc
iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->d:Landroid/widget/EditText;
aget-object v2, v0, v3
invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/widget/EditText;
const/4 v2, 0x1
aget-object v2, v0, v2
invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/EditText;
const/4 v2, 0x2
aget-object v0, v0, v2
invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
:goto_bc
:cond_bc
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->g:Landroid/widget/EditText;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
invoke-static {}, Lnet/hockeyapp/android/d/e;->a()Lnet/hockeyapp/android/d/e;
move-result-object v0
iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->b:Landroid/content/Context;
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/d/e;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_fb
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/EditText;
invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V
:goto_d4
const/16 v0, 0x2009
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->h:Landroid/widget/Button;
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->h:Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto/16 :goto_5a
:cond_e5
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->d:Landroid/widget/EditText;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/widget/EditText;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/EditText;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
goto :goto_bc
:cond_fb
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/EditText;
invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V
goto :goto_d4
.end method
.method public final b(Z)V
.registers 3
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->h:Landroid/widget/Button;
if-eqz v0, :cond_9
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->h:Landroid/widget/Button;
invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V
:cond_9
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lnet/hockeyapp/android/FeedbackActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v9, 0x1
const/4 v2, 0x0
const/4 v8, 0x0
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
sparse-switch v0, :sswitch_data_f6
:goto_a
const-string v1, " - Lnet/hockeyapp/android/FeedbackActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_b
invoke-virtual {p0, v8}, Lnet/hockeyapp/android/FeedbackActivity;->b(Z)V
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->d:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_5e
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_5e
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_5e
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->g:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-gtz v0, :cond_73
:cond_5e
new-instance v0, Lnet/hockeyapp/android/objects/ErrorObject;
invoke-direct {v0}, Lnet/hockeyapp/android/objects/ErrorObject;-><init>()V
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->s:Lnet/hockeyapp/android/objects/ErrorObject;
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->s:Lnet/hockeyapp/android/objects/ErrorObject;
const-string v1, "Please provide all details"
invoke-virtual {v0, v1}, Lnet/hockeyapp/android/objects/ErrorObject;->a(Ljava/lang/String;)V
invoke-virtual {p0, v8}, Lnet/hockeyapp/android/FeedbackActivity;->showDialog(I)V
invoke-virtual {p0, v9}, Lnet/hockeyapp/android/FeedbackActivity;->b(Z)V
goto :goto_a
:cond_73
invoke-static {}, Lnet/hockeyapp/android/d/e;->a()Lnet/hockeyapp/android/d/e;
move-result-object v0
iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->b:Landroid/content/Context;
iget-object v2, p0, Lnet/hockeyapp/android/FeedbackActivity;->d:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/widget/EditText;
invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/EditText;
invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v1, v2, v3, v4}, Lnet/hockeyapp/android/d/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->r:Ljava/lang/String;
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->d:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->e:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->f:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->g:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {}, Lnet/hockeyapp/android/d/e;->a()Lnet/hockeyapp/android/d/e;
move-result-object v0
iget-object v6, p0, Lnet/hockeyapp/android/FeedbackActivity;->b:Landroid/content/Context;
invoke-virtual {v0, v6}, Lnet/hockeyapp/android/d/e;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v6
iget-object v7, p0, Lnet/hockeyapp/android/FeedbackActivity;->o:Landroid/os/Handler;
move-object v0, p0
invoke-direct/range {v0 .. v8}, Lnet/hockeyapp/android/FeedbackActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
goto/16 :goto_a
:sswitch_d6
invoke-virtual {p0, v8}, Lnet/hockeyapp/android/FeedbackActivity;->a(Z)V
iput-boolean v9, p0, Lnet/hockeyapp/android/FeedbackActivity;->v:Z
goto/16 :goto_a
:sswitch_dd
iget-object v1, p0, Lnet/hockeyapp/android/FeedbackActivity;->r:Ljava/lang/String;
invoke-static {}, Lnet/hockeyapp/android/d/e;->a()Lnet/hockeyapp/android/d/e;
move-result-object v0
iget-object v3, p0, Lnet/hockeyapp/android/FeedbackActivity;->b:Landroid/content/Context;
invoke-virtual {v0, v3}, Lnet/hockeyapp/android/d/e;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v6
iget-object v7, p0, Lnet/hockeyapp/android/FeedbackActivity;->o:Landroid/os/Handler;
move-object v0, p0
move-object v3, v2
move-object v4, v2
move-object v5, v2
move v8, v9
invoke-direct/range {v0 .. v8}, Lnet/hockeyapp/android/FeedbackActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V
goto/16 :goto_a
nop
:sswitch_data_f6
.sparse-switch
0x2009 -> :sswitch_b
0x20010 -> :sswitch_d6
0x20011 -> :sswitch_dd
.end sparse-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lnet/hockeyapp/android/FeedbackActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lnet/hockeyapp/android/views/c;
invoke-direct {v0, p0}, Lnet/hockeyapp/android/views/c;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->setContentView(Landroid/view/View;)V
const-string v0, "Feedback"
invoke-virtual {p0, v0}, Lnet/hockeyapp/android/FeedbackActivity;->setTitle(Ljava/lang/CharSequence;)V
iput-object p0, p0, Lnet/hockeyapp/android/FeedbackActivity;->b:Landroid/content/Context;
const/4 v0, 0x0
iput-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->v:Z
invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_27
const-string v1, "url"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->r:Ljava/lang/String;
:cond_27
new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$2;
invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$2;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->o:Landroid/os/Handler;
new-instance v0, Lnet/hockeyapp/android/FeedbackActivity$3;
invoke-direct {v0, p0}, Lnet/hockeyapp/android/FeedbackActivity$3;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V
iput-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->q:Landroid/os/Handler;
invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->a()V
const-string v1, " - Lnet/hockeyapp/android/FeedbackActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 5
packed-switch p1, :pswitch_data_32
const/4 v0, 0x0
:goto_4
return-object v0
:pswitch_5
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const-string v1, "An error has occured"
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
move-result-object v0
const-string v1, "Error"
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x1080027
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const-string v1, "OK"
new-instance v2, Lnet/hockeyapp/android/FeedbackActivity$5;
invoke-direct {v2, p0}, Lnet/hockeyapp/android/FeedbackActivity$5;-><init>(Lnet/hockeyapp/android/FeedbackActivity;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto :goto_4
:pswitch_data_32
.packed-switch 0x0
:pswitch_5
.end packed-switch
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
const/4 v0, 0x4
if-ne p1, v0, :cond_13
iget-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->v:Z
if-eqz v0, :cond_f
const/4 v0, 0x0
iput-boolean v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->v:Z
invoke-direct {p0}, Lnet/hockeyapp/android/FeedbackActivity;->a()V
:goto_d
const/4 v0, 0x1
:goto_e
return v0
:cond_f
invoke-virtual {p0}, Lnet/hockeyapp/android/FeedbackActivity;->finish()V
goto :goto_d
:cond_13
invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_e
.end method
.method protected onPrepareDialog(ILandroid/app/Dialog;)V
.registers 4
packed-switch p1, :pswitch_data_1a
:goto_3
return-void
:pswitch_4
check-cast p2, Landroid/app/AlertDialog;
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->s:Lnet/hockeyapp/android/objects/ErrorObject;
if-eqz v0, :cond_14
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->s:Lnet/hockeyapp/android/objects/ErrorObject;
invoke-virtual {v0}, Lnet/hockeyapp/android/objects/ErrorObject;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V
goto :goto_3
:cond_14
const-string v0, "An error has occured"
invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V
goto :goto_3
:pswitch_data_1a
.packed-switch 0x0
:pswitch_4
.end packed-switch
.end method
.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->n:Lnet/hockeyapp/android/c/d;
if-eqz v0, :cond_9
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->n:Lnet/hockeyapp/android/c/d;
invoke-virtual {v0}, Lnet/hockeyapp/android/c/d;->a()V
:cond_9
iget-object v0, p0, Lnet/hockeyapp/android/FeedbackActivity;->n:Lnet/hockeyapp/android/c/d;
return-object v0
.end method