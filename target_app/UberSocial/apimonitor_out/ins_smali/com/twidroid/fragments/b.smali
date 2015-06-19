.class public Lcom/twidroid/fragments/b;
.super Lcom/twidroid/fragments/base/b;
.source "SourceFile"
.field private static final G:I = 0xb
.field private static final H:I = 0x29
.field private static final I:I = 0x33
.field private static final J:I = 0x3d
.field private static final n:Ljava/lang/String; = "SingleDirectMessageFragment"
.field  a:Ljava/util/List;
.field  b:J
.field  c:Ljava/lang/String;
.field  d:Lcom/twidroid/model/twitter/User;
.field  e:Lcom/twidroid/model/twitter/DirectMessage;
.field  f:Lcom/twidroid/ui/a/v;
.field  g:Landroid/widget/AutoCompleteTextView;
.field  h:Lcom/twidroid/ui/widgets/MyEditText;
.field  i:Landroid/widget/TextView;
.field protected j:Lcom/twidroid/ui/widgets/AccountSpinner;
.field  k:Lcom/twidroid/net/a/b/b;
.field private o:Z
.field private p:Landroid/os/Handler;
.field private q:Ljava/lang/String;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/twidroid/fragments/base/b;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/fragments/b;->a:Ljava/util/List;
iput-boolean v1, p0, Lcom/twidroid/fragments/b;->o:Z
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/fragments/b;->q:Ljava/lang/String;
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/b;->setHasOptionsMenu(Z)V
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/b;->setRetainInstance(Z)V
return-void
.end method
.method public constructor <init>(Lcom/twidroid/model/twitter/DirectMessage;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Lcom/twidroid/fragments/base/b;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/fragments/b;->a:Ljava/util/List;
iput-boolean v1, p0, Lcom/twidroid/fragments/b;->o:Z
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/fragments/b;->q:Ljava/lang/String;
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/b;->setRetainInstance(Z)V
invoke-direct {p0, p1}, Lcom/twidroid/fragments/b;->c(Lcom/twidroid/model/twitter/DirectMessage;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Lcom/twidroid/fragments/base/b;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/fragments/b;->a:Ljava/util/List;
iput-boolean v1, p0, Lcom/twidroid/fragments/b;->o:Z
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/fragments/b;->q:Ljava/lang/String;
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/b;->setRetainInstance(Z)V
iput-object p1, p0, Lcom/twidroid/fragments/b;->c:Ljava/lang/String;
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/fragments/b;Ljava/lang/Exception;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/twidroid/fragments/b;->a(Ljava/lang/Exception;Ljava/lang/String;)V
return-void
.end method
.method private a(Ljava/lang/Exception;Ljava/lang/String;)V
.registers 6
instance-of v0, p1, Lcom/ubermedia/net/a/a/a;
if-eqz v0, :cond_5a
invoke-static {}, Lcom/twidroid/net/n;->a()Lcom/twidroid/net/n;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/net/n;->b()Z
move-result v0
if-eqz v0, :cond_54
check-cast p1, Lcom/ubermedia/net/a/a/a;
invoke-virtual {p1}, Lcom/ubermedia/net/a/a/a;->a()I
move-result v0
const/16 v1, 0xe
if-ne v0, v1, :cond_54
:try_start_18
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const v1, 0x7f0c0112
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/b;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const v1, 0x7f0c0113
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/b;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/b;->p:Landroid/os/Handler;
new-instance v2, Lcom/twidroid/fragments/b$8;
invoke-direct {v2, p0, v0}, Lcom/twidroid/fragments/b$8;-><init>(Lcom/twidroid/fragments/b;Ljava/lang/String;)V
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_51
.catch Ljava/lang/Exception; {:try_start_18 .. :try_end_51} :catch_55
:goto_51
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/fragments/b;->l:Z
:goto_54
:cond_54
return-void
:catch_55
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_51
:cond_5a
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_54
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {p0, p1, v0}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
goto :goto_54
.end method
.method static synthetic a(Lcom/twidroid/fragments/b;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/b;->l:Z
return p1
.end method
.method static synthetic b(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic b(Lcom/twidroid/fragments/b;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/b;->l:Z
return p1
.end method
.method static synthetic c(Lcom/twidroid/fragments/b;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method private c(Lcom/twidroid/model/twitter/DirectMessage;)V
.registers 4
invoke-virtual {p1}, Lcom/twidroid/model/twitter/DirectMessage;->v()J
move-result-wide v0
iput-wide v0, p0, Lcom/twidroid/fragments/b;->b:J
const/4 v0, 0x0
invoke-virtual {p1, v0}, Lcom/twidroid/model/twitter/DirectMessage;->a(Z)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/b;->c:Ljava/lang/String;
iput-object p1, p0, Lcom/twidroid/fragments/b;->e:Lcom/twidroid/model/twitter/DirectMessage;
return-void
.end method
.method static synthetic c(Lcom/twidroid/fragments/b;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/b;->l:Z
return p1
.end method
.method static synthetic d(Lcom/twidroid/fragments/b;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method private d(Lcom/twidroid/model/twitter/DirectMessage;)V
.registers 5
new-instance v0, Lcom/twidroid/c/m;
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/b;->u:Lcom/twidroid/net/c/a/f;
invoke-direct {v0, v1, p1, v2}, Lcom/twidroid/c/m;-><init>(Landroid/app/Activity;Lcom/twidroid/model/twitter/DirectMessage;Lcom/twidroid/net/c/a/f;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/c/m;->a(Landroid/widget/ListAdapter;)V
invoke-virtual {v0}, Lcom/twidroid/c/m;->show()V
return-void
.end method
.method static synthetic d(Lcom/twidroid/fragments/b;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/b;->l:Z
return p1
.end method
.method static synthetic e(Lcom/twidroid/fragments/b;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method static synthetic e(Lcom/twidroid/fragments/b;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/b;->l:Z
return p1
.end method
.method static synthetic f(Lcom/twidroid/fragments/b;)Landroid/database/sqlite/SQLiteDatabase;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->y:Landroid/database/sqlite/SQLiteDatabase;
return-object v0
.end method
.method static synthetic f(Lcom/twidroid/fragments/b;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/b;->l:Z
return p1
.end method
.method static synthetic g(Lcom/twidroid/fragments/b;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method static synthetic h(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic i(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic j(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic k(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic l(Lcom/twidroid/fragments/b;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method private m()V
.registers 5
iget-boolean v0, p0, Lcom/twidroid/fragments/b;->o:Z
if-eqz v0, :cond_13
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
new-instance v1, Lcom/twidroid/fragments/b$7;
invoke-direct {v1, p0}, Lcom/twidroid/fragments/b$7;-><init>(Lcom/twidroid/fragments/b;)V
const-wide/16 v2, 0xbb8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
:cond_13
return-void
.end method
.method static synthetic m(Lcom/twidroid/fragments/b;)V
.registers 1
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->k()V
return-void
.end method
.method static synthetic n(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic o(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic p(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic q(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic r(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic s(Lcom/twidroid/fragments/b;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/fragments/b;->m()V
return-void
.end method
.method static synthetic t(Lcom/twidroid/fragments/b;)Lcom/twidroid/net/c/a/f;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->u:Lcom/twidroid/net/c/a/f;
return-object v0
.end method
.method static synthetic u(Lcom/twidroid/fragments/b;)Lcom/twidroid/net/c/a/f;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->u:Lcom/twidroid/net/c/a/f;
return-object v0
.end method
.method static synthetic v(Lcom/twidroid/fragments/b;)Lcom/twidroid/net/c/a/f;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->u:Lcom/twidroid/net/c/a/f;
return-object v0
.end method
.method static synthetic w(Lcom/twidroid/fragments/b;)Lcom/twidroid/net/c/a/f;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->u:Lcom/twidroid/net/c/a/f;
return-object v0
.end method
.method static synthetic x(Lcom/twidroid/fragments/b;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic y(Lcom/twidroid/fragments/b;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method static synthetic z(Lcom/twidroid/fragments/b;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Lcom/twidroid/model/twitter/DirectMessage;)V
.registers 6
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->isVisible()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
invoke-direct {p0, p1}, Lcom/twidroid/fragments/b;->c(Lcom/twidroid/model/twitter/DirectMessage;)V
iget-object v0, p0, Lcom/twidroid/fragments/b;->g:Landroid/widget/AutoCompleteTextView;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/twidroid/fragments/b;->g:Landroid/widget/AutoCompleteTextView;
iget-object v1, p0, Lcom/twidroid/fragments/b;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
:cond_15
:try_start_15
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
iget-wide v1, p1, Lcom/twidroid/model/twitter/DirectMessage;->C:J
long-to-int v1, v1
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->c(J)Z
move-result v0
if-nez v0, :cond_44
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
iget-object v1, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
iget-wide v2, p1, Lcom/twidroid/model/twitter/DirectMessage;->D:J
invoke-virtual {v1, v2, v3}, Lcom/twidroid/b/a/b;->d(J)Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->b(I)I
move-result v0
iget-object v1, p0, Lcom/twidroid/fragments/b;->j:Lcom/twidroid/ui/widgets/AccountSpinner;
if-eqz v1, :cond_3f
new-instance v1, Lcom/twidroid/fragments/b$2;
invoke-direct {v1, p0, v0}, Lcom/twidroid/fragments/b$2;-><init>(Lcom/twidroid/fragments/b;I)V
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/b;->b(Ljava/lang/Runnable;)V
:cond_3f
iget-object v1, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
invoke-virtual {v1, v0}, Lcom/twidroid/b/a/b;->c(I)Z
:try_end_44
.catch Ljava/lang/Exception; {:try_start_15 .. :try_end_44} :catch_48
:goto_44
:cond_44
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->b()V
goto :goto_6
:catch_48
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_44
.end method
.method public a(Lcom/twidroid/model/twitter/c;)V
.registers 6
iget-object v0, p0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
const/16 v1, 0x8c
if-le v0, v1, :cond_1e
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/c/l;->a(Landroid/content/Context;)Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
:goto_1d
:cond_1d
return-void
:cond_1e
iget-object v0, p0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/b;->b(Landroid/widget/EditText;)V
iget-boolean v0, p0, Lcom/twidroid/fragments/b;->l:Z
if-eqz v0, :cond_2f
const-string v0, "SingleDirectMessageFragment"
const-string v1, "::sendTweet  -Be patient, it\'s a mobile phone connection and no Gigabit Ethernet!!"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1d
:cond_2f
new-instance v0, Lcom/twidroid/fragments/b$a;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/b$a;-><init>(Lcom/twidroid/fragments/b;)V
iget-object v1, p0, Lcom/twidroid/fragments/b;->g:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_1d
iget-object v1, p0, Lcom/twidroid/fragments/b;->g:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/twidroid/fragments/b$a;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/twidroid/fragments/b;->d:Lcom/twidroid/model/twitter/User;
if-eqz v1, :cond_5a
iget-object v1, p0, Lcom/twidroid/fragments/b;->d:Lcom/twidroid/model/twitter/User;
iget-object v1, v1, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
iput-object v1, v0, Lcom/twidroid/fragments/b$a;->a:Ljava/lang/String;
:cond_5a
iget-object v1, p0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/twidroid/fragments/b$a;->b:Ljava/lang/String;
iget-object v1, v0, Lcom/twidroid/fragments/b$a;->b:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_1d
const-string v1, "SingleDirectMessageFragment"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "::sendTweet User selected: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, v0, Lcom/twidroid/fragments/b$a;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/twidroid/fragments/b$4;
invoke-direct {v1, p0, p1}, Lcom/twidroid/fragments/b$4;-><init>(Lcom/twidroid/fragments/b;Lcom/twidroid/model/twitter/c;)V
const/4 v2, 0x1
new-array v2, v2, [Lcom/twidroid/fragments/b$a;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-virtual {v1, v2}, Lcom/twidroid/fragments/b$4;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_1d
.end method
.method public a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Ljava/lang/String;)V
.registers 13
const/4 v3, 0x0
const v2, 0x7f0c0306
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->g()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->e()Z
move-result v0
if-nez v0, :cond_42
const-string v0, "SingleDirectMessageFragment"
const-string v1, "Current account is no twitter account"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/b;->y:Landroid/database/sqlite/SQLiteDatabase;
invoke-static {v0}, Lcom/twidroid/model/twitter/c;->e(Landroid/database/sqlite/SQLiteDatabase;)Lcom/twidroid/model/twitter/c;
move-result-object v0
if-nez v0, :cond_32
iget-object v0, p0, Lcom/twidroid/fragments/b;->u:Lcom/twidroid/net/c/a/f;
invoke-interface {v0, v2, v2, v3}, Lcom/twidroid/net/c/a/f;->a(IILjava/lang/String;)V
:goto_31
return-void
:cond_32
const-string v1, "SingleDirectMessageFragment"
const-string v2, "Using existing Twitter Account"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
:cond_42
invoke-static {p2}, Lcom/twidroid/net/a/d/e;->c(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a5
const-string v0, "SingleDirectMessageFragment"
const-string v1, "Video found"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/b;->w:Lcom/twidroid/d/v;
const-string v1, "video_provider"
const-string v2, "twitvidcom"
invoke-virtual {v0, v1, v2}, Lcom/twidroid/d/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/twidroid/net/a/d/e;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)Lcom/twidroid/net/a/d/e;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/b;->k:Lcom/twidroid/net/a/b/b;
:goto_5f
iget-object v0, p0, Lcom/twidroid/fragments/b;->u:Lcom/twidroid/net/c/a/f;
const/4 v1, -0x1
iget-object v2, p0, Lcom/twidroid/fragments/b;->k:Lcom/twidroid/net/a/b/b;
invoke-virtual {v2}, Lcom/twidroid/net/a/b/b;->a()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/twidroid/net/c/a/f;->b(ILjava/lang/String;)V
new-instance v8, Lcom/twidroid/fragments/b$5;
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-direct {v8, p0, v0}, Lcom/twidroid/fragments/b$5;-><init>(Lcom/twidroid/fragments/b;Landroid/content/Context;)V
iget-object v0, p0, Lcom/twidroid/fragments/b;->k:Lcom/twidroid/net/a/b/b;
invoke-virtual {v0}, Lcom/twidroid/net/a/b/b;->c()Z
move-result v0
if-eqz v0, :cond_ff
:try_start_7c
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->b()Z
move-result v0
if-eqz v0, :cond_e3
iget-object v0, p0, Lcom/twidroid/fragments/b;->k:Lcom/twidroid/net/a/b/b;
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/fragments/b;->w:Lcom/twidroid/d/v;
new-instance v5, Landroid/os/Handler;
invoke-direct {v5}, Landroid/os/Handler;-><init>()V
iget-object v1, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v1
invoke-virtual {v1, p1}, Lcom/twidroid/net/a/c/c;->c(Lcom/twidroid/model/twitter/c;)[Lorg/apache/http/Header;
move-result-object v7
move-object v1, p1
move-object v2, p2
move-object v6, p3
invoke-virtual/range {v0 .. v8}, Lcom/twidroid/net/a/b/b;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Ljava/lang/String;
:try_end_9f
.catch Lcom/ubermedia/net/a/a/a; {:try_start_7c .. :try_end_9f} :catch_a0
.catch Ljava/io/IOException; {:try_start_7c .. :try_end_9f} :catch_f9
goto :goto_31
:catch_a0
move-exception v0
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V
goto :goto_31
:cond_a5
const-string v0, "SingleDirectMessageFragment"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "photo provider: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/b;->w:Lcom/twidroid/d/v;
const-string v3, "image_provider4"
const-string v4, "native"
invoke-virtual {v2, v3, v4}, Lcom/twidroid/d/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/b;->w:Lcom/twidroid/d/v;
const-string v1, "image_provider4"
const-string v2, "native"
invoke-virtual {v0, v1, v2}, Lcom/twidroid/d/v;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/b;->w:Lcom/twidroid/d/v;
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/twidroid/d/v;->g(Landroid/content/Context;)I
move-result v1
invoke-static {p1, v0, v1}, Lcom/twidroid/net/a/b/b;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;I)Lcom/twidroid/net/a/b/b;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/b;->k:Lcom/twidroid/net/a/b/b;
goto/16 :goto_5f
:cond_e3
:try_start_e3
iget-object v0, p0, Lcom/twidroid/fragments/b;->k:Lcom/twidroid/net/a/b/b;
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/fragments/b;->w:Lcom/twidroid/d/v;
new-instance v5, Landroid/os/Handler;
invoke-direct {v5}, Landroid/os/Handler;-><init>()V
const/4 v7, 0x0
move-object v1, p1
move-object v2, p2
move-object v6, p3
invoke-virtual/range {v0 .. v8}, Lcom/twidroid/net/a/b/b;->a(Lcom/twidroid/model/twitter/c;Ljava/lang/String;Landroid/app/Activity;Lcom/twidroid/d/v;Landroid/os/Handler;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/twidroid/net/a/b/c;)Ljava/lang/String;
:try_end_f7
.catch Lcom/ubermedia/net/a/a/a; {:try_start_e3 .. :try_end_f7} :catch_a0
.catch Ljava/io/IOException; {:try_start_e3 .. :try_end_f7} :catch_f9
goto/16 :goto_31
:catch_f9
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_31
:cond_ff
new-instance v0, Lcom/twidroid/fragments/b$b;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/b$b;-><init>(Lcom/twidroid/fragments/b;)V
iput-object p1, v0, Lcom/twidroid/fragments/b$b;->a:Lcom/twidroid/model/twitter/c;
iput-object p3, v0, Lcom/twidroid/fragments/b$b;->c:Ljava/lang/String;
iput-object p2, v0, Lcom/twidroid/fragments/b$b;->b:Ljava/lang/String;
iput-object v8, v0, Lcom/twidroid/fragments/b$b;->d:Lcom/twidroid/net/a/b/c;
new-instance v1, Lcom/twidroid/fragments/b$6;
invoke-direct {v1, p0, p1}, Lcom/twidroid/fragments/b$6;-><init>(Lcom/twidroid/fragments/b;Lcom/twidroid/model/twitter/c;)V
const/4 v2, 0x1
new-array v2, v2, [Lcom/twidroid/fragments/b$b;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-virtual {v1, v2}, Lcom/twidroid/fragments/b$6;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto/16 :goto_31
.end method
.method protected a(Ljava/lang/Object;)V
.registers 2
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->a(Ljava/lang/Object;)V
check-cast p1, Lcom/twidroid/model/twitter/DirectMessage;
invoke-direct {p0, p1}, Lcom/twidroid/fragments/b;->d(Lcom/twidroid/model/twitter/DirectMessage;)V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/b;->q:Ljava/lang/String;
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/twidroid/fragments/b;->o:Z
return-void
.end method
.method protected b()V
.registers 6
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
iget-wide v1, p0, Lcom/twidroid/fragments/b;->b:J
iget-object v3, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
invoke-virtual {v3}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v3
invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v3
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twidroid/b/a/b;->c(JJ)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/b;->a:Ljava/util/List;
iget-object v0, p0, Lcom/twidroid/fragments/b;->f:Lcom/twidroid/ui/a/v;
if-nez v0, :cond_1b
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->e()V
:cond_1b
iget-object v0, p0, Lcom/twidroid/fragments/b;->f:Lcom/twidroid/ui/a/v;
iget-object v1, p0, Lcom/twidroid/fragments/b;->a:Ljava/util/List;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/v;->c(Ljava/util/List;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->c()V
iget-object v0, p0, Lcom/twidroid/fragments/b;->c:Ljava/lang/String;
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/twidroid/fragments/b;->g:Landroid/widget/AutoCompleteTextView;
iget-object v1, p0, Lcom/twidroid/fragments/b;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
:cond_30
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->M()V
return-void
.end method
.method protected b(Lcom/twidroid/model/twitter/DirectMessage;)V
.registers 5
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
new-instance v0, Lcom/twidroid/c/m;
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/b;->u:Lcom/twidroid/net/c/a/f;
invoke-direct {v0, v1, p1, v2}, Lcom/twidroid/c/m;-><init>(Landroid/app/Activity;Lcom/twidroid/model/twitter/DirectMessage;Lcom/twidroid/net/c/a/f;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/c/m;->a(Landroid/widget/ListAdapter;)V
invoke-virtual {v0}, Lcom/twidroid/c/m;->show()V
goto :goto_6
.end method
.method protected b(Ljava/lang/Object;)V
.registers 2
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->b(Ljava/lang/Object;)V
check-cast p1, Lcom/twidroid/model/twitter/DirectMessage;
invoke-direct {p0, p1}, Lcom/twidroid/fragments/b;->d(Lcom/twidroid/model/twitter/DirectMessage;)V
return-void
.end method
.method public b(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/b;->x:Lcom/twidroid/b/a/b;
invoke-virtual {v0, p1}, Lcom/twidroid/b/a/b;->e(Ljava/lang/String;)Lcom/twidroid/model/twitter/DirectMessage;
move-result-object v0
if-eqz v0, :cond_b
invoke-direct {p0, v0}, Lcom/twidroid/fragments/b;->c(Lcom/twidroid/model/twitter/DirectMessage;)V
:cond_b
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->b()V
return-void
.end method
.method public b(Z)V
.registers 2
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->b(Z)V
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->d()V
return-void
.end method
.method protected c()V
.registers 3
invoke-super {p0}, Lcom/twidroid/fragments/base/b;->c()V
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_a
:cond_9
:goto_9
return-void
:cond_a
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/d/v;->m(Landroid/content/Context;)I
move-result v0
if-lez v0, :cond_9
iget-object v0, p0, Lcom/twidroid/fragments/b;->w:Lcom/twidroid/d/v;
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->j(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_9
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->k()V
goto :goto_9
.end method
.method protected c(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/twidroid/model/twitter/DirectMessage;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/b;->b(Lcom/twidroid/model/twitter/DirectMessage;)V
return-void
.end method
.method public c(Ljava/lang/String;)V
.registers 5
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
const v1, 0x7f0c002c
new-instance v2, Lcom/twidroid/fragments/b$9;
invoke-direct {v2, p0}, Lcom/twidroid/fragments/b$9;-><init>(Lcom/twidroid/fragments/b;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
const v1, 0x1080027
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
goto :goto_6
.end method
.method public d()V
.registers 3
iget-boolean v0, p0, Lcom/twidroid/fragments/b;->l:Z
if-eqz v0, :cond_c
const-string v0, "SingleDirectMessageFragment"
const-string v1, "::updateInbox Be patient, it\'s a mobile phone connection and no Gigabit Ethernet!!"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_b
return-void
:cond_c
new-instance v0, Lcom/twidroid/fragments/b$17;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/b$17;-><init>(Lcom/twidroid/fragments/b;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/b$17;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_b
.end method
.method protected e()V
.registers 5
new-instance v0, Lcom/twidroid/ui/a/v;
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/b;->a:Ljava/util/List;
const/4 v3, 0x1
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/ui/a/v;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V
iput-object v0, p0, Lcom/twidroid/fragments/b;->f:Lcom/twidroid/ui/a/v;
iget-object v0, p0, Lcom/twidroid/fragments/b;->f:Lcom/twidroid/ui/a/v;
iget-object v1, p0, Lcom/twidroid/fragments/b;->F:Lcom/twidroid/net/b/f;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/v;->a(Lcom/twidroid/net/b/f;)V
iget-object v0, p0, Lcom/twidroid/fragments/b;->f:Lcom/twidroid/ui/a/v;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/b;->setListAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public f()V
.registers 3
new-instance v0, Lcom/twidroid/fragments/b$3;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/b$3;-><init>(Lcom/twidroid/fragments/b;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/b$3;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method
.method protected g()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 2
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->onAttach(Landroid/app/Activity;)V
return-void
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/b; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/b;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
const/4 v0, 0x0
const/16 v1, 0xb
const/4 v2, 0x1
const v3, 0x7f0c01ab
invoke-virtual {p0, v3}, Lcom/twidroid/fragments/b;->getText(I)Ljava/lang/CharSequence;
move-result-object v3
invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
const v1, 0x7f02016f
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
const-string v1, " - Lcom/twidroid/fragments/b; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
const/4 v2, -0x1
invoke-super {p0, p1, p2, p3}, Lcom/twidroid/fragments/base/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const v1, 0x7f030038
const/4 v2, 0x0
invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/LinearLayout;
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
const v0, 0x7f0900b5
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/fragments/b;->i:Landroid/widget/TextView;
const v0, 0x7f0900b4
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/widgets/MyEditText;
iput-object v0, p0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
new-instance v0, Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v0, v2}, Lcom/twidroid/ui/widgets/AccountSpinner;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/twidroid/fragments/b;->j:Lcom/twidroid/ui/widgets/AccountSpinner;
iget-object v0, p0, Lcom/twidroid/fragments/b;->j:Lcom/twidroid/ui/widgets/AccountSpinner;
new-instance v2, Lcom/twidroid/fragments/b$1;
invoke-direct {v2, p0}, Lcom/twidroid/fragments/b$1;-><init>(Lcom/twidroid/fragments/b;)V
invoke-virtual {v0, v2}, Lcom/twidroid/ui/widgets/AccountSpinner;->setAccountChangeListener(Lcom/twidroid/ui/widgets/c;)V
const v0, 0x7f090076
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/AutoCompleteTextView;
iput-object v0, p0, Lcom/twidroid/fragments/b;->g:Landroid/widget/AutoCompleteTextView;
iget-object v0, p0, Lcom/twidroid/fragments/b;->c:Ljava/lang/String;
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/twidroid/fragments/b;->g:Landroid/widget/AutoCompleteTextView;
iget-object v2, p0, Lcom/twidroid/fragments/b;->c:Ljava/lang/String;
invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
:cond_5d
const v0, 0x7f0900b2
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iget-object v2, p0, Lcom/twidroid/fragments/b;->j:Lcom/twidroid/ui/widgets/AccountSpinner;
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/twidroid/fragments/b;->p:Landroid/os/Handler;
iget-object v0, p0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
new-instance v2, Lcom/twidroid/fragments/b$10;
invoke-direct {v2, p0}, Lcom/twidroid/fragments/b$10;-><init>(Lcom/twidroid/fragments/b;)V
invoke-virtual {v0, v2}, Lcom/twidroid/ui/widgets/MyEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
iget-object v0, p0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
iget-object v2, p0, Lcom/twidroid/fragments/b;->i:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Lcom/twidroid/ui/widgets/MyEditText;->setCharCounterText(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
new-instance v2, Lcom/twidroid/fragments/b$11;
invoke-direct {v2, p0}, Lcom/twidroid/fragments/b$11;-><init>(Lcom/twidroid/fragments/b;)V
invoke-virtual {v0, v2}, Lcom/twidroid/ui/widgets/MyEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
iget-object v0, p0, Lcom/twidroid/fragments/b;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->L()Z
move-result v0
if-eqz v0, :cond_a0
iget-object v0, p0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
new-instance v2, Lcom/twidroid/fragments/b$12;
invoke-direct {v2, p0}, Lcom/twidroid/fragments/b$12;-><init>(Lcom/twidroid/fragments/b;)V
invoke-virtual {v0, v2}, Lcom/twidroid/ui/widgets/MyEditText;->setATKeyListener(Lcom/twidroid/ui/widgets/h;)V
:cond_a0
iget-object v0, p0, Lcom/twidroid/fragments/b;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->L()Z
move-result v0
if-eqz v0, :cond_ca
new-instance v0, Lcom/twidroid/ui/a/c;
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v0, v2}, Lcom/twidroid/ui/a/c;-><init>(Landroid/content/Context;)V
iget-object v2, p0, Lcom/twidroid/fragments/b;->g:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v2, p0, Lcom/twidroid/fragments/b;->g:Landroid/widget/AutoCompleteTextView;
new-instance v3, Lcom/twidroid/fragments/b$13;
invoke-direct {v3, p0, v0}, Lcom/twidroid/fragments/b$13;-><init>(Lcom/twidroid/fragments/b;Lcom/twidroid/ui/a/c;)V
invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Lcom/twidroid/fragments/b;->g:Landroid/widget/AutoCompleteTextView;
new-instance v2, Lcom/twidroid/fragments/b$14;
invoke-direct {v2, p0}, Lcom/twidroid/fragments/b$14;-><init>(Lcom/twidroid/fragments/b;)V
invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
:cond_ca
const v0, 0x7f0900b8
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
new-instance v2, Lcom/twidroid/fragments/b$15;
invoke-direct {v2, p0}, Lcom/twidroid/fragments/b$15;-><init>(Lcom/twidroid/fragments/b;)V
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0900b7
invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
new-instance v2, Lcom/twidroid/fragments/b$16;
invoke-direct {v2, p0}, Lcom/twidroid/fragments/b$16;-><init>(Lcom/twidroid/fragments/b;)V
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/twidroid/fragments/b;->q:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_fb
iget-object v0, p0, Lcom/twidroid/fragments/b;->h:Lcom/twidroid/ui/widgets/MyEditText;
iget-object v2, p0, Lcom/twidroid/fragments/b;->q:Ljava/lang/String;
invoke-virtual {v0, v2}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V
:cond_fb
return-object v1
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/fragments/b; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v1
sparse-switch v1, :sswitch_data_16
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
:goto_c
move v2, v0
const-string v1, " - Lcom/twidroid/fragments/b; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:sswitch_d
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->f()V
goto :goto_c
:sswitch_11
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->d()V
goto :goto_c
nop
:sswitch_data_16
.sparse-switch
0xb -> :sswitch_d
0x3d -> :sswitch_11
.end sparse-switch
.end method
.method public onPause()V
.registers 4
const-string v1, " + Lcom/twidroid/fragments/b; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/b;->onPause()V
invoke-virtual {p0}, Lcom/twidroid/fragments/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
const-string v1, "input_method"
invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
iget-object v1, p0, Lcom/twidroid/fragments/b;->g:Landroid/widget/AutoCompleteTextView;
invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
const-string v1, " - Lcom/twidroid/fragments/b; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/twidroid/fragments/b; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/b;->onResume()V
const-string v1, " - Lcom/twidroid/fragments/b; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/twidroid/fragments/b;->j:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->a()V
new-instance v0, Lcom/twidroid/fragments/c;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/twidroid/fragments/c;-><init>(Lcom/twidroid/fragments/b;Lcom/twidroid/fragments/b$1;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/c;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method