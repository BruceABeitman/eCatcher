.class public Lcom/twidroid/fragments/e/ab;
.super Lcom/twidroid/fragments/base/d;
.source "SourceFile"


# static fields
.field public static final G:Ljava/lang/String; = "ubersocial.broadcast.start.search"

.field public static H:Z = false

.field private static final M:I = 0x5

.field private static final N:I = 0x6

.field private static final O:I = 0x7

.field private static final P:I = 0x9

.field private static final Q:I = 0xa

.field private static final R:I = 0x3f

.field static final d:Ljava/lang/String; = "TwitterSearch"


# instance fields
.field I:Ljava/lang/String;

.field J:Lcom/ubermedia/a/a;

.field K:Lcom/ubermedia/a/a;

.field private L:Lcom/twidroid/net/c/a;

.field private S:Landroid/content/BroadcastReceiver;

.field private T:Lcom/twidroid/fragments/e/af;

.field private U:J

.field protected e:Lcom/twidroid/ui/a/ad;

.field protected f:Lcom/twidroid/ui/a/ac;

.field g:Landroid/widget/RadioGroup;

.field h:Landroid/view/View;

.field i:Landroid/widget/ImageView;

.field j:Landroid/widget/LinearLayout;

.field k:Landroid/view/View;

.field protected n:Lcom/twidroid/ui/widgets/MyEditText;

.field o:D

.field p:D

.field protected q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/twidroid/fragments/e/ab;->H:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V

    const-wide v0, -0x3fa2800000000000L

    iput-wide v0, p0, Lcom/twidroid/fragments/e/ab;->o:D

    const-wide/high16 v0, 0x4041

    iput-wide v0, p0, Lcom/twidroid/fragments/e/ab;->p:D

    const-string v0, ""

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->q:Ljava/lang/String;

    new-instance v0, Lcom/twidroid/fragments/e/ab$1;

    invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/ab$1;-><init>(Lcom/twidroid/fragments/e/ab;)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->S:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/twidroid/fragments/e/af;->e:Lcom/twidroid/fragments/e/af;

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->T:Lcom/twidroid/fragments/e/af;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twidroid/fragments/e/ab;->U:J

    return-void
.end method

.method public constructor <init>(Lcom/twidroid/model/twitter/c;)V
    .registers 4

    invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V

    const-wide v0, -0x3fa2800000000000L

    iput-wide v0, p0, Lcom/twidroid/fragments/e/ab;->o:D

    const-wide/high16 v0, 0x4041

    iput-wide v0, p0, Lcom/twidroid/fragments/e/ab;->p:D

    const-string v0, ""

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->q:Ljava/lang/String;

    new-instance v0, Lcom/twidroid/fragments/e/ab$1;

    invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/ab$1;-><init>(Lcom/twidroid/fragments/e/ab;)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->S:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/twidroid/fragments/e/af;->e:Lcom/twidroid/fragments/e/af;

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->T:Lcom/twidroid/fragments/e/af;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twidroid/fragments/e/ab;->U:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/ab;->setHasOptionsMenu(Z)V

    return-void
.end method

.method private D()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, v0}, Lcom/twidroid/fragments/e/ab;->d(Z)V

    return-void

    :cond_d
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private E()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->n:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/twidroid/fragments/e/ab;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0900e3

    if-ne v1, v2, :cond_26

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_26
    return-object v0
.end method

.method private H()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->I:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/ab;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->g:Landroid/widget/RadioGroup;

    const v1, 0x7f0900e2

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->K:Lcom/ubermedia/a/a;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->K:Lcom/ubermedia/a/a;

    invoke-virtual {v0, v2}, Lcom/ubermedia/a/a;->b(Z)Z

    :cond_17
    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->J:Lcom/ubermedia/a/a;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->J:Lcom/ubermedia/a/a;

    invoke-virtual {v0, v2}, Lcom/ubermedia/a/a;->b(Z)Z

    :cond_20
    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->I:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/twidroid/fragments/e/ab;->c(Ljava/lang/String;)V

    return-void
.end method

