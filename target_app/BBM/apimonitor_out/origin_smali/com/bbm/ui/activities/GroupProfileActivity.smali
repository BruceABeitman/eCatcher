.class public Lcom/bbm/ui/activities/GroupProfileActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupProfileActivity.java"


# instance fields
.field protected a:Landroid/widget/RelativeLayout;

.field protected b:Lcom/bbm/ui/ThreeButtonSegmentedControl;

.field final d:Lcom/bbm/j/k;

.field private e:Lcom/bbm/ui/FooterActionBar;

.field private f:Lcom/bbm/ui/ObservingImageView;

.field private g:Lcom/bbm/ui/InlineImageTextView;

.field private h:Landroid/widget/TextView;

.field private i:J

.field private j:Ljava/lang/String;

.field private final k:Lcom/bbm/d;

.field private l:Lcom/bbm/ui/c/ch;

.field private m:Lcom/bbm/ui/c/cz;

.field private n:Lcom/bbm/ui/c/ck;

.field private o:I

.field private final p:Lcom/bbm/g/am;

.field private q:I

.field private r:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/bbm/ui/gy;

.field private final t:Lcom/bbm/ui/cj;

.field private final u:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const-class v0, Lcom/bbm/ui/activities/MainActivity;

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/md;-><init>(Ljava/lang/Class;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->j:Ljava/lang/String;

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->k:Lcom/bbm/d;

    iput-object v1, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->l:Lcom/bbm/ui/c/ch;

    iput-object v1, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->m:Lcom/bbm/ui/c/cz;

    iput-object v1, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->n:Lcom/bbm/ui/c/ck;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->o:I

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->p:Lcom/bbm/g/am;

    new-instance v0, Lcom/bbm/ui/activities/sx;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/sx;-><init>(Lcom/bbm/ui/activities/GroupProfileActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->r:Lcom/bbm/j/a;

    new-instance v0, Lcom/bbm/ui/activities/sy;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/sy;-><init>(Lcom/bbm/ui/activities/GroupProfileActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->d:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/sz;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/sz;-><init>(Lcom/bbm/ui/activities/GroupProfileActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->s:Lcom/bbm/ui/gy;

    new-instance v0, Lcom/bbm/ui/activities/ta;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ta;-><init>(Lcom/bbm/ui/activities/GroupProfileActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->t:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/activities/tb;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/tb;-><init>(Lcom/bbm/ui/activities/GroupProfileActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->u:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupProfileActivity;I)I
    .registers 2

    iput p1, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->q:I

    return p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/g/am;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->p:Lcom/bbm/g/am;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupProfileActivity;Lcom/bbm/ui/c/ch;)Lcom/bbm/ui/c/ch;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->l:Lcom/bbm/ui/c/ch;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupProfileActivity;Lcom/bbm/ui/c/ck;)Lcom/bbm/ui/c/ck;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->n:Lcom/bbm/ui/c/ck;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupProfileActivity;Lcom/bbm/ui/c/cz;)Lcom/bbm/ui/c/cz;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->m:Lcom/bbm/ui/c/cz;

    return-object p1
.end method

.method private a(I)V
    .registers 9

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_16

    const/16 v2, 0x12c

    if-eq p1, v2, :cond_16

    const/16 v2, 0x1f4

    if-ne p1, v2, :cond_49

    :cond_16
    const-string v2, "uri"

    iget-object v3, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "icon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->i:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "uri"

    iget-object v3, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "customIcon"

    iget-object v3, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_49
    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->k:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    const-string v2, "group"

    invoke-static {v1, v2}, Lcom/bbm/g/an;->a(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/g/cr;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_56} :catch_57

    :goto_56
    return-void

    :catch_57
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_56
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupProfileActivity;Landroid/app/FragmentTransaction;)V
    .registers 5

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->l:Lcom/bbm/ui/c/ch;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->l:Lcom/bbm/ui/c/ch;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->l:Lcom/bbm/ui/c/ch;

    invoke-virtual {v0}, Lcom/bbm/ui/c/ch;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->l:Lcom/bbm/ui/c/ch;

    invoke-virtual {v0}, Lcom/bbm/ui/c/ch;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    iput-object v2, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->l:Lcom/bbm/ui/c/ch;

    :cond_1f
    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->m:Lcom/bbm/ui/c/cz;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->m:Lcom/bbm/ui/c/cz;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->m:Lcom/bbm/ui/c/cz;

    invoke-virtual {v0}, Lcom/bbm/ui/c/cz;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->m:Lcom/bbm/ui/c/cz;

    invoke-virtual {v0}, Lcom/bbm/ui/c/cz;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_39
    iput-object v2, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->m:Lcom/bbm/ui/c/cz;

    :cond_3b
    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->n:Lcom/bbm/ui/c/ck;

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->n:Lcom/bbm/ui/c/ck;

    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->n:Lcom/bbm/ui/c/ck;

    invoke-virtual {v0}, Lcom/bbm/ui/c/ck;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->n:Lcom/bbm/ui/c/ck;

    invoke-virtual {v0}, Lcom/bbm/ui/c/ck;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_55
    iput-object v2, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->n:Lcom/bbm/ui/c/ck;

    :cond_57
    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/activities/GroupProfileActivity;I)I
    .registers 2

    iput p1, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->o:I

    return p1
.end method

.method static synthetic b(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/ui/c/ch;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->l:Lcom/bbm/ui/c/ch;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/ui/c/cz;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->m:Lcom/bbm/ui/c/cz;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/ui/c/ck;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->n:Lcom/bbm/ui/c/ck;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/j/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->r:Lcom/bbm/j/a;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/activities/GroupProfileActivity;)I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->q:I

    return v0
