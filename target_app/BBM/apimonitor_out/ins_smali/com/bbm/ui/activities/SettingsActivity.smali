.class public Lcom/bbm/ui/activities/SettingsActivity;
.super Lcom/bbm/ui/activities/ev;
.source "SettingsActivity.java"
.field private F:Lcom/bbm/ui/l;
.field private G:Landroid/widget/Switch;
.field private H:Landroid/widget/Button;
.field private I:Landroid/widget/Switch;
.field private J:Z
.field private K:Landroid/widget/Button;
.field private L:Landroid/widget/TextView;
.field private M:Lcom/bbm/ui/l;
.field private N:Lcom/bbm/ui/l;
.field private O:Landroid/widget/Spinner;
.field private P:Landroid/widget/Spinner;
.field private Q:Landroid/widget/TextView;
.field private final R:Lcom/bbm/j/k;
.field private final S:Lcom/bbm/j/k;
.field private a:Landroid/content/SharedPreferences;
.field private final b:Lcom/bbm/d/a;
.field private final c:Lcom/rim/bbm/BbmMediaCallService;
.field private d:Ljava/util/LinkedHashMap;
.field private e:Landroid/widget/Switch;
.field private f:Landroid/widget/Switch;
.field private g:Landroid/widget/Switch;
.field private h:Landroid/widget/Switch;
.field private i:Landroid/widget/Switch;
.field private j:Landroid/widget/Switch;
.field private k:Z
.field private l:Landroid/widget/Switch;
.field private m:Landroid/widget/Switch;
.field private n:Z
.field private o:Landroid/widget/Switch;
.field private p:Z
.field private q:Landroid/widget/Switch;
.field private r:Z
.field private s:Landroid/widget/Switch;
.field private t:Landroid/widget/Switch;
.field private u:Landroid/widget/Switch;
.field private v:Landroid/widget/Switch;
.field private w:Landroid/widget/Spinner;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/bbm/ui/activities/ev;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->b:Lcom/bbm/d/a;
invoke-static {}, Lcom/rim/bbm/BbmMediaCallService;->getInstance()Lcom/rim/bbm/BbmMediaCallService;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->c:Lcom/rim/bbm/BbmMediaCallService;
iput-boolean v1, p0, Lcom/bbm/ui/activities/SettingsActivity;->k:Z
iput-boolean v1, p0, Lcom/bbm/ui/activities/SettingsActivity;->n:Z
iput-boolean v1, p0, Lcom/bbm/ui/activities/SettingsActivity;->p:Z
iput-boolean v1, p0, Lcom/bbm/ui/activities/SettingsActivity;->r:Z
iput-boolean v1, p0, Lcom/bbm/ui/activities/SettingsActivity;->J:Z
new-instance v0, Lcom/bbm/ui/activities/afs;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/afs;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->R:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/activities/agd;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/agd;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->S:Lcom/bbm/j/k;
iput-boolean v1, p0, Lcom/bbm/ui/activities/ev;->y:Z
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/SettingsActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->L:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/activities/SettingsActivity;Landroid/app/Dialog;)V
.registers 6
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
new-instance v1, Lcom/bbm/ui/activities/agn;
invoke-direct {v1, p0, p1}, Lcom/bbm/ui/activities/agn;-><init>(Lcom/bbm/ui/activities/SettingsActivity;Landroid/app/Dialog;)V
const-wide/16 v2, 0xbb8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/SettingsActivity;Ljava/lang/String;I)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
if-eqz v0, :cond_16
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_16
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
:cond_16
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
if-eqz v0, :cond_16
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_16
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
:cond_16
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/SettingsActivity;Ljava/lang/String;Z)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
if-eqz v0, :cond_16
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_16
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
:cond_16
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/SettingsActivity;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/SettingsActivity;->b(Z)V
return-void
.end method
.method private a(Z)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->O:Landroid/widget/Spinner;
invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->M:Lcom/bbm/ui/l;
invoke-virtual {v0, p1}, Lcom/bbm/ui/l;->a(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->N:Lcom/bbm/ui/l;
invoke-virtual {v0, p1}, Lcom/bbm/ui/l;->a(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->P:Landroid/widget/Spinner;
invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->i:Landroid/widget/Switch;
invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V
return-void
.end method
.method private b()V
.registers 5
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/blackberry/ids/EditActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "IDS_ACTIVITY_BBM_IMG"
const v2, 0x7f020033
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "IDS_ACTIVITY_BBM_BG"
invoke-virtual {p0}, Lcom/bbm/ui/activities/SettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f090161
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "IDS_ACTIVITY_INTENT_CALLER"
const-string v2, "IDS_ACTIVITY_CALLER_BBM_UI"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/activities/SettingsActivity;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/SettingsActivity;->a(Z)V
return-void
.end method
.method private b(Z)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->Q:Landroid/widget/TextView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->Q:Landroid/widget/TextView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_9
.end method
.method static synthetic b(Lcom/bbm/ui/activities/SettingsActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->k:Z
return v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/SettingsActivity;)Lcom/bbm/d/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->b:Lcom/bbm/d/a;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/activities/SettingsActivity;)Landroid/widget/Switch;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->m:Landroid/widget/Switch;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/activities/SettingsActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->n:Z
return v0
.end method
.method private f()I
.registers 9
const/4 v7, 0x2
const/4 v1, 0x0
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->d:Ljava/util/LinkedHashMap;
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/af;->c()Ljava/lang/String;
move-result-object v2
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->d:Ljava/util/LinkedHashMap;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e05a5
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
sget-object v4, Lcom/bbm/af;->a:Ljava/lang/String;
invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Landroid/media/RingtoneManager;
invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V
invoke-virtual {v0, v7}, Landroid/media/RingtoneManager;->setType(I)V
invoke-virtual {v0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;
move-result-object v3
if-eqz v3, :cond_75
invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z
move-result v0
if-nez v0, :cond_75
move v0, v1
:goto_38
invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
move-result v4
if-eqz v4, :cond_74
const/4 v4, 0x1
invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "/"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_6e
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->d:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I
move-result v0
:cond_6e
iget-object v6, p0, Lcom/bbm/ui/activities/SettingsActivity;->d:Ljava/util/LinkedHashMap;
invoke-virtual {v6, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_38
:cond_74
move v1, v0
:cond_75
const-string v0, ""
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_83
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->d:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I
move-result v1
:cond_83
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->d:Ljava/util/LinkedHashMap;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e05a6
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
const-string v3, ""
invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return v1
.end method
.method static synthetic f(Lcom/bbm/ui/activities/SettingsActivity;)Landroid/widget/Switch;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->o:Landroid/widget/Switch;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/activities/SettingsActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->p:Z
return v0
.end method
.method static synthetic h(Lcom/bbm/ui/activities/SettingsActivity;)Landroid/widget/Switch;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->q:Landroid/widget/Switch;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/activities/SettingsActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->r:Z
return v0
.end method
.method static synthetic j(Lcom/bbm/ui/activities/SettingsActivity;)Landroid/widget/Switch;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->t:Landroid/widget/Switch;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/activities/SettingsActivity;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->H:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic l(Lcom/bbm/ui/activities/SettingsActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->J:Z
return v0
.end method
.method static synthetic m(Lcom/bbm/ui/activities/SettingsActivity;)Landroid/widget/Switch;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->I:Landroid/widget/Switch;
return-object v0
.end method
.method static synthetic n(Lcom/bbm/ui/activities/SettingsActivity;)Lcom/bbm/ui/l;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->M:Lcom/bbm/ui/l;
return-object v0
.end method
.method static synthetic o(Lcom/bbm/ui/activities/SettingsActivity;)Ljava/util/LinkedHashMap;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->d:Ljava/util/LinkedHashMap;
return-object v0
.end method
.method static synthetic p(Lcom/bbm/ui/activities/SettingsActivity;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->k:Z
return v0
.end method
.method static synthetic q(Lcom/bbm/ui/activities/SettingsActivity;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->n:Z
return v0
.end method
.method static synthetic r(Lcom/bbm/ui/activities/SettingsActivity;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->p:Z
return v0
.end method
.method static synthetic s(Lcom/bbm/ui/activities/SettingsActivity;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->r:Z
return v0
.end method
.method static synthetic t(Lcom/bbm/ui/activities/SettingsActivity;)Lcom/rim/bbm/BbmMediaCallService;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->c:Lcom/rim/bbm/BbmMediaCallService;
return-object v0
.end method
.method static synthetic u(Lcom/bbm/ui/activities/SettingsActivity;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->J:Z
return v0
.end method
.method public onActivityResult(IILandroid/content/Intent;)V
.registers 8
const/4 v2, 0x0
invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/ev;->onActivityResult(IILandroid/content/Intent;)V
packed-switch p1, :pswitch_data_6e
:goto_7
:cond_7
return-void
:pswitch_8
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/Alaska;->w()V
if-nez p2, :cond_1c
const-string v0, "SettingsActivity: EditActivity closed with result IdsResult.IDS_SUCCESS"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SettingsActivity;->finish()V
goto :goto_7
:cond_1c
const/4 v0, -0x1
if-ne p2, v0, :cond_7
const-string v0, "SettingsActivity: EditActivity closed with result IdsResult.IDS_FAILURE"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/BbidErrorActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "IDS_ACTIVTY_RESULT"
const v2, 0xc34f
invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
const-string v2, "IDS_ACTIVTY_INFO"
invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "IDS_ACTIVTY_RESULT"
invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "IDS_ACTIVTY_INFO"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const/4 v1, 0x2
invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_7
:pswitch_4b
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "SettingsActivity: BbidErrorActivity returned. resultCode = "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
sget v0, Lcom/bbm/ui/activities/BbidErrorActivity;->b:I
if-ne p2, v0, :cond_7
const-string v0, "SettingsActivity: BbidErrorActivity returned with BbidErrorActivity.RESULT_RETRY"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/bbm/ui/activities/SettingsActivity;->b()V
goto :goto_7
:pswitch_data_6e
.packed-switch 0x1
:pswitch_8
:pswitch_4b
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/bbm/ui/activities/SettingsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
const/4 v1, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030055
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SettingsActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
const v0, 0x7f0a02d3
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->H:Landroid/widget/Button;
const v0, 0x7f0a02df
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->K:Landroid/widget/Button;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->K:Landroid/widget/Button;
new-instance v3, Lcom/bbm/ui/activities/ago;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/ago;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a02d4
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Spinner;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->w:Landroid/widget/Spinner;
const v0, 0x7f0a02c1
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->L:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v3, 0x7f07000e
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v0
new-instance v3, Ljava/util/ArrayList;
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
new-instance v0, Lcom/bbm/ui/l;
const v4, 0x7f0e066e
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/SettingsActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v0, p0, v4, v3}, Lcom/bbm/ui/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->F:Lcom/bbm/ui/l;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->w:Landroid/widget/Spinner;
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->F:Lcom/bbm/ui/l;
invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
new-instance v0, Lcom/bbm/ui/q;
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->F:Lcom/bbm/ui/l;
new-instance v4, Lcom/bbm/ui/activities/agp;
invoke-direct {v4, p0}, Lcom/bbm/ui/activities/agp;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-direct {v0, v3, v4}, Lcom/bbm/ui/q;-><init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->w:Landroid/widget/Spinner;
invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->w:Landroid/widget/Spinner;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
const-string v4, "contacts_layout_grid"
invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_3cf
move v0, v1
:goto_92
invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V
invoke-direct {p0}, Lcom/bbm/ui/activities/SettingsActivity;->f()I
move-result v3
new-instance v0, Lcom/bbm/ui/l;
const v4, 0x7f0e05a7
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/SettingsActivity;->getString(I)Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/util/ArrayList;
iget-object v6, p0, Lcom/bbm/ui/activities/SettingsActivity;->d:Ljava/util/LinkedHashMap;
invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;
move-result-object v6
invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
invoke-direct {v0, p0, v4, v5}, Lcom/bbm/ui/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->M:Lcom/bbm/ui/l;
const v0, 0x7f0a02cb
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Spinner;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->O:Landroid/widget/Spinner;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->O:Landroid/widget/Spinner;
iget-object v4, p0, Lcom/bbm/ui/activities/SettingsActivity;->M:Lcom/bbm/ui/l;
invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
new-instance v0, Lcom/bbm/ui/q;
iget-object v4, p0, Lcom/bbm/ui/activities/SettingsActivity;->M:Lcom/bbm/ui/l;
new-instance v5, Lcom/bbm/ui/activities/agq;
invoke-direct {v5, p0}, Lcom/bbm/ui/activities/agq;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-direct {v0, v4, v5}, Lcom/bbm/ui/q;-><init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V
iget-object v4, p0, Lcom/bbm/ui/activities/SettingsActivity;->O:Landroid/widget/Spinner;
invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->O:Landroid/widget/Spinner;
invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SettingsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v3, 0x7f07000d
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v0
new-instance v3, Ljava/util/ArrayList;
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
new-instance v0, Lcom/bbm/ui/l;
const v4, 0x7f0e0595
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/SettingsActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v0, p0, v4, v3}, Lcom/bbm/ui/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->N:Lcom/bbm/ui/l;
const v0, 0x7f0a02cc
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Spinner;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->P:Landroid/widget/Spinner;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->P:Landroid/widget/Spinner;
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->N:Lcom/bbm/ui/l;
invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
new-instance v0, Lcom/bbm/ui/q;
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->N:Lcom/bbm/ui/l;
new-instance v4, Lcom/bbm/ui/activities/agr;
invoke-direct {v4, p0}, Lcom/bbm/ui/activities/agr;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-direct {v0, v3, v4}, Lcom/bbm/ui/q;-><init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->P:Landroid/widget/Spinner;
invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->P:Landroid/widget/Spinner;
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
const-string v4, "notification_led_colour"
invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v3
invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V
const v0, 0x7f0a02c7
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->Q:Landroid/widget/TextView;
const v0, 0x7f0a02d5
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->e:Landroid/widget/Switch;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const-string v3, "android.hardware.nfc"
invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3d2
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->e:Landroid/widget/Switch;
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
const-string v4, "add_contact_on_tap"
invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->e:Landroid/widget/Switch;
new-instance v3, Lcom/bbm/ui/activities/agt;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/agt;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
:goto_165
const v0, 0x7f0a02d6
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->f:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->f:Landroid/widget/Switch;
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
const-string v4, "security_question_invite"
invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->f:Landroid/widget/Switch;
new-instance v3, Lcom/bbm/ui/activities/agu;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/agu;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0a02c9
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->i:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->i:Landroid/widget/Switch;
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
const-string v4, "notification_vibrate_enabled"
invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->i:Landroid/widget/Switch;
new-instance v3, Lcom/bbm/ui/activities/aft;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/aft;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0a02d9
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->j:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->j:Landroid/widget/Switch;
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
const-string v4, "allow_geolocation_collect"
invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->j:Landroid/widget/Switch;
new-instance v3, Lcom/bbm/ui/activities/afu;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/afu;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0a02ca
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->l:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->l:Landroid/widget/Switch;
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
const-string v4, "notification_ping_vibrate_enabled"
invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->l:Landroid/widget/Switch;
new-instance v3, Lcom/bbm/ui/activities/afv;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/afv;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0a02c6
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->g:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->g:Landroid/widget/Switch;
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
const-string v4, "sticky_notification"
invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->g:Landroid/widget/Switch;
invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z
move-result v0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->b(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->g:Landroid/widget/Switch;
new-instance v3, Lcom/bbm/ui/activities/afw;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/afw;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0a02c8
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->h:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->h:Landroid/widget/Switch;
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
const-string v4, "notifications_enabled"
invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->h:Landroid/widget/Switch;
invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z
move-result v0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->a(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->h:Landroid/widget/Switch;
new-instance v3, Lcom/bbm/ui/activities/afx;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/afx;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0a02c2
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->m:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->m:Landroid/widget/Switch;
new-instance v3, Lcom/bbm/ui/activities/afy;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/afy;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0a02c3
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->o:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->o:Landroid/widget/Switch;
new-instance v3, Lcom/bbm/ui/activities/afz;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/afz;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0a02c4
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->q:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->q:Landroid/widget/Switch;
new-instance v3, Lcom/bbm/ui/activities/aga;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/aga;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0a02c5
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->s:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->s:Landroid/widget/Switch;
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
const-string v4, "icerberg_upload_allowed"
invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->s:Landroid/widget/Switch;
new-instance v3, Lcom/bbm/ui/activities/agb;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/agb;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0a02cd
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->u:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->u:Landroid/widget/Switch;
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
const-string v4, "ShowAvatatars"
invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->u:Landroid/widget/Switch;
new-instance v3, Lcom/bbm/ui/activities/agc;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/agc;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0a02ce
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->t:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->t:Landroid/widget/Switch;
new-instance v3, Lcom/bbm/ui/activities/age;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/age;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0a02cf
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->v:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->v:Landroid/widget/Switch;
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v3
invoke-virtual {v3}, Lcom/bbm/af;->d()Z
move-result v3
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->v:Landroid/widget/Switch;
new-instance v3, Lcom/bbm/ui/activities/agh;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/agh;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0a02db
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->G:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->G:Landroid/widget/Switch;
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
const-string v4, "allow_mobile_calls"
invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->G:Landroid/widget/Switch;
new-instance v3, Lcom/bbm/ui/activities/agi;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/agi;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0a02d0
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
const-string v4, "keyboard_always_show_on_enter_conversation"
invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v3
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V
new-instance v3, Lcom/bbm/ui/activities/agj;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/agj;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0a02d1
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iput-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->I:Landroid/widget/Switch;
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->I:Landroid/widget/Switch;
new-instance v3, Lcom/bbm/ui/activities/agk;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/agk;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0a02d2
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Switch;
iget-object v3, p0, Lcom/bbm/ui/activities/SettingsActivity;->a:Landroid/content/SharedPreferences;
const-string v4, "allow_timed_message"
invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v2
invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V
new-instance v2, Lcom/bbm/ui/activities/agl;
invoke-direct {v2, p0}, Lcom/bbm/ui/activities/agl;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SettingsActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V
const v0, 0x7f0a00be
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V
new-instance v1, Lcom/bbm/ui/activities/ags;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ags;-><init>(Lcom/bbm/ui/activities/SettingsActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/Alaska;->r()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_3a3
const v0, 0x7f0a02dd
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_3a3
invoke-virtual {p0}, Lcom/bbm/ui/activities/SettingsActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
if-eqz v0, :cond_3ce
const-string v1, "IDS_ACTIVTY_RESULT"
invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3ce
const-string v1, "IDS_ACTIVTY_RESULT"
const v2, 0xc34f
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
const-string v2, "IDS_ACTIVTY_INFO"
invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
if-eqz v1, :cond_3cb
const v0, 0x7f0e0668
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
:cond_3cb
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->refreshProperties()V
:cond_3ce
const-string v1, " - Lcom/bbm/ui/activities/SettingsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_3cf
move v0, v2
goto/16 :goto_92
:cond_3d2
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->e:Landroid/widget/Switch;
const/16 v3, 0x8
invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V
goto/16 :goto_165
.end method
.method public onDeleteChatHistoryClicked(Landroid/view/View;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->b:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->d()Z
move-result v0
if-eqz v0, :cond_2a
new-instance v0, Lcom/bbm/ui/b/o;
invoke-direct {v0, p0}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v1, 0x7f0e0672
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V
const v1, 0x7f0e0671
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->e(I)V
const v1, 0x7f0e02ea
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(I)V
new-instance v1, Lcom/bbm/ui/activities/agm;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/agm;-><init>(Lcom/bbm/ui/activities/SettingsActivity;Lcom/bbm/ui/b/o;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V
:cond_2a
return-void
.end method
.method public onEditBlackberryIDClicked(Landroid/view/View;)V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/SettingsActivity;->b()V
return-void
.end method
.method public onEditBlockedContactsClicked(Landroid/view/View;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/BlockedContactsActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public onLegalClicked(Landroid/view/View;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/LegalActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SettingsActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/SettingsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->S:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->R:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/SettingsActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/SettingsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->S:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/SettingsActivity;->R:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
const-string v1, " - Lcom/bbm/ui/activities/SettingsActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method