.method private final I()V
    .registers 5

    :try_start_0
    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->M()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twidroid/fragments/e/ab;->e(Z)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0900e4

    if-ne v0, v1, :cond_a1

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->J()V

    const-string v0, "/search/tweets"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "search_word"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->c:Lcom/twidroid/UberSocialApplication;

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "/search/nearby"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "search_word"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    :goto_6f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/ab;->b(Z)V

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->D()V
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_76} :catch_77

    goto :goto_11

    :catch_77
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "You must enter a query."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ee

    const/4 v1, 0x0

    :try_start_88
    invoke-direct {p0, v1}, Lcom/twidroid/fragments/e/ab;->e(Z)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_e9

    :goto_8b
    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->j:Landroid/widget/LinearLayout;

    const v1, 0x7f0900b1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_11

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->D()V

    goto/16 :goto_11

    :cond_a1
    :try_start_a1
    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0900e3

    if-ne v0, v1, :cond_b7

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->Z()V

    const-string v0, "/search"

    const-string v1, "users"

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    :cond_b7
    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->J()V

    const-string v0, "/search/tweets"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "search_word"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->E()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/twidroid/net/a/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/net/a/a;->a(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->c:Lcom/twidroid/UberSocialApplication;

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_e8} :catch_77

    goto :goto_6f

    :catch_e9
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8b

    :cond_ee
    const/16 v0, 0x2bc

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twidroid/net/n;->b(ILandroid/content/Context;)V

    goto :goto_8b
.end method

.method private J()V
    .registers 4

    const/4 v2, 0x1

    new-instance v0, Lcom/twidroid/ui/a/ac;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/twidroid/ui/a/ac;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->f:Lcom/twidroid/ui/a/ac;

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->f:Lcom/twidroid/ui/a/ac;

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/ab;->setListAdapter(Landroid/widget/ListAdapter;)V

    sget-object v0, Lcom/twidroid/fragments/e/af;->a:Lcom/twidroid/fragments/e/af;

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->T:Lcom/twidroid/fragments/e/af;

    invoke-direct {p0, v2}, Lcom/twidroid/fragments/e/ab;->f(Z)V

    return-void
.end method

.method private Z()V
    .registers 4

    new-instance v0, Lcom/twidroid/fragments/e/ab$11;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->E()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/twidroid/fragments/e/ab$11;-><init>(Lcom/twidroid/fragments/e/ab;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->e:Lcom/twidroid/ui/a/ad;

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->e:Lcom/twidroid/ui/a/ad;

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/ab;->setListAdapter(Landroid/widget/ListAdapter;)V

    sget-object v0, Lcom/twidroid/fragments/e/af;->b:Lcom/twidroid/fragments/e/af;

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->T:Lcom/twidroid/fragments/e/af;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twidroid/fragments/e/ab;->f(Z)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/ab;Lcom/twidroid/fragments/e/af;)Lcom/twidroid/fragments/e/af;
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/ab;->T:Lcom/twidroid/fragments/e/af;

    return-object p1
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/ab;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/ab;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/ab;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->ac()V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/ab;Ljava/lang/Runnable;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/ab;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/ab;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/e/ab;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/fragments/e/ab;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/e/ab;->e(Z)V

    return-void
.end method