.end method

.method static synthetic g(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/d;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->k:Lcom/bbm/d;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/ui/FooterActionBar;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->e:Lcom/bbm/ui/FooterActionBar;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/ui/ObservingImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->f:Lcom/bbm/ui/ObservingImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/ui/InlineImageTextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->g:Lcom/bbm/ui/InlineImageTextView;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/activities/GroupProfileActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->h:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10

    const/16 v3, 0x1f4

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/md;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_b8

    if-ne p2, v0, :cond_72

    if-ne p1, v3, :cond_72

    const-string v1, ""

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_149

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :try_start_1d
    iget-object v2, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->k:Lcom/bbm/d;

    iget-object v2, v2, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    iget-object v3, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bbm/util/bi;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/bbm/g/a;->g:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bbm/util/b/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_4e} :catch_6a

    move-object v0, v1

    :goto_4f
    new-instance v1, Lcom/bbm/util/b/g;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b027a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;I)V

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->f:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v0, v2}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->j:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/GroupProfileActivity;->a(I)V

    :goto_69
    return-void

    :catch_6a
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_4f

    :cond_72
    if-ne p2, v0, :cond_b8

    const/16 v0, 0x2726

    if-ne p1, v0, :cond_b8

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->p:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->r:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->q:I

    if-ge v0, v2, :cond_ac

    iget-boolean v0, v1, Lcom/bbm/g/a;->j:Z

    if-nez v0, :cond_98

    iget-boolean v0, v1, Lcom/bbm/g/a;->a:Z

    if-eqz v0, :cond_ac

    :cond_98
    const-string v0, "group_invite"

    const/4 v2, 0x1

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "group_uri"

    iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "group_name"

    iget-object v1, v1, Lcom/bbm/g/a;->r:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_ac
    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Lcom/bbm/h/aq;->b(Landroid/content/Intent;Landroid/app/Activity;)V

    goto :goto_69

    :cond_b8
    const/16 v0, 0xc8

    if-ne p2, v0, :cond_da

    if-eqz p3, :cond_d6

    const-string v0, "group_icon_resource_id"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->f:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/ObservingImageView;->setImageResource(I)V

    const-string v0, "group_icon_position"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->i:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->j:Ljava/lang/String;

    :cond_d6
    :goto_d6
    invoke-direct {p0, p2}, Lcom/bbm/ui/activities/GroupProfileActivity;->a(I)V

    goto :goto_69

    :cond_da
    const/16 v0, 0x190

    if-ne p2, v0, :cond_105

    const-string v0, "picture_location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d6

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v3, v1}, Lcom/bbm/ui/el;->a(Landroid/app/Activity;ILandroid/net/Uri;)V

    new-instance v1, Lcom/bbm/util/b/g;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/bbm/util/b/g;-><init>(Landroid/app/Activity;I)V

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->f:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v0, v2}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->j:Ljava/lang/String;

    goto :goto_d6

    :cond_105
    const/16 v0, 0x12c

    if-ne p2, v0, :cond_d6

    if-eqz p3, :cond_d6

    const-string v0, "picture_location"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d6

    const-string v1, "GroupsIconActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Data is =>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d6

    :try_start_132
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->f:Lcom/bbm/ui/ObservingImageView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/ui/ObservingImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->j:Ljava/lang/String;
    :try_end_143
    .catch Ljava/io/FileNotFoundException; {:try_start_132 .. :try_end_143} :catch_144

    goto :goto_d6

    :catch_144
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_d6

    :cond_149
    move-object v0, v1

    goto/16 :goto_4f
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupProfileActivity;->setContentView(I)V

    const v0, 0x7f0a00b4

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->a:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->e:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->e:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f020366

    const v3, 0x7f0e06a0

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1, v4}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->e:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v4}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->e:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->t:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    const v0, 0x7f0a01eb

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ThreeButtonSegmentedControl;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->b:Lcom/bbm/ui/ThreeButtonSegmentedControl;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->b:Lcom/bbm/ui/ThreeButtonSegmentedControl;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->s:Lcom/bbm/ui/gy;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ThreeButtonSegmentedControl;->setOnOptionSelectedListener(Lcom/bbm/ui/gy;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v0, 0x7f03010a

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0535

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->f:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0539

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->g:Lcom/bbm/ui/InlineImageTextView;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->f:Lcom/bbm/ui/ObservingImageView;

    new-instance v2, Lcom/bbm/ui/activities/tc;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/tc;-><init>(Lcom/bbm/ui/activities/GroupProfileActivity;)V

    invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0538

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/c/ck;

    invoke-direct {v1}, Lcom/bbm/ui/c/ck;-><init>()V

    iput-object v1, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->n:Lcom/bbm/ui/c/ck;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "groupUri"

    iget-object v3, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->n:Lcom/bbm/ui/c/ck;

    invoke-virtual {v2, v1}, Lcom/bbm/ui/c/ck;->setArguments(Landroid/os/Bundle;)V

    const v1, 0x7f0a01ed

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->n:Lcom/bbm/ui/c/ck;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    iput v5, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->o:I

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->b:Lcom/bbm/ui/ThreeButtonSegmentedControl;

    invoke-virtual {v0, v5}, Lcom/bbm/ui/ThreeButtonSegmentedControl;->a(I)V

    return-void
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->u:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->d:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupProfileActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupProfileActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_17
    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->u:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupProfileActivity;->d:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method
