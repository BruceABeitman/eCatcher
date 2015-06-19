.class public Lcom/twidroid/c/f;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ProgressBar;

.field private final d:Lcom/twidroid/activity/r;

.field private e:I

.field private f:Ljava/lang/ref/WeakReference;

.field private final g:Z

.field private h:Lcom/twidroid/c/g;

.field private i:Landroid/os/Handler$Callback;

.field private j:Z

.field private final k:Z

.field private final l:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/twidroid/activity/r;ZZZ)V
    .registers 8

    invoke-direct {p0, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    const/16 v0, 0x280

    iput v0, p0, Lcom/twidroid/c/f;->a:I

    iput-object p3, p0, Lcom/twidroid/c/f;->d:Lcom/twidroid/activity/r;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twidroid/c/f;->f:Ljava/lang/ref/WeakReference;

    iput-boolean p4, p0, Lcom/twidroid/c/f;->g:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/twidroid/c/f;->e:I

    iput-boolean p5, p0, Lcom/twidroid/c/f;->l:Z

    iput-boolean p6, p0, Lcom/twidroid/c/f;->k:Z

    invoke-static {p1}, Lcom/twidroid/activity/SendTweet;->a(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/twidroid/c/f;->a:I

    invoke-direct {p0}, Lcom/twidroid/c/f;->o()V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/c/f;Lcom/twidroid/c/g;)Lcom/twidroid/c/g;
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/f;->h:Lcom/twidroid/c/g;

    return-object p1
.end method

.method public static a(Lcom/twidroid/activity/r;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/twidroid/activity/r;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twidroid/activity/r;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_f.jpg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_37
    :goto_37
    return-object v0

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_f.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_37

    invoke-virtual {p0}, Lcom/twidroid/activity/r;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_37

    const/4 v0, 0x0

    goto :goto_37
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/twidroid/c/f;->e:I

    return-void
.end method

.method static synthetic a(Lcom/twidroid/c/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/c/f;->m()V

    return-void
.end method

.method static synthetic a(Lcom/twidroid/c/f;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/twidroid/c/f;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/twidroid/c/f;)I
    .registers 2

    iget v0, p0, Lcom/twidroid/c/f;->a:I

    return v0
.end method

.method private b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/c/f;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/twidroid/c/f;)Lcom/twidroid/activity/r;
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/c/f;->f()Lcom/twidroid/activity/r;

    move-result-object v0

    return-object v0
.end method

.method private c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/c/f;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/twidroid/c/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/c/f;->n()V

    return-void
.end method

.method private d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/c/f;->j:Z

    return v0
.end method

.method private e()Landroid/os/Handler$Callback;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/c/f;->i:Landroid/os/Handler$Callback;

    return-object v0
.end method

.method static synthetic e(Lcom/twidroid/c/f;)Lcom/twidroid/c/g;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/c/f;->h:Lcom/twidroid/c/g;

    return-object v0
.end method

.method private f()Lcom/twidroid/activity/r;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/c/f;->d:Lcom/twidroid/activity/r;

    return-object v0
.end method

.method static synthetic f(Lcom/twidroid/c/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/c/f;->k()V

    return-void
.end method

.method static synthetic g(Lcom/twidroid/c/f;)Landroid/content/Context;
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/c/f;->h()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private g()Ljava/lang/Integer;
    .registers 2

    iget v0, p0, Lcom/twidroid/c/f;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private h()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/c/f;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/twidroid/c/f;)Z
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/c/f;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/twidroid/c/f;)V
    .registers 1

    invoke-direct {p0}, Lcom/twidroid/c/f;->p()V

    return-void
.end method

.method private i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/c/f;->g:Z

    return v0
.end method

.method static synthetic j(Lcom/twidroid/c/f;)Landroid/os/Handler$Callback;
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/c/f;->e()Landroid/os/Handler$Callback;

    move-result-object v0

    return-object v0
.end method

.method private j()Landroid/view/ViewGroup;
    .registers 2

    invoke-virtual {p0}, Lcom/twidroid/c/f;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/twidroid/c/f;->getContentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/twidroid/c/f;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private k()V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/twidroid/c/f;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/twidroid/c/f;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_46

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_46

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_18
    iget-object v2, p0, Lcom/twidroid/c/f;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/twidroid/c/f;->f()Lcom/twidroid/activity/r;

    move-result-object v1

    if-eqz v1, :cond_34

    :try_start_23
    iget-object v1, p0, Lcom/twidroid/c/f;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/twidroid/c/f;->f()Lcom/twidroid/activity/r;

    move-result-object v2

    invoke-static {v2}, Lcom/twidroid/c/f;->a(Lcom/twidroid/activity/r;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_34
    .catch Ljava/lang/OutOfMemoryError; {:try_start_23 .. :try_end_34} :catch_3a

    :cond_34
    :goto_34
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    :catch_3a
    move-exception v1

    const-string v2, "AttachedMediaDialog"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_34

    :cond_46
    move-object v0, v1

    goto :goto_18
.end method

.method static synthetic k(Lcom/twidroid/c/f;)Z
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/c/f;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/twidroid/c/f;)Ljava/lang/Integer;
    .registers 2

    invoke-direct {p0}, Lcom/twidroid/c/f;->g()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private l()Z
    .registers 3

    iget-object v0, p0, Lcom/twidroid/c/f;->h:Lcom/twidroid/c/g;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/twidroid/c/f;->h:Lcom/twidroid/c/g;

    invoke-virtual {v0}, Lcom/twidroid/c/g;->g()Lcom/ubermedia/a/e;

    move-result-object v0

    sget-object v1, Lcom/ubermedia/a/e;->c:Lcom/ubermedia/a/e;

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private m()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/c/f;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/twidroid/c/f;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method private n()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/c/f;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twidroid/c/f;->c:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_b
    return-void
.end method

.method private o()V
    .registers 6

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/twidroid/c/f;->j()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_c0

    const v0, 0x7f090086

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/twidroid/c/f;->b:Landroid/widget/ImageView;

    const v0, 0x7f090087

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/twidroid/c/f;->c:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Lcom/twidroid/c/f;->h()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/twidroid/c/f;->k()V

    new-instance v3, Lcom/twidroid/c/f$1;

    invoke-direct {v3, p0}, Lcom/twidroid/c/f$1;-><init>(Lcom/twidroid/c/f;)V

    const v0, 0x7f090080

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_37

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_37
    const v0, 0x7f090082

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_45

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_45
    invoke-direct {p0}, Lcom/twidroid/c/f;->b()Z

    move-result v0

    if-nez v0, :cond_61

    const v0, 0x7f090081

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_61

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    new-instance v3, Lcom/twidroid/c/f$2;

    invoke-direct {v3, p0}, Lcom/twidroid/c/f$2;-><init>(Lcom/twidroid/c/f;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_61
    const v0, 0x7f090088

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/widgets/HorizontialListView;

    invoke-direct {p0}, Lcom/twidroid/c/f;->i()Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-virtual {v0, v4}, Lcom/twidroid/ui/widgets/HorizontialListView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/twidroid/c/f;->c()Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-direct {p0}, Lcom/twidroid/c/f;->h()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_c4

    invoke-direct {p0}, Lcom/twidroid/c/f;->h()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_c4

    :try_start_87
    invoke-direct {p0}, Lcom/twidroid/c/f;->h()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0037

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {p0}, Lcom/twidroid/c/f;->h()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p0}, Lcom/twidroid/c/f;->f()Lcom/twidroid/activity/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/twidroid/activity/r;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/twidroid/d/r;->a(Landroid/app/Activity;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_a7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_87 .. :try_end_a7} :catch_c1

    move-result-object v1

    :goto_a8
    new-instance v3, Lcom/twidroid/ui/a/s;

    invoke-direct {v3, v2, v1}, Lcom/twidroid/ui/a/s;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Lcom/twidroid/ui/widgets/HorizontialListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_b0
    new-instance v1, Lcom/twidroid/c/f$3;

    invoke-direct {v1, p0}, Lcom/twidroid/c/f$3;-><init>(Lcom/twidroid/c/f;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/HorizontialListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_b8
    new-instance v0, Lcom/twidroid/c/f$4;

    invoke-direct {v0, p0}, Lcom/twidroid/c/f$4;-><init>(Lcom/twidroid/c/f;)V

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_c0
    return-void

    :catch_c1
    move-exception v1

    const/4 v1, 0x0

    goto :goto_a8

    :cond_c4
    invoke-direct {p0}, Lcom/twidroid/c/f;->f()Lcom/twidroid/activity/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/activity/r;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_a8

    :cond_cd
    new-instance v1, Lcom/twidroid/ui/a/s;

    invoke-direct {v1, v2}, Lcom/twidroid/ui/a/s;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/HorizontialListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_b0
.end method

.method private p()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/twidroid/c/f;->h()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0c02c5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    new-instance v2, Lcom/twidroid/c/f$5;

    invoke-direct {v2, p0}, Lcom/twidroid/c/f$5;-><init>(Lcom/twidroid/c/f;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twidroid/c/f;->j:Z

    return-void
.end method

.method public a(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/PopupWindow;->update(II)V

    return-void
.end method

.method public a(Landroid/os/Handler$Callback;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/f;->i:Landroid/os/Handler$Callback;

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2

    return-void
.end method