.method private aa()V
    .registers 3

    const-string v0, "TwitterSearch"

    const-string v1, "Refresh saved searches"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/twidroid/fragments/e/ab$12;

    invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/ab$12;-><init>(Lcom/twidroid/fragments/e/ab;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/ab$12;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->J:Lcom/ubermedia/a/a;

    return-void
.end method

.method private ab()Z
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->J:Lcom/ubermedia/a/a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->J:Lcom/ubermedia/a/a;

    invoke-virtual {v0}, Lcom/ubermedia/a/a;->g()Lcom/ubermedia/a/e;

    move-result-object v0

    sget-object v1, Lcom/ubermedia/a/e;->b:Lcom/ubermedia/a/e;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private ac()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->n:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/ab;->b(Landroid/widget/EditText;)V

    return-void
.end method

.method private ad()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00dc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/twidroid/fragments/e/ab$3;

    invoke-direct {v1, p0}, Lcom/twidroid/fragments/e/ab$3;-><init>(Lcom/twidroid/fragments/e/ab;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/ab;->x:Lcom/twidroid/b/a/b;

    invoke-virtual {v1}, Lcom/twidroid/b/a/b;->i()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/twidroid/b/a/b;->a(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/twidroid/fragments/e/ab$2;

    invoke-direct {v2, p0}, Lcom/twidroid/fragments/e/ab$2;-><init>(Lcom/twidroid/fragments/e/ab;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic b(Lcom/twidroid/fragments/e/ab;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/twidroid/fragments/e/ab;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/e/ab;->f(Z)V

    return-void
.end method

.method static synthetic c(Lcom/twidroid/fragments/e/ab;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->D()V

    return-void
.end method

.method static synthetic c(Lcom/twidroid/fragments/e/ab;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/fragments/e/ab;->d(Z)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->N()V

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/ab;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->d()V

    return-void
.end method

.method static synthetic d(Lcom/twidroid/fragments/e/ab;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->y:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method private d(Z)V
    .registers 4

    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->k:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->i:Landroid/widget/ImageView;

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->i:Landroid/widget/ImageView;

    const v1, 0x7f02010f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_10
.end method

.method static synthetic e(Lcom/twidroid/fragments/e/ab;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method private e(Z)V
    .registers 4

    const-string v0, "TwitterSearch"

    const-string v1, "Show savedsearch"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/twidroid/fragments/e/ab;->H:Z

    if-eqz v0, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->x:Lcom/twidroid/b/a/b;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/twidroid/fragments/e/ab$13;

    invoke-direct {v0, p0, p1}, Lcom/twidroid/fragments/e/ab$13;-><init>(Lcom/twidroid/fragments/e/ab;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/ab$13;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->K:Lcom/ubermedia/a/a;

    goto :goto_b
.end method

.method static synthetic f(Lcom/twidroid/fragments/e/ab;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->b:Ljava/util/List;

    return-object v0
.end method

.method private f(Z)V
    .registers 3

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setPullUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->setPullDownEnabled(Z)V

    return-void
.end method

.method static synthetic g(Lcom/twidroid/fragments/e/ab;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Lcom/twidroid/fragments/e/ab;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic i(Lcom/twidroid/fragments/e/ab;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/twidroid/fragments/e/ab;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/twidroid/fragments/e/ab;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic l(Lcom/twidroid/fragments/e/ab;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->aa()V

    return-void
.end method

.method static synthetic m(Lcom/twidroid/fragments/e/ab;)Z
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->ab()Z

    move-result v0

    return v0
.end method

.method static synthetic n(Lcom/twidroid/fragments/e/ab;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic o(Lcom/twidroid/fragments/e/ab;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic p(Lcom/twidroid/fragments/e/ab;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->y:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic q(Lcom/twidroid/fragments/e/ab;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->y:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic r(Lcom/twidroid/fragments/e/ab;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic s(Lcom/twidroid/fragments/e/ab;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic t(Lcom/twidroid/fragments/e/ab;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic u(Lcom/twidroid/fragments/e/ab;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method

.method static synthetic v(Lcom/twidroid/fragments/e/ab;)Lcom/twidroid/b/a/b;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->x:Lcom/twidroid/b/a/b;

    return-object v0
.end method


# virtual methods
.method protected A()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public B()V
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->w()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->c:Lcom/twidroid/UberSocialApplication;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->L:Lcom/twidroid/net/c/a;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->C()V

    :cond_15
    new-instance v0, Lcom/twidroid/net/c/a;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/fragments/e/ab;->c:Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twidroid/d/v;->bh()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/twidroid/fragments/e/ab$4;

    invoke-direct {v3, p0}, Lcom/twidroid/fragments/e/ab$4;-><init>(Lcom/twidroid/fragments/e/ab;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/net/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twidroid/net/c/c;)V

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->L:Lcom/twidroid/net/c/a;

    goto :goto_6
.end method

.method public C()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->L:Lcom/twidroid/net/c/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->L:Lcom/twidroid/net/c/a;

    invoke-virtual {v0}, Lcom/twidroid/net/c/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->L:Lcom/twidroid/net/c/a;

    :cond_c
    return-void
.end method

.method protected F()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public S()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->u:Lcom/twidroid/net/c/a/f;

    const v1, 0x7f0c02ef

    invoke-interface {v0, v1}, Lcom/twidroid/net/c/a/f;->e(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/twidroid/fragments/e/ab;->H:Z

    iput-object p1, p0, Lcom/twidroid/fragments/e/ab;->I:Ljava/lang/String;

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->n:Lcom/twidroid/ui/widgets/MyEditText;

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->H()V

    :cond_c
    return-void
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .registers 4

    instance-of v0, p1, Lcom/twidroid/model/twitter/User;

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast p1, Lcom/twidroid/model/twitter/User;

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    invoke-static {v1, p1, v0}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Lcom/twidroid/model/twitter/User;I)V

    :goto_23
    return-void

    :cond_24
    instance-of v0, p1, Lcom/twidroid/model/twitter/SavedSearchCompat;

    if-eqz v0, :cond_32

    check-cast p1, Lcom/twidroid/model/twitter/SavedSearchCompat;

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/SavedSearchCompat;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twidroid/fragments/e/ab;->c(Ljava/lang/String;)V

    goto :goto_23

    :cond_32
    check-cast p1, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/ab;->a(Lcom/twidroid/model/twitter/Tweet;)V

    goto :goto_23
.end method

.method protected b(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lcom/twidroid/fragments/e/ab;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->n:Lcom/twidroid/ui/widgets/MyEditText;

    iget-object v1, p0, Lcom/twidroid/fragments/e/ab;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Z)V
    .registers 10

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->b(Z)V

    sget-object v0, Lcom/twidroid/fragments/e/ab$5;->a:[I

    iget-object v3, p0, Lcom/twidroid/fragments/e/ab;->T:Lcom/twidroid/fragments/e/af;

    invoke-virtual {v3}, Lcom/twidroid/fragments/e/af;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_9e

    :cond_14
    :goto_14
    return-void

    :pswitch_15
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_67

    instance-of v3, v0, Lcom/twidroid/ui/a/ac;

    if-eqz v3, :cond_67

    check-cast v0, Lcom/twidroid/ui/a/ac;

    :goto_21
    if-eqz v0, :cond_14

    new-instance v3, Lcom/twidroid/fragments/e/ae;

    invoke-direct {v3}, Lcom/twidroid/fragments/e/ae;-><init>()V

    if-eqz p1, :cond_6b

    invoke-virtual {v0}, Lcom/twidroid/ui/a/ac;->d()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :cond_3b
    if-eqz v0, :cond_69

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_41
    iput-wide v0, v3, Lcom/twidroid/fragments/e/ae;->c:J

    :goto_43
    :try_start_43
    iput-boolean p1, v3, Lcom/twidroid/fragments/e/ae;->d:Z

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->E()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/twidroid/fragments/e/ae;->a:Ljava/lang/String;

    new-instance v0, Lcom/twidroid/fragments/e/ag;

    invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/ag;-><init>(Lcom/twidroid/fragments/e/ab;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/twidroid/fragments/e/ae;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/ag;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_59} :catch_5a

    goto :goto_14

    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string v1, "TwitterSearch"

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    :cond_67
    const/4 v0, 0x0

    goto :goto_21

    :cond_69
    move-wide v0, v1

    goto :goto_41

    :cond_6b
    invoke-virtual {v0}, Lcom/twidroid/ui/a/ac;->e()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_75

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_75
    iput-wide v1, v3, Lcom/twidroid/fragments/e/ae;->c:J

    goto :goto_43

    :pswitch_78
    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->e:Lcom/twidroid/ui/a/ad;

    invoke-virtual {v0}, Lcom/twidroid/ui/a/ad;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x14

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v3, Lcom/twidroid/fragments/e/ae;

    if-eqz p1, :cond_89

    int-to-long v1, v0

    :cond_89
    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->E()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, v2, v0}, Lcom/twidroid/fragments/e/ae;-><init>(JLjava/lang/String;)V

    new-instance v0, Lcom/twidroid/fragments/e/ah;

    invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/ah;-><init>(Lcom/twidroid/fragments/e/ab;)V

    new-array v1, v4, [Lcom/twidroid/fragments/e/ae;

    aput-object v3, v1, v5

    invoke-virtual {v0, v1}, Lcom/twidroid/fragments/e/ah;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    goto/16 :goto_14

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_78
    .end packed-switch
.end method

.method protected c(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Lcom/twidroid/model/twitter/User;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/twidroid/model/twitter/User;

    iget-object v0, p1, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/ab;->e(Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    instance-of v0, p1, Lcom/twidroid/model/twitter/SavedSearchCompat;

    if-eqz v0, :cond_1a

    check-cast p1, Lcom/twidroid/model/twitter/SavedSearchCompat;

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/SavedSearchCompat;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twidroid/fragments/e/ab;->c(Ljava/lang/String;)V

    goto :goto_b

    :cond_1a
    check-cast p1, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/ab;->b(Lcom/twidroid/model/twitter/Tweet;)V

    goto :goto_b
.end method

.method public d()V
    .registers 1

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->e()V

    return-void
.end method

.method protected e()V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->I()V

    return-void
.end method

.method protected g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onAttach(Landroid/app/Activity;)V

    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/ab;->S:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ubersocial.broadcast.start.search"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v4, 0x5

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/d;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const/4 v2, 0x6

    const v3, 0x7f0c01d2

    invoke-virtual {p0, v3}, Lcom/twidroid/fragments/e/ab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v0, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02016c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v2, 0x3f

    const v3, 0x7f0c01ce

    invoke-virtual {p0, v3}, Lcom/twidroid/fragments/e/ab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p1, v0, v2, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02011e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/twidroid/fragments/e/ab;->x:Lcom/twidroid/b/a/b;

    invoke-virtual {v2}, Lcom/twidroid/b/a/b;->i()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3f

    move v0, v1

    :cond_3f
    if-eqz v0, :cond_52

    const v0, 0x7f0c01b6

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/ab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p1, v1, v4, v4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f02016b

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_52
    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->n:Lcom/twidroid/ui/widgets/MyEditText;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->n:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    const/16 v0, 0xa

    const v2, 0x7f0c01d9

    invoke-virtual {p0, v2}, Lcom/twidroid/fragments/e/ab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020170

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_c
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/twidroid/fragments/base/d;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f030041

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->j:Landroid/widget/LinearLayout;

    const v2, 0x7f0900e1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->g:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->j:Landroid/widget/LinearLayout;

    const v2, 0x7f0900b8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->g:Landroid/widget/RadioGroup;

    const v2, 0x7f0900e2

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->j:Landroid/widget/LinearLayout;

    const v2, 0x7f0900b4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/widgets/MyEditText;

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->n:Lcom/twidroid/ui/widgets/MyEditText;

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->j:Landroid/widget/LinearLayout;

    const v2, 0x7f0900e6

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->j:Landroid/widget/LinearLayout;

    const v2, 0x7f0900b1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/fragments/e/ab;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->j:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->j:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onDestroy()V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/ab;->S:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 10

    const/4 v4, -0x1

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_78

    :goto_9
    invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_d
    :goto_d
    return v0

    :sswitch_e
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/ab;->n:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    const/4 v6, 0x0

    const-string v7, ""

    move v5, v4

    invoke-static/range {v0 .. v7}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :sswitch_26
    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->n:Lcom/twidroid/ui/widgets/MyEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :sswitch_2e
    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c016b

    invoke-virtual {p0, v2}, Lcom/twidroid/fragments/e/ab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->aa()V

    goto :goto_d

    :sswitch_44
    iget-object v1, p0, Lcom/twidroid/fragments/e/ab;->n:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-virtual {v1}, Lcom/twidroid/ui/widgets/MyEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_d

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/twidroid/fragments/e/ab$10;

    invoke-direct {v3, p0, v1}, Lcom/twidroid/fragments/e/ab$10;-><init>(Lcom/twidroid/fragments/e/ab;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_d

    :sswitch_66
    invoke-direct {p0}, Lcom/twidroid/fragments/e/ab;->ad()V

    goto :goto_d

    :sswitch_6a
    iget-object v1, p0, Lcom/twidroid/fragments/e/ab;->n:Lcom/twidroid/ui/widgets/MyEditText;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twidroid/ui/widgets/MyEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->d()V

    goto :goto_d

    nop

    :sswitch_data_78
    .sparse-switch
        0x5 -> :sswitch_66
        0x6 -> :sswitch_44
        0x7 -> :sswitch_6a
        0x9 -> :sswitch_26
        0xa -> :sswitch_e
        0x3f -> :sswitch_2e
    .end sparse-switch
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onPause()V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->C()V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onResume()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->g:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0900e4

    if-ne v0, v1, :cond_15

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->B()V

    :cond_15
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0c0203

    invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/ab;->b(I)V

    invoke-virtual {p0}, Lcom/twidroid/fragments/e/ab;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    move-result-object v0

    const v1, 0x7f0c0215

    invoke-virtual {p0, v1}, Lcom/twidroid/fragments/e/ab;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/handmark/pulltorefresh/library/g;->g:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->a(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/g;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->g:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/twidroid/fragments/e/ab$6;

    invoke-direct {v1, p0}, Lcom/twidroid/fragments/e/ab$6;-><init>(Lcom/twidroid/fragments/e/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->h:Landroid/view/View;

    new-instance v1, Lcom/twidroid/fragments/e/ab$7;

    invoke-direct {v1, p0}, Lcom/twidroid/fragments/e/ab$7;-><init>(Lcom/twidroid/fragments/e/ab;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->n:Lcom/twidroid/ui/widgets/MyEditText;

    new-instance v1, Lcom/twidroid/fragments/e/ab$8;

    invoke-direct {v1, p0}, Lcom/twidroid/fragments/e/ab$8;-><init>(Lcom/twidroid/fragments/e/ab;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/MyEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/twidroid/fragments/e/ab$9;

    invoke-direct {v1, p0}, Lcom/twidroid/fragments/e/ab$9;-><init>(Lcom/twidroid/fragments/e/ab;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public x()Z
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab;->g:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0900e4

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public y()D
    .registers 3

    iget-wide v0, p0, Lcom/twidroid/fragments/e/ab;->p:D

    return-wide v0
.end method

.method public z()D
    .registers 3

    iget-wide v0, p0, Lcom/twidroid/fragments/e/ab;->o:D

    return-wide v0
.end method
