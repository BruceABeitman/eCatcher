.class public Lcom/facebook/widget/aw;
.super Lcom/facebook/widget/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "name"

.field private static final b:Ljava/lang/String; = "id"

.field private static final c:Ljava/lang/String; = "picture"

.field private static final d:Ljava/lang/String; = "fields"

.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Lcom/facebook/widget/LoginButton;

.field private g:Lcom/facebook/widget/ab;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/facebook/c/j;

.field private j:Lcom/facebook/aw;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Ljava/lang/String;

.field private m:Lcom/facebook/bf;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, ","

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "picture"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/widget/aw;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/widget/a;-><init>()V

    new-instance v0, Lcom/facebook/widget/ab;

    invoke-direct {v0}, Lcom/facebook/widget/ab;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/aw;->g:Lcom/facebook/widget/ab;

    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/aw;Lcom/facebook/c/j;)Lcom/facebook/c/j;
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/aw;->i:Lcom/facebook/c/j;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/widget/aw;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/widget/aw;->q()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/aw;Ljava/lang/String;Lcom/facebook/widget/x;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/widget/aw;->a(Ljava/lang/String;Lcom/facebook/widget/x;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/facebook/widget/x;)V
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_40

    invoke-virtual {p2}, Lcom/facebook/widget/x;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_40

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/a/p;->com_facebook_usersettingsfragment_profile_picture_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/a/p;->com_facebook_usersettingsfragment_profile_picture_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v5, v5, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iput-object v1, p0, Lcom/facebook/widget/aw;->k:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/facebook/widget/aw;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/widget/aw;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/facebook/widget/aw;->h:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/facebook/widget/x;->a()Lcom/facebook/widget/u;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/widget/u;->b()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_40
    return-void
.end method

.method static synthetic b(Lcom/facebook/widget/aw;)Lcom/facebook/widget/LoginButton;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/aw;->f:Lcom/facebook/widget/LoginButton;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/widget/aw;)Lcom/facebook/c/j;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/aw;->i:Lcom/facebook/c/j;

    return-object v0
.end method

