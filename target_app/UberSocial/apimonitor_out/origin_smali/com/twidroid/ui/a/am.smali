.class public Lcom/twidroid/ui/a/am;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field protected static final e:I = 0x0

.field protected static final f:I = 0x1

.field protected static final g:I = 0x2

.field protected static final h:I = 0x3

.field protected static i:I = 0x0

.field protected static final j:I = 0x3

.field static t:Ljava/lang/String;

.field static u:Ljava/lang/String;


# instance fields
.field public A:I

.field B:I

.field C:Z

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:Landroid/graphics/drawable/StateListDrawable;

.field protected J:Lcom/twidroid/d/v;

.field K:Z

.field protected L:Lcom/twidroid/b/a/b;

.field protected M:Lcom/twidroid/ui/themes/r;

.field N:Lcom/twidroid/net/n;

.field O:Landroid/view/LayoutInflater;

.field protected P:I

.field protected Q:I

.field protected R:I

.field S:Z

.field protected T:Lcom/twidroid/net/b/f;

.field U:Ljava/lang/Long;

.field protected V:J

.field private W:I

.field private X:I

.field private Y:Z

.field private Z:Ljava/lang/String;

.field private final a:Ljava/lang/String;

.field private aa:Z

.field private b:Z

.field protected c:Ljava/util/ArrayList;

.field protected final d:Landroid/app/Activity;

.field protected k:Z

.field protected l:I

.field protected m:Z

.field n:Landroid/text/util/Linkify$TransformFilter;

.field o:Ljava/lang/String;

.field p:I

.field q:I

.field public r:Landroid/text/style/ForegroundColorSpan;

.field s:Landroid/text/style/StyleSpan;

.field v:Lcom/twidroid/ui/a/an;

