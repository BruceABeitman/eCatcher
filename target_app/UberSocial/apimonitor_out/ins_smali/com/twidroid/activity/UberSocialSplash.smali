.class public Lcom/twidroid/activity/UberSocialSplash;
.super Landroid/app/Activity;
.source "SourceFile"
.field static final a:I = 0x1
.field private static final f:I = 0x52455452
.field private static final g:I = 0x474f544f
.field  b:Landroid/widget/Button;
.field final c:Ljava/lang/String;
.field  d:Landroid/os/Handler;
.field protected e:Landroid/database/sqlite/SQLiteDatabase;
.field private h:Landroid/widget/CheckBox;
.field private i:Lcom/twidroid/UberSocialApplication;
.field private j:Lcom/twidroid/d/v;
.field private k:Lcom/ubermedia/b/g;
.field private l:Lcom/ubermedia/b/f;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->b:Landroid/widget/Button;
const-string v0, "TwidroydSplash"
iput-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->c:Ljava/lang/String;
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->e:Landroid/database/sqlite/SQLiteDatabase;
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/UberSocialSplash;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->j:Lcom/twidroid/d/v;
return-object v0
.end method
.method private a()V
.registers 6
const/4 v2, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/twidroid/net/oauth/RequestTokenActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/16 v1, 0x64
invoke-virtual {p0, v0, v1}, Lcom/twidroid/activity/UberSocialSplash;->startActivityForResult(Landroid/content/Intent;I)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->h:Landroid/widget/CheckBox;
invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z
move-result v0
if-nez v0, :cond_34
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->i:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/twidroid/d/v;->b(Z)V
const-string v0, "follow_ubersocial"
new-array v1, v2, [Ljava/lang/Object;
const-string v2, "Answer"
aput-object v2, v1, v3
const-string v2, "No"
aput-object v2, v1, v4
invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
:goto_33
return-void
:cond_34
const-string v0, "follow-ubersocial"
sget-object v1, Lcom/twidroid/y;->D:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "follow_ubersocial"
new-array v1, v2, [Ljava/lang/Object;
const-string v2, "Answer"
aput-object v2, v1, v3
const-string v2, "Yes"
aput-object v2, v1, v4
invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
const-string v0, "follow_ubersocial"
const-string v1, "from_splash"
const-string v2, "Yes"
invoke-static {v0, v1, v2}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->i:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0, v4}, Lcom/twidroid/d/v;->b(Z)V
goto :goto_33
.end method
.method private b()V
.registers 7
const v0, 0x7f09019a
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSplash;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
if-eqz v0, :cond_4b
new-instance v1, Lcom/twidroid/activity/UberSocialSplash$10;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialSplash$10;-><init>(Lcom/twidroid/activity/UberSocialSplash;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v1, Landroid/text/SpannableString;
const v2, 0x7f0c01a0
invoke-virtual {p0, v2}, Lcom/twidroid/activity/UberSocialSplash;->getText(I)Ljava/lang/CharSequence;
move-result-object v2
invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
const-string v3, "?"
invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v2
if-lez v2, :cond_48
new-instance v2, Landroid/text/style/ForegroundColorSpan;
const v3, -0xff6601
invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
const-string v4, "?"
invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v3
add-int/lit8 v3, v3, 0x1
invoke-interface {v1}, Landroid/text/Spannable;->length()I
move-result v4
const/16 v5, 0x21
invoke-interface {v1, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V
:cond_48
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_4b
const v0, 0x7f090199
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSplash;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, -0x4f4844
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
new-instance v1, Lcom/twidroid/activity/UberSocialSplash$2;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialSplash$2;-><init>(Lcom/twidroid/activity/UberSocialSplash;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method static synthetic b(Lcom/twidroid/activity/UberSocialSplash;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialSplash;->a()V
return-void
.end method
.method static synthetic c(Lcom/twidroid/activity/UberSocialSplash;)Lcom/ubermedia/b/g;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->k:Lcom/ubermedia/b/g;
return-object v0
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 7
const/4 v2, -0x1
const-string v0, "TwidroydSplash"
const-string v1, "onActivityResult"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const/16 v0, 0x64
if-ne p1, v0, :cond_1d
if-ne p2, v2, :cond_1d
invoke-virtual {p0, v2}, Lcom/twidroid/activity/UberSocialSplash;->setResult(I)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->i:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->ae()V
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialSplash;->finish()V
:cond_1d
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/twidroid/activity/UberSocialSplash; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
const/4 v2, 0x1
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-static {p0}, Lcom/twidroid/UberSocialApplication;->a(Landroid/app/Activity;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->i:Lcom/twidroid/UberSocialApplication;
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->i:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->j:Lcom/twidroid/d/v;
new-instance v0, Lcom/twidroid/activity/UberSocialSplash$1;
invoke-direct {v0, p0}, Lcom/twidroid/activity/UberSocialSplash$1;-><init>(Lcom/twidroid/activity/UberSocialSplash;)V
iput-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->l:Lcom/ubermedia/b/f;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->d:Landroid/os/Handler;
invoke-virtual {p0, v2}, Lcom/twidroid/activity/UberSocialSplash;->requestWindowFeature(I)Z
const v0, 0x7f030076
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSplash;->setContentView(I)V
const v0, 0x7f090197
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialSplash;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
const v1, 0x7f090198
invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialSplash;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
iput-object v1, p0, Lcom/twidroid/activity/UberSocialSplash;->b:Landroid/widget/Button;
const v1, 0x7f09019b
invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialSplash;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/CheckBox;
iput-object v1, p0, Lcom/twidroid/activity/UberSocialSplash;->h:Landroid/widget/CheckBox;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSplash;->h:Landroid/widget/CheckBox;
invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSplash;->j:Lcom/twidroid/d/v;
if-eqz v1, :cond_ac
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSplash;->j:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->aV()Z
move-result v1
if-eqz v1, :cond_ac
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSplash;->j:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->aT()Z
move-result v1
if-nez v1, :cond_8e
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSplash;->b:Landroid/widget/Button;
invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSplash;->l:Lcom/ubermedia/b/f;
invoke-static {p0, v1}, Lcom/ubermedia/b/d;->a(Landroid/app/Activity;Lcom/ubermedia/b/f;)Lcom/ubermedia/b/g;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/activity/UberSocialSplash;->k:Lcom/ubermedia/b/g;
:goto_6f
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialSplash;->b()V
const v1, 0x7f0201e5
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->b:Landroid/widget/Button;
new-instance v1, Lcom/twidroid/activity/UberSocialSplash$3;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialSplash$3;-><init>(Lcom/twidroid/activity/UberSocialSplash;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v0, "splash"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v1
invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V
const-string v1, " - Lcom/twidroid/activity/UberSocialSplash; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_8e
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSplash;->j:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->aU()Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
if-nez v1, :cond_a6
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSplash;->b:Landroid/widget/Button;
invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V
const v1, 0x474f544f
invoke-static {p0, v1}, Lcom/twidroid/d/h;->a(Landroid/app/Activity;I)V
goto :goto_6f
:cond_a6
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSplash;->b:Landroid/widget/Button;
invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V
goto :goto_6f
:cond_ac
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSplash;->b:Landroid/widget/Button;
invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V
goto :goto_6f
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 5
sparse-switch p1, :sswitch_data_64
const/4 v0, 0x0
:goto_4
return-object v0
:sswitch_5
const v0, 0x7f0c00e5
new-instance v1, Lcom/twidroid/activity/UberSocialSplash$4;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialSplash$4;-><init>(Lcom/twidroid/activity/UberSocialSplash;)V
new-instance v2, Lcom/twidroid/activity/UberSocialSplash$5;
invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialSplash$5;-><init>(Lcom/twidroid/activity/UberSocialSplash;)V
invoke-static {p0, v0, v1, v2}, Lcom/twidroid/c/l;->b(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
move-result-object v0
goto :goto_4
:sswitch_17
const v0, 0x7f0c00e4
new-instance v1, Lcom/twidroid/activity/UberSocialSplash$6;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialSplash$6;-><init>(Lcom/twidroid/activity/UberSocialSplash;)V
new-instance v2, Lcom/twidroid/activity/UberSocialSplash$7;
invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialSplash$7;-><init>(Lcom/twidroid/activity/UberSocialSplash;)V
invoke-static {p0, v0, v1, v2}, Lcom/twidroid/c/l;->a(Landroid/app/Activity;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/UberSocialSplash$8;
invoke-direct {v1, p0}, Lcom/twidroid/activity/UberSocialSplash$8;-><init>(Lcom/twidroid/activity/UberSocialSplash;)V
invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
goto :goto_4
:sswitch_31
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v1, 0x7f020067
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c0027
invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialSplash;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c00f9
invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialSplash;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c002c
new-instance v2, Lcom/twidroid/activity/UberSocialSplash$9;
invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialSplash$9;-><init>(Lcom/twidroid/activity/UberSocialSplash;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto :goto_4
:sswitch_data_64
.sparse-switch
0x1 -> :sswitch_31
0x474f544f -> :sswitch_17
0x52455452 -> :sswitch_5
.end sparse-switch
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/UberSocialSplash; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->k:Lcom/ubermedia/b/g;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->k:Lcom/ubermedia/b/g;
invoke-virtual {v0}, Lcom/ubermedia/b/g;->a()Lcom/google/android/a/a/k;
move-result-object v0
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSplash;->k:Lcom/ubermedia/b/g;
invoke-virtual {v0}, Lcom/ubermedia/b/g;->a()Lcom/google/android/a/a/k;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/a/a/k;->a()V
:cond_18
const-string v1, " - Lcom/twidroid/activity/UberSocialSplash; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 7
const/4 v0, 0x1
const/16 v1, 0x42
if-eq p1, v1, :cond_b
if-eqz p1, :cond_b
const/16 v1, 0x14
if-ne p1, v1, :cond_f
:cond_b
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialSplash;->a()V
:goto_e
return v0
:cond_f
const/4 v1, 0x4
if-ne p1, v1, :cond_27
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialSplash;->finish()V
new-instance v1, Landroid/content/Intent;
const-string v2, "Twidroyd.Tabswitch"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v2, "Action"
const-string v3, "exit"
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v1}, Lcom/twidroid/activity/UberSocialSplash;->sendBroadcast(Landroid/content/Intent;)V
goto :goto_e
:cond_27
const/4 v0, 0x0
goto :goto_e
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/UberSocialSplash; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
const-string v0, "TwidroydSplash"
const-string v1, "onResume called"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/twidroid/activity/UberSocialSplash; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method