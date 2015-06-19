.class public Lcom/twidroid/activity/UberSocialAccount;
.super Lcom/twidroid/activity/UberSocialBaseActivity;
.source "SourceFile"
.field public static final b:Ljava/lang/String; = null
.field static final c:[Ljava/lang/String; = null
.field static final d:[Ljava/lang/String; = null
.field static e:Ljava/util/ArrayList; = null
.field static final f:Ljava/util/ArrayList; = null
.field static final g:I = 0x3
.field private static final s:I = 0x2
.field  h:Lcom/twidroid/model/twitter/c;
.field  i:Landroid/widget/Button;
.field  j:Landroid/widget/Button;
.field private k:Landroid/widget/EditText;
.field private l:Landroid/widget/EditText;
.field private m:Landroid/widget/EditText;
.field private n:Landroid/widget/Spinner;
.field private o:Landroid/widget/CheckBox;
.field private p:Landroid/widget/CheckBox;
.field private q:Landroid/database/sqlite/SQLiteDatabase;
.field private final r:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-class v1, Lcom/twidroid/activity/UberSocialAccount;
invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".NEED_REFRESH_ACCOUNTS_BROADCAST"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/activity/UberSocialAccount;->b:Ljava/lang/String;
new-array v0, v6, [Ljava/lang/String;
const-string v1, "Twitter"
aput-object v1, v0, v2
const-string v1, "Identi.ca"
aput-object v1, v0, v3
const-string v1, "Wozai.cc"
aput-object v1, v0, v4
const-string v1, "Other"
aput-object v1, v0, v5
sput-object v0, Lcom/twidroid/activity/UberSocialAccount;->c:[Ljava/lang/String;
new-array v0, v6, [Ljava/lang/String;
const-string v1, "api.twitter.com/1.1"
aput-object v1, v0, v2
const-string v1, "identi.ca/api"
aput-object v1, v0, v3
const-string v1, "api.wozai.cc"
aput-object v1, v0, v4
const-string v1, "other"
aput-object v1, v0, v5
sput-object v0, Lcom/twidroid/activity/UberSocialAccount;->d:[Ljava/lang/String;
new-instance v0, Ljava/util/ArrayList;
sget-object v1, Lcom/twidroid/activity/UberSocialAccount;->c:[Ljava/lang/String;
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
sput-object v0, Lcom/twidroid/activity/UberSocialAccount;->e:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
sget-object v1, Lcom/twidroid/activity/UberSocialAccount;->d:[Ljava/lang/String;
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
sput-object v0, Lcom/twidroid/activity/UberSocialAccount;->f:Ljava/util/ArrayList;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;-><init>()V
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->q:Landroid/database/sqlite/SQLiteDatabase;
const-string v0, "TwidroydAccount"
iput-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->r:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;[Ljava/lang/String;)I
.registers 4
const/4 v0, 0x0
:goto_1
:try_start_1
aget-object v1, p1, v0
invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_6
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_d
move-result v1
if-eqz v1, :cond_a
:goto_9
return v0
:cond_a
add-int/lit8 v0, v0, 0x1
goto :goto_1
:catch_d
move-exception v0
const/4 v0, 0x3
goto :goto_9
.end method
.method static synthetic a(Lcom/twidroid/activity/UberSocialAccount;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->k:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/activity/UberSocialAccount;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/activity/UberSocialAccount;->g(Z)V
return-void
.end method
.method static synthetic b(Lcom/twidroid/activity/UberSocialAccount;)Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialAccount;->f()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method static synthetic c(Lcom/twidroid/activity/UberSocialAccount;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->l:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic d(Lcom/twidroid/activity/UberSocialAccount;)Landroid/widget/CheckBox;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->p:Landroid/widget/CheckBox;
return-object v0
.end method
.method static synthetic e(Lcom/twidroid/activity/UberSocialAccount;)Landroid/widget/CheckBox;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->o:Landroid/widget/CheckBox;
return-object v0
.end method
.method static synthetic f(Lcom/twidroid/activity/UberSocialAccount;)Landroid/database/sqlite/SQLiteDatabase;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->q:Landroid/database/sqlite/SQLiteDatabase;
return-object v0
.end method
.method private f()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->n:Landroid/widget/Spinner;
invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_14
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->m:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
:goto_13
return-object v0
:cond_14
sget-object v0, Lcom/twidroid/activity/UberSocialAccount;->f:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount;->n:Landroid/widget/Spinner;
invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I
move-result v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
goto :goto_13
.end method
.method static synthetic g(Lcom/twidroid/activity/UberSocialAccount;)Landroid/widget/Spinner;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->n:Landroid/widget/Spinner;
return-object v0
.end method
.method private g(Z)V
.registers 4
const v0, 0x7f09008b
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
if-eqz p1, :cond_10
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
:goto_f
return-void
:cond_10
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V
goto :goto_f
.end method
.method protected d(Z)V
.registers 2
return-void
.end method
.method public e()V
.registers 5
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
iget-object v2, p0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v2
long-to-int v2, v2
int-to-long v2, v2
invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/b/a/b;->a(IJ)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount;->q:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {v0, v1}, Lcom/twidroid/model/twitter/c;->j(Landroid/database/sqlite/SQLiteDatabase;)V
const v0, 0x7f0c0019
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->e(I)Ljava/lang/CharSequence;
move-result-object v0
const/4 v1, 0x1
invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->h()V
new-instance v0, Landroid/content/Intent;
sget-object v1, Lcom/twidroid/activity/UberSocialAccount;->b:Ljava/lang/String;
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->sendBroadcast(Landroid/content/Intent;)V
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialAccount;->finish()V
return-void
.end method
.method public f(Z)V
.registers 2
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 7
const-string v0, "TwidroydAccount"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "onActivityResult.onActivityResult: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " / "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1, p2, p3}, Lcom/twidroid/activity/UberSocialBaseActivity;->onActivityResult(IILandroid/content/Intent;)V
const/16 v0, 0x3e7
if-ne p1, v0, :cond_36
const/4 v0, -0x1
if-ne p2, v0, :cond_36
new-instance v0, Landroid/content/Intent;
sget-object v1, Lcom/twidroid/activity/UberSocialAccount;->b:Ljava/lang/String;
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->sendBroadcast(Landroid/content/Intent;)V
:cond_36
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialAccount;->finish()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/twidroid/activity/UberSocialAccount; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v3, 0x8
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseActivity;->onCreate(Landroid/os/Bundle;)V
sget-object v0, Lcom/twidroid/activity/UberSocialAccount;->c:[Ljava/lang/String;
const/4 v1, 0x3
const v2, 0x7f0c0213
invoke-virtual {p0, v2}, Lcom/twidroid/activity/UberSocialAccount;->e(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
new-instance v0, Ljava/util/ArrayList;
sget-object v1, Lcom/twidroid/activity/UberSocialAccount;->c:[Ljava/lang/String;
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
sput-object v0, Lcom/twidroid/activity/UberSocialAccount;->e:Ljava/util/ArrayList;
const v0, 0x7f03002f
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->setContentView(I)V
const v0, 0x7f0d000c
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->setTheme(I)V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->X:Landroid/os/Handler;
const v0, 0x7f09008e
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->k:Landroid/widget/EditText;
const v0, 0x7f090091
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->l:Landroid/widget/EditText;
const v0, 0x7f09008c
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->m:Landroid/widget/EditText;
const v0, 0x7f09008a
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Spinner;
iput-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->n:Landroid/widget/Spinner;
const v0, 0x7f090092
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->o:Landroid/widget/CheckBox;
const v0, 0x7f090093
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->p:Landroid/widget/CheckBox;
const v0, 0x7f090094
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->i:Landroid/widget/Button;
const v0, 0x7f090089
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->n:Landroid/widget/Spinner;
invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V
const v0, 0x7f09008f
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->j:Landroid/widget/Button;
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->j:Landroid/widget/Button;
new-instance v1, Lcom/twidroid/activity/UberSocialAccount$1;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialAccount$1;-><init>(Lcom/twidroid/activity/UberSocialAccount;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->i:Landroid/widget/Button;
new-instance v1, Lcom/twidroid/activity/UberSocialAccount$2;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialAccount$2;-><init>(Lcom/twidroid/activity/UberSocialAccount;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v1, " - Lcom/twidroid/activity/UberSocialAccount; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 7
const-string v1, " + Lcom/twidroid/activity/UberSocialAccount; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, -0x1
const/16 v5, 0x8
const/4 v4, 0x0
invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseActivity;->onStart()V
new-instance v0, Lcom/twidroid/model/twitter/c;
invoke-direct {v0}, Lcom/twidroid/model/twitter/c;-><init>()V
iput-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
:try_start_e
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialAccount;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_19
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_132
move-result v0
:goto_1a
if-le v0, v1, :cond_3a
:try_start_1c
new-instance v1, Lcom/twidroid/model/twitter/c;
iget-object v2, p0, Lcom/twidroid/activity/UberSocialAccount;->q:Landroid/database/sqlite/SQLiteDatabase;
invoke-direct {v1, v2, v0}, Lcom/twidroid/model/twitter/c;-><init>(Landroid/database/sqlite/SQLiteDatabase;I)V
iput-object v1, p0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
const v0, 0x7f090095
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
new-instance v1, Lcom/twidroid/activity/UberSocialAccount$3;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialAccount$3;-><init>(Lcom/twidroid/activity/UberSocialAccount;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:try_end_3a
.catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3a} :catch_136
:goto_3a
:cond_3a
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->k:Landroid/widget/EditText;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->l:Landroid/widget/EditText;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->i()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->o:Landroid/widget/CheckBox;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->q()Z
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->p:Landroid/widget/CheckBox;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->s()Z
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->e()Z
move-result v0
if-eqz v0, :cond_a2
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->k:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_83
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->k:Landroid/widget/EditText;
invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V
:cond_83
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->d()Z
move-result v0
if-eqz v0, :cond_151
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->j:Landroid/widget/Button;
const v1, 0x7f0c02bc
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
:goto_93
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->l:Landroid/widget/EditText;
invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V
const v0, 0x7f090090
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
:cond_a2
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->d()Z
move-result v0
if-eqz v0, :cond_af
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->n:Landroid/widget/Spinner;
invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setVisibility(I)V
:cond_af
new-instance v0, Landroid/widget/ArrayAdapter;
const v1, 0x7f03008d
sget-object v2, Lcom/twidroid/activity/UberSocialAccount;->e:Ljava/util/ArrayList;
invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
const v1, 0x1090009
invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount;->n:Landroid/widget/Spinner;
invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->n:Landroid/widget/Spinner;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->j()Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/twidroid/activity/UberSocialAccount;->d:[Ljava/lang/String;
invoke-static {v1, v2}, Lcom/twidroid/activity/UberSocialAccount;->a(Ljava/lang/String;[Ljava/lang/String;)I
move-result v1
invoke-virtual {v0, v1, v4}, Landroid/widget/Spinner;->setSelection(IZ)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->j()Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/twidroid/activity/UberSocialAccount;->d:[Ljava/lang/String;
invoke-static {v0, v1}, Lcom/twidroid/activity/UberSocialAccount;->a(Ljava/lang/String;[Ljava/lang/String;)I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_15b
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->m:Landroid/widget/EditText;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->j()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/twidroid/activity/UberSocialAccount;->g(Z)V
:goto_f3
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->n:Landroid/widget/Spinner;
new-instance v1, Lcom/twidroid/activity/UberSocialAccount$4;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialAccount$4;-><init>(Lcom/twidroid/activity/UberSocialAccount;)V
invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
const-string v0, "TwidroydAccount"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "API Spinner:   "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->j()Ljava/lang/String;
move-result-object v2
sget-object v3, Lcom/twidroid/activity/UberSocialAccount;->d:[Ljava/lang/String;
invoke-static {v2, v3}, Lcom/twidroid/activity/UberSocialAccount;->a(Ljava/lang/String;[Ljava/lang/String;)I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " >>"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/activity/UberSocialAccount;->h:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->j()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/twidroid/activity/UberSocialAccount; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_132
move-exception v0
move v0, v1
goto/16 :goto_1a
:catch_136
move-exception v0
const-string v1, "TwidroydAccount"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Exception read account from db"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_3a
:cond_151
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccount;->j:Landroid/widget/Button;
const v1, 0x7f0c0085
invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V
goto/16 :goto_93
:cond_15b
invoke-direct {p0, v4}, Lcom/twidroid/activity/UberSocialAccount;->g(Z)V
goto :goto_f3
.end method
.method public r_()V
.registers 1
return-void
.end method