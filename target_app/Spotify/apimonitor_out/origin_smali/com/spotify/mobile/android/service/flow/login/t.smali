.class public Lcom/spotify/mobile/android/service/flow/login/t;
.super Lcom/spotify/mobile/android/service/flow/login/o;
.source "SourceFile"


# static fields
.field public static final a:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lcom/spotify/mobile/android/util/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/util/cz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Y:Landroid/widget/EditText;

.field private Z:Landroid/widget/AutoCompleteTextView;

.field private aa:Landroid/widget/EditText;

.field private ab:Landroid/widget/ProgressBar;

.field private ac:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;

.field private ad:Landroid/widget/TextView;

.field private ae:Landroid/widget/TextView;

.field private af:Lcom/spotify/mobile/android/service/flow/login/aa;

.field private ag:Z

.field private ah:Z

.field private ai:I

.field private aj:Ljava/util/Calendar;

.field private ak:Lcom/spotify/mobile/android/service/flow/login/ad;

.field private al:Lcom/spotify/mobile/android/service/flow/login/a/f;

.field private am:Lcom/spotify/mobile/android/service/flow/login/y;

.field private an:I

.field private ao:Landroid/view/View;

.field private ap:Lcom/spotify/mobile/android/service/flow/logic/c;

.field private aq:Landroid/text/TextWatcher;

.field private ar:Landroid/text/TextWatcher;

.field private as:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private at:Lcom/spotify/mobile/android/service/flow/login/ab;

.field private au:Lcom/spotify/mobile/android/service/flow/login/ac;

.field private av:Lcom/spotify/mobile/android/service/flow/login/ae;

.field private aw:Lcom/spotify/mobile/android/service/flow/login/f;

.field private ax:Landroid/view/View;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/EditText;",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/spotify/mobile/android/util/dw;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "signup-v1-status"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/flow/login/t;->a:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "signup-v1-email-error"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/flow/login/t;->b:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "signup-v1-username-error"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/flow/login/t;->c:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "signup-v1-birthdate-error"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/flow/login/t;->d:Lcom/spotify/mobile/android/util/cz;

    const-string v0, "signup-v1-other-error"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/service/flow/login/t;->e:Lcom/spotify/mobile/android/util/cz;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/o;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->f:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ah:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->aj:Ljava/util/Calendar;

    const-class v0, Lcom/spotify/mobile/android/service/flow/logic/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/c;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ap:Lcom/spotify/mobile/android/service/flow/logic/c;

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/t$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/t$1;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->aq:Landroid/text/TextWatcher;

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/t$12;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/t$12;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ar:Landroid/text/TextWatcher;

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/t$18;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/t$18;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->as:Landroid/app/DatePickerDialog$OnDateSetListener;

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/t$19;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/t$19;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->at:Lcom/spotify/mobile/android/service/flow/login/ab;

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/t$20;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/t$20;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->au:Lcom/spotify/mobile/android/service/flow/login/ac;

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/v;

    invoke-direct {v0, p0, v2}, Lcom/spotify/mobile/android/service/flow/login/v;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;Z)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->av:Lcom/spotify/mobile/android/service/flow/login/ae;

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/t$21;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/flow/login/t$21;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->aw:Lcom/spotify/mobile/android/service/flow/login/f;

    return-void
.end method

.method static synthetic A(Lcom/spotify/mobile/android/service/flow/login/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->H()V

    return-void
.end method

.method private E()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Z:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dl;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private F()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Y:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dl;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private G()Ljava/util/Calendar;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->aj:Ljava/util/Calendar;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->aj:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private H()V
    .registers 5

    const v3, 0x7f0f00f6

    const-string v0, ""

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->al:Lcom/spotify/mobile/android/service/flow/login/a/f;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/flow/login/a/f;->c()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->al:Lcom/spotify/mobile/android/service/flow/login/a/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/a/f;->b()Lcom/spotify/mobile/android/service/flow/login/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/a/d;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_1d
    const-string v1, "CA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->am:Lcom/spotify/mobile/android/service/flow/login/y;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ae:Landroid/widget/TextView;

    const v2, 0x7f0f00f7

    invoke-virtual {v0, v1, v3, v2}, Lcom/spotify/mobile/android/service/flow/login/y;->a(Landroid/widget/TextView;II)V

    :goto_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->am:Lcom/spotify/mobile/android/service/flow/login/y;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ae:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/spotify/mobile/android/service/flow/login/y;->a(Landroid/widget/TextView;II)V

    goto :goto_2f
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/t;I)I
    .registers 2

    iput p1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ai:I

    return p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/aa;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->af:Lcom/spotify/mobile/android/service/flow/login/aa;

    return-object v0
