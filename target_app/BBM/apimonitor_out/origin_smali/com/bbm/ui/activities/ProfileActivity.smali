.class public Lcom/bbm/ui/activities/ProfileActivity;
.super Lcom/bbm/ui/activities/ev;
.source "ProfileActivity.java"


# static fields
.field private static volatile r:Ljava/lang/Boolean;


# instance fields
.field private final F:Landroid/view/View$OnClickListener;

.field private final G:Landroid/view/View$OnFocusChangeListener;

.field private final H:Landroid/view/View$OnKeyListener;

.field private final I:Lcom/bbm/ui/fs;

.field private final J:Lcom/bbm/j/k;

.field private final K:Lcom/bbm/ui/cj;

.field final a:Landroid/os/Handler;

.field b:Landroid/view/View$OnLayoutChangeListener;

.field private c:Ljava/lang/String;

.field private d:Lcom/bbm/d/gp;

.field private e:I

.field private f:Lcom/bbm/ui/SegmentedControl;

.field private g:Lcom/bbm/ui/c/ff;

.field private h:Lcom/bbm/ui/c/fh;

.field private i:Landroid/widget/LinearLayout;

.field private j:Lcom/bbm/ui/FooterActionBar;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Z

.field private n:Lcom/bbm/d/a;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Lcom/bbm/ui/EmoticonPicker;

.field private final s:Landroid/os/Handler;

.field private t:Landroid/widget/ImageButton;

.field private u:Landroid/widget/ImageButton;

.field private v:Lcom/google/b/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/l",
            "<",
            "Lcom/bbm/ui/ObservingAvatarImageView;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/google/b/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/l",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ProfileActivity;->r:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const-class v0, Lcom/bbm/ui/activities/MainActivity;

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ev;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/bbm/ui/activities/ProfileActivity;->g:Lcom/bbm/ui/c/ff;

    iput-object v1, p0, Lcom/bbm/ui/activities/ProfileActivity;->h:Lcom/bbm/ui/c/fh;

    iput-object v1, p0, Lcom/bbm/ui/activities/ProfileActivity;->j:Lcom/bbm/ui/FooterActionBar;

    iput-object v1, p0, Lcom/bbm/ui/activities/ProfileActivity;->k:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->m:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->s:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->a:Landroid/os/Handler;

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->v:Lcom/google/b/a/l;

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->w:Lcom/google/b/a/l;

    new-instance v0, Lcom/bbm/ui/activities/abo;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/abo;-><init>(Lcom/bbm/ui/activities/ProfileActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->F:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/bbm/ui/activities/abw;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/abw;-><init>(Lcom/bbm/ui/activities/ProfileActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->G:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/bbm/ui/activities/abx;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/abx;-><init>(Lcom/bbm/ui/activities/ProfileActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->H:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/bbm/ui/activities/aby;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aby;-><init>(Lcom/bbm/ui/activities/ProfileActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->I:Lcom/bbm/ui/fs;

    new-instance v0, Lcom/bbm/ui/activities/aca;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aca;-><init>(Lcom/bbm/ui/activities/ProfileActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->J:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/acb;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/acb;-><init>(Lcom/bbm/ui/activities/ProfileActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->K:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/activities/abt;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/abt;-><init>(Lcom/bbm/ui/activities/ProfileActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->b:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ProfileActivity;I)I
    .registers 2

    iput p1, p0, Lcom/bbm/ui/activities/ProfileActivity;->e:I

    return p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ProfileActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ProfileActivity;Lcom/bbm/d/gp;)Lcom/bbm/d/gp;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ProfileActivity;->d:Lcom/bbm/d/gp;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ProfileActivity;Lcom/bbm/ui/c/ff;)Lcom/bbm/ui/c/ff;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ProfileActivity;->g:Lcom/bbm/ui/c/ff;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ProfileActivity;Lcom/bbm/ui/c/fh;)Lcom/bbm/ui/c/fh;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ProfileActivity;->h:Lcom/bbm/ui/c/fh;

    return-object p1
.end method

.method private a(Lcom/bbm/d/gp;)V
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/bbm/ui/activities/ProfileActivity;->l:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/bbm/d/gp;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7a

    const/16 v0, 0x8

    :goto_12
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_15
    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->w:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->w:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {p1}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2c
    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->v:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->v:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingAvatarImageView;

    iget-object v1, p0, Lcom/bbm/ui/activities/ProfileActivity;->n:Lcom/bbm/d/a;

    iget-object v2, p1, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/d/gp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingAvatarImageView;->setObservableImage(Lcom/bbm/j/r;)V

    :cond_49
    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->j:Lcom/bbm/ui/FooterActionBar;

    if-eqz v0, :cond_79

    iget-object v0, p1, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    new-instance v1, Lcom/bbm/ui/activities/abz;

    iget-object v2, p0, Lcom/bbm/ui/activities/ProfileActivity;->n:Lcom/bbm/d/a;

    invoke-virtual {v2}, Lcom/bbm/d/a;->M()Lcom/bbm/j/w;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/bbm/ui/activities/abz;-><init>(Lcom/bbm/ui/activities/ProfileActivity;Lcom/bbm/j/r;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bbm/d/b/m;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7c

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->j:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v5}, Lcom/bbm/ui/FooterActionBar;->a(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->j:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f020271

    const v3, 0x7f0e0557

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1, v4}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    :cond_79
    :goto_79
    return-void

    :cond_7a
    const/4 v0, 0x0

    goto :goto_12

    :cond_7c
    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->j:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v4}, Lcom/bbm/ui/FooterActionBar;->a(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->j:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f0202b8

    const v3, 0x7f0e0480

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1, v5}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    goto :goto_79
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ProfileActivity;Landroid/app/FragmentTransaction;)V
    .registers 5

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->g:Lcom/bbm/ui/c/ff;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->g:Lcom/bbm/ui/c/ff;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->g:Lcom/bbm/ui/c/ff;

    invoke-virtual {v0}, Lcom/bbm/ui/c/ff;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->g:Lcom/bbm/ui/c/ff;

    invoke-virtual {v0}, Lcom/bbm/ui/c/ff;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    iput-object v2, p0, Lcom/bbm/ui/activities/ProfileActivity;->g:Lcom/bbm/ui/c/ff;

    :cond_1f
    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->h:Lcom/bbm/ui/c/fh;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->h:Lcom/bbm/ui/c/fh;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->h:Lcom/bbm/ui/c/fh;

    invoke-virtual {v0}, Lcom/bbm/ui/c/fh;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->h:Lcom/bbm/ui/c/fh;

    invoke-virtual {v0}, Lcom/bbm/ui/c/fh;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_39
    iput-object v2, p0, Lcom/bbm/ui/activities/ProfileActivity;->h:Lcom/bbm/ui/c/fh;

    :cond_3b
    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ProfileActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/ProfileActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ProfileActivity;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bbm/ui/activities/ProfileActivity;->m:Z

    return p1
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "[:,]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/google/b/a/l;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->v:Lcom/google/b/a/l;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Lcom/bbm/ui/activities/ProfileActivity;->r:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ProfileActivity;Lcom/bbm/d/gp;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/ProfileActivity;->a(Lcom/bbm/d/gp;)V

    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ProfileActivity;Z)V
    .registers 5

    const/4 v2, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->j:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->j:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f
