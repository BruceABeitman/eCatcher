.class public Lcom/bbm/util/dy;
.super Ljava/lang/Object;
.source "UpdatesFragmentUtil.java"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bbm/d/gt;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/String;

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/bbm/d/gt;

    const/4 v2, 0x0

    sget-object v3, Lcom/bbm/d/gt;->e:Lcom/bbm/d/gt;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/bbm/d/gt;->f:Lcom/bbm/d/gt;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/bbm/d/gt;->d:Lcom/bbm/d/gt;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/bbm/d/gt;->c:Lcom/bbm/d/gt;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/bbm/util/dy;->a:Ljava/util/List;

    const-string v0, "channel_promotion_key"

    sput-object v0, Lcom/bbm/util/dy;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bbm/util/dy;->c:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/bbm/d/ga;)Lcom/bbm/d/gt;
    .registers 3

    sget-object v0, Lcom/bbm/util/ec;->b:[I

    invoke-virtual {p0}, Lcom/bbm/d/ga;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    sget-object v0, Lcom/bbm/d/gt;->h:Lcom/bbm/d/gt;

    :goto_d
    return-object v0

    :pswitch_e
    sget-object v0, Lcom/bbm/d/gt;->e:Lcom/bbm/d/gt;

    goto :goto_d

    :pswitch_11
    sget-object v0, Lcom/bbm/d/gt;->f:Lcom/bbm/d/gt;

    goto :goto_d

    :pswitch_14
    sget-object v0, Lcom/bbm/d/gt;->d:Lcom/bbm/d/gt;

    goto :goto_d

    :pswitch_17
    sget-object v0, Lcom/bbm/d/gt;->c:Lcom/bbm/d/gt;

    goto :goto_d

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method public static a()Lcom/bbm/util/ep;
    .registers 1

    new-instance v0, Lcom/bbm/util/ep;

    invoke-direct {v0}, Lcom/bbm/util/ep;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/bbm/d/ga;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const v5, 0x7f0e072f

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/bbm/util/ec;->b:[I

    invoke-virtual {p1}, Lcom/bbm/d/ga;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_82

    const-string v0, ""

    :goto_13
    return-object v0

    :pswitch_14
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f0e072c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :pswitch_2a
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f0e072a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :pswitch_40
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f0e0729

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :pswitch_56
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f0e072b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :pswitch_6c
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const v2, 0x7f0e072e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_14
        :pswitch_2a
        :pswitch_40
        :pswitch_56
        :pswitch_6c
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/bbm/d/gt;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/bbm/util/ec;->a:[I

    invoke-virtual {p1}, Lcom/bbm/d/gt;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    const-string v0, ""

    :goto_d
    return-object v0

    :pswitch_e
    const v0, 0x7f0e013d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :pswitch_16
    const v0, 0x7f0e013c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :pswitch_1e
    const v0, 0x7f0e013b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :pswitch_26
    const v0, 0x7f0e013a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_16
        :pswitch_1e
        :pswitch_26
    .end packed-switch
.end method

.method public static a(ZLcom/bbm/d/gt;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/bbm/d/gt;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    if-eqz p0, :cond_32

    const/4 v0, 0x0

    :goto_8
    :try_start_8
    sget-object v2, Lcom/bbm/util/dy;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4b

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "userUri"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "typeUri"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "type"

    sget-object v4, Lcom/bbm/util/dy;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "userUri"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "typeUri"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4b} :catch_4c

    :cond_4b
    :goto_4b
    return-object v1

    :catch_4c
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_4b
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/bbm/d/gp;Lcom/bbm/d/ga;)V
    .registers 9

    const/16 v5, 0x8

    const/4 v4, 0x0

    new-instance v1, Lcom/bbm/ui/b/m;

    invoke-direct {v1, p0}, Lcom/bbm/ui/b/m;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0e072d

    invoke-virtual {v1, v0}, Lcom/bbm/ui/b/m;->setTitle(I)V

    const v0, 0x7f0e0728

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/ui/b/m;->a_(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bbm/ui/b/m;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0e0727

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bbm/ui/b/m;->h:Ljava/lang/String;

    iget-object v0, v1, Lcom/bbm/ui/b/m;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_51

    iget-object v0, v1, Lcom/bbm/ui/b/m;->f:Landroid/widget/RadioButton;

    if-eqz v0, :cond_51

    iget-object v0, v1, Lcom/bbm/ui/b/m;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_91

    iget-object v0, v1, Lcom/bbm/ui/b/m;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, v1, Lcom/bbm/ui/b/m;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/bbm/ui/b/m;->d:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/bbm/ui/b/m;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_51
    :goto_51
    sget-object v0, Lcom/bbm/d/ga;->a:Lcom/bbm/d/ga;

    if-eq p2, v0, :cond_85

    sget-object v0, Lcom/bbm/util/ec;->b:[I

    invoke-virtual {p2}, Lcom/bbm/d/ga;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_c8

    const-string v0, ""

    :goto_62
    iput-object v0, v1, Lcom/bbm/ui/b/m;->i:Ljava/lang/String;

    iget-object v0, v1, Lcom/bbm/ui/b/m;->g:Landroid/widget/RadioButton;

    if-eqz v0, :cond_85

    iget-object v0, v1, Lcom/bbm/ui/b/m;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_85

    iget-object v0, v1, Lcom/bbm/ui/b/m;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_bc

    iget-object v0, v1, Lcom/bbm/ui/b/m;->g:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, v1, Lcom/bbm/ui/b/m;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v1, Lcom/bbm/ui/b/m;->e:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/bbm/ui/b/m;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_85
    :goto_85
    new-instance v0, Lcom/bbm/util/ea;

    invoke-direct {v0, v1, p2, p1, p0}, Lcom/bbm/util/ea;-><init>(Lcom/bbm/ui/b/m;Lcom/bbm/d/ga;Lcom/bbm/d/gp;Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Lcom/bbm/ui/b/m;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/bbm/ui/b/m;->show()V

    return-void

    :cond_91
    iget-object v0, v1, Lcom/bbm/ui/b/m;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, v1, Lcom/bbm/ui/b/m;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_51

    :pswitch_9c
    const v0, 0x7f0e072c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :pswitch_a4
    const v0, 0x7f0e072a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :pswitch_ac
    const v0, 0x7f0e0729

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :pswitch_b4
    const v0, 0x7f0e072b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_62

    :cond_bc
    iget-object v0, v1, Lcom/bbm/ui/b/m;->g:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    iget-object v0, v1, Lcom/bbm/ui/b/m;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_85

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_9c
        :pswitch_a4
        :pswitch_ac
        :pswitch_b4
    .end packed-switch
.end method

.method public static a(Landroid/app/Activity;Lcom/bbm/ui/c/fm;Lcom/bbm/d/gp;Lcom/bbm/d/ga;Landroid/view/View;)V
    .registers 12

    const/4 v6, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p2, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    new-instance v2, Lcom/bbm/ui/slidingmenu/a;

    invoke-direct {v2, v6, v1, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v3, 0x7f0a0060

    const v4, 0x7f020271

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0e0752

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v3, 0x7f0a0063

    const v4, 0x7f020282

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0e0753

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/util/ei;

    invoke-direct {v1, p0, p2}, Lcom/bbm/util/ei;-><init>(Landroid/app/Activity;Lcom/bbm/d/gp;)V

    iput-object v1, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v3, 0x7f02021e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e0721

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2, v1}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    new-instance v0, Lcom/bbm/util/ej;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/bbm/util/ej;-><init>(Landroid/app/Activity;Lcom/bbm/d/gp;Lcom/bbm/d/ga;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/Activity;Lcom/bbm/ui/c/fm;Lcom/bbm/g/a;)V
    .registers 11

    const/4 v6, 0x0

    check-cast p1, Lcom/bbm/ui/activities/MainActivity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p3, Lcom/bbm/g/a;->r:Ljava/lang/String;

    new-instance v2, Lcom/bbm/ui/slidingmenu/a;

    invoke-direct {v2, v6, v1, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v3, 0x7f0a0075

    const v4, 0x7f02024f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0e0755

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/util/el;

    invoke-direct {v1, p1, p3, p0}, Lcom/bbm/util/el;-><init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/g/a;Landroid/content/Context;)V

    iput-object v1, p2, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v3, 0x7f02021e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e0721

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v2, v1}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    new-instance v0, Lcom/bbm/util/em;

    invoke-direct {v0, p1, p3}, Lcom/bbm/util/em;-><init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/g/a;)V

    invoke-virtual {p2, v0}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/Activity;Lcom/bbm/ui/c/fm;Lcom/bbm/util/ew;Lcom/bbm/d/ec;)V
    .registers 12

    const/4 v6, 0x0

    iget-object v0, p3, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;

    check-cast v0, Lcom/bbm/d/fy;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/bbm/ui/slidingmenu/a;

    const v3, 0x7f0a004e

    const v4, 0x7f02024b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0e0722

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p4, Lcom/bbm/d/ec;->u:Z

    if-eqz v2, :cond_2b

    iget-boolean v2, p4, Lcom/bbm/d/ec;->t:Z

    if-eqz v2, :cond_44

    :cond_2b
    new-instance v2, Lcom/bbm/ui/slidingmenu/a;

    const v3, 0x7f0a004d

    const v4, 0x7f02027c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0e01dc

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    new-instance v2, Lcom/bbm/ui/slidingmenu/a;

    const v3, 0x7f0a003b

    const v4, 0x7f02021e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const v5, 0x7f0e0721

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/bbm/ui/slidingmenu/a;

    iget-object v4, p4, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v6, v4, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v3, v2}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    new-instance v1, Lcom/bbm/util/ef;

    invoke-direct {v1, p1, v0, p4}, Lcom/bbm/util/ef;-><init>(Landroid/app/Activity;Lcom/bbm/d/fy;Lcom/bbm/d/ec;)V

    invoke-virtual {p2, v1}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/bbm/util/eh;

    invoke-direct {v1, p1, p0, v0}, Lcom/bbm/util/eh;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/bbm/d/fy;)V

    iput-object v1, p2, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/bbm/util/eo;Landroid/app/Activity;)V
    .registers 5

    const v0, 0x7f0a03f1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p1, Lcom/bbm/util/eo;->a:Lcom/bbm/ui/ObservingImageView;

    iget-object v0, p1, Lcom/bbm/util/eo;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/bbm/b/e;->b(Landroid/content/Context;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a03f3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/bbm/util/eo;->f:Landroid/widget/TextView;

    const v0, 0x7f0a03ee

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/bbm/util/eo;->c:Landroid/widget/TextView;

    const v0, 0x7f0a03f0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/bbm/util/eo;->d:Landroid/widget/TextView;

    const v0, 0x7f0a03f2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/bbm/util/eo;->e:Landroid/widget/TextView;

    const v0, 0x7f0a03ed

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p1, Lcom/bbm/util/eo;->b:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a03ef

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/bbm/util/eo;->g:Landroid/widget/ImageButton;

    const v0, 0x7f0a03f5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/bbm/util/eo;->h:Landroid/widget/ImageButton;

    iget-object v0, p1, Lcom/bbm/util/eo;->h:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bbm/util/ed;

    invoke-direct {v1, p1, p2}, Lcom/bbm/util/ed;-><init>(Lcom/bbm/util/eo;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/bbm/util/eo;->g:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bbm/util/ee;

    invoke-direct {v1, p1, p2}, Lcom/bbm/util/ee;-><init>(Lcom/bbm/util/eo;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/bbm/util/ep;)V
    .registers 3

    invoke-static {p0, p1}, Lcom/bbm/util/dy;->a(Landroid/view/View;Lcom/bbm/util/ey;)V

    const v0, 0x7f0a03df

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/LinkifyTextView;

    iput-object v0, p1, Lcom/bbm/util/ep;->a:Lcom/bbm/ui/LinkifyTextView;

    const v0, 0x7f0a03e1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/LinkifyTextView;

    iput-object v0, p1, Lcom/bbm/util/ep;->b:Lcom/bbm/ui/LinkifyTextView;

    const v0, 0x7f0a03e2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/bbm/util/ep;->c:Landroid/widget/TextView;

    const v0, 0x7f0a00a0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/bbm/util/ey;)V
    .registers 3

    const v0, 0x7f0a03e6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p1, Lcom/bbm/util/ey;->i:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a03e0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p1, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a03e7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/bbm/util/ey;->m:Landroid/widget/TextView;

    const v0, 0x7f0a03e8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/bbm/util/ey;->n:Landroid/widget/TextView;

    const v0, 0x7f0a03ea

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/bbm/util/ey;->k:Landroid/widget/TextView;

    const v0, 0x7f0a03e9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/bbm/util/ey;->l:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/bbm/b/a;Landroid/app/Activity;Landroid/content/Context;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/b/a;",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcom/bbm/b/e;->a(Lcom/bbm/b/a;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/bbm/b/aj;->a:Lcom/bbm/b/aj;

    iget-object v1, p0, Lcom/bbm/b/a;->h:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/bbm/b/a;->n:Z

    invoke-static {v0, v1, v2}, Lcom/bbm/b/e;->b(Lcom/bbm/b/aj;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/bbm/b/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/b/a;->h:Ljava/lang/String;

    sget-object v2, Lcom/bbm/b/e;->a:Lcom/bbm/b/aj;

    iget-boolean v3, p0, Lcom/bbm/b/a;->n:Z

    invoke-static {v0, v1, v2, v3}, Lcom/bbm/b/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/b/aj;Z)V

    :goto_1a
    return-void

    :cond_1b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/SponsoredAdActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "sponsored_ad_id"

    iget-object v2, p0, Lcom/bbm/b/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sponsored_ad_subtype"

    iget-object v2, p0, Lcom/bbm/b/a;->r:Lcom/bbm/b/b;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "sponsored_ad_type"

    iget-object v2, p0, Lcom/bbm/b/a;->s:Lcom/bbm/b/c;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "sponsored_ad_has_interstitial"

    invoke-static {p0}, Lcom/bbm/b/e;->a(Lcom/bbm/b/a;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v1, Lcom/bbm/ui/activities/ahw;->c:Lcom/bbm/ui/activities/ahw;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/ahw;->a(Landroid/content/Intent;)V

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/bbm/b/aj;->a:Lcom/bbm/b/aj;

    iget-object v1, p0, Lcom/bbm/b/a;->h:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/bbm/b/a;->n:Z

    invoke-static {v0, v1, v2}, Lcom/bbm/b/e;->a(Lcom/bbm/b/aj;Ljava/lang/String;Z)V

    goto :goto_1a
.end method

.method public static a(Lcom/bbm/d/fy;Landroid/app/Activity;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/d/fy;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/d/fy;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/d/fy;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Lcom/bbm/d/fz;Landroid/app/Activity;Landroid/content/Context;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/d/fz;",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/d/fz;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1a
    return-void

    :cond_1b
    sget-object v0, Lcom/bbm/util/ec;->b:[I

    iget-object v1, p0, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;

    invoke-virtual {v1}, Lcom/bbm/d/ga;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    iget-object v0, p0, Lcom/bbm/d/fz;->h:Ljava/lang/String;

    sget-object v1, Lcom/bbm/ui/activities/ConversationActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/d/fz;->a:Ljava/lang/String;

    invoke-static {p2, v0, v1, v2}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :pswitch_32
    iget-object v0, p0, Lcom/bbm/d/fz;->h:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1a

    :pswitch_data_38
    .packed-switch 0x5
        :pswitch_32
    .end packed-switch
.end method

.method public static a(Lcom/bbm/util/eq;Lcom/bbm/util/eo;Landroid/view/View;Lcom/bbm/j/t;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/util/eq;",
            "Lcom/bbm/util/eo;",
            "Landroid/view/View;",
            "Lcom/bbm/j/t",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/bbm/util/eo;->m:Z

    if-nez v0, :cond_e

    new-instance v0, Lcom/bbm/util/es;

    iget-object v1, p1, Lcom/bbm/util/eo;->i:Ljava/lang/String;

    invoke-direct {v0, v1, p2, p0, p3}, Lcom/bbm/util/es;-><init>(Ljava/lang/String;Landroid/view/View;Lcom/bbm/util/eq;Lcom/bbm/j/t;)V

    iput-object v0, p1, Lcom/bbm/util/eo;->n:Lcom/bbm/util/es;

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/bbm/util/eo;->n:Lcom/bbm/util/es;

    goto :goto_d
.end method

.method public static a(Lcom/bbm/util/ey;Landroid/content/Context;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/util/ey;",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/bbm/util/dz;

    invoke-direct {v0, p2, p0, p1}, Lcom/bbm/util/dz;-><init>(Ljava/util/Set;Lcom/bbm/util/ey;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static a(Lcom/bbm/util/ey;Landroid/content/Context;Z)V
    .registers 9

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getObservableImage()Lcom/bbm/j/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fd;

    iget-object v0, v0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v0, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getObservableImage()Lcom/bbm/j/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fd;

    iget-object v0, v0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b039f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    if-eqz v2, :cond_8a

    if-eqz v0, :cond_8a

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    mul-int/2addr v1, v2

    div-int/2addr v1, v0

    invoke-static {p1}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;)I

    move-result v3

    if-le v1, v3, :cond_99

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v4}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v4, 0x3

    const v5, 0x7f0a03ea

    invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v4, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v4, v1}, Lcom/bbm/ui/ObservingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    mul-int/2addr v0, v3

    div-int/2addr v0, v2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz p2, :cond_8b

    iget-object v0, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    iget-object v1, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v1, v3}, Lcom/bbm/ui/d;->a(Landroid/view/View;II)V

    :cond_8a
    :goto_8a
    return-void

    :cond_8b
    iget-object v0, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->requestLayout()V

    goto :goto_8a

    :cond_99
    if-eqz p2, :cond_a9

    iget-object v0, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    iget-object v2, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v2}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v2, v1}, Lcom/bbm/ui/d;->a(Landroid/view/View;II)V

    goto :goto_8a

    :cond_a9
    iget-object v0, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->requestLayout()V

    goto :goto_8a
.end method

.method public static a(Lcom/bbm/d/ga;Lcom/bbm/util/ey;Lcom/bbm/d;Landroid/content/Context;Lcom/bbm/d/fz;Lcom/bbm/d/gp;Ljava/util/Set;)[Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/d/ga;",
            "Lcom/bbm/util/ey;",
            "Lcom/bbm/d;",
            "Landroid/content/Context;",
            "Lcom/bbm/d/fz;",
            "Lcom/bbm/d/gp;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v2, ""

    const-string v0, ""

    sget-object v1, Lcom/bbm/util/ec;->b:[I

    invoke-virtual {p0}, Lcom/bbm/d/ga;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_144

    move-object v1, v2

    :goto_10
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    return-object v2

    :pswitch_1a
    const v0, 0x7f0e075b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p4, Lcom/bbm/d/fz;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0e075c

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    goto :goto_10

    :pswitch_3c
    const v0, 0x7f0e075e

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p4, Lcom/bbm/d/fz;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0e075c

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    goto :goto_10

    :pswitch_5e
    sget-object v0, Lcom/bbm/util/dy;->c:Ljava/util/HashMap;

    iget-object v1, p5, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    sget-object v0, Lcom/bbm/util/dy;->c:Ljava/util/HashMap;

    iget-object v1, p5, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v3, p4, Lcom/bbm/d/fz;->e:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_89

    :cond_7c
    sget-object v0, Lcom/bbm/util/dy;->c:Ljava/util/HashMap;

    iget-object v1, p5, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-wide v3, p4, Lcom/bbm/d/fz;->e:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_89
    const v0, 0x7f0e0756

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/bbm/util/ey;->k:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p1, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    iget-object v3, p2, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-object v4, p5, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-object v5, p5, Lcom/bbm/d/gp;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    iget-object v0, p1, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V

    sget-object v0, Lcom/bbm/util/dy;->c:Ljava/util/HashMap;

    iget-object v3, p5, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    sget-object v0, Lcom/bbm/util/dy;->c:Ljava/util/HashMap;

    iget-object v3, p5, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p4, Lcom/bbm/d/fz;->e:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_d5

    iget-object v0, p1, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_10

    :cond_d5
    iget-object v0, p1, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/bbm/util/ey;->o:Ljava/lang/String;

    invoke-interface {p6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lcom/bbm/util/dy;->a(Lcom/bbm/util/ey;Landroid/content/Context;Z)V

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_10

    :cond_eb
    const/4 v0, 0x0

    invoke-static {p1, p3, v0}, Lcom/bbm/util/dy;->b(Lcom/bbm/util/ey;Landroid/content/Context;Z)V

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_10

    :pswitch_f3
    const v0, 0x7f0e0757

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p5}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0e0758

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    goto/16 :goto_10

    :pswitch_118
    const v0, 0x7f0e0730

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p4, Lcom/bbm/d/fz;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p4, Lcom/bbm/d/fz;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0e0731

    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V

    goto/16 :goto_10

    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_5e
        :pswitch_118
        :pswitch_3c
        :pswitch_f3
    .end packed-switch
.end method

.method public static a(Lcom/bbm/g/al;Landroid/content/Context;Lcom/bbm/g/ak;Lcom/bbm/g/a;)[Ljava/lang/String;
    .registers 12

    iget-object v0, p2, Lcom/bbm/g/ak;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p2, Lcom/bbm/g/ak;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p2, Lcom/bbm/g/ak;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, ""

    const-string v1, ""

    const-string v0, ""

    sget-object v6, Lcom/bbm/util/ec;->c:[I

    invoke-virtual {p0}, Lcom/bbm/g/al;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_148

    :goto_23
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v1, v3, v0

    return-object v3

    :pswitch_30
    const v1, 0x7f0e073a

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v5, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0e0726

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :pswitch_48
    const v1, 0x7f0e074b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0e0726

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :pswitch_5d
    const v1, 0x7f0e0735

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v5, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0e0725

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :pswitch_75
    const v1, 0x7f0e0745

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v5, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0e0759

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :pswitch_8d
    const v1, 0x7f0e0742

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0e074d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_23

    :pswitch_a9
    const v1, 0x7f0e073e

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0e074d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_23

    :pswitch_c5
    const v1, 0x7f0e0740

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0e074d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_23

    :pswitch_e1
    const v1, 0x7f0e073c

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v2, v6

    const/4 v3, 0x1

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v5, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0e075a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_23

    :pswitch_fd
    const v1, 0x7f0e074f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0e0749

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_23

    :pswitch_113
    const v1, 0x7f0e0747

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0e074e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_23

    :pswitch_129
    iget-object v0, p2, Lcom/bbm/g/ak;->b:Ljava/lang/String;

    const v1, 0x7f0e0738

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p3, Lcom/bbm/g/a;->r:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0e0744

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_23

    nop

    :pswitch_data_148
    .packed-switch 0x1
        :pswitch_30
        :pswitch_48
        :pswitch_5d
        :pswitch_75
        :pswitch_8d
        :pswitch_a9
        :pswitch_c5
        :pswitch_e1
        :pswitch_fd
        :pswitch_113
        :pswitch_129
    .end packed-switch
.end method

.method public static b()Lcom/bbm/util/ey;
    .registers 1

    new-instance v0, Lcom/bbm/util/ey;

    invoke-direct {v0}, Lcom/bbm/util/ey;-><init>()V

    return-object v0
.end method

.method public static b(Lcom/bbm/util/ey;Landroid/content/Context;Z)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b039e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz p2, :cond_32

    iget-object v0, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    invoke-static {v0, v1}, Lcom/bbm/ui/d;->a(Landroid/view/View;I)V

    :goto_31
    return-void

    :cond_32
    iget-object v0, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/bbm/util/ey;->j:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->requestLayout()V

    goto :goto_31
.end method

.method public static c()Lcom/bbm/util/eo;
    .registers 1

    new-instance v0, Lcom/bbm/util/eo;

    invoke-direct {v0}, Lcom/bbm/util/eo;-><init>()V

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/bbm/util/dy;->b:Ljava/lang/String;

    return-object v0
.end method
