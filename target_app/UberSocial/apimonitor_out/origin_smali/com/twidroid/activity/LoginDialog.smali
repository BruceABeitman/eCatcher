.class public Lcom/twidroid/activity/LoginDialog;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field static final d:Ljava/lang/String; = "LoginDialog"

.field static final f:I = 0x1

.field static final g:[Ljava/lang/String; = null

.field static final h:[Ljava/lang/String; = null

.field static i:Ljava/util/ArrayList; = null

.field static final j:Ljava/util/ArrayList; = null

.field static final k:I = 0x2


# instance fields
.field a:Lcom/twidroid/model/twitter/c;

.field b:Lcom/twidroid/d/v;

.field c:Landroid/os/Handler;

.field e:Ljava/lang/String;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/EditText;

.field private n:Landroid/widget/EditText;

.field private o:Landroid/widget/Spinner;

.field private p:Landroid/widget/CheckBox;

.field private q:Landroid/widget/CheckBox;

.field private r:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "Identi.ca"

    aput-object v1, v0, v2

    const-string v1, "Wozai.cc"

    aput-object v1, v0, v3

    const-string v1, "Other"

    aput-object v1, v0, v4

    sput-object v0, Lcom/twidroid/activity/LoginDialog;->g:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "identi.ca/api"

    aput-object v1, v0, v2

    const-string v1, "api.wozai.cc"

    aput-object v1, v0, v3

    const-string v1, "other"

    aput-object v1, v0, v4

    sput-object v0, Lcom/twidroid/activity/LoginDialog;->h:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/twidroid/activity/LoginDialog;->g:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/twidroid/activity/LoginDialog;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/twidroid/activity/LoginDialog;->h:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/twidroid/activity/LoginDialog;->j:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/activity/LoginDialog;)Landroid/widget/Spinner;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog;->o:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic a(Lcom/twidroid/activity/LoginDialog;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/activity/LoginDialog;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 4

    const v0, 0x7f09008b

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    if-eqz p1, :cond_13

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b

    :cond_13
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b
.end method

.method static synthetic b(Lcom/twidroid/activity/LoginDialog;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method private b()V
    .registers 3

    const v0, 0x7f090174

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, -0xe86339

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Lcom/twidroid/activity/LoginDialog$3;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/LoginDialog$3;-><init>(Lcom/twidroid/activity/LoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/twidroid/activity/LoginDialog;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method private c()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twidroid/activity/AskToFollow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/twidroid/activity/LoginDialog;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic d(Lcom/twidroid/activity/LoginDialog;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog;->p:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic e(Lcom/twidroid/activity/LoginDialog;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog;->n:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/twidroid/activity/LoginDialog;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/activity/LoginDialog;->c()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog;->r:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_9

    :try_start_4
    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method protected a(Ljava/lang/CharSequence;)V
    .registers 4

    const/4 v1, 0x1

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twidroid/activity/LoginDialog;->r:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog;->r:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/16 v0, 0x64

    if-ne p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/twidroid/activity/LoginDialog;->finish()V

    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/twidroid/UberSocialApplication;->a(Landroid/app/Activity;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    sget-object v1, Lcom/twidroid/activity/LoginDialog;->g:[Ljava/lang/String;

    const v2, 0x7f0c0213

    invoke-virtual {p0, v2}, Lcom/twidroid/activity/LoginDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/twidroid/activity/LoginDialog;->g:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/twidroid/activity/LoginDialog;->i:Ljava/util/ArrayList;

    const v1, 0x7f03006f

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/LoginDialog;->setContentView(I)V

    invoke-static {p0, v0}, Lcom/twidroid/d/l;->a(Landroid/app/Activity;Lcom/twidroid/UberSocialApplication;)V

    const v1, 0x7f0c001a

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v5}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/activity/LoginDialog;->b:Lcom/twidroid/d/v;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/twidroid/activity/LoginDialog;->c:Landroid/os/Handler;

    const v0, 0x7f09008e

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twidroid/activity/LoginDialog;->l:Landroid/widget/EditText;

    const v0, 0x7f090091

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twidroid/activity/LoginDialog;->m:Landroid/widget/EditText;

    const v0, 0x7f090092

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/twidroid/activity/LoginDialog;->q:Landroid/widget/CheckBox;

    const v0, 0x7f090093

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/twidroid/activity/LoginDialog;->p:Landroid/widget/CheckBox;

    const v0, 0x7f09008c

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/twidroid/activity/LoginDialog;->n:Landroid/widget/EditText;

    const v0, 0x7f09008a

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/twidroid/activity/LoginDialog;->o:Landroid/widget/Spinner;

    const v0, 0x7f090089

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog;->o:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    new-instance v0, Lcom/twidroid/model/twitter/c;

    invoke-direct {v0}, Lcom/twidroid/model/twitter/c;-><init>()V

    iput-object v0, p0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog;->q:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/activity/LoginDialog;->p:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lcom/twidroid/activity/LoginDialog;->b()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ara"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-virtual {p0}, Lcom/twidroid/activity/LoginDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/twidroid/activity/LoginDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4396

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f00

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/twidroid/activity/LoginDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_f7
    const v0, 0x7f090094

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0c0088

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f03008d

    sget-object v3, Lcom/twidroid/activity/LoginDialog;->i:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, p0, Lcom/twidroid/activity/LoginDialog;->o:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    sget-object v2, Lcom/twidroid/activity/LoginDialog;->h:[Ljava/lang/String;

    iget-object v3, p0, Lcom/twidroid/activity/LoginDialog;->o:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/twidroid/model/twitter/c;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog;->a:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->j()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/twidroid/activity/LoginDialog;->h:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/twidroid/activity/UberSocialAccount;->a(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_15c

    invoke-direct {p0, v5}, Lcom/twidroid/activity/LoginDialog;->a(Z)V

    :goto_13b
    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog;->o:Landroid/widget/Spinner;

    new-instance v2, Lcom/twidroid/activity/LoginDialog$1;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/LoginDialog$1;-><init>(Lcom/twidroid/activity/LoginDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v1, Lcom/twidroid/activity/LoginDialog$2;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/LoginDialog$2;-><init>(Lcom/twidroid/activity/LoginDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090100

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/LoginDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_15b

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_15b
    return-void

    :cond_15c
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/twidroid/activity/LoginDialog;->a(Z)V

    goto :goto_13b
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_7

    :goto_6
    return-object v0

    :cond_7
    packed-switch p1, :pswitch_data_3a

    const/4 v0, 0x0

    goto :goto_6

    :pswitch_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/activity/LoginDialog;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0109

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/LoginDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c002c

    new-instance v2, Lcom/twidroid/activity/LoginDialog$4;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/LoginDialog$4;-><init>(Lcom/twidroid/activity/LoginDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_6

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/LoginDialog;->setResult(I)V

    invoke-virtual {p0}, Lcom/twidroid/activity/LoginDialog;->finish()V

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_e
.end method

.method public onStart()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-object v0, Lcom/twidroid/y;->s:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/twidroid/net/a/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/twidroid/net/a/a;->a(Landroid/content/Context;)V

    return-void
.end method
