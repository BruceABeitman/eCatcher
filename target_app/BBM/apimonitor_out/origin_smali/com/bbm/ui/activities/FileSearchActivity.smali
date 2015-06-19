.class public Lcom/bbm/ui/activities/FileSearchActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "FileSearchActivity.java"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/Button;

.field private c:Lcom/bbm/ui/ListHeaderView;

.field private d:Landroid/widget/GridView;

.field private e:Lcom/bbm/ui/activities/kh;

.field private final f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/FileSearchActivity;->f:Landroid/os/Handler;

    new-instance v0, Lcom/bbm/ui/voice/o;

    invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FileSearchActivity;->a(Lcom/bbm/ui/activities/aka;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/FileSearchActivity;)Lcom/bbm/ui/activities/kh;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/FileSearchActivity;->e:Lcom/bbm/ui/activities/kh;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/FileSearchActivity;)Lcom/bbm/ui/ListHeaderView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/FileSearchActivity;->c:Lcom/bbm/ui/ListHeaderView;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/FileSearchActivity;)Landroid/widget/GridView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/FileSearchActivity;->d:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/FileSearchActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/FileSearchActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/bbm/ui/activities/kg;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/kg;-><init>(Lcom/bbm/ui/activities/FileSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    new-instance v0, Lcom/bbm/ui/fv;

    invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FileSearchActivity;->a(Lcom/bbm/ui/activities/aka;)V

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FileSearchActivity;->setContentView(I)V

    const v0, 0x7f0a017e

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FileSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ListHeaderView;

    iput-object v0, p0, Lcom/bbm/ui/activities/FileSearchActivity;->c:Lcom/bbm/ui/ListHeaderView;

    const v0, 0x7f0a017f

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FileSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/bbm/ui/activities/FileSearchActivity;->d:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/bbm/ui/activities/FileSearchActivity;->d:Landroid/widget/GridView;

    new-instance v1, Lcom/bbm/ui/activities/kh;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FileSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/bbm/ui/activities/kh;-><init>(Lcom/bbm/ui/activities/FileSearchActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bbm/ui/activities/FileSearchActivity;->e:Lcom/bbm/ui/activities/kh;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/FileSearchActivity;->d:Landroid/widget/GridView;

    new-instance v1, Lcom/bbm/ui/activities/kd;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/kd;-><init>(Lcom/bbm/ui/activities/FileSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FileSearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v0, 0x7f03010e

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0545

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/activities/FileSearchActivity;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbm/ui/activities/FileSearchActivity;->b:Landroid/widget/Button;

    new-instance v2, Lcom/bbm/ui/activities/ke;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/ke;-><init>(Lcom/bbm/ui/activities/FileSearchActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0544

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/FileSearchActivity;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/bbm/ui/activities/FileSearchActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/bbm/ui/activities/kf;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/kf;-><init>(Lcom/bbm/ui/activities/FileSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