.field w:Z

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xa

    sput v0, Lcom/twidroid/ui/a/am;->i:I

    const-string v0, " from "

    sput-object v0, Lcom/twidroid/ui/a/am;->t:Ljava/lang/String;

    const-string v0, " in reply to "

    sput-object v0, Lcom/twidroid/ui/a/am;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Z)V
    .registers 11

    const/4 v3, 0x1

    const/high16 v6, 0x3f00

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    const-string v0, "TweetAdapter"

    iput-object v0, p0, Lcom/twidroid/ui/a/am;->a:Ljava/lang/String;

    const/16 v0, 0xc

    iput v0, p0, Lcom/twidroid/ui/a/am;->l:I

    const-string v0, "Retweeted by "

    iput-object v0, p0, Lcom/twidroid/ui/a/am;->o:Ljava/lang/String;

    iput v2, p0, Lcom/twidroid/ui/a/am;->p:I

    iput v2, p0, Lcom/twidroid/ui/a/am;->q:I

    iput-boolean v2, p0, Lcom/twidroid/ui/a/am;->w:Z

    iput v1, p0, Lcom/twidroid/ui/a/am;->z:I

    iput v1, p0, Lcom/twidroid/ui/a/am;->B:I

    iput-boolean v3, p0, Lcom/twidroid/ui/a/am;->K:Z

    iput-boolean v2, p0, Lcom/twidroid/ui/a/am;->Y:Z

    const/4 v0, 0x6

    iput v0, p0, Lcom/twidroid/ui/a/am;->P:I

    iput v1, p0, Lcom/twidroid/ui/a/am;->Q:I

    iput v1, p0, Lcom/twidroid/ui/a/am;->R:I

    new-instance v0, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lcom/twidroid/ui/a/am;->U:Ljava/lang/Long;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/twidroid/ui/a/am;->V:J

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v1

    iput-object v1, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v1

    iput-object v1, p0, Lcom/twidroid/ui/a/am;->L:Lcom/twidroid/b/a/b;

    iget-object v1, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    invoke-virtual {p0, v1}, Lcom/twidroid/ui/a/am;->a(Lcom/twidroid/ui/themes/r;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    if-eqz p2, :cond_63

    iget-object v1, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_63
    iget-object v1, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iput-object p1, p0, Lcom/twidroid/ui/a/am;->d:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/twidroid/ui/a/am;->w:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/twidroid/ui/a/am;->O:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v1

    iput-object v1, p0, Lcom/twidroid/ui/a/am;->J:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/d/v;->cn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twidroid/ui/a/am;->aa:Z

    const/high16 v1, 0x4240

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Lcom/twidroid/ui/a/am;->B:I

    iget v1, p0, Lcom/twidroid/ui/a/am;->B:I

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/twidroid/ui/a/am;->P:I

    iget-object v1, p0, Lcom/twidroid/ui/a/am;->J:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->i()Z

    move-result v1

    iput-boolean v1, p0, Lcom/twidroid/ui/a/am;->C:Z

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/twidroid/ui/a/am;->b(Lcom/twidroid/ui/themes/r;)V

    new-instance v1, Lcom/twidroid/ui/a/am$1;

    invoke-direct {v1, p0}, Lcom/twidroid/ui/a/am$1;-><init>(Lcom/twidroid/ui/a/am;)V

    iput-object v1, p0, Lcom/twidroid/ui/a/am;->n:Landroid/text/util/Linkify$TransformFilter;

    iget-object v1, p0, Lcom/twidroid/ui/a/am;->J:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->bJ()Z

    move-result v1

    if-eqz v1, :cond_163

    const/4 v1, 0x2

    :goto_b8
    iget-object v4, p0, Lcom/twidroid/ui/a/am;->J:Lcom/twidroid/d/v;

    invoke-virtual {v4}, Lcom/twidroid/d/v;->bK()Z

    move-result v4

    if-eqz v4, :cond_c1

    move v2, v3

    :cond_c1
    add-int/2addr v1, v2

    iput v1, p0, Lcom/twidroid/ui/a/am;->q:I

    iget-object v1, p0, Lcom/twidroid/ui/a/am;->J:Lcom/twidroid/d/v;

    invoke-virtual {v1}, Lcom/twidroid/d/v;->bZ()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twidroid/ui/a/am;->Z:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c016d

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/a/am;->o:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0c02fa

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twidroid/ui/a/am;->t:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0c02fb

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twidroid/ui/a/am;->u:Ljava/lang/String;

    const/high16 v0, 0x40c0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Lcom/twidroid/ui/a/am;->z:I

    invoke-static {}, Lcom/twidroid/net/n;->a()Lcom/twidroid/net/n;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/a/am;->N:Lcom/twidroid/net/n;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/a/am;->Q:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/a/am;->R:I

    return-void

    :cond_163
    move v1, v2

    goto/16 :goto_b8
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILandroid/text/style/ForegroundColorSpan;Landroid/text/style/StyleSpan;)Landroid/text/Spannable;
    .registers 11

    const/16 v5, 0x21

    const/4 v2, 0x0

    if-nez p0, :cond_7

    const-string p0, ""

    :cond_7
    if-eqz p1, :cond_67

    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    :goto_25
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, p2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-interface {v0, v1, v2, v3, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    if-nez p0, :cond_77

    move v1, v2

    :goto_34
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v0, v3, v2, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {v0, p3, v2, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {v0, p4, v2, v1, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v4

    if-gt v3, v4, :cond_66

    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f333333

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-interface {v0, v3, v1, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v3, Lcom/ubermedia/ui/widgets/VerticalAdjustmentSpan;

    invoke-direct {v3, v2}, Lcom/ubermedia/ui/widgets/VerticalAdjustmentSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v2

    invoke-interface {v0, v3, v1, v2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_66
    :goto_66
    return-object v0

    :cond_67
    if-eqz p0, :cond_6f

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_25

    :cond_6f
    new-instance v0, Landroid/text/SpannableString;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_66

    :cond_77
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_34
.end method

.method private a()V
    .registers 8

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;

    const-string v2, "TweetAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/CommunicationEntity;->l()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/CommunicationEntity;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_56
    return-void
.end method

.method private a(Ljava/util/ArrayList;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 11

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ubermedia/model/twitter/UrlEntity;

    invoke-virtual {v0}, Lcom/ubermedia/model/twitter/UrlEntity;->f()I

    move-result v4

    invoke-virtual {p3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Lcom/ubermedia/model/twitter/UrlEntity;->f()I

    move-result v1

    invoke-virtual {v0}, Lcom/ubermedia/model/twitter/UrlEntity;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    new-instance v4, Lcom/ubermedia/ui/MyURLSpan;

    invoke-virtual {v0}, Lcom/ubermedia/model/twitter/UrlEntity;->c()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/ubermedia/ui/MyURLSpan;-><init>(Ljava/lang/String;Lcom/ubermedia/ui/c;)V

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v4, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0}, Lcom/ubermedia/model/twitter/UrlEntity;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_b

    :cond_4b
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(ZLandroid/view/View;Lcom/twidroid/ui/a/ao;Landroid/view/View;Lcom/twidroid/model/twitter/DirectMessage;Ljava/lang/String;)V
    .registers 16

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_180

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    iget-boolean v0, v0, Lcom/twidroid/ui/themes/r;->aB:Z

    if-eqz v0, :cond_157

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    iget-boolean v0, v0, Lcom/twidroid/ui/themes/r;->au:Z

    if-eqz v0, :cond_157

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->J:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->cd()Z

    move-result v0

    if-eqz v0, :cond_140

    iget-object v8, p3, Lcom/twidroid/ui/a/ao;->j:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/twidroid/ui/b/b;

    sget v1, Lcom/twidroid/ui/a/am;->i:I

    const/4 v2, 0x3

    const/4 v3, -0x1

    iget v4, p0, Lcom/twidroid/ui/a/am;->X:I

    iget v5, p0, Lcom/twidroid/ui/a/am;->X:I

    iget v6, p0, Lcom/twidroid/ui/a/am;->F:I

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/twidroid/ui/b/b;-><init>(IIIIIIZ)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3c
    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->k:Z

    if-eqz v0, :cond_42

    if-eqz p1, :cond_42

    :cond_42
    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "all"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    const-string v0, "onlymentionsdm"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ee

    :cond_59
    iget-object v1, p3, Lcom/twidroid/ui/a/ao;->k:Landroid/widget/ImageView;

    iget-boolean v0, p5, Lcom/twidroid/model/twitter/DirectMessage;->E:Z

    if-eqz v0, :cond_1eb

    const/16 v0, 0x8

    :goto_61
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_64
    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;

    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p5}, Lcom/twidroid/model/twitter/DirectMessage;->m()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p5, p3, v0}, Lcom/twidroid/ui/a/am;->a(Lcom/twidroid/model/twitter/CommunicationEntity;Lcom/twidroid/ui/a/ao;Z)V

    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->m:Z

    if-eqz v0, :cond_1f7

    iget-object v0, p5, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;

    if-eqz v0, :cond_1f7

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;

    iget-object v1, p5, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p5, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/twidroid/ui/a/am;->q:I

    iget-object v4, p0, Lcom/twidroid/ui/a/am;->r:Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/twidroid/ui/a/am;->s:Landroid/text/style/StyleSpan;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/twidroid/ui/a/am;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/text/style/ForegroundColorSpan;Landroid/text/style/StyleSpan;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a4
    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;

    invoke-virtual {p5}, Lcom/twidroid/model/twitter/DirectMessage;->o()Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;

    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p5}, Lcom/twidroid/model/twitter/DirectMessage;->m()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setTag(Ljava/lang/Object;)V

    iget-wide v0, p0, Lcom/twidroid/ui/a/am;->V:J

    invoke-virtual {p5}, Lcom/twidroid/model/twitter/DirectMessage;->m()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_20b

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->i:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_cb
    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;

    sget-object v1, Lcom/twidroid/b/a/b;->o:Ljava/util/regex/Pattern;

    sget-object v2, Lcom/twidroid/d/k;->a:Ljava/util/regex/Pattern;

    const-string v3, "twitter://com.twidroid.TwidroidProfile/"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/twidroid/ui/a/am;->n:Landroid/text/util/Linkify$TransformFilter;

    invoke-static/range {v0 .. v5}, Lcom/ubermedia/ui/b;->b(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :try_start_d9
    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->k:Z

    if-eqz v0, :cond_115

    iget-object v1, p3, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Lcom/twidroid/model/twitter/DirectMessage;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5}, Lcom/twidroid/model/twitter/DirectMessage;->d()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x48

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->N:Lcom/twidroid/net/n;

    invoke-virtual {v0}, Lcom/twidroid/net/n;->b()Z

    move-result v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/twidroid/ui/a;->a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZZ)Z

    move-result v0

    if-nez v0, :cond_115

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_115
    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->g:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p3, Lcom/twidroid/ui/a/ao;->h:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->b:Z

    if-eqz v0, :cond_214

    invoke-virtual {p5}, Lcom/twidroid/model/twitter/DirectMessage;->l()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ubermedia/b/a/k;->c(J)Ljava/lang/String;

    move-result-object v0

    :goto_12a
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_12d} :catch_21e

    :goto_12d
    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->k:Z

    if-nez v0, :cond_13f

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_13f
    return-void

    :cond_140
    iget-object v8, p3, Lcom/twidroid/ui/a/ao;->j:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/twidroid/ui/b/b;

    sget v1, Lcom/twidroid/ui/a/am;->i:I

    const/4 v2, 0x3

    const/4 v3, -0x1

    iget v4, p0, Lcom/twidroid/ui/a/am;->D:I

    iget v5, p0, Lcom/twidroid/ui/a/am;->D:I

    iget v6, p0, Lcom/twidroid/ui/a/am;->F:I

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/twidroid/ui/b/b;-><init>(IIIIIIZ)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3c

    :cond_157
    iget-object v0, p0, Lcom/twidroid/ui/a/am;->J:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->cd()Z

    move-result v0

    if-eqz v0, :cond_16f

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    instance-of v0, v0, Lcom/twidroid/ui/themes/a;

    if-nez v0, :cond_16f

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    instance-of v0, v0, Lcom/twidroid/ui/themes/a;

    if-nez v0, :cond_175

    sget-boolean v0, Lcom/twidroid/ui/themes/r;->aQ:Z

    if-eqz v0, :cond_175

    :cond_16f
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_3c

    :cond_175
    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/r;->N()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3c

    :cond_180
    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    iget-boolean v0, v0, Lcom/twidroid/ui/themes/r;->aB:Z

    if-eqz v0, :cond_1c2

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    iget-boolean v0, v0, Lcom/twidroid/ui/themes/r;->au:Z

    if-eqz v0, :cond_1c2

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->J:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->cd()Z

    move-result v0

    if-eqz v0, :cond_1ab

    iget-object v8, p3, Lcom/twidroid/ui/a/ao;->j:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/twidroid/ui/b/b;

    sget v1, Lcom/twidroid/ui/a/am;->i:I

    const/4 v2, 0x3

    const/4 v3, -0x1

    iget v4, p0, Lcom/twidroid/ui/a/am;->E:I

    iget v5, p0, Lcom/twidroid/ui/a/am;->E:I

    iget v6, p0, Lcom/twidroid/ui/a/am;->F:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/twidroid/ui/b/b;-><init>(IIIIIIZ)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3c

    :cond_1ab
    iget-object v8, p3, Lcom/twidroid/ui/a/ao;->j:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/twidroid/ui/b/b;

    sget v1, Lcom/twidroid/ui/a/am;->i:I

    const/4 v2, 0x3

    const/4 v3, -0x1

    iget v4, p0, Lcom/twidroid/ui/a/am;->D:I

    iget v5, p0, Lcom/twidroid/ui/a/am;->D:I

    iget v6, p0, Lcom/twidroid/ui/a/am;->F:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/twidroid/ui/b/b;-><init>(IIIIIIZ)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3c

    :cond_1c2
    iget-object v0, p0, Lcom/twidroid/ui/a/am;->J:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->cd()Z

    move-result v0

    if-eqz v0, :cond_1da

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    instance-of v0, v0, Lcom/twidroid/ui/themes/a;

    if-nez v0, :cond_1da

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    instance-of v0, v0, Lcom/twidroid/ui/themes/a;

    if-nez v0, :cond_1e0

    sget-boolean v0, Lcom/twidroid/ui/themes/r;->aQ:Z

    if-eqz v0, :cond_1e0

    :cond_1da
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_3c

    :cond_1e0
    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/r;->P()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3c

    :cond_1eb
    const/4 v0, 0x0

    goto/16 :goto_61

    :cond_1ee
    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_64

    :cond_1f7
    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;

    iget-object v1, p5, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/twidroid/ui/a/am;->q:I

    iget-object v4, p0, Lcom/twidroid/ui/a/am;->r:Landroid/text/style/ForegroundColorSpan;

    iget-object v5, p0, Lcom/twidroid/ui/a/am;->s:Landroid/text/style/StyleSpan;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/twidroid/ui/a/am;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/text/style/ForegroundColorSpan;Landroid/text/style/StyleSpan;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a4

    :cond_20b
    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_cb

    :cond_214
    :try_start_214
    invoke-virtual {p5}, Lcom/twidroid/model/twitter/DirectMessage;->l()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ubermedia/b/a/k;->b(J)Ljava/lang/String;
    :try_end_21b
    .catch Ljava/lang/Exception; {:try_start_214 .. :try_end_21b} :catch_21e

    move-result-object v0

    goto/16 :goto_12a

    :catch_21e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12d
.end method

.method private a(ZLandroid/view/View;Lcom/twidroid/ui/a/ao;Landroid/view/View;Lcom/twidroid/model/twitter/Tweet;Ljava/lang/String;)V
    .registers 16

    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->k:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-direct {p0, v0, p3, p5}, Lcom/twidroid/ui/a/am;->a(ZLcom/twidroid/ui/a/ao;Lcom/twidroid/model/twitter/CommunicationEntity;)V

    :cond_8
    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    iget-boolean v0, v0, Lcom/twidroid/ui/themes/r;->aB:Z

    if-eqz v0, :cond_16e

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    iget-boolean v0, v0, Lcom/twidroid/ui/themes/r;->au:Z

    if-eqz v0, :cond_16e

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->J:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->cd()Z

    move-result v0

    if-eqz v0, :cond_13e

    if-eqz p1, :cond_10e

    iget-object v8, p3, Lcom/twidroid/ui/a/ao;->j:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/twidroid/ui/b/b;

    sget v1, Lcom/twidroid/ui/a/am;->i:I

    const/4 v2, 0x3

    const/4 v3, -0x1

    iget v4, p0, Lcom/twidroid/ui/a/am;->X:I

    iget v5, p0, Lcom/twidroid/ui/a/am;->X:I

    iget v6, p0, Lcom/twidroid/ui/a/am;->F:I

    iget-boolean v7, p0, Lcom/twidroid/ui/a/am;->aa:Z

    invoke-direct/range {v0 .. v7}, Lcom/twidroid/ui/b/b;-><init>(IIIIIIZ)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_34
    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->p:Landroid/view/View;

    if-eqz v0, :cond_3f

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3f
    iget-object v1, p3, Lcom/twidroid/ui/a/ao;->h:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->b:Z

    if-eqz v0, :cond_1ae

    iget-wide v2, p5, Lcom/twidroid/model/twitter/Tweet;->w:J

    invoke-static {v2, v3}, Lcom/ubermedia/b/a/k;->c(J)Ljava/lang/String;

    move-result-object v0

    :goto_4b
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p5, p3, v0}, Lcom/twidroid/ui/a/am;->a(Lcom/twidroid/model/twitter/CommunicationEntity;Lcom/twidroid/ui/a/ao;Z)V

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-wide v0, p5, Lcom/twidroid/model/twitter/Tweet;->ao:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1cd

    iget-object v1, p3, Lcom/twidroid/ui/a/ao;->g:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/twidroid/ui/a/am;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->m:Z

    if-eqz v0, :cond_1b6

    iget-object v0, p5, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    if-eqz v0, :cond_1b6

    iget-object v0, p5, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b6

    iget-object v0, p5, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    :goto_7f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->g:Landroid/widget/TextView;

    const v1, 0x7f020147

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_95
    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->k:Z

    if-eqz v0, :cond_e0

    iget-object v1, p3, Lcom/twidroid/ui/a/ao;->l:Landroid/widget/ImageView;

    iget-boolean v0, p5, Lcom/twidroid/model/twitter/Tweet;->aA:Z

    if-eqz v0, :cond_287

    const/4 v0, 0x0

    :goto_a0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p3, Lcom/twidroid/ui/a/ao;->f:Landroid/widget/ImageView;

    iget-boolean v0, p5, Lcom/twidroid/model/twitter/Tweet;->au:Z

    if-eqz v0, :cond_28b

    const/16 v0, 0x8

    :goto_ab
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "all"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c2

    iget-boolean v0, p5, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    if-eqz v0, :cond_291

    const-string v0, "onlymentionsdm"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_291

    :cond_c2
    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->Y:Z

    if-eqz v0, :cond_291

    iget-object v1, p3, Lcom/twidroid/ui/a/ao;->k:Landroid/widget/ImageView;

    iget-boolean v0, p5, Lcom/twidroid/model/twitter/Tweet;->E:Z

    if-eqz v0, :cond_28e

    const/16 v0, 0x8

    :goto_ce
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_d1
    iget-wide v0, p5, Lcom/twidroid/model/twitter/Tweet;->x:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/a/am;->U:Ljava/lang/Long;

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twidroid/ui/a/am;->U:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_e0
    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->k:Z

    if-eqz v0, :cond_f4

    if-eqz p1, :cond_f4

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f4
    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->k:Z

    if-nez v0, :cond_10d

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->l:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_10d
    return-void

    :cond_10e
    iget-boolean v0, p5, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    if-eqz v0, :cond_128

    iget-object v7, p3, Lcom/twidroid/ui/a/ao;->j:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/twidroid/ui/b/b;

    sget v1, Lcom/twidroid/ui/a/am;->i:I

    const/4 v2, 0x3

    const/4 v3, -0x1

    iget v4, p0, Lcom/twidroid/ui/a/am;->W:I

    iget v5, p0, Lcom/twidroid/ui/a/am;->W:I

    iget v6, p0, Lcom/twidroid/ui/a/am;->F:I

    invoke-direct/range {v0 .. v6}, Lcom/twidroid/ui/b/b;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_34

    :cond_128
    iget-object v7, p3, Lcom/twidroid/ui/a/ao;->j:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/twidroid/ui/b/b;

    sget v1, Lcom/twidroid/ui/a/am;->i:I

    const/4 v2, 0x3

    const/4 v3, -0x1

    iget v4, p0, Lcom/twidroid/ui/a/am;->D:I

    iget v5, p0, Lcom/twidroid/ui/a/am;->D:I

    iget v6, p0, Lcom/twidroid/ui/a/am;->F:I

    invoke-direct/range {v0 .. v6}, Lcom/twidroid/ui/b/b;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_34

    :cond_13e
    if-eqz p1, :cond_158

    iget-object v8, p3, Lcom/twidroid/ui/a/ao;->j:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/twidroid/ui/b/b;

    sget v1, Lcom/twidroid/ui/a/am;->i:I

    const/4 v2, 0x3

    const/4 v3, -0x1

    iget v4, p0, Lcom/twidroid/ui/a/am;->D:I

    iget v5, p0, Lcom/twidroid/ui/a/am;->D:I

    iget v6, p0, Lcom/twidroid/ui/a/am;->F:I

    iget-boolean v7, p0, Lcom/twidroid/ui/a/am;->aa:Z

    invoke-direct/range {v0 .. v7}, Lcom/twidroid/ui/b/b;-><init>(IIIIIIZ)V

    invoke-virtual {v8, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_34

    :cond_158
    iget-object v7, p3, Lcom/twidroid/ui/a/ao;->j:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/twidroid/ui/b/b;

    sget v1, Lcom/twidroid/ui/a/am;->i:I

    const/4 v2, 0x3

    const/4 v3, -0x1

    iget v4, p0, Lcom/twidroid/ui/a/am;->D:I

    iget v5, p0, Lcom/twidroid/ui/a/am;->D:I

    iget v6, p0, Lcom/twidroid/ui/a/am;->F:I

    invoke-direct/range {v0 .. v6}, Lcom/twidroid/ui/b/b;-><init>(IIIIII)V

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_34

    :cond_16e
    iget-object v0, p0, Lcom/twidroid/ui/a/am;->J:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->cd()Z

    move-result v0

    if-eqz v0, :cond_186

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    instance-of v0, v0, Lcom/twidroid/ui/themes/a;

    if-nez v0, :cond_186

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    instance-of v0, v0, Lcom/twidroid/ui/themes/a;

    if-nez v0, :cond_18c

    sget-boolean v0, Lcom/twidroid/ui/themes/r;->aQ:Z

    if-eqz v0, :cond_18c

    :cond_186
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_34

    :cond_18c
    if-eqz p1, :cond_199

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/r;->N()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_34

    :cond_199
    iget-boolean v0, p5, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    if-eqz v0, :cond_1a8

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v0}, Lcom/twidroid/ui/themes/r;->O()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_34

    :cond_1a8
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_34

    :cond_1ae
    iget-wide v2, p5, Lcom/twidroid/model/twitter/Tweet;->w:J

    invoke-static {v2, v3}, Lcom/ubermedia/b/a/k;->b(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4b

    :cond_1b6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p5, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7f

    :cond_1cd
    invoke-virtual {p5}, Lcom/twidroid/model/twitter/Tweet;->c()Z

    move-result v0

    if-eqz v0, :cond_1e7

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->g:Landroid/widget/TextView;

    iget-object v1, p5, Lcom/twidroid/model/twitter/Tweet;->an:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->g:Landroid/widget/TextView;

    const v1, 0x7f02013f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_95

    :cond_1e7
    invoke-virtual {p5}, Lcom/twidroid/model/twitter/Tweet;->b()Z

    move-result v0

    if-eqz v0, :cond_21a

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p5, Lcom/twidroid/model/twitter/Tweet;->al:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p5, Lcom/twidroid/model/twitter/Tweet;->al:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->g:Landroid/widget/TextView;

    const v1, 0x7f02013f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_95

    :cond_21a
    iget-object v0, p0, Lcom/twidroid/ui/a/am;->J:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->z()Z

    move-result v0

    if-eqz v0, :cond_27e

    iget-object v1, p3, Lcom/twidroid/ui/a/ao;->g:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2022 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p5, Lcom/twidroid/model/twitter/Tweet;->ak:Ljava/lang/String;

    if-eqz v0, :cond_23d

    iget-object v0, p5, Lcom/twidroid/model/twitter/Tweet;->ak:Ljava/lang/String;

    const-string v3, "null"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_268

    :cond_23d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/twidroid/ui/a/am;->t:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p5, Lcom/twidroid/model/twitter/Tweet;->ai:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_252
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_95

    :cond_268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/twidroid/ui/a/am;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p5, Lcom/twidroid/model/twitter/Tweet;->ak:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_252

    :cond_27e
    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_95

    :cond_287
    const/16 v0, 0x8

    goto/16 :goto_a0

    :cond_28b
    const/4 v0, 0x0

    goto/16 :goto_ab

    :cond_28e
    const/4 v0, 0x0

    goto/16 :goto_ce

    :cond_291
    iget-object v0, p3, Lcom/twidroid/ui/a/ao;->k:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d1
.end method

.method private a(ZLcom/twidroid/ui/a/ao;Lcom/twidroid/model/twitter/CommunicationEntity;)V
    .registers 12

    iget-object v0, p2, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p3}, Lcom/twidroid/model/twitter/CommunicationEntity;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/twidroid/model/twitter/CommunicationEntity;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/twidroid/ui/a/am;->T:Lcom/twidroid/net/b/f;

    if-eqz v1, :cond_1c

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->T:Lcom/twidroid/net/b/f;

    iget-object v1, p2, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v3, v1}, Lcom/twidroid/net/b/f;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_ac

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_ac

    :try_start_46
    iget-object v2, p2, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v2, p2, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x9ba3c0

    sub-long/2addr v4, v6

    cmp-long v1, v1, v4

    if-gez v1, :cond_1b

    iget-object v1, p2, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x48

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->N:Lcom/twidroid/net/n;

    invoke-virtual {v0}, Lcom/twidroid/net/n;->b()Z

    move-result v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/twidroid/ui/a;->a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZZ)Z
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_8a} :catch_8b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_46 .. :try_end_8a} :catch_9b

    goto :goto_1b

    :catch_8b
    move-exception v0

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p2, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1b

    :catch_9b
    move-exception v0

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    iget-object v0, p2, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1b

    :cond_ac
    iget-object v1, p2, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x48

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->N:Lcom/twidroid/net/n;

    invoke-virtual {v0}, Lcom/twidroid/net/n;->b()Z

    move-result v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/twidroid/ui/a;->a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZZ)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p2, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1b
