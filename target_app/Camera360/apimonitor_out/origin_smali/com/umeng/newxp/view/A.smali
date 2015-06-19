.class public Lcom/umeng/newxp/view/a;
.super Landroid/widget/ArrayAdapter;
.source "AdvertiserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/newxp/view/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/umeng/newxp/Promoter;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/umeng/newxp/controller/XpListenersCenter$ListClickListener;

.field b:Z

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

.field private g:Lcom/umeng/newxp/controller/ExchangeDataService;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;IILcom/umeng/newxp/controller/ExchangeDataService;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;II",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/a;->a:Lcom/umeng/newxp/controller/XpListenersCenter$ListClickListener;

    iput-object v0, p0, Lcom/umeng/newxp/view/a;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/newxp/view/a;->b:Z

    iput-object p1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    iput p4, p0, Lcom/umeng/newxp/view/a;->d:I

    iput p5, p0, Lcom/umeng/newxp/view/a;->e:I

    iput-object p6, p0, Lcom/umeng/newxp/view/a;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    return-void
.end method

.method static synthetic a(Lcom/umeng/newxp/view/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    return-object v0
.end method

.method private static b(I)I
    .registers 3

    const/4 v1, 0x2

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_c

    :goto_5
    :pswitch_5
    return v0

    :pswitch_6
    const/4 v0, 0x1

    goto :goto_5

    :pswitch_8
    move v0, v1

    goto :goto_5

    :pswitch_a
    move v0, v1

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_a
    .end packed-switch
.end method

.method static synthetic b(Lcom/umeng/newxp/view/a;)Lcom/umeng/newxp/controller/ExchangeDataService;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/a;->g:Lcom/umeng/newxp/controller/ExchangeDataService;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/newxp/view/a;)I
    .registers 2

    iget v0, p0, Lcom/umeng/newxp/view/a;->e:I

    return v0
.end method


# virtual methods
.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/a;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    return-void
.end method

