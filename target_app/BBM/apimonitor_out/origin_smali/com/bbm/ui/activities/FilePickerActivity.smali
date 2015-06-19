.class public Lcom/bbm/ui/activities/FilePickerActivity;
.super Lcom/bbm/ui/activities/ev;
.source "FilePickerActivity.java"


# static fields
.field private static a:Z

.field private static b:Lcom/bbm/ui/activities/jz;

.field private static c:Lcom/bbm/ui/activities/jx;

.field private static d:Ljava/lang/String;

.field private static e:I

.field private static f:Z

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Lcom/bbm/ui/activities/kc;

.field private static j:Z

.field private static k:Lcom/bbm/util/b/g;

.field private static l:Lcom/bbm/util/b/g;


# instance fields
.field private F:Z

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Landroid/widget/GridView;

.field private p:Lcom/bbm/ui/ListHeaderView;

.field private q:Lcom/bbm/ui/FooterActionBar;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/Spinner;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/widget/Spinner;

.field private v:Landroid/widget/Spinner;

.field private w:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x1

    sput-boolean v1, Lcom/bbm/ui/activities/FilePickerActivity;->a:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bbm/ui/activities/FilePickerActivity;->f:Z

    const-string v0, ""

    sput-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->g:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->h:Ljava/lang/String;

    sget-object v0, Lcom/bbm/ui/activities/kc;->a:Lcom/bbm/ui/activities/kc;

    sput-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->i:Lcom/bbm/ui/activities/kc;

    sput-boolean v1, Lcom/bbm/ui/activities/FilePickerActivity;->j:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/bbm/ui/activities/ev;-><init>()V

    iput-boolean v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->n:Z

    iput-boolean v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->w:Z

    iput-boolean v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->F:Z

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/kc;)Lcom/bbm/ui/activities/kc;
    .registers 1

    sput-object p0, Lcom/bbm/ui/activities/FilePickerActivity;->i:Lcom/bbm/ui/activities/kc;

    return-object p0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/FilePickerActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/FilePickerActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->t:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/FilePickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_current_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/FilePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/FilePickerActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->w:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/bbm/ui/activities/FilePickerActivity;->j:Z

    return p0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/FilePickerActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->p()V

    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/activities/FilePickerActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/FilePickerActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_selected_file_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_active_file_transfert_id"

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_active_file_transfert_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->finish()V

    return-void
.end method

.method static synthetic b(Z)Z
    .registers 1

    sput-boolean p0, Lcom/bbm/ui/activities/FilePickerActivity;->a:Z

    return p0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/FilePickerActivity;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->w:Z

    return v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/FilePickerActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->F:Z

    return v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/FilePickerActivity;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->F:Z

    return v0
.end method

.method static synthetic f(Lcom/bbm/ui/activities/FilePickerActivity;)Landroid/widget/GridView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->o:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic f()Z
    .registers 1

    sget-boolean v0, Lcom/bbm/ui/activities/FilePickerActivity;->a:Z

    return v0
.end method

