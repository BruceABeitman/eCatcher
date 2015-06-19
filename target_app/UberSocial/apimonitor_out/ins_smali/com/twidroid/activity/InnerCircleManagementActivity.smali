.class public Lcom/twidroid/activity/InnerCircleManagementActivity;
.super Lcom/twidroid/activity/UberSocialBaseListActivity;
.source "SourceFile"
.implements Lcom/twidroid/net/c/a/f;
.field private b:Landroid/widget/AutoCompleteTextView;
.field private c:Lcom/twidroid/b/a/b;
.field private d:Landroid/widget/ImageButton;
.field private e:I
.field private f:Lcom/twidroid/a/b;
.field private g:Landroid/widget/FrameLayout;
.field private h:Landroid/widget/ProgressBar;
.field private l:Lcom/twidroid/net/b/f;
.field private m:Lcom/twidroid/net/b/f;
.field private n:I
.field private o:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->e:I
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/InnerCircleManagementActivity;I)I
.registers 2
iput p1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->e:I
return p1
.end method
.method static synthetic a(Lcom/twidroid/activity/InnerCircleManagementActivity;)Landroid/widget/AutoCompleteTextView;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->b:Landroid/widget/AutoCompleteTextView;
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/activity/InnerCircleManagementActivity;Lcom/twidroid/model/twitter/User;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->b(Lcom/twidroid/model/twitter/User;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/InnerCircleManagementActivity;Lcom/twidroid/model/twitter/User;Landroid/view/View;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/model/twitter/User;Landroid/view/View;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/InnerCircleManagementActivity;Ljava/util/List;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->b(Ljava/util/List;)V
return-void
.end method
.method private a(Lcom/twidroid/model/twitter/User;Landroid/view/View;)V
.registers 8
const/4 v4, 0x1
const/4 v3, 0x0
const/4 v2, -0x1
invoke-virtual {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->j()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/ae;
if-nez v0, :cond_c
:goto_b
return-void
:cond_c
invoke-virtual {v0, p1}, Lcom/twidroid/ui/a/ae;->a(Lcom/twidroid/model/twitter/User;)Z
move-result v1
if-eqz v1, :cond_27
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->b:Landroid/widget/AutoCompleteTextView;
const v1, 0x7f0c011a
invoke-virtual {p0, v1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->getString(I)Ljava/lang/String;
move-result-object v1
new-array v2, v4, [Ljava/lang/Object;
aput-object p1, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V
goto :goto_b
:cond_27
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->c:Lcom/twidroid/b/a/b;
invoke-virtual {v1, p1, v2}, Lcom/twidroid/b/a/b;->c(Lcom/twidroid/model/twitter/User;I)Z
invoke-virtual {p1, v4}, Lcom/twidroid/model/twitter/User;->a(Z)V
invoke-virtual {v0, p1}, Lcom/twidroid/ui/a/ae;->b(Lcom/twidroid/model/twitter/User;)V
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->b:Landroid/widget/AutoCompleteTextView;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
iput v2, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->e:I
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->b:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "input_method"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
goto :goto_b
.end method
.method private a(Ljava/util/List;)V
.registers 4
new-instance v0, Lcom/twidroid/ui/a/d;
invoke-direct {v0, p0}, Lcom/twidroid/ui/a/d;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/d/v;->at()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/d;->e(Z)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/d;->a(Z)V
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->l:Lcom/twidroid/net/b/f;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/d;->a(Lcom/twidroid/net/b/f;)V
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->b:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method static synthetic b(Lcom/twidroid/activity/InnerCircleManagementActivity;)I
.registers 2
iget v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->e:I
return v0
.end method
.method static synthetic b(Lcom/twidroid/activity/InnerCircleManagementActivity;Ljava/util/List;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Ljava/util/List;)V
return-void
.end method
.method private b(Lcom/twidroid/model/twitter/User;)V
.registers 6
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const v2, 0x7f0c0181
invoke-virtual {p0, v2}, Lcom/twidroid/activity/InnerCircleManagementActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/twidroid/model/twitter/User;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const v2, 0x7f0c0182
invoke-virtual {p0, v2}, Lcom/twidroid/activity/InnerCircleManagementActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v1
const v2, 0x7f020067
invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
move-result-object v1
const v2, 0x7f0c002c
invoke-virtual {p0, v2}, Lcom/twidroid/activity/InnerCircleManagementActivity;->getString(I)Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/twidroid/activity/InnerCircleManagementActivity$7;
invoke-direct {v3, p0, p1}, Lcom/twidroid/activity/InnerCircleManagementActivity$7;-><init>(Lcom/twidroid/activity/InnerCircleManagementActivity;Lcom/twidroid/model/twitter/User;)V
invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v1
const v2, 0x7f0c008a
invoke-virtual {p0, v2}, Lcom/twidroid/activity/InnerCircleManagementActivity;->getString(I)Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/twidroid/activity/InnerCircleManagementActivity$6;
invoke-direct {v3, p0}, Lcom/twidroid/activity/InnerCircleManagementActivity$6;-><init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
return-void
.end method
.method private b(Ljava/util/List;)V
.registers 4
new-instance v0, Lcom/twidroid/ui/a/ae;
invoke-direct {v0, p0, p1}, Lcom/twidroid/ui/a/ae;-><init>(Landroid/content/Context;Ljava/util/List;)V
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->m:Lcom/twidroid/net/b/f;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/ae;->a(Lcom/twidroid/net/b/f;)V
invoke-virtual {p0, v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Landroid/widget/ListAdapter;)V
return-void
.end method
.method static synthetic c(Lcom/twidroid/activity/InnerCircleManagementActivity;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->c:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic d(Lcom/twidroid/activity/InnerCircleManagementActivity;)Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->d:Landroid/widget/ImageButton;
return-object v0
.end method
.method static synthetic e(Lcom/twidroid/activity/InnerCircleManagementActivity;)Lcom/twidroid/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->f:Lcom/twidroid/a/b;
return-object v0
.end method
.method private f()V
.registers 3
invoke-virtual {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0a0013
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iput v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->n:I
invoke-virtual {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0a003f
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
iput v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->o:I
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->l:Lcom/twidroid/net/b/f;
if-nez v0, :cond_5b
new-instance v0, Lcom/twidroid/net/b/f;
iget v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->n:I
invoke-direct {v0, p0, v1}, Lcom/twidroid/net/b/f;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->l:Lcom/twidroid/net/b/f;
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->l:Lcom/twidroid/net/b/f;
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->k()Lcom/twidroid/net/b/a;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/b/f;->a(Lcom/twidroid/net/b/a;)V
:goto_32
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->l:Lcom/twidroid/net/b/f;
const v1, 0x7f0200f7
invoke-virtual {v0, v1}, Lcom/twidroid/net/b/f;->b(I)V
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->m:Lcom/twidroid/net/b/f;
if-nez v0, :cond_67
new-instance v0, Lcom/twidroid/net/b/f;
iget v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->o:I
invoke-direct {v0, p0, v1}, Lcom/twidroid/net/b/f;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->m:Lcom/twidroid/net/b/f;
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->m:Lcom/twidroid/net/b/f;
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->k()Lcom/twidroid/net/b/a;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/b/f;->a(Lcom/twidroid/net/b/a;)V
:goto_52
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->m:Lcom/twidroid/net/b/f;
const v1, 0x7f02010b
invoke-virtual {v0, v1}, Lcom/twidroid/net/b/f;->b(I)V
return-void
:cond_5b
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->l:Lcom/twidroid/net/b/f;
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->k()Lcom/twidroid/net/b/a;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/b/f;->a(Lcom/twidroid/net/b/a;)V
goto :goto_32
:cond_67
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->m:Lcom/twidroid/net/b/f;
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->k()Lcom/twidroid/net/b/a;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/b/f;->a(Lcom/twidroid/net/b/a;)V
goto :goto_52
.end method
.method private g()V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->d:Landroid/widget/ImageButton;
new-instance v1, Lcom/twidroid/activity/InnerCircleManagementActivity$1;
invoke-direct {v1, p0}, Lcom/twidroid/activity/InnerCircleManagementActivity$1;-><init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->b:Landroid/widget/AutoCompleteTextView;
new-instance v1, Lcom/twidroid/activity/InnerCircleManagementActivity$2;
invoke-direct {v1, p0}, Lcom/twidroid/activity/InnerCircleManagementActivity$2;-><init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->b:Landroid/widget/AutoCompleteTextView;
new-instance v1, Lcom/twidroid/activity/InnerCircleManagementActivity$3;
invoke-direct {v1, p0}, Lcom/twidroid/activity/InnerCircleManagementActivity$3;-><init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
invoke-virtual {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->i()Landroid/widget/ListView;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/InnerCircleManagementActivity$4;
invoke-direct {v1, p0}, Lcom/twidroid/activity/InnerCircleManagementActivity$4;-><init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->b:Landroid/widget/AutoCompleteTextView;
new-instance v1, Lcom/twidroid/activity/InnerCircleManagementActivity$5;
invoke-direct {v1, p0}, Lcom/twidroid/activity/InnerCircleManagementActivity$5;-><init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
return-void
.end method
.method private h()V
.registers 6
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/twidroid/activity/i;
invoke-direct {v0, p0}, Lcom/twidroid/activity/i;-><init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->f:Lcom/twidroid/a/b;
invoke-virtual {v1, v0}, Lcom/twidroid/a/b;->a(Lcom/ubermedia/a/a;)V
new-array v1, v4, [Ljava/lang/Boolean;
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v1, v3
invoke-virtual {v0, v1}, Lcom/twidroid/activity/i;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
new-instance v0, Lcom/twidroid/activity/i;
invoke-direct {v0, p0}, Lcom/twidroid/activity/i;-><init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->f:Lcom/twidroid/a/b;
invoke-virtual {v1, v0}, Lcom/twidroid/a/b;->a(Lcom/ubermedia/a/a;)V
new-array v1, v4, [Ljava/lang/Boolean;
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v1, v3
invoke-virtual {v0, v1}, Lcom/twidroid/activity/i;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method
.method private k()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
invoke-virtual {p0, v0, v1}, Lcom/twidroid/activity/InnerCircleManagementActivity;->b(ILjava/lang/String;)V
new-instance v0, Lcom/twidroid/activity/InnerCircleManagementActivity$8;
invoke-direct {v0, p0}, Lcom/twidroid/activity/InnerCircleManagementActivity$8;-><init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
invoke-static {p0, v1, v0}, Lcom/twidroid/d/c;->a(Lcom/twidroid/net/c/a/f;Landroid/view/View;Lcom/twidroid/d/d;)Lcom/twidroid/net/c/k;
return-void
.end method
.method private t()V
.registers 4
const-string v0, "input_method"
invoke-virtual {p0, v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->b:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
return-void
.end method
.method public a(IILjava/lang/String;)V
.registers 4
return-void
.end method
.method public a(ILjava/lang/String;)V
.registers 3
return-void
.end method
.method public b(ILjava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->g:Landroid/widget/FrameLayout;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V
return-void
.end method
.method public c(ILjava/lang/String;)V
.registers 3
return-void
.end method
.method public d(I)V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->h:Landroid/widget/ProgressBar;
invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
return-void
.end method
.method public e(I)Ljava/lang/CharSequence;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method protected e()V
.registers 5
const/4 v3, 0x0
invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
move-result-object v0
new-instance v1, Lcom/twidroid/ui/b/f;
iget-object v2, v0, Lcom/twidroid/ui/themes/r;->T:[I
invoke-direct {v1, v2}, Lcom/twidroid/ui/b/f;-><init>([I)V
invoke-virtual {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->i()Landroid/widget/ListView;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->i()Landroid/widget/ListView;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V
invoke-virtual {v0}, Lcom/twidroid/ui/themes/r;->y()Z
move-result v1
if-eqz v1, :cond_34
invoke-virtual {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->i()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V
invoke-virtual {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->i()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setBackgroundColor(I)V
:goto_33
return-void
:cond_34
invoke-virtual {v0}, Lcom/twidroid/ui/themes/r;->s()I
move-result v1
invoke-virtual {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->i()Landroid/widget/ListView;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V
invoke-virtual {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->i()Landroid/widget/ListView;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V
invoke-virtual {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->i()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v0}, Lcom/twidroid/ui/themes/r;->M()Landroid/graphics/drawable/StateListDrawable;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V
goto :goto_33
.end method
.method public finish()V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->t()V
invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;->finish()V
return-void
.end method
.method public o()V
.registers 1
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/twidroid/activity/InnerCircleManagementActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03004a
invoke-virtual {p0, v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->c:Lcom/twidroid/b/a/b;
const v0, 0x7f0900fc
invoke-virtual {p0, v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/AutoCompleteTextView;
iput-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->b:Landroid/widget/AutoCompleteTextView;
const v0, 0x7f0900fd
invoke-virtual {p0, v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->d:Landroid/widget/ImageButton;
const v0, 0x7f090079
invoke-virtual {p0, v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->g:Landroid/widget/FrameLayout;
const v0, 0x7f0900f7
invoke-virtual {p0, v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->h:Landroid/widget/ProgressBar;
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->h:Landroid/widget/ProgressBar;
invoke-virtual {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f020194
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->h:Landroid/widget/ProgressBar;
invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V
const v0, 0x7f09007b
invoke-virtual {p0, v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f0c0324
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
new-instance v0, Lcom/twidroid/a/b;
invoke-direct {v0}, Lcom/twidroid/a/b;-><init>()V
iput-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->f:Lcom/twidroid/a/b;
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->d:Landroid/widget/ImageButton;
invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V
invoke-virtual {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->e()V
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->J:Lcom/twidroid/UberSocialApplication;
const v1, 0x7f0c0186
invoke-virtual {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a()Landroid/support/v7/app/ActionBar;
move-result-object v2
const/4 v3, 0x1
invoke-static {v0, p0, v1, v2, v3}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V
invoke-direct {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->f()V
invoke-direct {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->g()V
invoke-direct {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->h()V
const-string v1, " - Lcom/twidroid/activity/InnerCircleManagementActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/InnerCircleManagementActivity; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v2, 0x7f0c013e
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
const/4 v0, -0x1
const/4 v1, 0x0
invoke-interface {p1, v0, v2, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
const/4 v1, 0x2
invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V
const-string v1, "ic_menu_navigation_refresh"
iget-object v2, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->J:Lcom/twidroid/UberSocialApplication;
invoke-static {v0, v1, v2, p0}, Lcom/twidroid/d/t;->a(Landroid/view/MenuItem;Ljava/lang/String;Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/twidroid/activity/InnerCircleManagementActivity; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public onLowMemory()V
.registers 2
invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onLowMemory()V
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->m:Lcom/twidroid/net/b/f;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->m:Lcom/twidroid/net/b/f;
invoke-virtual {v0}, Lcom/twidroid/net/b/f;->g()V
:cond_c
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->l:Lcom/twidroid/net/b/f;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->l:Lcom/twidroid/net/b/f;
invoke-virtual {v0}, Lcom/twidroid/net/b/f;->g()V
:cond_15
return-void
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/InnerCircleManagementActivity; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
packed-switch v0, :pswitch_data_12
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
:goto_b
move v2, v0
const-string v1, " - Lcom/twidroid/activity/InnerCircleManagementActivity; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:pswitch_c
invoke-direct {p0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->k()V
const/4 v0, 0x1
goto :goto_b
nop
:pswitch_data_12
.packed-switch 0x7f0c013e
:pswitch_c
.end packed-switch
.end method
.method protected onStop()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/InnerCircleManagementActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onStop()V
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->f:Lcom/twidroid/a/b;
invoke-virtual {v0}, Lcom/twidroid/a/b;->a()V
const-string v1, " - Lcom/twidroid/activity/InnerCircleManagementActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public p()V
.registers 1
return-void
.end method
.method public q()V
.registers 1
return-void
.end method
.method public r()V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/InnerCircleManagementActivity;->g:Landroid/widget/FrameLayout;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V
return-void
.end method