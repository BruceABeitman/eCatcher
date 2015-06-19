.class public Lcom/bbm/ui/activities/GroupConversationActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupConversationActivity.java"
.field private F:Lcom/bbm/util/d/d;
.field private G:Landroid/content/SharedPreferences;
.field private final H:Landroid/os/Handler;
.field private final I:Landroid/view/View$OnClickListener;
.field private final J:Landroid/view/View$OnTouchListener;
.field private final K:Lcom/bbm/ui/cj;
.field private final L:Lcom/bbm/j/k;
.field private final M:Landroid/text/TextWatcher;
.field private final N:Landroid/view/View$OnKeyListener;
.field private final O:Lcom/bbm/j/k;
.field private final P:Lcom/bbm/ui/c/fq;
.field private final Q:Lcom/bbm/ui/activities/na;
.field  a:Lcom/bbm/ui/activities/nb;
.field private b:Lcom/bbm/ui/EmoticonPanelViewLayout;
.field private d:Landroid/widget/ImageView;
.field private e:Lcom/bbm/ui/FooterActionBar;
.field private f:Landroid/view/ViewGroup;
.field private g:Lcom/bbm/ui/ObservingImageView;
.field private h:Lcom/bbm/ui/InlineImageTextView;
.field private i:Lcom/bbm/ui/InlineImageTextView;
.field private j:Landroid/widget/TextView;
.field private k:Lcom/bbm/ui/EmoticonInputPanel;
.field private l:Landroid/widget/ListView;
.field private m:Landroid/widget/EditText;
.field private n:Z
.field private o:Ljava/lang/String;
.field private p:Lcom/bbm/ui/a/s;
.field private q:Lcom/bbm/ui/ct;
.field private r:Lcom/google/b/a/l;
.field private s:Ljava/util/TimerTask;
.field private final t:Landroid/os/Handler;
.field private u:Z
.field private v:Landroid/widget/TextView;
.field private w:Lcom/bbm/ui/activities/aij;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
const-class v0, Lcom/bbm/ui/activities/MainActivity;
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/md;-><init>(Ljava/lang/Class;)V
iput-boolean v1, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->n:Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->p:Lcom/bbm/ui/a/s;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->r:Lcom/google/b/a/l;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->t:Landroid/os/Handler;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->H:Landroid/os/Handler;
new-instance v0, Lcom/bbm/ui/activities/me;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/me;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->I:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/bbm/ui/activities/mr;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/mr;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->J:Landroid/view/View$OnTouchListener;
new-instance v0, Lcom/bbm/ui/activities/ms;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ms;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->K:Lcom/bbm/ui/cj;
new-instance v0, Lcom/bbm/ui/activities/mt;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/mt;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->L:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/activities/mu;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/mu;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->M:Landroid/text/TextWatcher;
new-instance v0, Lcom/bbm/ui/activities/mv;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/mv;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->N:Landroid/view/View$OnKeyListener;
new-instance v0, Lcom/bbm/ui/activities/mz;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/mz;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->O:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/activities/mn;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/mn;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->P:Lcom/bbm/ui/c/fq;
new-instance v0, Lcom/bbm/ui/activities/nb;
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/nb;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;B)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->a:Lcom/bbm/ui/activities/nb;
new-instance v0, Lcom/bbm/ui/activities/na;
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/na;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;B)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->Q:Lcom/bbm/ui/activities/na;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupConversationActivity;Landroid/widget/TextView;)Landroid/widget/TextView;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->v:Landroid/widget/TextView;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/EmoticonInputPanel;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->k:Lcom/bbm/ui/EmoticonInputPanel;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupConversationActivity;Lcom/bbm/util/d/d;)Lcom/bbm/util/d/d;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->F:Lcom/bbm/util/d/d;
return-object p1
.end method
.method private a(Landroid/widget/TextView;)V
.registers 4
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupConversationActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f09006c
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupConversationActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f09011f
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v0
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupConversationActivity;Lcom/bbm/ui/c/fm;)V
.registers 2
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/GroupConversationActivity;->a(Lcom/bbm/ui/c/fm;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupConversationActivity;Ljava/lang/String;)V
.registers 3
const-string v0, "simple text"
invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;
move-result-object v0
invoke-static {p0, v0}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Landroid/content/ClipData;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/GroupConversationActivity;Z)V
.registers 6
const/16 v2, 0x8
const/4 v1, 0x0
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/af;->d()Z
move-result v0
if-nez v0, :cond_17
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupConversationActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/fb;->a(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_2a
:cond_17
const/4 v0, 0x1
:goto_18
if-nez v0, :cond_29
iget-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->d:Landroid/widget/ImageView;
if-eqz p1, :cond_2c
move v0, v1
:goto_1f
invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->e:Lcom/bbm/ui/FooterActionBar;
if-eqz p1, :cond_2e
:goto_26
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V
:cond_29
return-void
:cond_2a
move v0, v1
goto :goto_18
:cond_2c
move v0, v2
goto :goto_1f
:cond_2e
move v1, v2
goto :goto_26
.end method
.method private a(Lcom/bbm/ui/c/fm;)V
.registers 8
const/4 v5, 0x0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v2, Lcom/bbm/ui/slidingmenu/a;
const v0, 0x7f0a0098
const v3, 0x7f0203cf
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
const v4, 0x7f0e06ba
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/GroupConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v2, v0, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->m:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-interface {v0}, Landroid/text/Editable;->length()I
move-result v0
if-lez v0, :cond_9b
const/4 v0, 0x1
:goto_29
invoke-virtual {v2, v0}, Lcom/bbm/ui/slidingmenu/a;->d(Z)V
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a0088
const v3, 0x7f020265
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
const v4, 0x7f0e03d8
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/GroupConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v0, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a0089
const v3, 0x7f020266
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
const v4, 0x7f0e03d9
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/GroupConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v0, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a008c
const v3, 0x7f02026b
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
const v4, 0x7f0e03da
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/GroupConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v0, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a0087
const v3, 0x7f020264
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
const v4, 0x7f0e03d7
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/GroupConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v0, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p1, v1, v5, v5}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->P:Lcom/bbm/ui/c/fq;
iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
return-void
:cond_9b
const/4 v0, 0x0
goto :goto_29
.end method
.method static synthetic b(Lcom/bbm/ui/activities/GroupConversationActivity;Landroid/widget/TextView;)V
.registers 2
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/GroupConversationActivity;->a(Landroid/widget/TextView;)V
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/activities/GroupConversationActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->u:Z
return v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/GroupConversationActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->u:Z
return p1
.end method
.method static synthetic c(Lcom/bbm/ui/activities/GroupConversationActivity;)V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->a(Lcom/bbm/ui/c/fm;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->k:Lcom/bbm/ui/EmoticonInputPanel;
invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupConversationActivity;->o()V
return-void
.end method
.method static synthetic d(Lcom/bbm/ui/activities/GroupConversationActivity;)V
.registers 1
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupConversationActivity;->h()V
return-void
.end method
.method static synthetic e(Lcom/bbm/ui/activities/GroupConversationActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->o:Ljava/lang/String;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/EditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->m:Landroid/widget/EditText;
return-object v0
.end method
.method private f()V
.registers 4
const/4 v1, 0x0
iget-object v2, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->e:Lcom/bbm/ui/FooterActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->m:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_1c
const/4 v0, 0x1
:goto_18
invoke-virtual {v2, v1, v0}, Lcom/bbm/ui/FooterActionBar;->setActionEnabled(IZ)V
return-void
:cond_1c
move v0, v1
goto :goto_18
.end method
.method static synthetic g(Lcom/bbm/ui/activities/GroupConversationActivity;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/GroupConversationActivity;->f()V
return-void
.end method
.method static synthetic h(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/activities/aij;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->w:Lcom/bbm/ui/activities/aij;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->H:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic j(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->l:Landroid/widget/ListView;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/ObservingImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->g:Lcom/bbm/ui/ObservingImageView;
return-object v0
.end method
.method private k()V
.registers 7
const/4 v1, 0x1
const/4 v5, 0x0
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->o:Ljava/lang/String;
invoke-virtual {v0, v2}, Lcom/bbm/g/am;->o(Ljava/lang/String;)Lcom/bbm/g/q;
move-result-object v2
iget-object v0, v2, Lcom/bbm/g/q;->l:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v0, v3, :cond_13
:goto_12
return-void
:cond_13
iget-object v0, v2, Lcom/bbm/g/q;->c:Ljava/util/List;
if-eqz v0, :cond_b5
iget-object v0, v2, Lcom/bbm/g/q;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_b5
iget-object v0, v2, Lcom/bbm/g/q;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ne v0, v1, :cond_5b
iget-object v1, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->i:Lcom/bbm/ui/InlineImageTextView;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v4
iget-object v0, v2, Lcom/bbm/g/q;->c:Ljava/util/List;
invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v4, v0}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v0
iget-object v0, v0, Lcom/bbm/g/o;->c:Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupConversationActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e03d6
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_12
:cond_5b
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v4
iget-object v0, v2, Lcom/bbm/g/q;->c:Ljava/util/List;
invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v4, v0}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v0
iget-object v0, v0, Lcom/bbm/g/o;->c:Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_75
iget-object v0, v2, Lcom/bbm/g/q;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_9c
const-string v0, ", "
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v5
iget-object v0, v2, Lcom/bbm/g/q;->c:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v5, v0}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v0
iget-object v0, v0, Lcom/bbm/g/o;->c:Ljava/lang/String;
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_75
:cond_9c
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupConversationActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e03d2
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->i:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_12
:cond_b5
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->i:Lcom/bbm/ui/InlineImageTextView;
invoke-static {p0, v2}, Lcom/bbm/util/bm;->a(Landroid/content/Context;Lcom/bbm/g/q;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_12
.end method
.method static synthetic l(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/InlineImageTextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->h:Lcom/bbm/ui/InlineImageTextView;
return-object v0
.end method
.method static synthetic m(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->j:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic n(Lcom/bbm/ui/activities/GroupConversationActivity;)V
.registers 5
invoke-direct {p0}, Lcom/bbm/ui/activities/GroupConversationActivity;->k()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->r:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-nez v0, :cond_16
new-instance v0, Ljava/util/Timer;
invoke-direct {v0}, Ljava/util/Timer;-><init>()V
invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->r:Lcom/google/b/a/l;
:cond_16
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->s:Ljava/util/TimerTask;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->s:Ljava/util/TimerTask;
invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z
:cond_1f
new-instance v0, Lcom/bbm/ui/activities/mo;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/mo;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->s:Ljava/util/TimerTask;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->r:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Timer;
iget-object v1, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->s:Ljava/util/TimerTask;
const-wide/16 v2, 0x7530
invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
return-void
.end method
.method static synthetic o(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/EmoticonPanelViewLayout;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->b:Lcom/bbm/ui/EmoticonPanelViewLayout;
return-object v0
.end method
.method static synthetic p(Lcom/bbm/ui/activities/GroupConversationActivity;)Z
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->l:Landroid/widget/ListView;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->l:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I
move-result v0
iget-object v1, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->l:Landroid/widget/ListView;
invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I
move-result v1
if-lez v1, :cond_1e
iget-object v1, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->l:Landroid/widget/ListView;
invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-lt v0, v1, :cond_1e
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method
.method static synthetic q(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/a/s;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->p:Lcom/bbm/ui/a/s;
return-object v0
.end method
.method static synthetic r(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->v:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic s(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/util/d/d;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->F:Lcom/bbm/util/d/d;
return-object v0
.end method
.method static synthetic t(Lcom/bbm/ui/activities/GroupConversationActivity;)Lcom/bbm/ui/activities/na;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->Q:Lcom/bbm/ui/activities/na;
return-object v0
.end method
.method static synthetic u(Lcom/bbm/ui/activities/GroupConversationActivity;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/GroupConversationActivity;->k()V
return-void
.end method
.method static synthetic v(Lcom/bbm/ui/activities/GroupConversationActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->t:Landroid/os/Handler;
return-object v0
.end method
.method protected final a()V
.registers 2
invoke-super {p0}, Lcom/bbm/ui/activities/md;->a()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->v:Landroid/widget/TextView;
if-eqz v0, :cond_18
iget-boolean v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->u:Z
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->v:Landroid/widget/TextView;
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->a(Landroid/widget/TextView;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->u:Z
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->a(Lcom/bbm/ui/c/fm;)V
:cond_18
return-void
.end method
.method protected final b()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->m:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_15
:goto_14
return-void
:cond_15
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->m:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-interface {v0}, Landroid/text/Editable;->length()I
move-result v0
if-eqz v0, :cond_38
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->o:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->m:Landroid/widget/EditText;
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/bbm/g/an;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/cf;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
:cond_38
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->m:Landroid/widget/EditText;
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
invoke-direct {p0}, Lcom/bbm/ui/activities/GroupConversationActivity;->f()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->w:Lcom/bbm/ui/activities/aij;
invoke-virtual {v0}, Lcom/bbm/ui/activities/aij;->b()V
goto :goto_14
.end method
.method protected final c()Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
iget-boolean v2, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->n:Z
if-nez v2, :cond_19
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->o:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/g/am;->n(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v2
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v2, v3, :cond_15
move v0, v1
:cond_15
iput-boolean v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->n:Z
:cond_17
move v0, v1
:goto_18
return v0
:cond_19
iget-boolean v2, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->n:Z
if-eqz v2, :cond_17
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->o:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/g/am;->n(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v2
sget-object v3, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
if-ne v2, v3, :cond_17
goto :goto_18
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 5
invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/md;->onActivityResult(IILandroid/content/Intent;)V
const/4 v0, -0x1
if-eq p2, v0, :cond_6
:cond_6
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/bbm/ui/activities/GroupConversationActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x1
const/4 v2, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupConversationActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->G:Landroid/content/SharedPreferences;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupConversationActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v3, "groupConversationUri"
invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->o:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->o:Ljava/lang/String;
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->o:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_37
:cond_27
if-eqz p1, :cond_37
invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z
move-result v0
if-nez v0, :cond_37
const-string v0, "groupConversationUri"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->o:Ljava/lang/String;
:cond_37
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->o:Ljava/lang/String;
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->o:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_4d
move v0, v1
:goto_44
const-string v3, "No conversation URI specified in Intent"
invoke-static {p0, v0, v3}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4f
:goto_4c
const-string v1, " - Lcom/bbm/ui/activities/GroupConversationActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_4d
move v0, v2
goto :goto_44
:cond_4f
const v0, 0x7f030028
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->setContentView(I)V
const v0, 0x7f0a0161
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/EmoticonPanelViewLayout;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->b:Lcom/bbm/ui/EmoticonPanelViewLayout;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->b:Lcom/bbm/ui/EmoticonPanelViewLayout;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->J:Landroid/view/View$OnTouchListener;
invoke-virtual {v0, v3}, Lcom/bbm/ui/EmoticonPanelViewLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->b:Lcom/bbm/ui/EmoticonPanelViewLayout;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->I:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v3}, Lcom/bbm/ui/EmoticonPanelViewLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0136
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->d:Landroid/widget/ImageView;
const v0, 0x7f0a00be
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/FooterActionBar;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->e:Lcom/bbm/ui/FooterActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->e:Lcom/bbm/ui/FooterActionBar;
new-instance v3, Lcom/bbm/ui/ActionBarItem;
const v4, 0x7f0203cf
const v5, 0x7f0e0656
invoke-direct {v3, p0, v4, v5}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V
invoke-virtual {v0, v3, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->e:Lcom/bbm/ui/FooterActionBar;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->K:Lcom/bbm/ui/cj;
invoke-virtual {v0, v3}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupConversationActivity;->getWindow()Landroid/view/Window;
move-result-object v0
const/4 v3, 0x0
invoke-virtual {v0, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupConversationActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v3
const v0, 0x7f03010a
invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setCustomView(I)V
const/16 v0, 0x10
invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V
invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v4, 0x7f0a0532
invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->f:Landroid/view/ViewGroup;
invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v4, 0x7f0a0535
invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->g:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v4, 0x7f0a0539
invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->h:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v4, 0x7f0a053a
invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->i:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v3, 0x7f0a0538
invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->j:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->f:Landroid/view/ViewGroup;
new-instance v3, Lcom/bbm/ui/activities/mf;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/mf;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->b:Lcom/bbm/ui/EmoticonPanelViewLayout;
invoke-virtual {v0}, Lcom/bbm/ui/EmoticonPanelViewLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
new-instance v3, Lcom/bbm/ui/activities/mg;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/mg;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
const v0, 0x7f0a0164
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/EmoticonInputPanel;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->k:Lcom/bbm/ui/EmoticonInputPanel;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->b:Lcom/bbm/ui/EmoticonPanelViewLayout;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->k:Lcom/bbm/ui/EmoticonInputPanel;
invoke-virtual {v0, v3}, Lcom/bbm/ui/EmoticonPanelViewLayout;->setEmoticonInputPanel(Lcom/bbm/ui/EmoticonInputPanel;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->b:Lcom/bbm/ui/EmoticonPanelViewLayout;
new-instance v3, Lcom/bbm/ui/activities/mh;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/mh;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
invoke-virtual {v0, v3}, Lcom/bbm/ui/EmoticonPanelViewLayout;->setLowerPanelVisibilityListener(Lcom/bbm/ui/bo;)V
const v0, 0x7f0a0570
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->m:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->m:Landroid/widget/EditText;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->M:Landroid/text/TextWatcher;
invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->m:Landroid/widget/EditText;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->N:Landroid/view/View$OnKeyListener;
invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->m:Landroid/widget/EditText;
const/16 v3, 0x7d0
invoke-static {v0, v3}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
new-instance v0, Lcom/bbm/ui/a/s;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->o:Ljava/lang/String;
invoke-direct {v0, p0, v3}, Lcom/bbm/ui/a/s;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->p:Lcom/bbm/ui/a/s;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->p:Lcom/bbm/ui/a/s;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->J:Landroid/view/View$OnTouchListener;
iput-object v3, v0, Lcom/bbm/ui/a/s;->c:Landroid/view/View$OnTouchListener;
new-instance v0, Lcom/bbm/ui/ct;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->p:Lcom/bbm/ui/a/s;
invoke-direct {v0, p0, v3}, Lcom/bbm/ui/ct;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->q:Lcom/bbm/ui/ct;
const v0, 0x7f0a0163
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->l:Landroid/widget/ListView;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->l:Landroid/widget/ListView;
const/4 v3, 0x2
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTranscriptMode(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->l:Landroid/widget/ListView;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->q:Lcom/bbm/ui/ct;
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->l:Landroid/widget/ListView;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->J:Landroid/view/View$OnTouchListener;
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->l:Landroid/widget/ListView;
new-instance v3, Lcom/bbm/ui/activities/mi;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/mi;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->l:Landroid/widget/ListView;
new-instance v3, Lcom/bbm/ui/activities/mj;
invoke-direct {v3, p0}, Lcom/bbm/ui/activities/mj;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
invoke-direct {p0}, Lcom/bbm/ui/activities/GroupConversationActivity;->f()V
new-instance v0, Lcom/bbm/ui/activities/ml;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ml;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->a(Lcom/slidingmenu/lib/a/b;)V
new-instance v0, Lcom/bbm/ui/activities/aij;
iget-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->o:Ljava/lang/String;
invoke-direct {v0, v3, v1}, Lcom/bbm/ui/activities/aij;-><init>(Ljava/lang/String;I)V
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->w:Lcom/bbm/ui/activities/aij;
const v0, 0x7f0a0533
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupConversationActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V
new-instance v1, Lcom/bbm/ui/activities/mm;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/mm;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto/16 :goto_4c
.end method
.method public onDestroy()V
.registers 5
const-string v1, " + Lcom/bbm/ui/activities/GroupConversationActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onDestroy()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->q:Lcom/bbm/ui/ct;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->q:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->b()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->q:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->e()V
iput-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->q:Lcom/bbm/ui/ct;
:cond_14
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->p:Lcom/bbm/ui/a/s;
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->p:Lcom/bbm/ui/a/s;
iget-object v1, v0, Lcom/bbm/ui/a/s;->b:Lcom/bbm/j/w;
iget-object v2, v0, Lcom/bbm/ui/a/s;->i:Lcom/bbm/j/h;
invoke-interface {v1, v2}, Lcom/bbm/j/w;->b(Lcom/bbm/j/h;)V
iget-object v1, v0, Lcom/bbm/ui/a/s;->h:Lcom/bbm/util/b/g;
if-eqz v1, :cond_2e
iget-object v1, v0, Lcom/bbm/ui/a/s;->h:Lcom/bbm/util/b/g;
iget-object v2, v0, Lcom/bbm/ui/a/s;->a:Landroid/app/Activity;
invoke-virtual {v1, v2}, Lcom/bbm/util/b/g;->a(Landroid/app/Activity;)V
iput-object v3, v0, Lcom/bbm/ui/a/s;->h:Lcom/bbm/util/b/g;
:cond_2e
iput-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->p:Lcom/bbm/ui/a/s;
:cond_30
const-string v1, " - Lcom/bbm/ui/activities/GroupConversationActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onPause()V
.registers 4
const-string v1, " + Lcom/bbm/ui/activities/GroupConversationActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->O:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->L:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->a:Lcom/bbm/ui/activities/nb;
invoke-virtual {v0}, Lcom/bbm/ui/activities/nb;->e()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->q:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->b()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->k:Lcom/bbm/ui/EmoticonInputPanel;
invoke-virtual {v0}, Lcom/bbm/ui/EmoticonInputPanel;->c()Z
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->m:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->o:Ljava/lang/String;
invoke-virtual {v1, v2, v0}, Lcom/bbm/g/am;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
sget-object v1, Lcom/bbm/c/n;->l:Lcom/bbm/c/n;
invoke-virtual {v0, v1}, Lcom/bbm/c/c;->c(Lcom/bbm/c/n;)V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->r:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_4e
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->r:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Timer;
invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
:cond_4e
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->r:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->w:Lcom/bbm/ui/activities/aij;
invoke-virtual {v0}, Lcom/bbm/ui/activities/aij;->c()V
invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/f/a;->a(Ljava/lang/String;)V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->o:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/g/an;->a(Ljava/lang/String;)Lcom/bbm/g/at;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
const-string v1, " - Lcom/bbm/ui/activities/GroupConversationActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 5
const-string v1, " + Lcom/bbm/ui/activities/GroupConversationActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/md;->onResume()V
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
sget-object v1, Lcom/bbm/c/n;->l:Lcom/bbm/c/n;
invoke-virtual {v0, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/n;)V
new-instance v0, Lcom/bbm/ui/activities/mw;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/mw;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->O:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->L:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->m:Landroid/widget/EditText;
invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupConversationActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0b010a
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
mul-int/lit8 v1, v1, 0x2
const v2, 0x4089999a
iget-object v3, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->m:Landroid/widget/EditText;
invoke-virtual {v3}, Landroid/widget/EditText;->getLineHeight()I
move-result v3
int-to-float v3, v3
mul-float/2addr v2, v3
float-to-int v2, v2
add-int/2addr v1, v2
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setMaxHeight(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->m:Landroid/widget/EditText;
new-instance v1, Lcom/bbm/ui/activities/my;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/my;-><init>(Lcom/bbm/ui/activities/GroupConversationActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/f/a;->b()V
invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->o:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/ui/f/a;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->q:Lcom/bbm/ui/ct;
invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V
const-string v0, "close"
const-string v1, "GroupConversation"
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/bbm/ui/activities/GroupConversationActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/bbm/ui/activities/GroupConversationActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "groupConversationUri"
iget-object v1, p0, Lcom/bbm/ui/activities/GroupConversationActivity;->o:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, " - Lcom/bbm/ui/activities/GroupConversationActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method