.class public Lcom/twidroid/c/x;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "TweetDialogAnonymous"


# instance fields
.field f:Landroid/app/Activity;

.field protected g:Landroid/view/LayoutInflater;

.field h:Landroid/widget/LinearLayout;

.field i:Lcom/twidroid/model/twitter/Tweet;

.field j:Lcom/twidroid/net/c/a/f;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/twidroid/model/twitter/Tweet;Lcom/twidroid/net/c/a/f;)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/twidroid/c/x;->i:Lcom/twidroid/model/twitter/Tweet;

    iput-object p3, p0, Lcom/twidroid/c/x;->j:Lcom/twidroid/net/c/a/f;

    iput-object p1, p0, Lcom/twidroid/c/x;->f:Landroid/app/Activity;

    :try_start_9
    iget-object v0, p0, Lcom/twidroid/c/x;->f:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/c/x;->g:Landroid/view/LayoutInflater;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method private a(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/twidroid/c/x;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f03008c

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "@"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/twidroid/c/x;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_27
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/twidroid/c/x;->f:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900a0

    invoke-virtual {p0, v1}, Lcom/twidroid/c/x;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    :cond_4f
    iget-object v1, p0, Lcom/twidroid/c/x;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_27
.end method


# virtual methods
.method protected a()V
    .registers 2

    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/twidroid/c/x;->setContentView(I)V

    return-void
.end method

.method protected a(Landroid/widget/LinearLayout;)V
    .registers 9

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/twidroid/c/x;->i:Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->o()Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/StringUrlSpan;->b()[Landroid/text/style/URLSpan;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v3, :cond_7d

    aget-object v0, v2, v1

    instance-of v4, v0, Lcom/ubermedia/ui/StringSpanInfo;

    if-eqz v4, :cond_53

    check-cast v0, Lcom/ubermedia/ui/StringSpanInfo;

    iget-object v4, v0, Lcom/ubermedia/ui/StringSpanInfo;->a:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/twidroid/c/ab;

    iget-object v6, v0, Lcom/ubermedia/ui/StringSpanInfo;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/twidroid/c/ab;-><init>(Lcom/twidroid/c/x;Ljava/lang/String;)V

    invoke-direct {p0, p1, v4, v5}, Lcom/twidroid/c/x;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/ubermedia/ui/StringSpanInfo;->getURL()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xc8

    invoke-static {v0, v4}, Lcom/twidroid/d/m;->a(Ljava/lang/String;I)Lcom/twidroid/d/n;

    move-result-object v0

    if-eqz v0, :cond_4f

    sget-object v4, Lcom/twidroid/d/m;->z:Lcom/twidroid/d/n;

    if-eq v0, v4, :cond_4f

    iget-object v4, p0, Lcom/twidroid/c/x;->f:Landroid/app/Activity;

    const v5, 0x7f0c01ac

    invoke-static {v4, v5}, Lcom/twidroid/d/h;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/twidroid/c/x$1;

    invoke-direct {v5, p0, v0}, Lcom/twidroid/c/x$1;-><init>(Lcom/twidroid/c/x;Lcom/twidroid/d/n;)V

    invoke-direct {p0, p1, v4, v5}, Lcom/twidroid/c/x;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_4f
    :goto_4f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_53
    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    new-instance v4, Lcom/twidroid/c/z;

    invoke-direct {v4, p0, v0}, Lcom/twidroid/c/z;-><init>(Lcom/twidroid/c/x;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v4}, Lcom/twidroid/c/x;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_4f

    :cond_6c
    const-string v4, "#"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    new-instance v4, Lcom/twidroid/c/y;

    invoke-direct {v4, p0, v0}, Lcom/twidroid/c/y;-><init>(Lcom/twidroid/c/x;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v4}, Lcom/twidroid/c/x;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_4f

    :cond_7d
    sget-object v0, Lcom/ubermedia/ui/b;->t:Ljava/util/regex/Pattern;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twidroid/c/x;->i:Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/Tweet;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_9c
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_ca

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twidroid/c/aa;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/twidroid/c/aa;-><init>(Lcom/twidroid/c/x;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/twidroid/c/x;->a(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_9c

    :cond_ca
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/twidroid/c/x;->a()V

    iget-object v0, p0, Lcom/twidroid/c/x;->f:Landroid/app/Activity;

    const v1, 0x7f0c010e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twidroid/c/x;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f090096

    invoke-virtual {p0, v0}, Lcom/twidroid/c/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/twidroid/c/x;->h:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onStart()V
    .registers 10

    const/16 v8, 0x8

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const v0, 0x7f09009a

    invoke-virtual {p0, v0}, Lcom/twidroid/c/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/twidroid/c/x;->a(Landroid/widget/LinearLayout;)V

    const v0, 0x7f0900a1

    invoke-virtual {p0, v0}, Lcom/twidroid/c/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/twidroid/c/x$2;

    invoke-direct {v1, p0}, Lcom/twidroid/c/x$2;-><init>(Lcom/twidroid/c/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900a9

    invoke-virtual {p0, v1}, Lcom/twidroid/c/x;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/twidroid/c/x$3;

    invoke-direct {v2, p0}, Lcom/twidroid/c/x$3;-><init>(Lcom/twidroid/c/x;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900a8

    invoke-virtual {p0, v1}, Lcom/twidroid/c/x;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/twidroid/c/x$4;

    invoke-direct {v2, p0}, Lcom/twidroid/c/x$4;-><init>(Lcom/twidroid/c/x;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900a7

    invoke-virtual {p0, v2}, Lcom/twidroid/c/x;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/c/x;->i:Lcom/twidroid/model/twitter/Tweet;

    iget-wide v3, v3, Lcom/twidroid/model/twitter/Tweet;->al:D

    cmpl-double v3, v3, v6

    if-eqz v3, :cond_82

    iget-object v3, p0, Lcom/twidroid/c/x;->i:Lcom/twidroid/model/twitter/Tweet;

    iget-wide v3, v3, Lcom/twidroid/model/twitter/Tweet;->am:D

    cmpl-double v3, v3, v6

    if-eqz v3, :cond_82

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_61
    const v1, 0x7f0900aa

    invoke-virtual {p0, v1}, Lcom/twidroid/c/x;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/twidroid/c/x$5;

    invoke-direct {v2, p0}, Lcom/twidroid/c/x$5;-><init>(Lcom/twidroid/c/x;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f090099

    invoke-virtual {p0, v0}, Lcom/twidroid/c/x;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {v0, v5, v5}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void

    :cond_82
    invoke-virtual {v1, v8}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_61
.end method