.method static synthetic g(Lcom/bbm/ui/activities/FilePickerActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->r:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/FilePickerActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/FilePickerActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->q()V

    return-void
.end method

.method static synthetic j(Lcom/bbm/ui/activities/FilePickerActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->r()V

    return-void
.end method

.method static synthetic k(Lcom/bbm/ui/activities/FilePickerActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->t:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic k()Lcom/bbm/util/b/g;
    .registers 1

    sget-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->k:Lcom/bbm/util/b/g;

    return-object v0
.end method

.method static synthetic l()I
    .registers 1

    sget v0, Lcom/bbm/ui/activities/FilePickerActivity;->e:I

    return v0
.end method

.method static synthetic m()Lcom/bbm/util/b/g;
    .registers 1

    sget-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->l:Lcom/bbm/util/b/g;

    return-object v0
.end method

.method private p()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->o:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/jz;

    sget-object v1, Lcom/bbm/ui/activities/FilePickerActivity;->i:Lcom/bbm/ui/activities/kc;

    sget-boolean v2, Lcom/bbm/ui/activities/FilePickerActivity;->j:Z

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/activities/jz;->a(Lcom/bbm/ui/activities/kc;Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->t:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private q()V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->p:Lcom/bbm/ui/ListHeaderView;

    iget-object v3, p0, Lcom/bbm/ui/activities/FilePickerActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bbm/ui/activities/FilePickerActivity;->p:Lcom/bbm/ui/ListHeaderView;

    iget-boolean v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->n:Z

    if-eqz v0, :cond_46

    const/16 v0, 0x8

    :goto_11
    invoke-virtual {v3, v0}, Lcom/bbm/ui/ListHeaderView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->q:Lcom/bbm/ui/FooterActionBar;

    iget-boolean v3, p0, Lcom/bbm/ui/activities/FilePickerActivity;->n:Z

    if-nez v3, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setBackActionEnabled(Z)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bbm/ui/activities/FilePickerActivity;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    sget-object v3, Lcom/bbm/ui/activities/FilePickerActivity;->b:Lcom/bbm/ui/activities/jz;

    if-eqz v1, :cond_48

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_37
    invoke-virtual {v3, v0}, Lcom/bbm/ui/activities/jz;->a(Ljava/util/List;)V

    sget-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->c:Lcom/bbm/ui/activities/jx;

    if-eqz v1, :cond_42

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :cond_42
    invoke-virtual {v0, v2}, Lcom/bbm/ui/activities/jx;->a(Ljava/util/List;)V

    :cond_45
    return-void

    :cond_46
    move v0, v1

    goto :goto_11

    :cond_48
    move-object v0, v2

    goto :goto_37
.end method

.method private r()V
    .registers 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/bbm/ui/activities/FilePickerActivity;->q:Lcom/bbm/ui/FooterActionBar;

    const/4 v4, 0x2

    sget-boolean v0, Lcom/bbm/ui/activities/FilePickerActivity;->a:Z

    if-eqz v0, :cond_4d

    const v0, 0x7f02020a

    :goto_b
    sget-boolean v1, Lcom/bbm/ui/activities/FilePickerActivity;->a:Z

    if-eqz v1, :cond_51

    const v1, 0x7f0e0329

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_16
    invoke-virtual {v3, v4, v0, v1}, Lcom/bbm/ui/FooterActionBar;->a(IILjava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/FilePickerActivity;->o:Landroid/widget/GridView;

    sget-boolean v0, Lcom/bbm/ui/activities/FilePickerActivity;->a:Z

    if-eqz v0, :cond_59

    const/4 v0, 0x1

    :goto_20
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/bbm/ui/activities/FilePickerActivity;->o:Landroid/widget/GridView;

    sget-boolean v0, Lcom/bbm/ui/activities/FilePickerActivity;->a:Z

    if-eqz v0, :cond_65

    move v0, v2

    :goto_35
    invoke-virtual {v3, v0}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    sget-boolean v0, Lcom/bbm/ui/activities/FilePickerActivity;->a:Z

    if-eqz v0, :cond_67

    :goto_3c
    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->o:Landroid/widget/GridView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/GridView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/bbm/ui/activities/FilePickerActivity;->o:Landroid/widget/GridView;

    sget-boolean v0, Lcom/bbm/ui/activities/FilePickerActivity;->a:Z

    if-eqz v0, :cond_69

    sget-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->b:Lcom/bbm/ui/activities/jz;

    :goto_49
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_4d
    const v0, 0x7f02020b

    goto :goto_b

    :cond_51
    const v1, 0x7f0e032b

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_59
    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c000d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_20

    :cond_65
    move v0, v1

    goto :goto_35

    :cond_67
    move v2, v1

    goto :goto_3c

    :cond_69
    sget-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->c:Lcom/bbm/ui/activities/jx;

    goto :goto_49
.end method


# virtual methods
.method protected final e()V
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->n:Z

    if-nez v0, :cond_7

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->e()V

    :cond_7
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/ev;->onActivityResult(IILandroid/content/Intent;)V

    if-eq p2, v3, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    if-nez p1, :cond_20

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "extra_selected_file_path"

    const-string v2, "extra_selected_file_path"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->finish()V

    goto :goto_6

    :cond_20
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const-string v0, "extra_selected_file_path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_38
    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->a(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const v8, 0x7f0a0177

    const/16 v4, 0x8

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_current_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b5

    iput-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->m:Ljava/lang/String;

    :goto_16
    sget-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/activities/FilePickerActivity;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->n:Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ajy;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-boolean v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->n:Z

    if-eqz v0, :cond_271

    new-instance v0, Lcom/bbm/ui/fv;

    invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V

    :goto_2e
    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->a(Lcom/bbm/ui/activities/aka;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->i()V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->j()V

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->setContentView(I)V

    new-instance v0, Lcom/bbm/ui/activities/jz;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/jz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->b:Lcom/bbm/ui/activities/jz;

    new-instance v0, Lcom/bbm/ui/activities/jx;

    invoke-direct {v0, p0, p0}, Lcom/bbm/ui/activities/jx;-><init>(Lcom/bbm/ui/activities/FilePickerActivity;Landroid/content/Context;)V

    sput-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->c:Lcom/bbm/ui/activities/jx;

    const v0, 0x7f0a0178

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->s:Landroid/widget/Spinner;

    invoke-virtual {p0, v8}, Lcom/bbm/ui/activities/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->r:Landroid/widget/EditText;

    sget-boolean v0, Lcom/bbm/ui/activities/FilePickerActivity;->f:Z

    if-eqz v0, :cond_278

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->s:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    invoke-virtual {p0, v8}, Lcom/bbm/ui/activities/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->r:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    sget-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->g:Ljava/lang/String;

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->r:Landroid/widget/EditText;

    sget-object v1, Lcom/bbm/ui/activities/FilePickerActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_82
    :goto_82
    const v0, 0x7f0a0179

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->t:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bbm/ui/l;

    const v0, 0x7f0e0333

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/bbm/ui/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    new-instance v2, Lcom/bbm/ui/l;

    const v0, 0x7f0e032d

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/bbm/ui/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    const v0, 0x7f0a017a

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->u:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->u:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->u:Landroid/widget/Spinner;

    new-instance v3, Lcom/bbm/ui/q;

    new-instance v4, Lcom/bbm/ui/activities/jo;

    invoke-direct {v4, p0}, Lcom/bbm/ui/activities/jo;-><init>(Lcom/bbm/ui/activities/FilePickerActivity;)V

    invoke-direct {v3, v1, v4}, Lcom/bbm/ui/q;-><init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0a017b

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->v:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->v:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->v:Landroid/widget/Spinner;

    new-instance v1, Lcom/bbm/ui/q;

    new-instance v3, Lcom/bbm/ui/activities/jp;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/jp;-><init>(Lcom/bbm/ui/activities/FilePickerActivity;)V

    invoke-direct {v1, v2, v3}, Lcom/bbm/ui/q;-><init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0a017d

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->o:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->o:Landroid/widget/GridView;

    new-instance v1, Lcom/bbm/ui/activities/jq;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/jq;-><init>(Lcom/bbm/ui/activities/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a0175

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ListHeaderView;

    iput-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->p:Lcom/bbm/ui/ListHeaderView;

    sget-boolean v0, Lcom/bbm/ui/activities/FilePickerActivity;->f:Z

    if-eqz v0, :cond_2c8

    new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bbm/ui/activities/FilePickerActivity;->m:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e0171

    invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e0638

    invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bbm/ui/activities/jr;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/jr;-><init>(Lcom/bbm/ui/activities/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_14b
    new-instance v1, Lcom/bbm/ui/activities/jt;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/jt;-><init>(Lcom/bbm/ui/activities/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->q:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->q:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v5}, Lcom/bbm/ui/FooterActionBar;->setBackActionAndOverflowEnabled(Z)V

    sget-boolean v0, Lcom/bbm/ui/activities/FilePickerActivity;->f:Z

    if-eqz v0, :cond_2dd

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->q:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f020209

    const v3, 0x7f0e0328

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1, v5}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    :goto_188
    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->q:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f02020a

    const v3, 0x7f0e0329

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->q:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f02020d

    const v3, 0x7f0e0333

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->q:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/activities/ju;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ju;-><init>(Lcom/bbm/ui/activities/FilePickerActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    return-void

    :cond_1b5
    sget-object v0, Lcom/bbm/ui/activities/kc;->a:Lcom/bbm/ui/activities/kc;

    sput-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->i:Lcom/bbm/ui/activities/kc;

    sput-boolean v6, Lcom/bbm/ui/activities/FilePickerActivity;->j:Z

    sput-boolean v6, Lcom/bbm/ui/activities/FilePickerActivity;->a:Z

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_save_mode"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/bbm/ui/activities/FilePickerActivity;->f:Z

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_conversation_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->h:Ljava/lang/String;

    sget-boolean v0, Lcom/bbm/ui/activities/FilePickerActivity;->f:Z

    if-eqz v0, :cond_1e5

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_save_suggested_filename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->g:Ljava/lang/String;

    :cond_1e5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fd

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26d

    :cond_1fd
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->m:Ljava/lang/String;

    :goto_209
    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b016f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    sput v0, Lcom/bbm/ui/activities/FilePickerActivity;->e:I

    new-instance v0, Lcom/bbm/util/b/g;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;I)V

    sput-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->k:Lcom/bbm/util/b/g;

    new-instance v1, Lcom/bbm/util/b/f;

    invoke-direct {v1}, Lcom/bbm/util/b/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bbm/util/b/g;->a(Lcom/bbm/util/b/f;)V

    new-instance v0, Lcom/bbm/util/b/f;

    invoke-direct {v0}, Lcom/bbm/util/b/f;-><init>()V

    const/high16 v1, 0x3e80

    invoke-virtual {v0, v1}, Lcom/bbm/util/b/f;->a(F)V

    new-instance v1, Lcom/bbm/util/b/g;

    sget v2, Lcom/bbm/ui/activities/FilePickerActivity;->e:I

    invoke-direct {v1, p0, v2}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;I)V

    sput-object v1, Lcom/bbm/ui/activities/FilePickerActivity;->l:Lcom/bbm/util/b/g;

    invoke-virtual {v1, v0}, Lcom/bbm/util/b/g;->a(Lcom/bbm/util/b/f;)V

    goto/16 :goto_16

    :cond_26d
    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->finish()V

    goto :goto_209

    :cond_271
    new-instance v0, Lcom/bbm/ui/fw;

    invoke-direct {v0}, Lcom/bbm/ui/fw;-><init>()V

    goto/16 :goto_2e

    :cond_278
    iget-boolean v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->n:Z

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->s:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    new-instance v0, Lcom/bbm/ui/l;

    const v1, 0x7f0e0334

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/bbm/ui/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/FilePickerActivity;->s:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    new-instance v1, Lcom/bbm/ui/q;

    new-instance v2, Lcom/bbm/ui/activities/jn;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/jn;-><init>(Lcom/bbm/ui/activities/FilePickerActivity;)V

    invoke-direct {v1, v0, v2}, Lcom/bbm/ui/q;-><init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->s:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->s:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/FilePickerActivity;->s:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_82

    :cond_2c8
    new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;

    const v1, 0x7f0e0332

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0e0171

    invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/FilePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14b

    :cond_2dd
    iget-object v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->q:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f02020c

    const v3, 0x7f0e0642

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1, v6}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    goto/16 :goto_188
.end method

.method protected onDestroy()V
    .registers 2

    sget-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->k:Lcom/bbm/util/b/g;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->k:Lcom/bbm/util/b/g;

    invoke-virtual {v0}, Lcom/bbm/util/b/g;->c()V

    :cond_9
    sget-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->l:Lcom/bbm/util/b/g;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/bbm/ui/activities/FilePickerActivity;->l:Lcom/bbm/util/b/g;

    invoke-virtual {v0}, Lcom/bbm/util/b/g;->c()V

    :cond_12
    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .registers 4

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V

    iput-boolean v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->F:Z

    iput-boolean v0, p0, Lcom/bbm/ui/activities/FilePickerActivity;->w:Z

    iget-object v1, p0, Lcom/bbm/ui/activities/FilePickerActivity;->u:Landroid/widget/Spinner;

    sget-object v2, Lcom/bbm/ui/activities/FilePickerActivity;->i:Lcom/bbm/ui/activities/kc;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/kc;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v1, p0, Lcom/bbm/ui/activities/FilePickerActivity;->v:Landroid/widget/Spinner;

    sget-boolean v2, Lcom/bbm/ui/activities/FilePickerActivity;->j:Z

    if-eqz v2, :cond_20

    :goto_19
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-direct {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->p()V

    return-void

    :cond_20
    const/4 v0, 0x1

    goto :goto_19
.end method

.method protected onStart()V
    .registers 1

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onStart()V

    invoke-direct {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->q()V

    invoke-direct {p0}, Lcom/bbm/ui/activities/FilePickerActivity;->r()V

    return-void
.end method