.end method


# virtual methods
.method protected a(Landroid/view/View;)Lcom/twidroid/ui/a/ao;
    .registers 9

    const/4 v6, 0x0

    const/16 v2, 0x8

    const/4 v5, 0x1

    new-instance v1, Lcom/twidroid/ui/a/ao;

    invoke-direct {v1}, Lcom/twidroid/ui/a/ao;-><init>()V

    const v0, 0x7f090108

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/twidroid/ui/a/ao;->b:Landroid/view/View;

    const v0, 0x7f090101

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;

    iput-object v0, v1, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;

    const v0, 0x7f09008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;

    const v0, 0x7f090140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/twidroid/ui/a/ao;->i:Landroid/view/View;

    const v0, 0x7f090141

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/twidroid/ui/a/ao;->g:Landroid/widget/TextView;

    const v0, 0x7f09013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/twidroid/ui/a/ao;->h:Landroid/widget/TextView;

    const v0, 0x7f09013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v1, Lcom/twidroid/ui/a/ao;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f090138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/twidroid/ui/a/ao;->k:Landroid/widget/ImageView;

    const v0, 0x7f09013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/twidroid/ui/a/ao;->l:Landroid/widget/ImageView;

    const v0, 0x7f09013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/twidroid/ui/a/ao;->m:Landroid/widget/ImageView;

    const v0, 0x7f090139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/twidroid/ui/a/ao;->f:Landroid/widget/ImageView;

    const v0, 0x7f090040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;

    const v0, 0x7f090137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/twidroid/ui/a/ao;->n:Landroid/view/View;

    const v0, 0x7f09013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/twidroid/ui/a/ao;->o:Landroid/view/View;

    const v0, 0x7f09013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/twidroid/ui/a/ao;->p:Landroid/view/View;

    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->k:Z

    if-nez v0, :cond_ba

    iget-object v0, v1, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_b1

    iget-object v0, v1, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b1
    iget-object v0, v1, Lcom/twidroid/ui/a/ao;->p:Landroid/view/View;

    if-eqz v0, :cond_ba

    iget-object v0, v1, Lcom/twidroid/ui/a/ao;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_ba
    iget-object v0, v1, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;

    iget v2, p0, Lcom/twidroid/ui/a/am;->l:I

    int-to-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v1, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;

    iget v2, p0, Lcom/twidroid/ui/a/am;->l:I

    int-to-float v2, v2

    invoke-virtual {v0, v5, v2}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setTextSize(IF)V

    iget-object v0, v1, Lcom/twidroid/ui/a/ao;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    iget v2, v2, Lcom/twidroid/ui/themes/r;->aF:I

    int-to-float v2, v2

    iget v3, p0, Lcom/twidroid/ui/a/am;->l:I

    int-to-float v3, v3

    const/high16 v4, 0x4170

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v1, Lcom/twidroid/ui/a/ao;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    iget v2, v2, Lcom/twidroid/ui/themes/r;->aF:I

    int-to-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, v1, Lcom/twidroid/ui/a/ao;->h:Landroid/widget/TextView;

    iget v2, p0, Lcom/twidroid/ui/a/am;->A:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Lcom/twidroid/ui/a/ao;->g:Landroid/widget/TextView;

    iget v2, p0, Lcom/twidroid/ui/a/am;->A:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v1, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;

    iget v2, p0, Lcom/twidroid/ui/a/am;->x:I

    invoke-virtual {v0, v2}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setLinkTextColor(I)V

    iget-object v0, v1, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;

    iget v2, p0, Lcom/twidroid/ui/a/am;->H:I

    invoke-virtual {v0, v2}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setTextColor(I)V

    iget-object v0, v1, Lcom/twidroid/ui/a/ao;->g:Landroid/widget/TextView;

    iget v2, p0, Lcom/twidroid/ui/a/am;->q:I

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v0, v1, Lcom/twidroid/ui/a/ao;->h:Landroid/widget/TextView;

    iget v2, p0, Lcom/twidroid/ui/a/am;->q:I

    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-object v1
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Long;
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_2e

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_2a

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/CommunicationEntity;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_29
    return-object v0

    :cond_2a
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_2e
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public a(Ljava/lang/Class;Z)Ljava/lang/Long;
    .registers 6

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_34

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne p1, v2, :cond_30

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iget-boolean v0, v0, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    if-ne v0, p2, :cond_30

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/CommunicationEntity;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2f
    return-object v0

    :cond_30
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_34
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/twidroid/ui/a/am;->p:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/twidroid/ui/a/am;->V:J

    return-void