.end method

.method private a(Lcom/spotify/mobile/android/service/flow/login/ae;)Lcom/spotify/mobile/android/service/flow/login/ad;
    .registers 9

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/t$9;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->F()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->E()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->G()Ljava/util/Calendar;

    move-result-object v5

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/service/flow/login/t$9;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Lcom/spotify/mobile/android/service/flow/login/ae;)V

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/t;Lcom/spotify/mobile/android/service/flow/login/ad;)Lcom/spotify/mobile/android/service/flow/login/ad;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ak:Lcom/spotify/mobile/android/service/flow/login/ad;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/t;Lcom/spotify/mobile/android/service/flow/login/ae;)Lcom/spotify/mobile/android/service/flow/login/ad;
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/ae;)Lcom/spotify/mobile/android/service/flow/login/ad;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/spotify/mobile/android/service/flow/logic/d;)Lcom/spotify/mobile/android/service/flow/login/t;
    .registers 2

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-direct {v0}, Lcom/spotify/mobile/android/service/flow/login/t;-><init>()V

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/flow/a;->a(Landroid/support/v4/app/Fragment;)V

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/t;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->aj:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic a(Landroid/widget/TextView;)V
    .registers 2

    if-eqz p0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method static synthetic a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/t;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Lcom/google/common/collect/ImmutableList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x1090003

    invoke-direct {v0, v1, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Z:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/t;Landroid/widget/TextView;I)V
    .registers 4

    invoke-virtual {p0, p2}, Lcom/spotify/mobile/android/service/flow/login/t;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/service/flow/login/t;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/t;Lcom/google/common/collect/ImmutableList;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/t;Lcom/spotify/mobile/android/service/flow/login/a/d;Lcom/spotify/mobile/android/service/flow/login/z;)V
    .registers 4

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->p()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->am:Lcom/spotify/mobile/android/service/flow/login/y;

    invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/service/flow/login/y;->a(Lcom/spotify/mobile/android/service/flow/login/a/d;Lcom/spotify/mobile/android/service/flow/login/z;)V

    :cond_11
    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/t;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/t;Ljava/util/ArrayList;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_30

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Z:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->av:Lcom/spotify/mobile/android/service/flow/login/ae;

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/ae;)Lcom/spotify/mobile/android/service/flow/login/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ak:Lcom/spotify/mobile/android/service/flow/login/ad;

    :cond_30
    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/t;Z)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f0f01f5

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/login/t;->d(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ab:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->h:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f0f01f8

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/login/t;->d(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ab:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_13
.end method

.method private a(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->h:Landroid/widget/Button;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->h:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private static b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 2

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/spotify/mobile/android/service/flow/login/t;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ah:Z

    return v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->aa:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/service/flow/login/t;)Ljava/util/Calendar;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->aj:Ljava/util/Calendar;

    return-object v0
.end method

.method private d(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->h:Landroid/widget/Button;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->h:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method static synthetic e(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Y:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->i:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/service/flow/login/t;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ag:Z

    return v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/service/flow/login/t;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->i:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dl;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->h:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic j(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/ProgressBar;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ab:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic k(Lcom/spotify/mobile/android/service/flow/login/t;)I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->an:I

    return v0
.end method

.method static synthetic l(Lcom/spotify/mobile/android/service/flow/login/t;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/AutoCompleteTextView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Z:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic n(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ad:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic o(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/ac;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->au:Lcom/spotify/mobile/android/service/flow/login/ac;

    return-object v0
.end method

.method static synthetic p(Lcom/spotify/mobile/android/service/flow/login/t;)V
    .registers 4

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t;->au:Lcom/spotify/mobile/android/service/flow/login/ac;

    invoke-direct {v1, v0, v2}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/flow/login/ac;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->i:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dl;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->c(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->a(Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ac:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->b()Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->a(Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->G()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->a(Ljava/util/Calendar;)V

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->a()V

    const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    sget-object v0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;->a:Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->a(Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ap:Lcom/spotify/mobile/android/service/flow/logic/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->e(Ljava/lang/String;)V

    :cond_59
    sget-object v0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;->a:Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->a(Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;)V

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper;->b()V

    return-void
.end method

.method static synthetic q(Lcom/spotify/mobile/android/service/flow/login/t;)V
    .registers 4

    new-instance v0, Lcom/spotify/android/paste/app/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/spotify/mobile/android/service/flow/login/t;->an:I

    invoke-direct {v0, v1, v2}, Lcom/spotify/android/paste/app/b;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0f01f6

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/app/b;->a(Ljava/lang/CharSequence;)Lcom/spotify/android/paste/app/b;

    const v1, 0x7f0f00fe

    new-instance v2, Lcom/spotify/mobile/android/service/flow/login/t$14;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/service/flow/login/t$14;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/app/b;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;

    const v1, 0x7f0f00ff

    new-instance v2, Lcom/spotify/mobile/android/service/flow/login/t$15;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/service/flow/login/t$15;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/app/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;

    invoke-virtual {v0}, Lcom/spotify/android/paste/app/b;->a()Lcom/spotify/android/paste/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/android/paste/app/a;->show()V

    return-void
.end method

.method static synthetic r(Lcom/spotify/mobile/android/service/flow/login/t;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ao:Landroid/view/View;

    return-object v0
.end method

.method static synthetic s(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ac:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;

    return-object v0
.end method

.method static synthetic t(Lcom/spotify/mobile/android/service/flow/login/t;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->F()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic u(Lcom/spotify/mobile/android/service/flow/login/t;)Ljava/util/Calendar;
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->G()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method static synthetic v(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/a/f;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->al:Lcom/spotify/mobile/android/service/flow/login/a/f;

    return-object v0
.end method

.method static synthetic w(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/ae;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->av:Lcom/spotify/mobile/android/service/flow/login/ae;

    return-object v0
.end method

.method static synthetic x(Lcom/spotify/mobile/android/service/flow/login/t;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    and-int/lit16 v1, v1, -0x91

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->i:Landroid/widget/EditText;

    const v2, 0x7f100082

    invoke-static {v0, v1, v2}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic y(Lcom/spotify/mobile/android/service/flow/login/t;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    and-int/lit16 v1, v1, -0x81

    or-int/lit16 v1, v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->i:Landroid/widget/EditText;

    const v2, 0x7f100082

    invoke-static {v0, v1, v2}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic z(Lcom/spotify/mobile/android/service/flow/login/t;)V
    .registers 8

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ah:Z

    if-nez v0, :cond_3e

    iput-boolean v3, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ah:Z

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->G()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_3f

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    move-object v5, v0

    :goto_12
    new-instance v0, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t;->as:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v5, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/t$10;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/t$10;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/t$11;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/t$11;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    :cond_3e
    return-void

    :cond_3f
    move-object v5, v0

    goto :goto_12
.end method


# virtual methods
.method public final D()Lcom/spotify/mobile/android/service/flow/login/u;
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/a;->q_()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/d;

    invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/flow/logic/d;->a(Lcom/spotify/mobile/android/service/flow/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/login/u;

    return-object v0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    const/4 v4, 0x0

    const v0, 0x7f030078

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0a02ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Y:Landroid/widget/EditText;

    const v1, 0x7f0a02ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->i:Landroid/widget/EditText;

    const v1, 0x7f0a02aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Z:Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f0a02cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->aa:Landroid/widget/EditText;

    const v1, 0x7f0a02cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ad:Landroid/widget/TextView;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ac:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;

    const v1, 0x7f0a02ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ab:Landroid/widget/ProgressBar;

    const v1, 0x7f0a02cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->h:Landroid/widget/Button;

    const v1, 0x7f0a02a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ax:Landroid/view/View;

    const v1, 0x7f0a02cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ae:Landroid/widget/TextView;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x7f0f0105

    invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/service/flow/login/t;->b(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const v3, 0x7f0f0104

    invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/service/flow/login/t;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0f0106

    invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/service/flow/login/t;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t;->aa:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setInputType(I)V

    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f03007e

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->H()V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->f:Ljava/util/Map;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Y:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/spotify/mobile/android/service/flow/login/t;->aq:Landroid/text/TextWatcher;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->f:Ljava/util/Map;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/login/t;->i:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ar:Landroid/text/TextWatcher;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f0a02c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iput-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ao:Landroid/view/View;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ao:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const-class v1, Lcom/spotify/mobile/android/service/flow/login/g;

    invoke-static {v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v1

    check-cast v1, Lcom/spotify/mobile/android/service/flow/login/g;

    new-instance v2, Lcom/spotify/mobile/android/service/flow/login/t$22;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/service/flow/login/t$22;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/service/flow/login/g;->a(Lcom/spotify/mobile/android/service/flow/login/k;)V

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Landroid/app/Activity;)V

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/a/b;

    invoke-direct {v0}, Lcom/spotify/mobile/android/service/flow/login/a/b;-><init>()V

    invoke-static {p1}, Lcom/spotify/mobile/android/service/flow/login/a/b;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/service/flow/login/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->al:Lcom/spotify/mobile/android/service/flow/login/a/f;

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/y;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/service/flow/login/y;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->am:Lcom/spotify/mobile/android/service/flow/login/y;

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->X:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->g:Lcom/spotify/mobile/android/util/dw;

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/aa;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->at:Lcom/spotify/mobile/android/service/flow/login/ab;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/aa;-><init>(Lcom/spotify/mobile/android/service/flow/login/ab;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->af:Lcom/spotify/mobile/android/service/flow/login/aa;

    const v0, 0x7f1000ab

    iput v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->an:I

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 6

    const/4 v2, -0x1

    invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/service/flow/login/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->h:Landroid/widget/Button;

    invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_59

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Z:Landroid/widget/AutoCompleteTextView;

    const-string v1, "user_name"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->aa:Landroid/widget/EditText;

    const-string v1, "birth_date_string"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "birth_date"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->aj:Ljava/util/Calendar;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ac:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;

    const-string v1, "gender"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->a(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Y:Landroid/widget/EditText;

    const-string v1, "email"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->i:Landroid/widget/EditText;

    const-string v1, "password"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "suggestions"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/google/common/collect/ImmutableList;)V

    :cond_59
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ac:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->aw:Lcom/spotify/mobile/android/service/flow/login/f;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->a(Lcom/spotify/mobile/android/service/flow/login/f;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ad:Landroid/widget/TextView;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/t$23;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/t$23;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->h:Landroid/widget/Button;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/t$24;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/t$24;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ax:Landroid/view/View;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/t$2;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/t$2;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ao:Landroid/view/View;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/t$3;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/t$3;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Y:Landroid/widget/EditText;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/t$4;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/t$4;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->i:Landroid/widget/EditText;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/t$5;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/t$5;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Z:Landroid/widget/AutoCompleteTextView;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/t$6;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/t$6;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->aa:Landroid/widget/EditText;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/t$7;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/t$7;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->aa:Landroid/widget/EditText;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/t$8;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/t$8;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/service/flow/login/t;->a:Lcom/spotify/mobile/android/util/cz;

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;I)I

    move-result v0

    if-eq v0, v2, :cond_cf

    const-string v0, "Test it!"

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Ljava/lang/CharSequence;)V

    :cond_cf
    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    if-eqz p1, :cond_4f

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Y:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance v0, Lcom/spotify/android/paste/app/b;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/spotify/mobile/android/service/flow/login/t;->an:I

    invoke-direct {v0, v1, v2}, Lcom/spotify/android/paste/app/b;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0f0256

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/app/b;->a(I)Lcom/spotify/android/paste/app/b;

    move-result-object v0

    const v1, 0x7f0f0255

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/app/b;->b(I)Lcom/spotify/android/paste/app/b;

    move-result-object v0

    const v1, 0x7f0f0254

    new-instance v2, Lcom/spotify/mobile/android/service/flow/login/t$16;

    invoke-direct {v2, p0, p2}, Lcom/spotify/mobile/android/service/flow/login/t$16;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/app/b;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/spotify/android/paste/app/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/android/paste/app/b;->a()Lcom/spotify/android/paste/app/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/spotify/android/paste/app/a;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/t$17;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/t$17;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/app/a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/spotify/android/paste/app/a;->show()V

    :cond_4f
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "user_name"

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "birth_date_string"

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->aa:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/spotify/mobile/android/util/dl;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "birth_date"

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->G()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "gender"

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ac:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "email"

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/flow/login/t;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "password"

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/login/t;->i:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/spotify/mobile/android/util/dl;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "suggestions"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Z:Landroid/widget/AutoCompleteTextView;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Z:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_57

    :cond_4f
    move-object v0, v2

    :goto_50
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-super {p0, p1}, Lcom/spotify/mobile/android/service/flow/login/o;->d(Landroid/os/Bundle;)V

    return-void

    :cond_57
    const/4 v0, 0x0

    move v1, v0

    :goto_59
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Z:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_78

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->Z:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_59

    :cond_78
    move-object v0, v2

    goto :goto_50
.end method

.method public final x()V
    .registers 4

    invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->x()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_d

    :cond_29
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->g:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ag:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->al:Lcom/spotify/mobile/android/service/flow/login/a/f;

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/t$13;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/flow/login/t$13;-><init>(Lcom/spotify/mobile/android/service/flow/login/t;)V

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/a/f;->a(Lcom/spotify/mobile/android/service/flow/login/a/g;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->al:Lcom/spotify/mobile/android/service/flow/login/a/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/a/f;->a()V

    return-void
.end method

.method public final y()V
    .registers 4

    invoke-super {p0}, Lcom/spotify/mobile/android/service/flow/login/o;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_d

    :cond_29
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->g:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/flow/login/t;->ag:Z

    return-void
.end method
