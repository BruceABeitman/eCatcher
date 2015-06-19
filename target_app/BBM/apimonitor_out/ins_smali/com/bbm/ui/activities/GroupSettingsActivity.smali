.class public Lcom/bbm/ui/activities/GroupSettingsActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupSettingsActivity.java"
.field final a:Lcom/bbm/j/k;
.field private final b:Lcom/bbm/g/am;
.field private final d:Lcom/bbm/d;
.field private e:Lcom/bbm/ui/FooterActionBar;
.field private f:Landroid/widget/Switch;
.field private g:Landroid/widget/Switch;
.field private h:Landroid/widget/Switch;
.field private i:Landroid/widget/TextView;
.field private j:Landroid/widget/TextView;
.field private k:Landroid/widget/TextView;
.field private l:Landroid/widget/TextView;
.field private m:Landroid/widget/TextView;
.field private n:Landroid/widget/Button;
.field private o:Landroid/widget/Button;
.field private p:Lcom/bbm/g/a;
.field private final q:[I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/md;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->b:Lcom/bbm/g/am;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->d:Lcom/bbm/d;
const/4 v0, 0x2
new-array v0, v0, [I
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->q:[I
new-instance v0, Lcom/bbm/ui/activities/tn;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/tn;-><init>(Lcom/bbm/ui/activities/GroupSettingsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->a:Lcom/bbm/j/k;
return-void
.end method
.method private static a(Lcom/bbm/j/w;)I
.registers 4
const/4 v0, 0x0
move v1, v0
move v2, v0
:goto_3
invoke-interface {p0}, Lcom/bbm/j/w;->d()I
move-result v0
if-ge v1, v0, :cond_19
invoke-interface {p0, v1}, Lcom/bbm/j/w;->a(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/ac;
iget-boolean v0, v0, Lcom/bbm/g/ac;->a:Z
if-eqz v0, :cond_15
add-int/lit8 v2, v2, 0x1
:cond_15
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_3
:cond_19
return v2
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupSettingsActivity;Lcom/bbm/g/a;)Lcom/bbm/g/a;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->p:Lcom/bbm/g/a;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupSettingsActivity;)V
.registers 9
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
new-instance v2, Landroid/app/AlertDialog$Builder;
invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v3, 0x7f0e03c1
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e03c2
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "\n\n"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v3, 0x7f070006
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v3
array-length v4, v3
const/4 v0, 0x0
:goto_46
if-ge v0, v4, :cond_65
aget-object v5, v3, v0
new-instance v6, Ljava/lang/StringBuilder;
const-string v7, "- "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "\n"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v0, 0x1
goto :goto_46
:cond_65
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0553
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/bbm/ui/activities/tk;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/tk;-><init>(Lcom/bbm/ui/activities/GroupSettingsActivity;)V
invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/activities/GroupSettingsActivity;)Lcom/bbm/g/am;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->b:Lcom/bbm/g/am;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/GroupSettingsActivity;)Lcom/bbm/g/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->p:Lcom/bbm/g/a;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/activities/GroupSettingsActivity;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->p:Lcom/bbm/g/a;
iget-boolean v0, v0, Lcom/bbm/g/a;->t:Z
iget-object v1, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->f:Landroid/widget/Switch;
invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->f:Landroid/widget/Switch;
new-instance v1, Lcom/bbm/ui/activities/to;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/to;-><init>(Lcom/bbm/ui/activities/GroupSettingsActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->p:Lcom/bbm/g/a;
iget-boolean v0, v0, Lcom/bbm/g/a;->u:Z
iget-object v1, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->g:Landroid/widget/Switch;
invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->g:Landroid/widget/Switch;
new-instance v1, Lcom/bbm/ui/activities/tp;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/tp;-><init>(Lcom/bbm/ui/activities/GroupSettingsActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
return-void
.end method
.method static synthetic e(Lcom/bbm/ui/activities/GroupSettingsActivity;)V
.registers 7
const/16 v3, 0x8
const/4 v5, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->b:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v0
iget-boolean v1, v0, Lcom/bbm/g/a;->j:Z
if-nez v1, :cond_5d
iget-object v1, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->i:Landroid/widget/TextView;
const v2, 0x7f0e0434
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->k:Landroid/widget/TextView;
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-boolean v0, v0, Lcom/bbm/g/a;->c:Z
if-eqz v0, :cond_4a
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->k:Landroid/widget/TextView;
const v1, 0x7f0e0436
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->o:Landroid/widget/Button;
const v1, 0x7f0e0438
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->o:Landroid/widget/Button;
new-instance v1, Lcom/bbm/ui/activities/tq;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/tq;-><init>(Lcom/bbm/ui/activities/GroupSettingsActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_3a
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->n:Landroid/widget/Button;
invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->l:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->h:Landroid/widget/Switch;
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V
:goto_49
return-void
:cond_4a
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->k:Landroid/widget/TextView;
const v1, 0x7f0e0435
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->o:Landroid/widget/Button;
invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->m:Landroid/widget/TextView;
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_3a
:cond_5d
iget-object v1, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->i:Landroid/widget/TextView;
const v2, 0x7f0e0432
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->k:Landroid/widget/TextView;
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->n:Landroid/widget/Button;
invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->o:Landroid/widget/Button;
invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->l:Landroid/widget/TextView;
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->m:Landroid/widget/TextView;
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->h:Landroid/widget/Switch;
invoke-virtual {v1, v5}, Landroid/widget/Switch;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->l:Landroid/widget/TextView;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e042c
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " ("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->b:Lcom/bbm/g/am;
iget-object v4, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/bbm/g/am;->g(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v3
invoke-static {v3}, Lcom/bbm/ui/activities/GroupSettingsActivity;->a(Lcom/bbm/j/w;)I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ")"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
iget-boolean v0, v0, Lcom/bbm/g/a;->c:Z
if-eqz v0, :cond_d2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->o:Landroid/widget/Button;
const v3, 0x7f0e0460
invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V
:cond_d2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->h:Landroid/widget/Switch;
invoke-virtual {v0, v5}, Landroid/widget/Switch;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->b:Lcom/bbm/g/am;
iget-object v3, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/g/a;->a:Z
iget-object v3, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->h:Landroid/widget/Switch;
invoke-virtual {v3, v0}, Landroid/widget/Switch;->setChecked(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->h:Landroid/widget/Switch;
new-instance v3, Lcom/bbm/ui/activities/tr;
invoke-direct {v3, p0, v2, v1}, Lcom/bbm/ui/activities/tr;-><init>(Lcom/bbm/ui/activities/GroupSettingsActivity;Ljava/util/List;Lorg/json/JSONObject;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->o:Landroid/widget/Button;
new-instance v1, Lcom/bbm/ui/activities/ts;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ts;-><init>(Lcom/bbm/ui/activities/GroupSettingsActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto/16 :goto_49
.end method
.method static synthetic f(Lcom/bbm/ui/activities/GroupSettingsActivity;)Lcom/bbm/d;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->d:Lcom/bbm/d;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/activities/GroupSettingsActivity;)Landroid/widget/Switch;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->h:Landroid/widget/Switch;
return-object v0
.end method
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.registers 12
const/4 v1, 0x1
const/4 v2, 0x0
const/high16 v9, 0x4120
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
const/4 v3, 0x2
if-ne v0, v3, :cond_50
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->h:Landroid/widget/Switch;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->q:[I
invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V
iget-object v3, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->q:[I
aget v3, v3, v2
int-to-float v3, v3
iget-object v4, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->q:[I
aget v4, v4, v1
int-to-float v4, v4
invoke-virtual {v0}, Landroid/view/View;->getWidth()I
move-result v5
invoke-virtual {v0}, Landroid/view/View;->getHeight()I
move-result v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F
move-result v6
invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F
move-result v7
cmpl-float v8, v6, v3
if-lez v8, :cond_4e
int-to-float v5, v5
add-float/2addr v3, v5
add-float/2addr v3, v9
cmpg-float v3, v6, v3
if-gez v3, :cond_4e
sub-float v3, v4, v9
cmpl-float v3, v7, v3
if-lez v3, :cond_4e
int-to-float v0, v0
add-float/2addr v0, v4
add-float/2addr v0, v9
cmpg-float v0, v7, v0
if-gez v0, :cond_4e
move v0, v1
:goto_45
if-eqz v0, :cond_50
iput-boolean v2, p0, Lcom/bbm/ui/activities/ev;->y:Z
invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
:goto_4d
return v0
:cond_4e
move v0, v2
goto :goto_45
:cond_50
iput-boolean v1, p0, Lcom/bbm/ui/activities/ev;->y:Z
invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
goto :goto_4d
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/bbm/ui/activities/GroupSettingsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030036
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->setContentView(I)V
const v0, 0x7f0a01f0
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->f:Landroid/widget/Switch;
const v0, 0x7f0a01f1
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->g:Landroid/widget/Switch;
const v0, 0x7f0a01f5
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->h:Landroid/widget/Switch;
const v0, 0x7f0a01f2
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->i:Landroid/widget/TextView;
const v0, 0x7f0a01f3
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->j:Landroid/widget/TextView;
const v0, 0x7f0a01f4
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->k:Landroid/widget/TextView;
const v0, 0x7f0a01f7
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->l:Landroid/widget/TextView;
const v0, 0x7f0a01fa
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->m:Landroid/widget/TextView;
const v0, 0x7f0a01f8
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->n:Landroid/widget/Button;
const v0, 0x7f0a01fb
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->o:Landroid/widget/Button;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
const v1, 0x7f03010b
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a053b
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f0e043e
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
const v0, 0x7f0a00be
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupSettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/FooterActionBar;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->e:Lcom/bbm/ui/FooterActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->e:Lcom/bbm/ui/FooterActionBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->e:Lcom/bbm/ui/FooterActionBar;
new-instance v1, Lcom/bbm/ui/activities/tj;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/tj;-><init>(Lcom/bbm/ui/activities/GroupSettingsActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->j:Landroid/widget/TextView;
new-instance v1, Lcom/bbm/ui/activities/tl;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/tl;-><init>(Lcom/bbm/ui/activities/GroupSettingsActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->n:Landroid/widget/Button;
new-instance v1, Lcom/bbm/ui/activities/tm;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/tm;-><init>(Lcom/bbm/ui/activities/GroupSettingsActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v1, " - Lcom/bbm/ui/activities/GroupSettingsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/GroupSettingsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->a:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/GroupSettingsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/GroupSettingsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onResume()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupSettingsActivity;->a:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
const-string v1, " - Lcom/bbm/ui/activities/GroupSettingsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method