.method private p()V
    .registers 6

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->a()Lcom/facebook/aw;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/facebook/aw;->b()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/facebook/widget/aw;->j:Lcom/facebook/aw;

    if-eq v0, v1, :cond_33

    new-instance v1, Lcom/facebook/widget/aw$1;

    invoke-direct {v1, p0, v0}, Lcom/facebook/widget/aw$1;-><init>(Lcom/facebook/widget/aw;Lcom/facebook/aw;)V

    invoke-static {v0, v1}, Lcom/facebook/ai;->a(Lcom/facebook/aw;Lcom/facebook/al;)Lcom/facebook/ai;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "fields"

    sget-object v4, Lcom/facebook/widget/aw;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/facebook/ai;->a(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/facebook/ai;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/facebook/ai;->c([Lcom/facebook/ai;)Lcom/facebook/ap;

    iput-object v0, p0, Lcom/facebook/widget/aw;->j:Lcom/facebook/aw;

    :cond_33
    :goto_33
    return-void

    :cond_34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/aw;->i:Lcom/facebook/c/j;

    goto :goto_33
.end method

.method private q()V
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->isAdded()Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/facebook/widget/aw;->b()Z

    move-result v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/facebook/widget/aw;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/a/o;->com_facebook_usersettingsfragment_connected_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/facebook/widget/aw;->h:Landroid/widget/TextView;

    const/high16 v1, 0x3f80

    const/high16 v2, -0x4080

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/a/o;->com_facebook_usersettingsfragment_connected_shadow_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/facebook/widget/aw;->i:Lcom/facebook/c/j;

    if-eqz v0, :cond_76

    invoke-direct {p0}, Lcom/facebook/widget/aw;->r()Lcom/facebook/widget/u;

    move-result-object v0

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Lcom/facebook/widget/u;->b()Ljava/net/URL;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/aw;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    iget-object v2, p0, Lcom/facebook/widget/aw;->i:Lcom/facebook/c/j;

    invoke-interface {v2}, Lcom/facebook/c/j;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/widget/aw;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    iget-object v0, p0, Lcom/facebook/widget/aw;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/facebook/widget/aw;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/facebook/widget/aw;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    :cond_66
    :goto_66
    iget-object v0, p0, Lcom/facebook/widget/aw;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/widget/aw;->i:Lcom/facebook/c/j;

    invoke-interface {v1}, Lcom/facebook/c/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_72
    invoke-static {v0}, Lcom/facebook/widget/p;->a(Lcom/facebook/widget/u;)V

    goto :goto_66

    :cond_76
    iget-object v0, p0, Lcom/facebook/widget/aw;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/a/t;->com_facebook_usersettingsfragment_logged_in:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/q;->com_facebook_profile_default_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/a/p;->com_facebook_usersettingsfragment_profile_picture_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/a/p;->com_facebook_usersettingsfragment_profile_picture_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v7, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/facebook/widget/aw;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v0, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    :cond_ad
    invoke-virtual {p0}, Lcom/facebook/widget/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/a/o;->com_facebook_usersettingsfragment_not_connected_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/widget/aw;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/facebook/widget/aw;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v6, v6, v6, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/facebook/widget/aw;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/a/t;->com_facebook_usersettingsfragment_not_logged_in:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/facebook/widget/aw;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/facebook/widget/aw;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_9
.end method

.method private r()Lcom/facebook/widget/u;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/facebook/widget/v;

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/widget/aw;->i:Lcom/facebook/c/j;

    invoke-interface {v3}, Lcom/facebook/c/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/a/p;->com_facebook_usersettingsfragment_profile_picture_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/facebook/a/p;->com_facebook_usersettingsfragment_profile_picture_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/facebook/widget/u;->a(Ljava/lang/String;II)Ljava/net/URL;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/widget/v;-><init>(Landroid/content/Context;Ljava/net/URL;)V

    invoke-virtual {v1, p0}, Lcom/facebook/widget/v;->a(Ljava/lang/Object;)Lcom/facebook/widget/v;

    move-result-object v1

    new-instance v2, Lcom/facebook/widget/aw$2;

    invoke-direct {v2, p0}, Lcom/facebook/widget/aw$2;-><init>(Lcom/facebook/widget/aw;)V

    invoke-virtual {v1, v2}, Lcom/facebook/widget/v;->a(Lcom/facebook/widget/w;)Lcom/facebook/widget/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/widget/v;->a()Lcom/facebook/widget/u;
    :try_end_38
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_38} :catch_3a

    move-result-object v0

    :goto_39
    return-object v0

    :catch_3a
    move-exception v1

    goto :goto_39
.end method


# virtual methods
.method public a(Lcom/facebook/aw;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/facebook/widget/a;->a(Lcom/facebook/aw;)V

    iget-object v0, p0, Lcom/facebook/widget/aw;->f:Lcom/facebook/widget/LoginButton;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/widget/aw;->f:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/LoginButton;->setSession(Lcom/facebook/aw;)V

    :cond_c
    invoke-direct {p0}, Lcom/facebook/widget/aw;->p()V

    invoke-direct {p0}, Lcom/facebook/widget/aw;->q()V

    return-void
.end method

.method public a(Lcom/facebook/bf;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/aw;->m:Lcom/facebook/bf;

    return-void
.end method

.method public a(Lcom/facebook/bi;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/aw;->g:Lcom/facebook/widget/ab;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/ab;->a(Lcom/facebook/bi;)V

    return-void
.end method

.method public a(Lcom/facebook/bj;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/aw;->g:Lcom/facebook/widget/ab;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/ab;->a(Lcom/facebook/bj;)V

    return-void
.end method

.method protected a(Lcom/facebook/bk;Ljava/lang/Exception;)V
    .registers 5

    invoke-direct {p0}, Lcom/facebook/widget/aw;->p()V

    invoke-direct {p0}, Lcom/facebook/widget/aw;->q()V

    iget-object v0, p0, Lcom/facebook/widget/aw;->m:Lcom/facebook/bf;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/widget/aw;->m:Lcom/facebook/bf;

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->a()Lcom/facebook/aw;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/facebook/bf;->a(Lcom/facebook/aw;Lcom/facebook/bk;Ljava/lang/Exception;)V

    :cond_13
    return-void
.end method

.method public a(Lcom/facebook/widget/ad;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/aw;->g:Lcom/facebook/widget/ab;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/ab;->a(Lcom/facebook/widget/ad;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/aw;->g:Lcom/facebook/widget/ab;

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->a()Lcom/facebook/aw;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/ab;->a(Ljava/util/List;Lcom/facebook/aw;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/aw;->g:Lcom/facebook/widget/ab;

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->a()Lcom/facebook/aw;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/ab;->b(Ljava/util/List;Lcom/facebook/aw;)V

    return-void
.end method

.method public j()Lcom/facebook/bi;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/aw;->g:Lcom/facebook/widget/ab;

    invoke-virtual {v0}, Lcom/facebook/widget/ab;->b()Lcom/facebook/bi;

    move-result-object v0

    return-object v0
.end method

.method public k()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/aw;->g:Lcom/facebook/widget/ab;

    invoke-virtual {v0}, Lcom/facebook/widget/ab;->d()V

    return-void
.end method

.method public l()Lcom/facebook/bj;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/aw;->g:Lcom/facebook/widget/ab;

    invoke-virtual {v0}, Lcom/facebook/widget/ab;->e()Lcom/facebook/bj;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/facebook/widget/ad;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/aw;->g:Lcom/facebook/widget/ab;

    invoke-virtual {v0}, Lcom/facebook/widget/ab;->a()Lcom/facebook/widget/ad;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/facebook/bf;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/aw;->m:Lcom/facebook/bf;

    return-object v0
.end method

.method o()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/aw;->g:Lcom/facebook/widget/ab;

    invoke-virtual {v0}, Lcom/facebook/widget/ab;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/widget/a;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/facebook/widget/a;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/facebook/widget/a;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/widget/aw;->setRetainInstance(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    sget v0, Lcom/facebook/a/s;->com_facebook_usersettingsfragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sget v0, Lcom/facebook/a/r;->com_facebook_usersettingsfragment_login_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/LoginButton;

    iput-object v0, p0, Lcom/facebook/widget/aw;->f:Lcom/facebook/widget/LoginButton;

    iget-object v0, p0, Lcom/facebook/widget/aw;->f:Lcom/facebook/widget/LoginButton;

    iget-object v2, p0, Lcom/facebook/widget/aw;->g:Lcom/facebook/widget/ab;

    invoke-virtual {v0, v2}, Lcom/facebook/widget/LoginButton;->setProperties(Lcom/facebook/widget/ab;)V

    iget-object v0, p0, Lcom/facebook/widget/aw;->f:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v0, p0}, Lcom/facebook/widget/LoginButton;->setFragment(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->a()Lcom/facebook/aw;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/facebook/aw;->k()Lcom/facebook/aw;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/aw;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/facebook/widget/aw;->f:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v2, v0}, Lcom/facebook/widget/LoginButton;->setSession(Lcom/facebook/aw;)V

    :cond_32
    sget v0, Lcom/facebook/a/r;->com_facebook_usersettingsfragment_profile_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/facebook/widget/aw;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_50

    invoke-virtual {p0}, Lcom/facebook/widget/aw;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/a/o;->com_facebook_blue:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_4f
    return-object v1

    :cond_50
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    goto :goto_4f
.end method

.method public bridge synthetic onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/facebook/widget/a;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .registers 1

    invoke-super {p0}, Lcom/facebook/widget/a;->onResume()V

    invoke-direct {p0}, Lcom/facebook/widget/aw;->p()V

    invoke-direct {p0}, Lcom/facebook/widget/aw;->q()V

    return-void
.end method
