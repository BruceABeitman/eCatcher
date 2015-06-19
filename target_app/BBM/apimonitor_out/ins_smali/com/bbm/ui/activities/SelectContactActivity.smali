.class public Lcom/bbm/ui/activities/SelectContactActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "SelectContactActivity.java"
.field private final a:Lcom/bbm/d/a;
.field private b:Lcom/bbm/ui/FooterActionBar;
.field private c:Landroid/widget/ListView;
.field private d:Lcom/bbm/ui/activities/aex;
.field private e:Ljava/util/Set;
.field private f:Ljava/util/Set;
.field private g:Z
.field private h:Lcom/bbm/ui/HeaderButtonActionBar;
.field private i:Landroid/widget/EditText;
.field private j:Landroid/widget/Button;
.field private k:Landroid/widget/LinearLayout;
.field private l:Z
.field private m:Ljava/util/ArrayList;
.field private n:Z
.field private o:Z
.field private p:Landroid/graphics/drawable/Drawable;
.field private q:Z
.field private r:Landroid/os/Bundle;
.field private s:Ljava/lang/String;
.field private t:J
.field private final u:Landroid/view/View$OnTouchListener;
.field private final v:Landroid/widget/AdapterView$OnItemClickListener;
.field private final w:Lcom/bbm/ui/cj;
.field private final x:Lcom/bbm/j/k;
.field private final y:Lcom/bbm/d/b/n;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->a:Lcom/bbm/d/a;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->l:Z
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->m:Ljava/util/ArrayList;
new-instance v0, Lcom/bbm/ui/activities/ael;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ael;-><init>(Lcom/bbm/ui/activities/SelectContactActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->u:Landroid/view/View$OnTouchListener;
new-instance v0, Lcom/bbm/ui/activities/aep;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aep;-><init>(Lcom/bbm/ui/activities/SelectContactActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->v:Landroid/widget/AdapterView$OnItemClickListener;
new-instance v0, Lcom/bbm/ui/activities/aeq;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aeq;-><init>(Lcom/bbm/ui/activities/SelectContactActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->w:Lcom/bbm/ui/cj;
new-instance v0, Lcom/bbm/ui/activities/aer;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aer;-><init>(Lcom/bbm/ui/activities/SelectContactActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->x:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/activities/aeo;
iget-object v1, p0, Lcom/bbm/ui/activities/SelectContactActivity;->a:Lcom/bbm/d/a;
invoke-virtual {v1}, Lcom/bbm/d/a;->o()Lcom/bbm/j/r;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/aeo;-><init>(Lcom/bbm/ui/activities/SelectContactActivity;Lcom/bbm/j/r;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->y:Lcom/bbm/d/b/n;
new-instance v0, Lcom/bbm/ui/fv;
invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectContactActivity;->a(Lcom/bbm/ui/activities/aka;)V
new-instance v0, Lcom/bbm/ui/voice/o;
invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectContactActivity;->a(Lcom/bbm/ui/activities/aka;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/SelectContactActivity;)Lcom/bbm/ui/activities/aex;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->d:Lcom/bbm/ui/activities/aex;
return-object v0
.end method
.method private a()V
.registers 5
const v3, 0x7f0a02a7
const/16 v2, 0x8
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->y:Lcom/bbm/d/b/n;
invoke-virtual {v0}, Lcom/bbm/d/b/n;->f()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_39
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->c:Landroid/widget/ListView;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/SelectContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v2, p0, Lcom/bbm/ui/activities/SelectContactActivity;->b:Lcom/bbm/ui/FooterActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->m:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v3, p0, Lcom/bbm/ui/activities/SelectContactActivity;->y:Lcom/bbm/d/b/n;
invoke-virtual {v3}, Lcom/bbm/d/b/n;->f()Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
if-ge v0, v3, :cond_37
const/4 v0, 0x1
:goto_33
invoke-virtual {v2, v1, v0}, Lcom/bbm/ui/FooterActionBar;->setActionEnabled(IZ)V
:goto_36
return-void
:cond_37
move v0, v1
goto :goto_33
:cond_39
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/SelectContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->c:Landroid/widget/ListView;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->b:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v1, v1}, Lcom/bbm/ui/FooterActionBar;->setActionEnabled(IZ)V
goto :goto_36
.end method
.method static synthetic a(Lcom/bbm/ui/activities/SelectContactActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/bbm/ui/activities/SelectContactActivity;->l:Z
return p1
.end method
.method private a(Z)Z
.registers 8
const v5, 0x7f0e041b
const/4 v0, 0x1
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
const-string v3, "group_max_member_count"
invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v2
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
const-string v4, "group_member_count"
invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v3
sub-int/2addr v2, v3
if-eqz p1, :cond_2c
iget-object v3, p0, Lcom/bbm/ui/activities/SelectContactActivity;->y:Lcom/bbm/d/b/n;
invoke-virtual {v3}, Lcom/bbm/d/b/n;->d()I
move-result v3
if-ge v2, v3, :cond_3e
invoke-virtual {p0, v5}, Lcom/bbm/ui/activities/SelectContactActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
:goto_2b
return v0
:cond_2c
iget-object v3, p0, Lcom/bbm/ui/activities/SelectContactActivity;->m:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
add-int/lit8 v3, v3, 0x1
if-ge v2, v3, :cond_3e
invoke-virtual {p0, v5}, Lcom/bbm/ui/activities/SelectContactActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {p0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_2b
:cond_3e
move v0, v1
goto :goto_2b
.end method
.method static synthetic b(Lcom/bbm/ui/activities/SelectContactActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->g:Z
return v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->m:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/activities/SelectContactActivity;)Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->r:Landroid/os/Bundle;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->s:Ljava/lang/String;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/activities/SelectContactActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->n:Z
return v0
.end method
.method static synthetic g(Lcom/bbm/ui/activities/SelectContactActivity;)Z
.registers 2
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/SelectContactActivity;->a(Z)Z
move-result v0
return v0
.end method
.method static synthetic h(Lcom/bbm/ui/activities/SelectContactActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->h:Lcom/bbm/ui/HeaderButtonActionBar;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/activities/SelectContactActivity;)Lcom/bbm/d/b/n;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->y:Lcom/bbm/d/b/n;
return-object v0
.end method
.method static synthetic j(Lcom/bbm/ui/activities/SelectContactActivity;)Lcom/bbm/ui/FooterActionBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->b:Lcom/bbm/ui/FooterActionBar;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/activities/SelectContactActivity;)V
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->n:Z
if-eqz v0, :cond_c
invoke-direct {p0, v3}, Lcom/bbm/ui/activities/SelectContactActivity;->a(Z)Z
move-result v0
if-nez v0, :cond_71
:cond_c
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->m:Ljava/util/ArrayList;
move v1, v2
:goto_14
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->y:Lcom/bbm/d/b/n;
invoke-virtual {v0}, Lcom/bbm/d/b/n;->f()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_37
iget-object v4, p0, Lcom/bbm/ui/activities/SelectContactActivity;->m:Ljava/util/ArrayList;
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->y:Lcom/bbm/d/b/n;
invoke-virtual {v0}, Lcom/bbm/d/b/n;->f()Ljava/util/List;
move-result-object v0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gp;
iget-object v0, v0, Lcom/bbm/d/gp;->A:Ljava/lang/String;
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_14
:cond_37
iget-object v1, p0, Lcom/bbm/ui/activities/SelectContactActivity;->h:Lcom/bbm/ui/HeaderButtonActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->m:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_72
move v0, v3
:goto_42
invoke-virtual {v1, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->h:Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v4, 0x7f0e0651
invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
new-array v3, v3, [Ljava/lang/Object;
iget-object v4, p0, Lcom/bbm/ui/activities/SelectContactActivity;->m:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v2
invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setTitle(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->b:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v2, v2}, Lcom/bbm/ui/FooterActionBar;->setActionEnabled(IZ)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->d:Lcom/bbm/ui/activities/aex;
invoke-virtual {v0}, Lcom/bbm/ui/activities/aex;->notifyDataSetChanged()V
:cond_71
return-void
:cond_72
move v0, v2
goto :goto_42
.end method
.method static synthetic l(Lcom/bbm/ui/activities/SelectContactActivity;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->a()V
return-void
.end method
.method static synthetic m(Lcom/bbm/ui/activities/SelectContactActivity;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->j:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic n(Lcom/bbm/ui/activities/SelectContactActivity;)Landroid/widget/LinearLayout;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->k:Landroid/widget/LinearLayout;
return-object v0
.end method
.method static synthetic o(Lcom/bbm/ui/activities/SelectContactActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->i:Landroid/widget/EditText;
return-object v0
.end method
.method static synthetic p(Lcom/bbm/ui/activities/SelectContactActivity;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->n:Z
return v0
.end method
.method static synthetic q(Lcom/bbm/ui/activities/SelectContactActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->o:Z
return v0
.end method
.method static synthetic r(Lcom/bbm/ui/activities/SelectContactActivity;)J
.registers 3
iget-wide v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->t:J
return-wide v0
.end method
.method static synthetic s(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->e:Ljava/util/Set;
return-object v0
.end method
.method static synthetic t(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->f:Ljava/util/Set;
return-object v0
.end method
.method static synthetic u(Lcom/bbm/ui/activities/SelectContactActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->q:Z
return v0
.end method
.method static synthetic v(Lcom/bbm/ui/activities/SelectContactActivity;)Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->p:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method static synthetic w(Lcom/bbm/ui/activities/SelectContactActivity;)Lcom/bbm/d/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->a:Lcom/bbm/d/a;
return-object v0
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->y:Lcom/bbm/d/b/n;
invoke-virtual {v0, p1}, Lcom/bbm/d/b/n;->a(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->a()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 11
const-string v1, " + Lcom/bbm/ui/activities/SelectContactActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v8, 0x7f0a02a5
const/4 v7, 0x1
const/4 v6, -0x1
const/16 v4, 0x8
const/4 v5, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030051
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectContactActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getWindow()Landroid/view/Window;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
const v0, 0x7f0a00be
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/FooterActionBar;
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->b:Lcom/bbm/ui/FooterActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->b:Lcom/bbm/ui/FooterActionBar;
new-instance v1, Lcom/bbm/ui/ActionBarItem;
const v2, 0x7f0202bc
const v3, 0x7f0e064d
invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V
invoke-virtual {v0, v1, v5}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->b:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v5}, Lcom/bbm/ui/FooterActionBar;->setBackActionAndOverflowEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->b:Lcom/bbm/ui/FooterActionBar;
iget-object v1, p0, Lcom/bbm/ui/activities/SelectContactActivity;->w:Lcom/bbm/ui/cj;
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_52
const-string v1, "com.bbm.selectcontact.bundle.passthrough"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->r:Landroid/os/Bundle;
:cond_52
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.bbm.showifbusy"
invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->q:Z
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.bbm.adidtoshare"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->s:Ljava/lang/String;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0201fa
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->p:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.bbm.selectedcategoryid"
const-wide/16 v2, -0x1
invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v0
iput-wide v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->t:J
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.bbm.onlyone"
invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->g:Z
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->e:Ljava/util/Set;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.bbm.excludedcontacts"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
if-eqz v0, :cond_a9
iget-object v1, p0, Lcom/bbm/ui/activities/SelectContactActivity;->e:Ljava/util/Set;
invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
:cond_a9
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->f:Ljava/util/Set;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.bbm.excludedpins"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
if-eqz v0, :cond_c1
iget-object v1, p0, Lcom/bbm/ui/activities/SelectContactActivity;->f:Ljava/util/Set;
invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
:cond_c1
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "group_invite"
invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_1cf
iput-boolean v7, p0, Lcom/bbm/ui/activities/SelectContactActivity;->n:Z
:cond_cf
:goto_cf
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.bbm.selectall"
invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-nez v0, :cond_ec
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->b:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v4}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V
const v0, 0x7f0a0136
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_ec
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.bbm.additionalmessage"
invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_204
invoke-virtual {p0, v8}, Lcom/bbm/ui/activities/SelectContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v2, "com.bbm.additionalmessage"
invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_10b
const v0, 0x7f0a01e7
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->c:Landroid/widget/ListView;
new-instance v0, Lcom/bbm/ui/activities/aex;
iget-object v1, p0, Lcom/bbm/ui/activities/SelectContactActivity;->y:Lcom/bbm/d/b/n;
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/aex;-><init>(Lcom/bbm/ui/activities/SelectContactActivity;Lcom/bbm/j/r;)V
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->d:Lcom/bbm/ui/activities/aex;
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->c:Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/activities/SelectContactActivity;->d:Lcom/bbm/ui/activities/aex;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->c:Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/activities/SelectContactActivity;->v:Landroid/widget/AdapterView$OnItemClickListener;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
const v0, 0x7f0a01e6
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/SelectContactActivity;->u:Landroid/view/View$OnTouchListener;
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->c:Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/activities/SelectContactActivity;->u:Landroid/view/View$OnTouchListener;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v0, 0x7f0a02a1
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->i:Landroid/widget/EditText;
const v0, 0x7f0a02a3
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->j:Landroid/widget/Button;
const v0, 0x7f0a02a2
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->k:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->i:Landroid/widget/EditText;
new-instance v1, Lcom/bbm/ui/activities/aes;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aes;-><init>(Lcom/bbm/ui/activities/SelectContactActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->i:Landroid/widget/EditText;
new-instance v1, Lcom/bbm/ui/activities/aet;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aet;-><init>(Lcom/bbm/ui/activities/SelectContactActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->i:Landroid/widget/EditText;
new-instance v1, Lcom/bbm/ui/activities/aeu;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aeu;-><init>(Lcom/bbm/ui/activities/SelectContactActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->j:Landroid/widget/Button;
new-instance v1, Lcom/bbm/ui/activities/aev;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aev;-><init>(Lcom/bbm/ui/activities/SelectContactActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->k:Landroid/widget/LinearLayout;
new-instance v1, Lcom/bbm/ui/activities/aew;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aew;-><init>(Lcom/bbm/ui/activities/SelectContactActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e0173
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
iget-boolean v1, p0, Lcom/bbm/ui/activities/SelectContactActivity;->g:Z
if-eqz v1, :cond_22b
new-instance v1, Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getTitle()Ljava/lang/CharSequence;
move-result-object v2
invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, p0, v2, v0}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
iput-object v1, p0, Lcom/bbm/ui/activities/SelectContactActivity;->h:Lcom/bbm/ui/HeaderButtonActionBar;
:goto_1b1
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->h:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/aen;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aen;-><init>(Lcom/bbm/ui/activities/SelectContactActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/SelectContactActivity;->h:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v2, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v2, v6, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
const-string v1, " - Lcom/bbm/ui/activities/SelectContactActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1cf
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "channel_invite"
invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_cf
iput-boolean v7, p0, Lcom/bbm/ui/activities/SelectContactActivity;->o:Z
const v0, 0x7f0a029f
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0a019d
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v2, "invite_message"
invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
const/16 v1, 0xfa
invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
goto/16 :goto_cf
:cond_204
const v0, 0x7f0a02a6
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v1, 0x3
const v2, 0x7f0a02a0
invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
invoke-virtual {p0, v8}, Lcom/bbm/ui/activities/SelectContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
const v0, 0x7f0a02a4
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectContactActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_10b
:cond_22b
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v2, "com.bbm.cancelisskip"
invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v1
if-eqz v1, :cond_242
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e015e
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
:cond_242
new-instance v1, Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getTitle()Ljava/lang/CharSequence;
move-result-object v2
invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectContactActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e0302
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, p0, v2, v0, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v1, p0, Lcom/bbm/ui/activities/SelectContactActivity;->h:Lcom/bbm/ui/HeaderButtonActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->h:Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {v0, v5}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->h:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/aem;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aem;-><init>(Lcom/bbm/ui/activities/SelectContactActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V
goto/16 :goto_1b1
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/SelectContactActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->x:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/SelectContactActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/SelectContactActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onResume()V
iget-object v0, p0, Lcom/bbm/ui/activities/SelectContactActivity;->x:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
const-string v1, " - Lcom/bbm/ui/activities/SelectContactActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method