.end method

.method protected a(Lcom/twidroid/model/twitter/CommunicationEntity;Lcom/twidroid/ui/a/ao;Z)V
    .registers 13

    const/16 v8, 0xc8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/CommunicationEntity;->o()Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/StringUrlSpan;->b()[Landroid/text/style/URLSpan;

    move-result-object v4

    array-length v5, v4

    move v1, v3

    move-object v0, v2

    :goto_f
    if-ge v1, v5, :cond_d7

    aget-object v6, v4, v1

    instance-of v7, v6, Lcom/ubermedia/ui/StringSpanInfo;

    if-eqz v7, :cond_a8

    invoke-virtual {v6}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/twidroid/d/m;->a(Ljava/lang/String;I)Lcom/twidroid/d/n;

    move-result-object v0

    sget-object v6, Lcom/twidroid/d/m;->z:Lcom/twidroid/d/n;

    if-eq v0, v6, :cond_a8

    invoke-virtual {v0}, Lcom/twidroid/d/n;->b()Ljava/lang/String;

    move-result-object v1

    :goto_27
    if-nez v1, :cond_5c

    sget-object v4, Lcom/ubermedia/ui/b;->p:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/CommunicationEntity;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    :cond_33
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/twidroid/d/m;->a(Ljava/lang/String;I)Lcom/twidroid/d/n;

    move-result-object v0

    sget-object v5, Lcom/twidroid/d/m;->z:Lcom/twidroid/d/n;

    if-eq v0, v5, :cond_33

    invoke-virtual {v0}, Lcom/twidroid/d/n;->f()Ljava/lang/String;

    move-result-object v1

    :cond_5c
    if-eqz v1, :cond_b5

    iget-boolean v4, p0, Lcom/twidroid/ui/a/am;->k:Z

    if-eqz v4, :cond_b5

    iget-object v4, p2, Lcom/twidroid/ui/a/ao;->m:Landroid/widget/ImageView;

    const v5, 0x7f020191

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p2, Lcom/twidroid/ui/a/ao;->p:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p2, Lcom/twidroid/ui/a/ao;->m:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/twidroid/ui/a/am;->T:Lcom/twidroid/net/b/f;

    if-eqz v4, :cond_ac

    const-string v1, "TweetAdapter"

    const-string v2, "Using ImageFetcher for preview."

    invoke-static {v1, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/twidroid/ui/a/am;->T:Lcom/twidroid/net/b/f;

    invoke-virtual {v0}, Lcom/twidroid/d/n;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p2, Lcom/twidroid/ui/a/ao;->m:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcom/twidroid/net/b/f;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    :goto_8a
    iget-object v0, p2, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p2, Lcom/twidroid/ui/a/ao;->p:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p2, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p2, Lcom/twidroid/ui/a/ao;->h:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a7
    :goto_a7
    return-void

    :cond_a8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_f

    :cond_ac
    new-instance v0, Lcom/twidroid/ui/a/am$2;

    invoke-direct {v0, p0, p2}, Lcom/twidroid/ui/a/am$2;-><init>(Lcom/twidroid/ui/a/am;Lcom/twidroid/ui/a/ao;)V

    invoke-static {v1, v2, v0}, Lcom/twidroid/net/k;->a(Ljava/lang/String;Lcom/twidroid/net/j;Lcom/twidroid/net/l;)V

    goto :goto_8a

    :cond_b5
    iget-object v0, p2, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p2, Lcom/twidroid/ui/a/ao;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p2, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p2, Lcom/twidroid/ui/a/ao;->p:Landroid/view/View;

    if-eqz v0, :cond_a7

    iget-object v0, p2, Lcom/twidroid/ui/a/ao;->p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a7

    :cond_d7
    move-object v1, v2

    goto/16 :goto_27
.end method

.method public a(Lcom/twidroid/model/twitter/Tweet;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/twidroid/net/b/f;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/a/am;->T:Lcom/twidroid/net/b/f;

    return-void
.end method

.method public a(Lcom/twidroid/ui/a/an;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/a/am;->v:Lcom/twidroid/ui/a/an;

    return-void
.end method

.method protected a(Lcom/twidroid/ui/themes/r;)V
    .registers 4

    invoke-virtual {p1}, Lcom/twidroid/ui/themes/r;->q()I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/a/am;->y:I

    invoke-virtual {p1}, Lcom/twidroid/ui/themes/r;->E()I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/a/am;->G:I

    invoke-virtual {p1}, Lcom/twidroid/ui/themes/r;->o()I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/a/am;->A:I

    invoke-virtual {p1}, Lcom/twidroid/ui/themes/r;->p()I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/a/am;->x:I

    invoke-virtual {p1}, Lcom/twidroid/ui/themes/r;->D()I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/a/am;->H:I

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Lcom/twidroid/ui/a/am;->G:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/twidroid/ui/a/am;->r:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Lcom/twidroid/ui/themes/r;->H()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/a/am;->b(Z)Lcom/twidroid/ui/a/am;

    iget v0, p1, Lcom/twidroid/ui/themes/r;->an:I

    iput v0, p0, Lcom/twidroid/ui/a/am;->W:I

    iget v0, p1, Lcom/twidroid/ui/themes/r;->am:I

    iput v0, p0, Lcom/twidroid/ui/a/am;->D:I

    iget v0, p1, Lcom/twidroid/ui/themes/r;->ao:I

    iput v0, p0, Lcom/twidroid/ui/a/am;->E:I

    iget v0, p1, Lcom/twidroid/ui/themes/r;->ap:I

    iput v0, p0, Lcom/twidroid/ui/a/am;->X:I

    iget v0, p1, Lcom/twidroid/ui/themes/r;->aq:I

    iput v0, p0, Lcom/twidroid/ui/a/am;->F:I

    invoke-virtual {p1}, Lcom/twidroid/ui/themes/r;->M()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/a/am;->I:Landroid/graphics/drawable/StateListDrawable;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 6

    const/4 v3, 0x0

    if-nez p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;

    iget-object v2, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_11

    :cond_2b
    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_9
.end method

.method public a(Ljava/util/List;ZZ)V
    .registers 7

    if-eqz p1, :cond_4b

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_14

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_14
    if-eqz p2, :cond_4b

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1f
    if-lez v1, :cond_2b

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/twidroid/model/twitter/Tweet;

    if-eqz v0, :cond_47

    :cond_2b
    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_4b

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3d
    if-le v0, v1, :cond_4b

    iget-object v2, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_3d

    :cond_47
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1f

    :cond_4b
    const-string v0, "TweetAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total list size now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)Lcom/twidroid/ui/a/am;
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/ui/a/am;->K:Z

    return-object p0
.end method

.method public b(Ljava/lang/Class;)Ljava/lang/Long;
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2d

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_29

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/CommunicationEntity;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_28
    return-object v0

    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2d
    const/4 v0, 0x0

    goto :goto_28
.end method

.method public b(Ljava/lang/Class;Z)Ljava/lang/Long;
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne p1, v2, :cond_2f

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iget-boolean v0, v0, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    if-ne v0, p2, :cond_2f

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/CommunicationEntity;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_33
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public b(Lcom/twidroid/ui/themes/r;)V
    .registers 4

    invoke-virtual {p1}, Lcom/twidroid/ui/themes/r;->u()Landroid/text/style/ForegroundColorSpan;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/a/am;->r:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Lcom/twidroid/ui/themes/r;->t()Landroid/text/style/StyleSpan;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/ui/a/am;->s:Landroid/text/style/StyleSpan;

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->J:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twidroid/ui/a/am;->b:Z

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->J:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->at()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twidroid/ui/a/am;->m:Z

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->J:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->x()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twidroid/ui/a/am;->k:Z

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->J:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->az()I

    move-result v0

    iput v0, p0, Lcom/twidroid/ui/a/am;->l:I

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->J:Lcom/twidroid/d/v;

    invoke-virtual {v0}, Lcom/twidroid/d/v;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    const/4 v0, 0x1

    :goto_3b
    iput-boolean v0, p0, Lcom/twidroid/ui/a/am;->K:Z

    invoke-virtual {p0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V

    return-void

    :cond_41
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method public b(Ljava/util/List;)V
    .registers 5

    if-nez p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;

    iget-object v2, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method public c()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V

    return-void
.end method

.method public c(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twidroid/ui/a/am;->Y:Z

    return-void
.end method

.method public d()Ljava/lang/Long;
    .registers 2

    const-class v0, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/a/am;->a(Ljava/lang/Class;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/twidroid/ui/a/am;->a(Ljava/util/List;ZZ)V

    return-void
.end method

.method public e()Ljava/lang/Long;
    .registers 2

    const-class v0, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {p0, v0}, Lcom/twidroid/ui/a/am;->b(Ljava/lang/Class;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/twidroid/ui/a/am;->p:I

    return v0
.end method

.method public g()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;

    iget-wide v0, v0, Lcom/twidroid/model/twitter/CommunicationEntity;->x:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/am;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return v2

    :cond_9
    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/am;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/twidroid/model/TimelineGap;

    if-eqz v0, :cond_13

    const/4 v2, 0x3

    goto :goto_8

    :cond_13
    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/am;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/twidroid/model/twitter/Tweet;

    if-eqz v0, :cond_3e

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/am;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    iget-boolean v3, p0, Lcom/twidroid/ui/a/am;->aa:Z

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/twidroid/ui/a/am;->L:Lcom/twidroid/b/a/b;

    iget-wide v4, v0, Lcom/twidroid/model/twitter/Tweet;->C:J

    invoke-virtual {v3, v4, v5}, Lcom/twidroid/b/a/b;->e(J)Z

    move-result v0

    if-eqz v0, :cond_3c

    move v0, v1

    :goto_30
    iget-boolean v3, p0, Lcom/twidroid/ui/a/am;->k:Z

    if-eqz v3, :cond_56

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->aa:Z

    if-eqz v0, :cond_8

    move v2, v1

    goto :goto_8

    :cond_3c
    move v0, v2

    goto :goto_30

    :cond_3e
    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/am;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;

    iget-boolean v3, p0, Lcom/twidroid/ui/a/am;->aa:Z

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/twidroid/ui/a/am;->L:Lcom/twidroid/b/a/b;

    iget-wide v4, v0, Lcom/twidroid/model/twitter/DirectMessage;->C:J

    invoke-virtual {v3, v4, v5}, Lcom/twidroid/b/a/b;->e(J)Z

    move-result v0

    if-eqz v0, :cond_54

    move v0, v1

    goto :goto_30

    :cond_54
    move v0, v2

    goto :goto_30

    :cond_56
    const/4 v2, 0x2

    goto :goto_8
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/am;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4a

    if-nez p2, :cond_13

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->O:Landroid/view/LayoutInflater;

    const v1, 0x7f030050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_13
    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/TimelineGap;

    const v1, 0x7f090101

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09010c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/twidroid/model/TimelineGap;->b()Z

    move-result v0

    if-eqz v0, :cond_3e

    const v0, 0x7f0c0137

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_3d
    return-object p2

    :cond_3e
    const v0, 0x7f0c0138

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3d

    :cond_4a
    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/am;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/twidroid/model/twitter/Tweet;

    if-eqz v0, :cond_109

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/am;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/twidroid/ui/a/am;->L:Lcom/twidroid/b/a/b;

    iget-wide v3, v0, Lcom/twidroid/model/twitter/Tweet;->C:J

    invoke-virtual {v1, v3, v4}, Lcom/twidroid/b/a/b;->e(J)Z

    move-result v1

    move v7, v2

    move-object v8, v0

    :goto_64
    if-nez p2, :cond_142

    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/am;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_270

    :goto_6d
    invoke-virtual {p0, p2}, Lcom/twidroid/ui/a/am;->a(Landroid/view/View;)Lcom/twidroid/ui/a/ao;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, p2

    :goto_75
    iget-object v0, v3, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;

    const/4 v2, 0x0

    iget v6, p0, Lcom/twidroid/ui/a/am;->q:I

    invoke-virtual {v0, v2, v6}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setTypeface(Landroid/graphics/Typeface;I)V

    if-eqz v8, :cond_174

    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->m:Z

    if-eqz v0, :cond_14c

    iget-object v0, v8, Lcom/twidroid/model/twitter/Tweet;->z:Ljava/lang/String;

    if-eqz v0, :cond_14c

    iget-object v0, v3, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;

    iget-object v2, v8, Lcom/twidroid/model/twitter/Tweet;->z:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v8, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v9, p0, Lcom/twidroid/ui/a/am;->q:I

    iget-object v10, p0, Lcom/twidroid/ui/a/am;->r:Landroid/text/style/ForegroundColorSpan;

    iget-object v11, p0, Lcom/twidroid/ui/a/am;->s:Landroid/text/style/StyleSpan;

    invoke-static {v2, v6, v9, v10, v11}, Lcom/twidroid/ui/a/am;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/text/style/ForegroundColorSpan;Landroid/text/style/StyleSpan;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_ad
    iget-object v0, v3, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;

    invoke-virtual {v8}, Lcom/twidroid/model/twitter/Tweet;->o()Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;

    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v8}, Lcom/twidroid/model/twitter/Tweet;->m()J

    move-result-wide v9

    invoke-direct {v2, v9, v10}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setTag(Ljava/lang/Object;)V

    :cond_c4
    :goto_c4
    iget-object v0, v3, Lcom/twidroid/ui/a/ao;->p:Landroid/view/View;

    if-eqz v0, :cond_d9

    iget-object v0, v3, Lcom/twidroid/ui/a/ao;->p:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v3, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d9
    if-eqz v7, :cond_1e4

    iget-object v6, p0, Lcom/twidroid/ui/a/am;->Z:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/twidroid/ui/a/am;->a(ZLandroid/view/View;Lcom/twidroid/ui/a/ao;Landroid/view/View;Lcom/twidroid/model/twitter/DirectMessage;Ljava/lang/String;)V

    :goto_e2
    if-eqz v1, :cond_1f2

    iget-object v1, v3, Lcom/twidroid/ui/a/ao;->n:Landroid/view/View;

    new-instance v2, Lcom/twidroid/ui/b/c;

    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->K:Z

    if-eqz v0, :cond_1ee

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    iget v0, v0, Lcom/twidroid/ui/themes/r;->B:I

    :goto_f0
    iget v5, p0, Lcom/twidroid/ui/a/am;->P:I

    invoke-direct {v2, v0, v5}, Lcom/twidroid/ui/b/c;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v3, Lcom/twidroid/ui/a/ao;->o:Landroid/view/View;

    new-instance v1, Lcom/twidroid/ui/b/c;

    iget v2, p0, Lcom/twidroid/ui/a/am;->X:I

    iget v3, p0, Lcom/twidroid/ui/a/am;->P:I

    invoke-direct {v1, v2, v3}, Lcom/twidroid/ui/b/c;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_106
    move-object p2, v4

    goto/16 :goto_3d

    :cond_109
    invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/am;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/twidroid/ui/a/am;->L:Lcom/twidroid/b/a/b;

    iget-wide v4, v0, Lcom/twidroid/model/twitter/DirectMessage;->C:J

    invoke-virtual {v1, v4, v5}, Lcom/twidroid/b/a/b;->e(J)Z

    move-result v1

    move v7, v2

    move-object v5, v0

    move-object v8, v3

    goto/16 :goto_64

    :pswitch_11e
    iget-object v0, p0, Lcom/twidroid/ui/a/am;->O:Landroid/view/LayoutInflater;

    const v2, 0x7f03005b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_6d

    :pswitch_12a
    iget-object v0, p0, Lcom/twidroid/ui/a/am;->O:Landroid/view/LayoutInflater;

    const v2, 0x7f03005c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_6d

    :pswitch_136
    iget-object v0, p0, Lcom/twidroid/ui/a/am;->O:Landroid/view/LayoutInflater;

    const v2, 0x7f03005d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_6d

    :cond_142
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/a/ao;

    move-object v3, v0

    move-object v4, p2

    goto/16 :goto_75

    :cond_14c
    iget-object v0, v3, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v8, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v8, Lcom/twidroid/model/twitter/Tweet;->z:Ljava/lang/String;

    iget v9, p0, Lcom/twidroid/ui/a/am;->q:I

    iget-object v10, p0, Lcom/twidroid/ui/a/am;->r:Landroid/text/style/ForegroundColorSpan;

    iget-object v11, p0, Lcom/twidroid/ui/a/am;->s:Landroid/text/style/StyleSpan;

    invoke-static {v2, v6, v9, v10, v11}, Lcom/twidroid/ui/a/am;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/text/style/ForegroundColorSpan;Landroid/text/style/StyleSpan;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_ad

    :cond_174
    if-eqz v5, :cond_c4

    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->m:Z

    if-eqz v0, :cond_1bd

    iget-object v0, v5, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;

    if-eqz v0, :cond_1bd

    iget-object v0, v3, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;

    iget-object v2, v5, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v5, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v9, p0, Lcom/twidroid/ui/a/am;->q:I

    iget-object v10, p0, Lcom/twidroid/ui/a/am;->r:Landroid/text/style/ForegroundColorSpan;

    iget-object v11, p0, Lcom/twidroid/ui/a/am;->s:Landroid/text/style/StyleSpan;

    invoke-static {v2, v6, v9, v10, v11}, Lcom/twidroid/ui/a/am;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/text/style/ForegroundColorSpan;Landroid/text/style/StyleSpan;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1a4
    iget-object v0, v3, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;

    invoke-virtual {v5}, Lcom/twidroid/model/twitter/DirectMessage;->o()Lcom/twidroid/ui/StringUrlSpan;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v3, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;

    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v5}, Lcom/twidroid/model/twitter/DirectMessage;->m()J

    move-result-wide v9

    invoke-direct {v2, v9, v10}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_c4

    :cond_1bd
    iget-object v0, v3, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v5, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, v5, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;

    iget v9, p0, Lcom/twidroid/ui/a/am;->q:I

    iget-object v10, p0, Lcom/twidroid/ui/a/am;->r:Landroid/text/style/ForegroundColorSpan;

    iget-object v11, p0, Lcom/twidroid/ui/a/am;->s:Landroid/text/style/StyleSpan;

    invoke-static {v2, v6, v9, v10, v11}, Lcom/twidroid/ui/a/am;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/text/style/ForegroundColorSpan;Landroid/text/style/StyleSpan;)Landroid/text/Spannable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a4

    :cond_1e4
    iget-object v6, p0, Lcom/twidroid/ui/a/am;->Z:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p3

    move-object v5, v8

    invoke-direct/range {v0 .. v6}, Lcom/twidroid/ui/a/am;->a(ZLandroid/view/View;Lcom/twidroid/ui/a/ao;Landroid/view/View;Lcom/twidroid/model/twitter/Tweet;Ljava/lang/String;)V

    goto/16 :goto_e2

    :cond_1ee
    iget v0, p0, Lcom/twidroid/ui/a/am;->X:I

    goto/16 :goto_f0

    :cond_1f2
    if-eqz v7, :cond_21b

    iget-object v1, v3, Lcom/twidroid/ui/a/ao;->n:Landroid/view/View;

    new-instance v2, Lcom/twidroid/ui/b/c;

    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->K:Z

    if-eqz v0, :cond_218

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    iget v0, v0, Lcom/twidroid/ui/themes/r;->B:I

    :goto_200
    iget v5, p0, Lcom/twidroid/ui/a/am;->P:I

    invoke-direct {v2, v0, v5}, Lcom/twidroid/ui/b/c;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v3, Lcom/twidroid/ui/a/ao;->o:Landroid/view/View;

    new-instance v1, Lcom/twidroid/ui/b/c;

    iget v2, p0, Lcom/twidroid/ui/a/am;->E:I

    iget v3, p0, Lcom/twidroid/ui/a/am;->P:I

    invoke-direct {v1, v2, v3}, Lcom/twidroid/ui/b/c;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_106

    :cond_218
    iget v0, p0, Lcom/twidroid/ui/a/am;->E:I

    goto :goto_200

    :cond_21b
    iget-boolean v0, v8, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    if-eqz v0, :cond_246

    iget-object v1, v3, Lcom/twidroid/ui/a/ao;->n:Landroid/view/View;

    new-instance v2, Lcom/twidroid/ui/b/c;

    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->K:Z

    if-eqz v0, :cond_243

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    iget v0, v0, Lcom/twidroid/ui/themes/r;->B:I

    :goto_22b
    iget v5, p0, Lcom/twidroid/ui/a/am;->P:I

    invoke-direct {v2, v0, v5}, Lcom/twidroid/ui/b/c;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v3, Lcom/twidroid/ui/a/ao;->o:Landroid/view/View;

    new-instance v1, Lcom/twidroid/ui/b/c;

    iget v2, p0, Lcom/twidroid/ui/a/am;->W:I

    iget v3, p0, Lcom/twidroid/ui/a/am;->P:I

    invoke-direct {v1, v2, v3}, Lcom/twidroid/ui/b/c;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_106

    :cond_243
    iget v0, p0, Lcom/twidroid/ui/a/am;->W:I

    goto :goto_22b

    :cond_246
    iget-object v1, v3, Lcom/twidroid/ui/a/ao;->n:Landroid/view/View;

    new-instance v2, Lcom/twidroid/ui/b/c;

    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->K:Z

    if-eqz v0, :cond_26a

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    iget v0, v0, Lcom/twidroid/ui/themes/r;->B:I

    :goto_252
    iget v5, p0, Lcom/twidroid/ui/a/am;->P:I

    invoke-direct {v2, v0, v5}, Lcom/twidroid/ui/b/c;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v3, Lcom/twidroid/ui/a/ao;->o:Landroid/view/View;

    new-instance v1, Lcom/twidroid/ui/b/c;

    iget v2, p0, Lcom/twidroid/ui/a/am;->D:I

    iget v3, p0, Lcom/twidroid/ui/a/am;->P:I

    invoke-direct {v1, v2, v3}, Lcom/twidroid/ui/b/c;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_106

    :cond_26a
    iget-object v0, p0, Lcom/twidroid/ui/a/am;->M:Lcom/twidroid/ui/themes/r;

    iget v0, v0, Lcom/twidroid/ui/themes/r;->B:I

    goto :goto_252

    nop

    :pswitch_data_270
    .packed-switch 0x0
        :pswitch_11e
        :pswitch_12a
        :pswitch_136
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public h()V
    .registers 2

    iget-object v0, p0, Lcom/twidroid/ui/a/am;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V

    return-void
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/twidroid/ui/a/am;->Y:Z

    return v0
.end method
