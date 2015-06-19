.class public Lcom/bbm/ui/GlympseUserSelector;
.super Lcom/bbm/ui/CustomView;
.source "GlympseUserSelector.java"
.implements Lcom/glympse/android/api/GEventListener;
.field public a:Lcom/glympse/android/api/GGlympse;
.field public b:Lcom/bbm/ui/co;
.field private final c:Landroid/content/Context;
.field private d:Landroid/widget/RelativeLayout;
.field private e:Landroid/widget/ImageButton;
.field private f:Lcom/bbm/ui/GlympseUserSelectorItem;
.field private g:Lcom/bbm/ui/GlympseUserSelectorItem;
.field private h:Ljava/util/List;
.field private i:Landroid/widget/LinearLayout;
.field private j:Landroid/widget/ListView;
.field private k:Ljava/lang/String;
.field private l:Lcom/bbm/ui/cp;
.field private m:Ljava/util/List;
.field private final n:Lcom/bbm/ui/activities/xo;
.field private o:Lcom/bbm/d/es;
.field private final p:Landroid/view/View$OnClickListener;
.field private final q:Landroid/widget/AdapterView$OnItemClickListener;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/bbm/ui/activities/xo;
invoke-direct {v0}, Lcom/bbm/ui/activities/xo;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->n:Lcom/bbm/ui/activities/xo;
new-instance v0, Lcom/bbm/ui/cm;
invoke-direct {v0, p0}, Lcom/bbm/ui/cm;-><init>(Lcom/bbm/ui/GlympseUserSelector;)V
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->p:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/bbm/ui/cn;
invoke-direct {v0, p0}, Lcom/bbm/ui/cn;-><init>(Lcom/bbm/ui/GlympseUserSelector;)V
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->q:Landroid/widget/AdapterView$OnItemClickListener;
iput-object p1, p0, Lcom/bbm/ui/GlympseUserSelector;->c:Landroid/content/Context;
invoke-direct {p0}, Lcom/bbm/ui/GlympseUserSelector;->b()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lcom/bbm/ui/activities/xo;
invoke-direct {v0}, Lcom/bbm/ui/activities/xo;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->n:Lcom/bbm/ui/activities/xo;
new-instance v0, Lcom/bbm/ui/cm;
invoke-direct {v0, p0}, Lcom/bbm/ui/cm;-><init>(Lcom/bbm/ui/GlympseUserSelector;)V
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->p:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/bbm/ui/cn;
invoke-direct {v0, p0}, Lcom/bbm/ui/cn;-><init>(Lcom/bbm/ui/GlympseUserSelector;)V
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->q:Landroid/widget/AdapterView$OnItemClickListener;
iput-object p1, p0, Lcom/bbm/ui/GlympseUserSelector;->c:Landroid/content/Context;
invoke-direct {p0}, Lcom/bbm/ui/GlympseUserSelector;->b()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Lcom/bbm/ui/activities/xo;
invoke-direct {v0}, Lcom/bbm/ui/activities/xo;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->n:Lcom/bbm/ui/activities/xo;
new-instance v0, Lcom/bbm/ui/cm;
invoke-direct {v0, p0}, Lcom/bbm/ui/cm;-><init>(Lcom/bbm/ui/GlympseUserSelector;)V
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->p:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/bbm/ui/cn;
invoke-direct {v0, p0}, Lcom/bbm/ui/cn;-><init>(Lcom/bbm/ui/GlympseUserSelector;)V
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->q:Landroid/widget/AdapterView$OnItemClickListener;
iput-object p1, p0, Lcom/bbm/ui/GlympseUserSelector;->c:Landroid/content/Context;
invoke-direct {p0}, Lcom/bbm/ui/GlympseUserSelector;->b()V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/GlympseUserSelector;)Landroid/widget/LinearLayout;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->i:Landroid/widget/LinearLayout;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/GlympseUserSelector;)Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->e:Landroid/widget/ImageButton;
return-object v0
.end method
.method private b()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->c:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03012f
invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a05b2
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->d:Landroid/widget/RelativeLayout;
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->d:Landroid/widget/RelativeLayout;
iget-object v2, p0, Lcom/bbm/ui/GlympseUserSelector;->p:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a05b3
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->e:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->e:Landroid/widget/ImageButton;
iget-object v2, p0, Lcom/bbm/ui/GlympseUserSelector;->p:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a05b4
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/GlympseUserSelectorItem;
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->f:Lcom/bbm/ui/GlympseUserSelectorItem;
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->f:Lcom/bbm/ui/GlympseUserSelectorItem;
iget-object v2, p0, Lcom/bbm/ui/GlympseUserSelector;->p:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v2}, Lcom/bbm/ui/GlympseUserSelectorItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a05b5
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->i:Landroid/widget/LinearLayout;
const v0, 0x7f0a05b6
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->j:Landroid/widget/ListView;
new-instance v0, Lcom/bbm/ui/cp;
const/4 v2, 0x0
invoke-direct {v0, p0, v2}, Lcom/bbm/ui/cp;-><init>(Lcom/bbm/ui/GlympseUserSelector;B)V
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->l:Lcom/bbm/ui/cp;
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->j:Landroid/widget/ListView;
iget-object v2, p0, Lcom/bbm/ui/GlympseUserSelector;->q:Landroid/widget/AdapterView$OnItemClickListener;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
const v0, 0x7f0a05b7
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/GlympseUserSelectorItem;
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->g:Lcom/bbm/ui/GlympseUserSelectorItem;
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->g:Lcom/bbm/ui/GlympseUserSelectorItem;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/bbm/ui/GlympseUserSelectorItem;->a(I)V
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->g:Lcom/bbm/ui/GlympseUserSelectorItem;
iget-object v1, p0, Lcom/bbm/ui/GlympseUserSelector;->p:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Lcom/bbm/ui/GlympseUserSelectorItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method static synthetic c(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/GlympseUserSelectorItem;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->f:Lcom/bbm/ui/GlympseUserSelectorItem;
return-object v0
.end method
.method private c()V
.registers 6
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/bbm/ui/GlympseUserSelector;->m:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->h:Ljava/util/List;
invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;
move-result-object v0
iget-object v1, v0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->m:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_19
:goto_19
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_52
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/ko;
invoke-interface {v1}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v3
iget-object v4, v0, Lcom/bbm/ui/activities/ko;->b:Ljava/lang/String;
invoke-interface {v3, v4}, Lcom/glympse/android/api/GHistoryManager;->findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v3
if-eqz v3, :cond_41
invoke-interface {v1}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;
move-result-object v0
:goto_39
if-eqz v0, :cond_19
iget-object v3, p0, Lcom/bbm/ui/GlympseUserSelector;->h:Ljava/util/List;
invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_19
:cond_41
invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;
move-result-object v3
iget-object v3, v3, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v3}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v3
iget-object v0, v0, Lcom/bbm/ui/activities/ko;->b:Ljava/lang/String;
invoke-interface {v3, v0}, Lcom/glympse/android/api/GUserManager;->findUserByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GUser;
move-result-object v0
goto :goto_39
:cond_52
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->h:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_62
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->g:Lcom/bbm/ui/GlympseUserSelectorItem;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/bbm/ui/GlympseUserSelectorItem;->setVisibility(I)V
:cond_62
invoke-direct {p0}, Lcom/bbm/ui/GlympseUserSelector;->d()V
return-void
.end method
.method static synthetic d(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/GlympseUserSelectorItem;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->g:Lcom/bbm/ui/GlympseUserSelectorItem;
return-object v0
.end method
.method private d()V
.registers 7
const/4 v2, 0x0
const/4 v5, 0x1
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->k:Ljava/lang/String;
if-eqz v0, :cond_47
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/GlympseUserSelector;->k:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/glympse/android/api/GHistoryManager;->findTicketByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v0
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GUserManager;->getSelf()Lcom/glympse/android/api/GUser;
move-result-object v0
:goto_1e
if-eqz v0, :cond_47
iget-object v1, p0, Lcom/bbm/ui/GlympseUserSelector;->f:Lcom/bbm/ui/GlympseUserSelectorItem;
iget-object v2, p0, Lcom/bbm/ui/GlympseUserSelector;->m:Ljava/util/List;
iget-object v3, p0, Lcom/bbm/ui/GlympseUserSelector;->n:Lcom/bbm/ui/activities/xo;
iget-object v4, p0, Lcom/bbm/ui/GlympseUserSelector;->o:Lcom/bbm/d/es;
invoke-static {v0, v2, v3, v4}, Lcom/bbm/util/a/k;->a(Lcom/glympse/android/api/GUser;Ljava/util/List;Lcom/bbm/ui/activities/xo;Lcom/bbm/d/es;)I
move-result v2
invoke-virtual {v1, v2}, Lcom/bbm/ui/GlympseUserSelectorItem;->setColor(I)V
iget-object v1, p0, Lcom/bbm/ui/GlympseUserSelector;->f:Lcom/bbm/ui/GlympseUserSelectorItem;
invoke-virtual {v1, v0}, Lcom/bbm/ui/GlympseUserSelectorItem;->a(Lcom/glympse/android/api/GUser;)V
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->f:Lcom/bbm/ui/GlympseUserSelectorItem;
invoke-virtual {v0, v5}, Lcom/bbm/ui/GlympseUserSelectorItem;->setExpanded(Z)V
:goto_39
return-void
:cond_3a
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/GlympseUserSelector;->k:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/glympse/android/api/GUserManager;->findUserByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GUser;
move-result-object v0
goto :goto_1e
:cond_47
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->h:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ne v0, v5, :cond_71
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->h:Ljava/util/List;
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GUser;
iget-object v1, p0, Lcom/bbm/ui/GlympseUserSelector;->f:Lcom/bbm/ui/GlympseUserSelectorItem;
iget-object v2, p0, Lcom/bbm/ui/GlympseUserSelector;->m:Ljava/util/List;
iget-object v3, p0, Lcom/bbm/ui/GlympseUserSelector;->n:Lcom/bbm/ui/activities/xo;
iget-object v4, p0, Lcom/bbm/ui/GlympseUserSelector;->o:Lcom/bbm/d/es;
invoke-static {v0, v2, v3, v4}, Lcom/bbm/util/a/k;->a(Lcom/glympse/android/api/GUser;Ljava/util/List;Lcom/bbm/ui/activities/xo;Lcom/bbm/d/es;)I
move-result v2
invoke-virtual {v1, v2}, Lcom/bbm/ui/GlympseUserSelectorItem;->setColor(I)V
iget-object v1, p0, Lcom/bbm/ui/GlympseUserSelector;->f:Lcom/bbm/ui/GlympseUserSelectorItem;
invoke-virtual {v1, v0}, Lcom/bbm/ui/GlympseUserSelectorItem;->a(Lcom/glympse/android/api/GUser;)V
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->f:Lcom/bbm/ui/GlympseUserSelectorItem;
invoke-virtual {v0, v5}, Lcom/bbm/ui/GlympseUserSelectorItem;->setExpanded(Z)V
goto :goto_39
:cond_71
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->f:Lcom/bbm/ui/GlympseUserSelectorItem;
invoke-virtual {v0, v2}, Lcom/bbm/ui/GlympseUserSelectorItem;->a(I)V
goto :goto_39
.end method
.method static synthetic e(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/co;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->b:Lcom/bbm/ui/co;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/cp;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->l:Lcom/bbm/ui/cp;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/GlympseUserSelector;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->m:Ljava/util/List;
return-object v0
.end method
.method static synthetic h(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/activities/xo;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->n:Lcom/bbm/ui/activities/xo;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/d/es;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->o:Lcom/bbm/d/es;
return-object v0
.end method
.method static synthetic j(Lcom/bbm/ui/GlympseUserSelector;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->h:Ljava/util/List;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/GlympseUserSelector;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->c:Landroid/content/Context;
return-object v0
.end method
.method public final a()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/GlympseUserSelector;->c()V
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->l:Lcom/bbm/ui/cp;
invoke-virtual {v0}, Lcom/bbm/ui/cp;->notifyDataSetChanged()V
return-void
.end method
.method public final a(Lcom/bbm/d/es;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/GlympseUserSelector;->o:Lcom/bbm/d/es;
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->l:Lcom/bbm/ui/cp;
invoke-virtual {v0}, Lcom/bbm/ui/cp;->notifyDataSetChanged()V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->k:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_15
:cond_a
iput-object p1, p0, Lcom/bbm/ui/GlympseUserSelector;->k:Ljava/lang/String;
invoke-direct {p0}, Lcom/bbm/ui/GlympseUserSelector;->d()V
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->g:Lcom/bbm/ui/GlympseUserSelectorItem;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/GlympseUserSelectorItem;->setVisibility(I)V
:cond_15
return-void
.end method
.method public final a(Ljava/util/List;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/GlympseUserSelector;->m:Ljava/util/List;
invoke-direct {p0}, Lcom/bbm/ui/GlympseUserSelector;->c()V
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->j:Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/GlympseUserSelector;->l:Lcom/bbm/ui/cp;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 6
const/4 v0, 0x1
if-ne v0, p2, :cond_5f
and-int/lit16 v0, p3, 0x2000
if-eqz v0, :cond_25
check-cast p4, Lcom/glympse/android/api/GUser;
invoke-interface {p4, p0}, Lcom/glympse/android/api/GUser;->addListener(Lcom/glympse/android/api/GEventListener;)Z
invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0, p4}, Lcom/glympse/android/api/GUserManager;->startTracking(Lcom/glympse/android/api/GUser;)I
invoke-interface {p4}, Lcom/glympse/android/api/GUser;->getActive()Lcom/glympse/android/api/GTicket;
move-result-object v0
if-eqz v0, :cond_1c
invoke-interface {v0, p0}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
:cond_1c
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->l:Lcom/bbm/ui/cp;
invoke-virtual {v0}, Lcom/bbm/ui/cp;->notifyDataSetChanged()V
invoke-direct {p0}, Lcom/bbm/ui/GlympseUserSelector;->d()V
:goto_24
:cond_24
return-void
:cond_25
and-int/lit16 v0, p3, 0x4000
if-eqz v0, :cond_44
check-cast p4, Lcom/glympse/android/api/GUser;
invoke-interface {p4, p0}, Lcom/glympse/android/api/GUser;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
invoke-interface {p4}, Lcom/glympse/android/api/GUser;->getActive()Lcom/glympse/android/api/GTicket;
move-result-object v0
if-eqz v0, :cond_37
invoke-interface {v0, p0}, Lcom/glympse/android/api/GTicket;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
:cond_37
invoke-interface {p1}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v0
invoke-interface {v0, p4}, Lcom/glympse/android/api/GUserManager;->stopTracking(Lcom/glympse/android/api/GUser;)I
:cond_3e
:goto_3e
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->l:Lcom/bbm/ui/cp;
invoke-virtual {v0}, Lcom/bbm/ui/cp;->notifyDataSetChanged()V
goto :goto_24
:cond_44
const v0, 0x8000
and-int/2addr v0, p3
if-eqz v0, :cond_24
check-cast p4, Lcom/glympse/android/api/GUser;
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->f:Lcom/bbm/ui/GlympseUserSelectorItem;
invoke-virtual {v0}, Lcom/bbm/ui/GlympseUserSelectorItem;->getUser()Lcom/glympse/android/api/GUser;
move-result-object v0
if-ne v0, p4, :cond_59
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->f:Lcom/bbm/ui/GlympseUserSelectorItem;
invoke-virtual {v0, p4}, Lcom/bbm/ui/GlympseUserSelectorItem;->a(Lcom/glympse/android/api/GUser;)V
:cond_59
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->l:Lcom/bbm/ui/cp;
invoke-virtual {v0}, Lcom/bbm/ui/cp;->notifyDataSetChanged()V
goto :goto_24
:cond_5f
const/4 v0, 0x3
if-ne v0, p2, :cond_8c
and-int/lit8 v0, p3, 0x2
if-eqz v0, :cond_78
check-cast p4, Lcom/glympse/android/api/GUser;
invoke-interface {p4}, Lcom/glympse/android/api/GUser;->isSelf()Z
move-result v0
if-nez v0, :cond_24
invoke-interface {p4}, Lcom/glympse/android/api/GUser;->getActive()Lcom/glympse/android/api/GTicket;
move-result-object v0
if-eqz v0, :cond_24
invoke-interface {v0, p0}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_24
:cond_78
and-int/lit8 v0, p3, 0x4
if-eqz v0, :cond_82
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-interface {p4, p0}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_24
:cond_82
and-int/lit8 v0, p3, 0x8
if-eqz v0, :cond_24
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-interface {p4, p0}, Lcom/glympse/android/api/GTicket;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_24
:cond_8c
const/4 v0, 0x4
if-ne v0, p2, :cond_24
and-int/lit8 v0, p3, 0x4
if-eqz v0, :cond_99
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-interface {p4, p0}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
goto :goto_24
:cond_99
and-int/lit8 v0, p3, 0x10
if-nez v0, :cond_a1
and-int/lit16 v0, p3, 0x4000
if-eqz v0, :cond_24
:cond_a1
check-cast p4, Lcom/glympse/android/api/GUser;
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->f:Lcom/bbm/ui/GlympseUserSelectorItem;
invoke-virtual {v0}, Lcom/bbm/ui/GlympseUserSelectorItem;->getUser()Lcom/glympse/android/api/GUser;
move-result-object v0
if-ne v0, p4, :cond_3e
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelector;->f:Lcom/bbm/ui/GlympseUserSelectorItem;
invoke-virtual {v0, p4}, Lcom/bbm/ui/GlympseUserSelectorItem;->a(Lcom/glympse/android/api/GUser;)V
goto :goto_3e
.end method