.method public getItemId(I)J
    .registers 4

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-eqz p2, :cond_18

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c0

    :cond_18
    iget v1, p0, Lcom/umeng/newxp/view/a;->d:I

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/umeng/newxp/view/a$a;

    invoke-direct {v1}, Lcom/umeng/newxp/view/a$a;-><init>()V

    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->D(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/umeng/newxp/view/a$a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->g(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/umeng/newxp/view/a$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->B(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/umeng/newxp/view/a$a;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->C(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/umeng/newxp/view/a$a;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->n(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/umeng/newxp/view/a$a;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->H(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/umeng/newxp/view/a$a;->f:Landroid/widget/Button;

    :try_start_77
    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/newxp/a/c;->o(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/umeng/newxp/view/a$a;->g:Landroid/widget/ImageView;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_85} :catch_1b6

    :goto_85
    sget-boolean v0, Lcom/umeng/common/Log;->LOG:Z

    if-eqz v0, :cond_a5

    sget-object v2, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "New tip Imageview is "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/umeng/newxp/view/a$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1bb

    const-string/jumbo v0, "null"

    :goto_a2
    invoke-static {v2, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a5
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v8, v1

    :goto_a9
    invoke-virtual {p0, p1}, Lcom/umeng/newxp/view/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/umeng/newxp/Promoter;

    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/a/b;->h(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_d7

    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->ROUND_ICON:Z

    if-eqz v0, :cond_1c9

    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->a:Landroid/widget/ImageView;

    iget-object v2, v7, Lcom/umeng/newxp/Promoter;->icon:Ljava/lang/String;

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/umeng/common/net/p;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/common/net/p$a;Landroid/view/animation/Animation;Z)V

    :cond_d7
    :goto_d7
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_10c

    iget-object v0, v7, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/umeng/common/b;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d4

    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/e;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_f0
    iget-object v0, v7, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/umeng/common/b;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10c

    iget-object v0, v7, Lcom/umeng/newxp/Promoter;->price:Ljava/lang/String;

    if-eqz v0, :cond_10c

    iget-object v0, v7, Lcom/umeng/newxp/Promoter;->price:Ljava/lang/String;

    const-string/jumbo v1, ""

    if-eq v0, v1, :cond_10c

    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->b:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/umeng/newxp/Promoter;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10c
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_117

    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->c:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_117
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_122

    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->d:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/umeng/newxp/Promoter;->ad_words:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_122
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->show_size:Z

    if-eqz v0, :cond_1fb

    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_137

    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    iget-wide v4, v7, Lcom/umeng/newxp/Promoter;->size:J

    invoke-static {v1, v4, v5}, Lcom/umeng/common/util/g;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_137
    :goto_137
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->f:Landroid/widget/Button;

    if-eqz v0, :cond_142

    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->d:Landroid/widget/TextView;

    iget-object v1, v7, Lcom/umeng/newxp/Promoter;->ad_words:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_142
    new-instance v0, Lcom/umeng/newxp/view/b;

    invoke-direct {v0, p0, v7, p1}, Lcom/umeng/newxp/view/b;-><init>(Lcom/umeng/newxp/view/a;Lcom/umeng/newxp/Promoter;I)V

    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->f:Landroid/widget/Button;

    if-eqz v1, :cond_188

    iget-object v1, v7, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/umeng/common/b;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_208

    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->f:Landroid/widget/Button;

    iget-object v2, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/a/e;->b(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    if-eqz v1, :cond_16b

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    sget-object v2, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->OPEN:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;

    invoke-interface {v1, p2, v7, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;->onFitType(Landroid/view/View;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FitType;)V

    :cond_16b
    :goto_16b
    iget v1, v7, Lcom/umeng/newxp/Promoter;->new_tip:I

    if-ne v1, v6, :cond_277

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    if-eqz v1, :cond_17a

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    sget-object v2, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->NEW:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;

    invoke-interface {v1, p2, v7, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;->onFitType(Landroid/view/View;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FitType;)V

    :cond_17a
    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->g:Landroid/widget/ImageView;

    if-eqz v1, :cond_183

    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_183
    :goto_183
    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->f:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_188
    iget v0, p0, Lcom/umeng/newxp/view/a;->e:I

    invoke-static {v0}, Lcom/umeng/newxp/view/a;->b(I)I

    new-instance v0, Lcom/umeng/newxp/view/c;

    invoke-direct {v0, p0, v7, p1}, Lcom/umeng/newxp/view/c;-><init>(Lcom/umeng/newxp/view/a;Lcom/umeng/newxp/Promoter;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/umeng/newxp/view/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1b5

    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "get last position data "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/umeng/newxp/view/a;->a(I)V

    :cond_1b5
    return-object p2

    :catch_1b6
    move-exception v0

    iput-object v4, v1, Lcom/umeng/newxp/view/a$a;->g:Landroid/widget/ImageView;

    goto/16 :goto_85

    :cond_1bb
    const-string/jumbo v0, "not null"

    goto/16 :goto_a2

    :cond_1c0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/view/a$a;

    move-object v8, v0

    goto/16 :goto_a9

    :cond_1c9
    iget-object v0, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->a:Landroid/widget/ImageView;

    iget-object v2, v7, Lcom/umeng/newxp/Promoter;->icon:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/common/net/p;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    goto/16 :goto_d7

    :cond_1d4
    iget v0, v7, Lcom/umeng/newxp/Promoter;->landing_type:I

    if-eq v0, v10, :cond_1e1

    iget v0, v7, Lcom/umeng/newxp/Promoter;->landing_type:I

    if-eq v0, v9, :cond_1e1

    iget v0, v7, Lcom/umeng/newxp/Promoter;->landing_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1ee

    :cond_1e1
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/e;->c(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_f0

    :cond_1ee
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/e;->d(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_f0

    :cond_1fb
    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_137

    iget-object v0, v8, Lcom/umeng/newxp/view/a$a;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_137

    :cond_208
    iget v1, v7, Lcom/umeng/newxp/Promoter;->landing_type:I

    if-eq v1, v10, :cond_215

    iget v1, v7, Lcom/umeng/newxp/Promoter;->landing_type:I

    if-eq v1, v9, :cond_215

    iget v1, v7, Lcom/umeng/newxp/Promoter;->landing_type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_25f

    :cond_215
    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/e;->c(Landroid/content/Context;)I

    move-result v1

    iget-object v2, v7, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24d

    sget-object v4, Lcom/umeng/newxp/Promoter$a;->b:Lcom/umeng/newxp/Promoter$a;

    invoke-virtual {v4}, Lcom/umeng/newxp/Promoter$a;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24d

    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->f:Landroid/widget/Button;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/e;->e(Landroid/content/Context;)I

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    if-eqz v1, :cond_16b

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    sget-object v2, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->PHONE:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;

    invoke-interface {v1, p2, v7, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;->onFitType(Landroid/view/View;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FitType;)V

    goto/16 :goto_16b

    :cond_24d
    iget-object v2, v8, Lcom/umeng/newxp/view/a$a;->f:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    if-eqz v1, :cond_16b

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    sget-object v2, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->BROWSE:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;

    invoke-interface {v1, p2, v7, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;->onFitType(Landroid/view/View;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FitType;)V

    goto/16 :goto_16b

    :cond_25f
    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->f:Landroid/widget/Button;

    iget-object v2, p0, Lcom/umeng/newxp/view/a;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/newxp/a/e;->d(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    if-eqz v1, :cond_16b

    iget-object v1, p0, Lcom/umeng/newxp/view/a;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;

    sget-object v2, Lcom/umeng/newxp/controller/XpListenersCenter$FitType;->DOWNLOAD:Lcom/umeng/newxp/controller/XpListenersCenter$FitType;

    invoke-interface {v1, p2, v7, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;->onFitType(Landroid/view/View;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FitType;)V

    goto/16 :goto_16b

    :cond_277
    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->g:Landroid/widget/ImageView;

    if-eqz v1, :cond_183

    iget-object v1, v8, Lcom/umeng/newxp/view/a$a;->g:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_183
.end method