.end method

.method private b(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->w:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_f

    :cond_e
    :goto_e
    return-void

    :cond_f
    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/bbm/ui/activities/ProfileActivity;->f()Lcom/bbm/d/gp;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/bbm/ui/activities/ProfileActivity;->f()Lcom/bbm/d/gp;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    :try_start_2d
    const-string v3, "nickname"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "uri"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->n:Lcom/bbm/d/a;

    const-string v1, "user"

    invoke-static {v2, v1}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_47} :catch_48

    goto :goto_e

    :catch_48
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method static synthetic c(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/bbm/d/gp;
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/ProfileActivity;->f()Lcom/bbm/d/gp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/ProfileActivity;Z)V
    .registers 6

    if-eqz p1, :cond_12

    invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->s:Landroid/os/Handler;

    new-instance v1, Lcom/bbm/ui/activities/abu;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/abu;-><init>(Lcom/bbm/ui/activities/ProfileActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_11
    return-void

    :cond_12
    invoke-direct {p0}, Lcom/bbm/ui/activities/ProfileActivity;->k()V

    invoke-static {p0}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;)V

    goto :goto_11
.end method

.method static synthetic d(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/google/b/a/l;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->w:Lcom/google/b/a/l;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/ProfileActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/ProfileActivity;->k()V

    return-void
.end method

.method private f()Lcom/bbm/d/gp;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->n:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/ui/activities/ProfileActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/activities/ProfileActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->m:Z

    return v0
.end method

.method static synthetic g(Lcom/bbm/ui/activities/ProfileActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/bbm/ui/c/ff;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->g:Lcom/bbm/ui/c/ff;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/bbm/ui/c/fh;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->h:Lcom/bbm/ui/c/fh;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/bbm/d/gp;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->d:Lcom/bbm/d/gp;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->n:Lcom/bbm/d/a;

    return-object v0
.end method

.method private k()V
    .registers 5

    const/16 v1, 0x8

    sget-object v0, Lcom/bbm/ui/activities/ProfileActivity;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ProfileActivity;->r:Ljava/lang/Boolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ev;->y:Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->q:Lcom/bbm/ui/EmoticonPicker;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonPicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->s:Landroid/os/Handler;

    new-instance v1, Lcom/bbm/ui/activities/abv;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/abv;-><init>(Lcom/bbm/ui/activities/ProfileActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2a
    return-void
.end method

.method static synthetic l(Lcom/bbm/ui/activities/ProfileActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic m(Lcom/bbm/ui/activities/ProfileActivity;)Lcom/bbm/ui/FooterActionBar;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->j:Lcom/bbm/ui/FooterActionBar;

    return-object v0
.end method

.method static synthetic n(Lcom/bbm/ui/activities/ProfileActivity;)V
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/bbm/ui/activities/ProfileActivity;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ProfileActivity;->r:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/bbm/ui/activities/ev;->y:Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->q:Lcom/bbm/ui/EmoticonPicker;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonPicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_21
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/ev;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_11

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Lcom/bbm/h/aq;->b(Landroid/content/Intent;Landroid/app/Activity;)V

    :cond_11
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->n:Lcom/bbm/d/a;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "user_uri"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->c:Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    move v0, v1

    :goto_24
    const-string v3, "ProfileActivity invoked without user uri"

    invoke-static {p0, v0, v3}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    :goto_2c
    if-nez v2, :cond_161

    :goto_2e
    return-void

    :cond_2f
    move v0, v2

    goto :goto_24

    :cond_31
    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ProfileActivity;->setContentView(I)V

    const v0, 0x7f0a0274

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->i:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/bbm/ui/activities/ProfileActivity;->b:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->i:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/bbm/ui/activities/ProfileActivity;->b:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->i:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/bbm/ui/activities/abs;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/abs;-><init>(Lcom/bbm/ui/activities/ProfileActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->j:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->j:Lcom/bbm/ui/FooterActionBar;

    new-instance v3, Lcom/bbm/ui/ActionBarItem;

    const v4, 0x7f020366

    const v5, 0x7f0e069b

    invoke-direct {v3, p0, v4, v5}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v3, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->j:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->j:Lcom/bbm/ui/FooterActionBar;

    iget-object v3, p0, Lcom/bbm/ui/activities/ProfileActivity;->K:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->k:Landroid/widget/ImageView;

    const v0, 0x7f0a0240

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/SegmentedControl;

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->f:Lcom/bbm/ui/SegmentedControl;

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->f:Lcom/bbm/ui/SegmentedControl;

    iget-object v3, p0, Lcom/bbm/ui/activities/ProfileActivity;->I:Lcom/bbm/ui/fs;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/SegmentedControl;->setOnOptionSelectedListener(Lcom/bbm/ui/fs;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v3, 0x7f03010d

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a0541

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingAvatarImageView;

    invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->v:Lcom/google/b/a/l;

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->v:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingAvatarImageView;

    iget-object v3, p0, Lcom/bbm/ui/activities/ProfileActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingAvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a0542

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->w:Lcom/google/b/a/l;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0a0543

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->w:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_125

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->w:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/bbm/ui/activities/ProfileActivity;->G:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/16 v2, 0x40

    invoke-static {v0, v2}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    iget-object v2, p0, Lcom/bbm/ui/activities/ProfileActivity;->H:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_125
    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->l:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/bbm/ui/activities/ProfileActivity;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "user_uri"

    iget-object v4, p0, Lcom/bbm/ui/activities/ProfileActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/bbm/ui/c/ff;

    invoke-direct {v3}, Lcom/bbm/ui/c/ff;-><init>()V

    iput-object v3, p0, Lcom/bbm/ui/activities/ProfileActivity;->g:Lcom/bbm/ui/c/ff;

    iget-object v3, p0, Lcom/bbm/ui/activities/ProfileActivity;->g:Lcom/bbm/ui/c/ff;

    invoke-virtual {v3, v2}, Lcom/bbm/ui/c/ff;->setArguments(Landroid/os/Bundle;)V

    const v2, 0x7f0a0242

    iget-object v3, p0, Lcom/bbm/ui/activities/ProfileActivity;->g:Lcom/bbm/ui/c/ff;

    invoke-virtual {v0, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-direct {p0}, Lcom/bbm/ui/activities/ProfileActivity;->f()Lcom/bbm/d/gp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ProfileActivity;->a(Lcom/bbm/d/gp;)V

    move v2, v1

    goto/16 :goto_2c

    :cond_161
    const v0, 0x7f0a02b5

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02b8

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->p:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->p:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bbm/ui/activities/acc;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/acc;-><init>(Lcom/bbm/ui/activities/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02b9

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->t:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->t:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bbm/ui/activities/acd;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/acd;-><init>(Lcom/bbm/ui/activities/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->o:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bbm/ui/activities/abp;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/abp;-><init>(Lcom/bbm/ui/activities/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02b6

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->u:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->u:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bbm/ui/activities/abq;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/abq;-><init>(Lcom/bbm/ui/activities/ProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02b7

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/EmoticonPicker;

    iput-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->q:Lcom/bbm/ui/EmoticonPicker;

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->q:Lcom/bbm/ui/EmoticonPicker;

    new-instance v1, Lcom/bbm/ui/activities/abr;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/abr;-><init>(Lcom/bbm/ui/activities/ProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonPicker;->setEmoticonPickerListener(Lcom/bbm/ui/br;)V

    goto/16 :goto_2e
.end method

.method public onPause()V
    .registers 4

    invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->w:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->w:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bbm/ui/activities/ProfileActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->w:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {p0}, Lcom/bbm/util/c/c;->a(Landroid/content/Context;)Lcom/bbm/util/c/c;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bbm/util/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_34
    invoke-direct {p0, v1}, Lcom/bbm/ui/activities/ProfileActivity;->b(Ljava/lang/String;)V

    :cond_37
    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->J:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ProfileActivity;->J:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method
