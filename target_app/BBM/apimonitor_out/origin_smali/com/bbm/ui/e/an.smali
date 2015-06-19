.class public Lcom/bbm/ui/e/an;
.super Ljava/lang/Object;
.source "LocationHolder.java"

# interfaces
.implements Lcom/bbm/ui/e/at;


# static fields
.field private static c:Lcom/bbm/d/fg;


# instance fields
.field private final a:I

.field private final b:Landroid/content/Context;

.field private d:Lcom/bbm/d/fg;

.field private final e:Lcom/bbm/d/a;

.field private f:Landroid/view/View$OnTouchListener;

.field private final g:Lcom/bbm/ui/activities/xo;

.field private final h:Lcom/bbm/util/b/i;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/view/View;

.field private final o:Lcom/bbm/j/u;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bbm/d/fg;

    invoke-direct {v0}, Lcom/bbm/d/fg;-><init>()V

    sput-object v0, Lcom/bbm/ui/e/an;->c:Lcom/bbm/d/fg;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/ui/activities/xo;Lcom/bbm/util/b/i;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/bbm/ui/e/an;->a:I

    sget-object v0, Lcom/bbm/ui/e/an;->c:Lcom/bbm/d/fg;

    iput-object v0, p0, Lcom/bbm/ui/e/an;->d:Lcom/bbm/d/fg;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/e/an;->f:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/bbm/ui/e/ao;

    invoke-direct {v0, p0}, Lcom/bbm/ui/e/ao;-><init>(Lcom/bbm/ui/e/an;)V

    iput-object v0, p0, Lcom/bbm/ui/e/an;->o:Lcom/bbm/j/u;

    iput-object p1, p0, Lcom/bbm/ui/e/an;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/bbm/ui/e/an;->e:Lcom/bbm/d/a;

    iput-object p3, p0, Lcom/bbm/ui/e/an;->g:Lcom/bbm/ui/activities/xo;

    iput-object p4, p0, Lcom/bbm/ui/e/an;->h:Lcom/bbm/util/b/i;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/e/an;)Lcom/bbm/d/fg;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/e/an;->d:Lcom/bbm/d/fg;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/e/an;Lcom/bbm/d/ff;)V
    .registers 6

    invoke-static {p1}, Lcom/bbm/ui/e/aq;->a(Lcom/bbm/d/ff;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "geo:0,0?q="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/bbm/d/ff;->f:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/bbm/d/ff;->g:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_48

    const-string v0, ""

    :goto_2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_40
    iget-object v0, p0, Lcom/bbm/ui/e/an;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_47
    .catch Landroid/content/ActivityNotFoundException; {:try_start_40 .. :try_end_47} :catch_5e

    :goto_47
    return-void

    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :catch_5e
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "There is no suitable activity to handle intent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_47
.end method

.method static synthetic b(Lcom/bbm/ui/e/an;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/e/an;->e:Lcom/bbm/d/a;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/e/an;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/e/an;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/e/an;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/e/an;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/e/an;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/e/an;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/e/an;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/e/an;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/e/an;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/e/an;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/e/an;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/e/an;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/e/an;)Lcom/bbm/util/b/i;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/e/an;->h:Lcom/bbm/util/b/i;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    const v0, 0x7f0300d7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0453

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/e/an;->l:Landroid/widget/TextView;

    const v0, 0x7f0a0454

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/e/an;->i:Landroid/widget/TextView;

    const v0, 0x7f0a0499

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/e/an;->j:Landroid/widget/TextView;

    const v0, 0x7f0a049a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/e/an;->k:Landroid/widget/TextView;

    const v0, 0x7f0a049b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/e/an;->m:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/bbm/ui/e/an;->n:Landroid/view/View;

    return-object v1
.end method

.method public final a(Lcom/bbm/ui/e/i;Z)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/e/an;->m:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;

    iput-object v0, p0, Lcom/bbm/ui/e/an;->d:Lcom/bbm/d/fg;

    iget-object v0, p0, Lcom/bbm/ui/e/an;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/bbm/ui/e/an;->g:Lcom/bbm/ui/activities/xo;

    invoke-static {v0, v1, p1, p2}, Lcom/bbm/ui/e/b;->a(Landroid/view/View;Lcom/bbm/ui/activities/xo;Lcom/bbm/ui/e/i;Z)V

    iget-object v0, p0, Lcom/bbm/ui/e/an;->d:Lcom/bbm/d/fg;

    iget-object v0, v0, Lcom/bbm/d/fg;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/bbm/ui/e/an;->o:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    goto :goto_1b
.end method
