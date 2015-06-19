.class public Lcom/bbm/ui/activities/GroupListsCommentActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupListsCommentActivity.java"


# instance fields
.field protected a:Lcom/bbm/g/am;

.field private b:Ljava/lang/String;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/bbm/ui/SendEditText;

.field private f:Lcom/bbm/ui/EmoticonInputPanel;

.field private g:Lcom/bbm/ui/activities/pj;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/bbm/ui/FooterActionBar;

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/bbm/ui/EmoticonPanelViewLayout;

.field private final m:Lcom/bbm/ui/cj;

.field private final n:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/bbm/ui/activities/GroupListsActivity;

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/md;-><init>(Ljava/lang/Class;)V

    new-instance v0, Lcom/bbm/ui/activities/ph;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ph;-><init>(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->m:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/activities/pi;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/pi;-><init>(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->n:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupListsCommentActivity;)Lcom/bbm/ui/EmoticonInputPanel;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->f:Lcom/bbm/ui/EmoticonInputPanel;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupListsCommentActivity;Z)V
    .registers 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/af;->d()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/fb;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_17
    const/4 v0, 0x1

    :goto_18
    if-nez v0, :cond_29

    iget-object v3, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_2c

    move v0, v1

    :goto_1f
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->j:Lcom/bbm/ui/FooterActionBar;

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

.method static synthetic b(Lcom/bbm/ui/activities/GroupListsCommentActivity;)Lcom/bbm/ui/SendEditText;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->e:Lcom/bbm/ui/SendEditText;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/GroupListsCommentActivity;)Lcom/bbm/ui/FooterActionBar;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->j:Lcom/bbm/ui/FooterActionBar;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->e:Lcom/bbm/ui/SendEditText;

    invoke-virtual {v0}, Lcom/bbm/ui/SendEditText;->length()I

    move-result v0

    if-lez v0, :cond_25

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->a:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->e:Lcom/bbm/ui/SendEditText;

    invoke-virtual {v2}, Lcom/bbm/ui/SendEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bbm/g/br;

    invoke-direct {v3, v1, v2}, Lcom/bbm/g/br;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->e:Lcom/bbm/ui/SendEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/bbm/ui/SendEditText;->setText(Ljava/lang/CharSequence;)V

    :cond_25
    return-void
.end method

.method static synthetic e(Lcom/bbm/ui/activities/GroupListsCommentActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/activities/GroupListsCommentActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->a:Lcom/bbm/g/am;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "listUri"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->b:Ljava/lang/String;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    move v0, v1

    :goto_24
    const-string v3, "No list URI specified in Intent"

    invoke-static {p0, v0, v3}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    :goto_2c
    return-void

    :cond_2d
    move v0, v2

    goto :goto_24

    :cond_2f
    const v0, 0x7f03002e

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v3, 0x7f030112

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a054e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0a01b1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f0a0570

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/SendEditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->e:Lcom/bbm/ui/SendEditText;

    const v0, 0x7f0a0189

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/EmoticonPanelViewLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->l:Lcom/bbm/ui/EmoticonPanelViewLayout;

    const v0, 0x7f0a0164

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/EmoticonInputPanel;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->f:Lcom/bbm/ui/EmoticonInputPanel;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->l:Lcom/bbm/ui/EmoticonPanelViewLayout;

    iget-object v3, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->f:Lcom/bbm/ui/EmoticonInputPanel;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/EmoticonPanelViewLayout;->setEmoticonInputPanel(Lcom/bbm/ui/EmoticonInputPanel;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->l:Lcom/bbm/ui/EmoticonPanelViewLayout;

    new-instance v3, Lcom/bbm/ui/activities/pc;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/pc;-><init>(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V

    invoke-virtual {v0, v3}, Lcom/bbm/ui/EmoticonPanelViewLayout;->setLowerPanelVisibilityListener(Lcom/bbm/ui/bo;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->j:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->j:Lcom/bbm/ui/FooterActionBar;

    new-instance v3, Lcom/bbm/ui/ActionBarItem;

    const v4, 0x7f02021c

    const v5, 0x7f0e044d

    invoke-direct {v3, p0, v4, v5}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v3, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->j:Lcom/bbm/ui/FooterActionBar;

    new-instance v3, Lcom/bbm/ui/ActionBarItem;

    const v4, 0x7f0203cf

    const v5, 0x7f0e0657

    invoke-direct {v3, p0, v4, v5}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v3, v1}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->j:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->j:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->m:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/bbm/ui/activities/pd;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/pd;-><init>(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->e:Lcom/bbm/ui/SendEditText;

    new-instance v1, Lcom/bbm/ui/activities/pe;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/pe;-><init>(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/SendEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->e:Lcom/bbm/ui/SendEditText;

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->e:Lcom/bbm/ui/SendEditText;

    new-instance v1, Lcom/bbm/ui/activities/pf;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/pf;-><init>(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/SendEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v0, 0x7f0a01b0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupListsCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->h:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->h:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    new-instance v0, Lcom/bbm/ui/activities/pj;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/pj;-><init>(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->g:Lcom/bbm/ui/activities/pj;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->g:Lcom/bbm/ui/activities/pj;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->g:Lcom/bbm/ui/activities/pj;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/pj;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->h:Landroid/widget/ListView;

    new-instance v1, Lcom/bbm/ui/activities/pg;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/pg;-><init>(Lcom/bbm/ui/activities/GroupListsCommentActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_2c
.end method

.method protected onPause()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->n:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 4

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onResume()V

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->j:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->e:Lcom/bbm/ui/SendEditText;

    invoke-virtual {v0}, Lcom/bbm/ui/SendEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1c

    move v0, v1

    :goto_13
    invoke-virtual {v2, v1, v0}, Lcom/bbm/ui/FooterActionBar;->setActionEnabled(IZ)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupListsCommentActivity;->n:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_13
.end method
