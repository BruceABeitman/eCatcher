.class public Lcom/bbm/ui/activities/NewChannelActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "NewChannelActivity.java"
.implements Landroid/view/View$OnClickListener;
.field private A:Ljava/lang/String;
.field private B:Z
.field private C:Z
.field private E:Z
.field private F:Z
.field private G:Z
.field private H:Ljava/lang/String;
.field private I:Ljava/lang/String;
.field private final J:Lorg/json/JSONObject;
.field private final K:Lcom/bbm/d/a;
.field private L:Z
.field private M:Z
.field private N:Z
.field private O:Lcom/cropimage/f;
.field private P:Z
.field private final Q:Ljava/lang/String;
.field private R:Landroid/widget/ProgressBar;
.field private a:Lcom/bbm/ui/HeaderButtonActionBar;
.field private b:Lcom/bbm/ui/ObservingImageView;
.field private c:Landroid/widget/ImageButton;
.field private d:Landroid/widget/EditText;
.field private e:Landroid/widget/EditText;
.field private f:Landroid/widget/RelativeLayout;
.field private g:Landroid/widget/TextView;
.field private h:Landroid/widget/ImageButton;
.field private i:Landroid/widget/TextView;
.field private j:Landroid/widget/EditText;
.field private k:Landroid/widget/TextView;
.field private l:Landroid/widget/EditText;
.field private m:Landroid/widget/TextView;
.field private n:Landroid/widget/EditText;
.field private o:Landroid/widget/Spinner;
.field private p:Lcom/bbm/ui/l;
.field private q:Landroid/widget/Switch;
.field private r:Landroid/widget/Switch;
.field private s:Landroid/widget/Switch;
.field private t:Landroid/widget/Switch;
.field private u:Landroid/widget/Switch;
.field private v:Ljava/lang/String;
.field private w:I
.field private x:I
.field private y:Ljava/lang/String;
.field private z:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const/4 v0, -0x1
invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V
iput v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->w:I
iput v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->x:I
const-string v0, ""
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->I:Ljava/lang/String;
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->J:Lorg/json/JSONObject;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->K:Lcom/bbm/d/a;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->P:Z
const-string v0, "country"
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->Q:Ljava/lang/String;
new-instance v0, Lcom/bbm/ui/fv;
invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->a(Lcom/bbm/ui/activities/aka;)V
new-instance v0, Lcom/bbm/ui/voice/o;
invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->a(Lcom/bbm/ui/activities/aka;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/Switch;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->r:Landroid/widget/Switch;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/activities/NewChannelActivity;Lcom/cropimage/f;)Lcom/cropimage/f;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->O:Lcom/cropimage/f;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/NewChannelActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->I:Ljava/lang/String;
return-object p1
.end method
.method private a(Ljava/lang/String;)V
.registers 6
const/16 v3, 0x8
const/4 v2, 0x0
new-instance v0, Lcom/bbm/ui/activities/xw;
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->b:Lcom/bbm/ui/ObservingImageView;
invoke-direct {v0, p0, p0, v1, p1}, Lcom/bbm/ui/activities/xw;-><init>(Lcom/bbm/ui/activities/NewChannelActivity;Landroid/app/Activity;Lcom/bbm/ui/ObservingImageView;Ljava/lang/String;)V
new-array v1, v2, [Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/e/a;->c([Ljava/lang/Object;)Lcom/bbm/util/b;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {v0, v2}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->R:Landroid/widget/ProgressBar;
invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->c:Landroid/widget/ImageButton;
invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/NewChannelActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->M:Z
return p1
.end method
.method private b()V
.registers 9
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->d:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->v:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->e:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->H:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->j:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->y:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->l:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->z:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->n:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->A:Ljava/lang/String;
:try_start_3c
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->J:Lorg/json/JSONObject;
const-string v1, "country"
iget-object v2, p0, Lcom/bbm/ui/activities/NewChannelActivity;->o:Landroid/widget/Spinner;
invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I
move-result v2
invoke-static {v2}, Lcom/bbm/util/bb;->a(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_4d
.catch Lorg/json/JSONException; {:try_start_3c .. :try_end_4d} :catch_de
:goto_4d
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->q:Landroid/widget/Switch;
invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->B:Z
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->r:Landroid/widget/Switch;
invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->C:Z
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->s:Landroid/widget/Switch;
invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->E:Z
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->t:Landroid/widget/Switch;
invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->F:Z
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->u:Landroid/widget/Switch;
invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->G:Z
iget v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->w:I
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
iget-boolean v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->E:Z
iget-boolean v2, p0, Lcom/bbm/ui/activities/NewChannelActivity;->F:Z
iget-object v3, p0, Lcom/bbm/ui/activities/NewChannelActivity;->v:Ljava/lang/String;
iget-object v4, p0, Lcom/bbm/ui/activities/NewChannelActivity;->I:Ljava/lang/String;
iget-boolean v5, p0, Lcom/bbm/ui/activities/NewChannelActivity;->C:Z
iget-boolean v6, p0, Lcom/bbm/ui/activities/NewChannelActivity;->G:Z
iget-boolean v7, p0, Lcom/bbm/ui/activities/NewChannelActivity;->B:Z
invoke-static/range {v0 .. v7}, Lcom/bbm/d/z;->a(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZZ)Lcom/bbm/d/ak;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->J:Lorg/json/JSONObject;
invoke-virtual {v0, v1}, Lcom/bbm/d/ak;->a(Lorg/json/JSONObject;)Lcom/bbm/d/ak;
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->H:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9f
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->H:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/ak;->b(Ljava/lang/String;)Lcom/bbm/d/ak;
:cond_9f
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->y:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_ac
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->y:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/ak;->c(Ljava/lang/String;)Lcom/bbm/d/ak;
:cond_ac
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->z:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_b9
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->z:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/ak;->a(Ljava/lang/String;)Lcom/bbm/d/ak;
:cond_b9
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->A:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_c6
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->A:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/ak;->d(Ljava/lang/String;)Lcom/bbm/d/ak;
:cond_c6
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->K:Lcom/bbm/d/a;
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelActivity;->finish()V
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e02d9
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-static {p0, v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;I)V
return-void
:catch_de
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto/16 :goto_4d
.end method
.method static synthetic b(Lcom/bbm/ui/activities/NewChannelActivity;)V
.registers 4
new-instance v0, Lcom/bbm/ui/b/o;
invoke-direct {v0, p0}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v1, 0x7f0e05c9
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e02da
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a_(Ljava/lang/String;)V
const v1, 0x7f0e0171
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e04dd
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(Ljava/lang/String;)V
new-instance v1, Lcom/bbm/ui/activities/xx;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/xx;-><init>(Lcom/bbm/ui/activities/NewChannelActivity;Lcom/bbm/ui/b/o;)V
new-instance v2, Lcom/bbm/ui/activities/xy;
invoke-direct {v2, p0, v0}, Lcom/bbm/ui/activities/xy;-><init>(Lcom/bbm/ui/activities/NewChannelActivity;Lcom/bbm/ui/b/o;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0, v2}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/activities/NewChannelActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->P:Z
return p1
.end method
.method static synthetic c(Lcom/bbm/ui/activities/NewChannelActivity;)V
.registers 2
new-instance v0, Lcom/bbm/ui/activities/ya;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ya;-><init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
return-void
.end method
.method static synthetic d(Lcom/bbm/ui/activities/NewChannelActivity;)Lcom/bbm/d/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->K:Lcom/bbm/d/a;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/activities/NewChannelActivity;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/NewChannelActivity;->b()V
return-void
.end method
.method static synthetic f(Lcom/bbm/ui/activities/NewChannelActivity;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->w:I
return v0
.end method
.method static synthetic g(Lcom/bbm/ui/activities/NewChannelActivity;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->x:I
return v0
.end method
.method static synthetic h(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->g:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/activities/NewChannelActivity;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->N:Z
return v0
.end method
.method static synthetic j(Lcom/bbm/ui/activities/NewChannelActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->I:Ljava/lang/String;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/activities/NewChannelActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->P:Z
return v0
.end method
.method static synthetic l(Lcom/bbm/ui/activities/NewChannelActivity;)Lcom/cropimage/f;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->O:Lcom/cropimage/f;
return-object v0
.end method
.method static synthetic m(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->d:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic n(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/Spinner;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->o:Landroid/widget/Spinner;
return-object v0
.end method
.method static synthetic o(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/Switch;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->u:Landroid/widget/Switch;
return-object v0
.end method
.method static synthetic p(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->R:Landroid/widget/ProgressBar;
return-object v0
.end method
.method static synthetic q(Lcom/bbm/ui/activities/NewChannelActivity;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->L:Z
return v0
.end method
.method static synthetic r(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->c:Landroid/widget/ImageButton;
return-object v0
.end method
.method static synthetic s(Lcom/bbm/ui/activities/NewChannelActivity;)Lcom/bbm/ui/ObservingImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->b:Lcom/bbm/ui/ObservingImageView;
return-object v0
.end method
.method protected final a()V
.registers 3
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
iget-boolean v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->L:Z
if-eqz v0, :cond_13
iget-boolean v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->M:Z
if-eqz v0, :cond_13
iget-boolean v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->N:Z
if-eqz v0, :cond_13
const/4 v0, 0x1
:goto_f
invoke-virtual {v1, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
return-void
:cond_13
const/4 v0, 0x0
goto :goto_f
.end method
.method public finish()V
.registers 1
invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->finish()V
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 9
const/4 v4, 0x1
const/4 v2, 0x0
const/4 v3, -0x1
invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/ajy;->onActivityResult(IILandroid/content/Intent;)V
if-ne p1, v4, :cond_17
const/16 v0, 0xa
if-ne p2, v0, :cond_17
const-string v0, "imageUrl"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_17
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->a(Ljava/lang/String;)V
:cond_17
const/4 v0, 0x3
if-ne p1, v0, :cond_29
if-ne p2, v3, :cond_29
invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "path"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->a(Ljava/lang/String;)V
:cond_29
const/4 v0, 0x2
if-ne p1, v0, :cond_4d
const/16 v0, 0x2bc
if-ne p2, v0, :cond_4d
const-string v0, "category"
invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
const-string v1, "subcategory"
invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
new-instance v2, Lcom/bbm/ui/activities/xv;
invoke-direct {v2, p0, v0, v1}, Lcom/bbm/ui/activities/xv;-><init>(Lcom/bbm/ui/activities/NewChannelActivity;II)V
invoke-static {v2}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
iput v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->w:I
iput v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->x:I
iput-boolean v4, p0, Lcom/bbm/ui/activities/NewChannelActivity;->N:Z
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelActivity;->a()V
:cond_4d
const/4 v0, 0x4
if-ne p1, v0, :cond_55
if-ne p2, v3, :cond_55
invoke-direct {p0}, Lcom/bbm/ui/activities/NewChannelActivity;->b()V
:cond_55
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/NewChannelActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_34
:goto_8
const-string v1, " - Lcom/bbm/ui/activities/NewChannelActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_9
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->h:Landroid/widget/ImageButton;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->i:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->j:Landroid/widget/EditText;
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->k:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->l:Landroid/widget/EditText;
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->m:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->n:Landroid/widget/EditText;
invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->o:Landroid/widget/Spinner;
invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V
goto :goto_8
:pswitch_data_34
.packed-switch 0x7f0a022e
:pswitch_9
.end packed-switch
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 12
const-string v1, " + Lcom/bbm/ui/activities/NewChannelActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v9, 0x1
const/4 v8, 0x0
const/4 v7, -0x1
const/16 v6, 0x40
const/16 v5, 0x8
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03003d
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->setContentView(I)V
new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e02d7
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0173
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e0638
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {v0, v8}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/xr;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/xr;-><init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/xz;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/xz;-><init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->a:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v2, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v2, v7, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
const v0, 0x7f0a0224
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->b:Lcom/bbm/ui/ObservingImageView;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->b:Lcom/bbm/ui/ObservingImageView;
new-instance v1, Lcom/bbm/ui/activities/yc;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/yc;-><init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0226
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->c:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->c:Landroid/widget/ImageButton;
new-instance v1, Lcom/bbm/ui/activities/yd;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/yd;-><init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->c:Landroid/widget/ImageButton;
invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V
const v0, 0x7f0a0225
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->R:Landroid/widget/ProgressBar;
const v0, 0x7f0a0228
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->d:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->d:Landroid/widget/EditText;
invoke-static {v0, v6}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
const v0, 0x7f0a0229
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->e:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->e:Landroid/widget/EditText;
const/16 v1, 0x80
invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
new-instance v0, Lcom/bbm/ui/activities/ye;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ye;-><init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->d:Landroid/widget/EditText;
invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->d:Landroid/widget/EditText;
new-instance v1, Lcom/bbm/ui/activities/yf;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/yf;-><init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
const v0, 0x7f0a022a
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->f:Landroid/widget/RelativeLayout;
const v0, 0x7f0a022d
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->g:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->g:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e03b0
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->f:Landroid/widget/RelativeLayout;
new-instance v1, Lcom/bbm/ui/activities/yg;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/yg;-><init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a022e
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->h:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->h:Landroid/widget/ImageButton;
invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a022f
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->i:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->i:Landroid/widget/TextView;
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
const v0, 0x7f0a0230
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->j:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->j:Landroid/widget/EditText;
invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->j:Landroid/widget/EditText;
invoke-static {v0, v6}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
const v0, 0x7f0a0231
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->k:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->k:Landroid/widget/TextView;
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
const v0, 0x7f0a0232
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->l:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->l:Landroid/widget/EditText;
invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->l:Landroid/widget/EditText;
invoke-static {v0, v6}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
const v0, 0x7f0a0233
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->m:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->m:Landroid/widget/TextView;
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
const v0, 0x7f0a0234
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->n:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->n:Landroid/widget/EditText;
invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->n:Landroid/widget/EditText;
invoke-static {v0, v6}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
const v0, 0x7f0a0235
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Spinner;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->o:Landroid/widget/Spinner;
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f070001
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/util/ArrayList;
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
new-instance v0, Lcom/bbm/ui/l;
const v2, 0x7f0e01ae
invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/NewChannelActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, p0, v2, v1}, Lcom/bbm/ui/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->p:Lcom/bbm/ui/l;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->o:Landroid/widget/Spinner;
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->p:Lcom/bbm/ui/l;
invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
new-instance v0, Lcom/bbm/ui/q;
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->p:Lcom/bbm/ui/l;
new-instance v2, Lcom/bbm/ui/activities/xs;
invoke-direct {v2, p0}, Lcom/bbm/ui/activities/xs;-><init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
invoke-direct {v0, v1, v2}, Lcom/bbm/ui/q;-><init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->o:Landroid/widget/Spinner;
invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->K:Lcom/bbm/d/a;
invoke-static {p0}, Lcom/bbm/d/a;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_1de
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v0
:cond_1de
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->o:Landroid/widget/Spinner;
invoke-static {v0}, Lcom/bbm/util/bb;->a(Ljava/lang/String;)I
move-result v0
invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->o:Landroid/widget/Spinner;
invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setFocusable(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->o:Landroid/widget/Spinner;
invoke-virtual {v0, v9}, Landroid/widget/Spinner;->setFocusableInTouchMode(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->o:Landroid/widget/Spinner;
new-instance v1, Lcom/bbm/ui/activities/xt;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/xt;-><init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->o:Landroid/widget/Spinner;
invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setVisibility(I)V
const v0, 0x7f0a0236
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->q:Landroid/widget/Switch;
const v0, 0x7f0a0237
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->r:Landroid/widget/Switch;
const v0, 0x7f0a0238
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->s:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->s:Landroid/widget/Switch;
invoke-virtual {v0, v8}, Landroid/widget/Switch;->setChecked(Z)V
const v0, 0x7f0a0239
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->t:Landroid/widget/Switch;
const v0, 0x7f0a023b
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->u:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->r:Landroid/widget/Switch;
new-instance v1, Lcom/bbm/ui/activities/xu;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/xu;-><init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const-string v1, " - Lcom/bbm/ui/activities/NewChannelActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/NewChannelActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onDestroy()V
const-string v1, " - Lcom/bbm/ui/activities/NewChannelActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/NewChannelActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/NewChannelActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/bbm/ui/activities/NewChannelActivity; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onRestoreInstanceState(Landroid/os/Bundle;)V
const-string v0, "mCategoryIdAttribute"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->w:I
const-string v0, "mSubCategoryIdAttribute"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->x:I
iget v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->w:I
const/4 v1, -0x1
if-eq v0, v1, :cond_20
new-instance v0, Lcom/bbm/ui/activities/yb;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/yb;-><init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
:cond_20
const-string v0, "mImagePathAttribute"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->I:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->I:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_35
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->I:Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/NewChannelActivity;->a(Ljava/lang/String;)V
:cond_35
iget-object v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->d:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_4c
const/4 v0, 0x1
:goto_46
iput-boolean v0, p0, Lcom/bbm/ui/activities/NewChannelActivity;->M:Z
invoke-virtual {p0}, Lcom/bbm/ui/activities/NewChannelActivity;->a()V
const-string v1, " - Lcom/bbm/ui/activities/NewChannelActivity; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_4c
const/4 v0, 0x0
goto :goto_46
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/bbm/ui/activities/NewChannelActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "mCategoryIdAttribute"
iget v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->w:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "mSubCategoryIdAttribute"
iget v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->x:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "mImagePathAttribute"
iget-object v1, p0, Lcom/bbm/ui/activities/NewChannelActivity;->I:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/bbm/ui/activities/NewChannelActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method