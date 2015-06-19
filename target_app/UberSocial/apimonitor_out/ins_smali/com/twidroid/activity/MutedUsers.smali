.class public Lcom/twidroid/activity/MutedUsers;
.super Lcom/twidroid/activity/UberSocialBaseListActivity;
.source "SourceFile"
.implements Lcom/handmark/pulltorefresh/library/k;
.field public static final b:Ljava/lang/String; = "account_id"
.field private static final h:Ljava/lang/String; = "MutedUsers"
.field final c:Lcom/twidroid/ui/a/e;
.field  d:Ljava/util/ArrayList;
.field  e:Landroid/view/LayoutInflater;
.field  f:Landroid/widget/AutoCompleteTextView;
.field  g:Landroid/widget/CheckBox;
.field private l:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
.field private m:Lcom/twidroid/b/a/b;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;-><init>()V
new-instance v0, Lcom/twidroid/ui/a/e;
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/twidroid/ui/a/e;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
iput-object v0, p0, Lcom/twidroid/activity/MutedUsers;->c:Lcom/twidroid/ui/a/e;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/activity/MutedUsers;->d:Ljava/util/ArrayList;
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/MutedUsers;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/MutedUsers;->f()V
return-void
.end method
.method static synthetic b(Lcom/twidroid/activity/MutedUsers;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/MutedUsers;->h()V
return-void
.end method
.method static synthetic c(Lcom/twidroid/activity/MutedUsers;)Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers;->l:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
return-object v0
.end method
.method private f()V
.registers 7
const/4 v3, 0x1
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_2c
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers;->g:Landroid/widget/CheckBox;
invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z
move-result v0
if-eqz v0, :cond_28
const v0, 0x7f0c01ea
:goto_20
invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:goto_27
return-void
:cond_28
const v0, 0x7f0c01e9
goto :goto_20
:cond_2c
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/MutedUsers;->g:Landroid/widget/CheckBox;
invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z
move-result v1
if-eqz v1, :cond_50
const-string v1, "mute screen"
const/4 v2, 0x0
invoke-virtual {p0, v0, v1, v2}, Lcom/twidroid/activity/MutedUsers;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/activity/aa;)V
:goto_48
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_27
:cond_50
new-instance v1, Lcom/twidroid/net/d/a;
invoke-direct {v1}, Lcom/twidroid/net/d/a;-><init>()V
new-instance v2, Lcom/twidroid/activity/MutedUsers$2;
invoke-direct {v2, p0}, Lcom/twidroid/activity/MutedUsers$2;-><init>(Lcom/twidroid/activity/MutedUsers;)V
invoke-virtual {v1, v2}, Lcom/twidroid/net/d/a;->a(Lcom/twidroid/net/d/d;)V
new-array v2, v3, [Lcom/twidroid/net/d/b;
const/4 v3, 0x0
new-instance v4, Lcom/twidroid/net/d/b;
iget-object v5, p0, Lcom/twidroid/activity/MutedUsers;->J:Lcom/twidroid/UberSocialApplication;
invoke-direct {v4, v5, v0}, Lcom/twidroid/net/d/b;-><init>(Lcom/twidroid/UberSocialApplication;Ljava/lang/String;)V
aput-object v4, v2, v3
invoke-virtual {v1, v2}, Lcom/twidroid/net/d/a;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_48
.end method
.method private g()V
.registers 4
const-string v0, "input_method"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/MutedUsers;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v1, p0, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
return-void
.end method
.method private h()V
.registers 4
const/16 v2, 0x8
const v0, 0x7f0900ed
invoke-virtual {p0, v0}, Lcom/twidroid/activity/MutedUsers;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v1
if-eq v1, v2, :cond_1b
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->V()V
:cond_1b
return-void
.end method
.method public a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.registers 2
invoke-virtual {p0}, Lcom/twidroid/activity/MutedUsers;->r_()V
return-void
.end method
.method public final b(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.registers 2
invoke-virtual {p0}, Lcom/twidroid/activity/MutedUsers;->r_()V
return-void
.end method
.method public d(Z)V
.registers 4
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->j(I)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/MutedUsers;->d:Ljava/util/ArrayList;
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers;->d:Ljava/util/ArrayList;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_25
const v0, 0x7f0900ed
invoke-virtual {p0, v0}, Lcom/twidroid/activity/MutedUsers;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_25
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers;->X:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/activity/MutedUsers$3;
invoke-direct {v1, p0}, Lcom/twidroid/activity/MutedUsers$3;-><init>(Lcom/twidroid/activity/MutedUsers;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public e()V
.registers 1
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/twidroid/activity/MutedUsers; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x0
const v5, 0x7f0900ed
const v4, 0x7f0900c2
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/twidroid/activity/MutedUsers;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/MutedUsers;->m:Lcom/twidroid/b/a/b;
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/MutedUsers;->e:Landroid/view/LayoutInflater;
const v0, 0x7f030070
invoke-virtual {p0, v0}, Lcom/twidroid/activity/MutedUsers;->setContentView(I)V
const v0, 0x7f090096
invoke-virtual {p0, v0}, Lcom/twidroid/activity/MutedUsers;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
iput-object v0, p0, Lcom/twidroid/activity/MutedUsers;->l:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers;->J:Lcom/twidroid/UberSocialApplication;
const v1, 0x7f0c01ba
invoke-virtual {p0}, Lcom/twidroid/activity/MutedUsers;->a()Landroid/support/v7/app/ActionBar;
move-result-object v2
const/4 v3, 0x1
invoke-static {v0, p0, v1, v2, v3}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V
invoke-virtual {p0}, Lcom/twidroid/activity/MutedUsers;->i()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {p0, v4}, Lcom/twidroid/activity/MutedUsers;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
invoke-virtual {p0, v4}, Lcom/twidroid/activity/MutedUsers;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f08002b
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
invoke-virtual {p0, v4}, Lcom/twidroid/activity/MutedUsers;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f0c0201
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
const v0, 0x7f090178
invoke-virtual {p0, v0}, Lcom/twidroid/activity/MutedUsers;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/AutoCompleteTextView;
iput-object v0, p0, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;
const v0, 0x7f090177
invoke-virtual {p0, v0}, Lcom/twidroid/activity/MutedUsers;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CheckBox;
iput-object v0, p0, Lcom/twidroid/activity/MutedUsers;->g:Landroid/widget/CheckBox;
new-instance v0, Lcom/twidroid/ui/a/d;
invoke-direct {v0, p0}, Lcom/twidroid/ui/a/d;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/twidroid/activity/MutedUsers;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
if-gez v1, :cond_8b
invoke-virtual {v0, v6}, Lcom/twidroid/ui/a/d;->a(Z)V
:cond_8b
iget-object v1, p0, Lcom/twidroid/activity/MutedUsers;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/d/v;->at()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/d;->e(Z)V
iget-object v1, p0, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v1, p0, Lcom/twidroid/activity/MutedUsers;->g:Landroid/widget/CheckBox;
new-instance v2, Lcom/twidroid/activity/MutedUsers$1;
invoke-direct {v2, p0, v0}, Lcom/twidroid/activity/MutedUsers$1;-><init>(Lcom/twidroid/activity/MutedUsers;Lcom/twidroid/ui/a/d;)V
invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
const v0, 0x7f0900b8
invoke-virtual {p0, v0}, Lcom/twidroid/activity/MutedUsers;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/MutedUsers$4;
invoke-direct {v1, p0}, Lcom/twidroid/activity/MutedUsers$4;-><init>(Lcom/twidroid/activity/MutedUsers;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;
new-instance v1, Lcom/twidroid/activity/MutedUsers$5;
invoke-direct {v1, p0}, Lcom/twidroid/activity/MutedUsers$5;-><init>(Lcom/twidroid/activity/MutedUsers;)V
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;
new-instance v1, Lcom/twidroid/activity/MutedUsers$6;
invoke-direct {v1, p0}, Lcom/twidroid/activity/MutedUsers$6;-><init>(Lcom/twidroid/activity/MutedUsers;)V
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;
new-instance v1, Lcom/twidroid/activity/MutedUsers$7;
invoke-direct {v1, p0}, Lcom/twidroid/activity/MutedUsers$7;-><init>(Lcom/twidroid/activity/MutedUsers;)V
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers;->f:Landroid/widget/AutoCompleteTextView;
new-instance v1, Lcom/twidroid/activity/MutedUsers$8;
invoke-direct {v1, p0}, Lcom/twidroid/activity/MutedUsers$8;-><init>(Lcom/twidroid/activity/MutedUsers;)V
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
invoke-virtual {p0}, Lcom/twidroid/activity/MutedUsers;->i()Landroid/widget/ListView;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/MutedUsers$9;
invoke-direct {v1, p0}, Lcom/twidroid/activity/MutedUsers$9;-><init>(Lcom/twidroid/activity/MutedUsers;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
invoke-virtual {p0}, Lcom/twidroid/activity/MutedUsers;->i()Landroid/widget/ListView;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/MutedUsers$10;
invoke-direct {v1, p0}, Lcom/twidroid/activity/MutedUsers$10;-><init>(Lcom/twidroid/activity/MutedUsers;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
const v0, 0x7f0900f7
invoke-virtual {p0, v0}, Lcom/twidroid/activity/MutedUsers;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/twidroid/activity/MutedUsers;->Q:Landroid/widget/ProgressBar;
const v0, 0x7f09007b
invoke-virtual {p0, v0}, Lcom/twidroid/activity/MutedUsers;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/activity/MutedUsers;->R:Landroid/widget/TextView;
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->W()Z
move-result v0
if-nez v0, :cond_137
invoke-virtual {p0, v5}, Lcom/twidroid/activity/MutedUsers;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0, v5}, Lcom/twidroid/activity/MutedUsers;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f0c01fb
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
invoke-virtual {p0, v5}, Lcom/twidroid/activity/MutedUsers;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/MutedUsers$11;
invoke-direct {v1, p0}, Lcom/twidroid/activity/MutedUsers$11;-><init>(Lcom/twidroid/activity/MutedUsers;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_137
iget-object v0, p0, Lcom/twidroid/activity/MutedUsers;->l:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
invoke-virtual {v0, p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V
const-string v1, " - Lcom/twidroid/activity/MutedUsers; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 5
const/4 v0, 0x4
if-ne p1, v0, :cond_f
const-string v0, "MutedUsers"
const-string v1, "Back pressed"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/activity/MutedUsers;->finish()V
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/MutedUsers; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/twidroid/activity/MutedUsers;->g()V
invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onPause()V
const-string v1, " - Lcom/twidroid/activity/MutedUsers; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/MutedUsers; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onResume()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/twidroid/activity/MutedUsers;->d(Z)V
const-string v1, " - Lcom/twidroid/activity/MutedUsers; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public r_()V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/twidroid/activity/MutedUsers;->d(Z)V
return-void
.end method