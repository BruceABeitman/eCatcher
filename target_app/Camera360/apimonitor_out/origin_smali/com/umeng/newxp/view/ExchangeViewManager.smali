.class public Lcom/umeng/newxp/view/ExchangeViewManager;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"


# instance fields
.field a:Lcom/umeng/newxp/view/f;

.field b:Lcom/umeng/newxp/view/aD;

.field c:Landroid/content/Context;

.field d:I

.field e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

.field private f:Ljava/lang/String;

.field private g:Lcom/umeng/newxp/view/LargeGalleryConfig;

.field private h:Lcom/umeng/newxp/view/FloatDialogConfig;

.field private i:Lcom/umeng/newxp/view/GridTemplateConfig;

.field private j:Lcom/umeng/newxp/view/ExHeader;

.field private k:Lcom/umeng/newxp/controller/ExchangeDataService;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field public predata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-direct {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/umeng/newxp/view/ExchangeViewManager;-><init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->a:Lcom/umeng/newxp/view/f;

    iput-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->b:Lcom/umeng/newxp/view/aD;

    iput-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->g:Lcom/umeng/newxp/view/LargeGalleryConfig;

    iput-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->h:Lcom/umeng/newxp/view/FloatDialogConfig;

    iput-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iput-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/view/ExHeader;

    iput-object p1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    if-nez p2, :cond_29

    new-instance v0, Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-direct {v0}, Lcom/umeng/newxp/controller/ExchangeDataService;-><init>()V

    iput-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    :goto_23
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    const/4 v1, 0x7

    iput v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    return-void

    :cond_29
    iput-object p2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    goto :goto_23
.end method

.method static synthetic a(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/controller/ExchangeDataService;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    return-object v0
.end method

.method private a(Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;)V
    .registers 6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p1, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v1, "\u786e\u8ba4"

    new-instance v2, Lcom/umeng/newxp/view/F;

    invoke-direct {v2, p0, p1, p2}, Lcom/umeng/newxp/view/F;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/umeng/newxp/view/G;

    invoke-direct {v2, p0}, Lcom/umeng/newxp/view/G;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :try_start_22
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    new-instance v0, Lcom/umeng/newxp/net/e$a;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/newxp/Promoter;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v1, v2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;

    move-result-object v0

    new-instance v1, Lcom/umeng/newxp/net/XpReportClient;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/n;Lcom/umeng/common/net/m$a;)V
    :try_end_84
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_22 .. :try_end_84} :catch_85

    :goto_84
    return-void

    :catch_85
    move-exception v0

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->f:Ljava/lang/String;

    const-string/jumbo v2, "Can`t show dialog "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_84
.end method

.method static synthetic a(Lcom/umeng/newxp/view/ExchangeViewManager;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;)V

    return-void
.end method

.method private a(I)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/view/GridTemplateConfig;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/newxp/view/ExchangeViewManager;)Lcom/umeng/newxp/view/ExHeader;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/view/ExHeader;

    return-object v0
.end method

.method static synthetic d(Lcom/umeng/newxp/view/ExchangeViewManager;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/umeng/newxp/view/ExchangeViewManager;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method public static setReportListener(Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;)V
    .registers 1

    invoke-static {p0}, Lcom/umeng/newxp/net/XpReportClient;->registerReportListener(Lcom/umeng/newxp/controller/XpListenersCenter$ReportListener;)V

    return-void
.end method


# virtual methods
.method public varargs addView(ILandroid/view/View;[Landroid/graphics/drawable/Drawable;)V
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iput p1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    if-nez p2, :cond_34

    sparse-switch p1, :sswitch_data_fc

    goto :goto_7

    :sswitch_12
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-object v4, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/view/ExHeader;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/newxp/view/au;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;Lcom/umeng/newxp/view/GridTemplateConfig;Lcom/umeng/newxp/view/ExHeader;)V

    goto :goto_7

    :sswitch_1f
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0, v1}, Lcom/umeng/newxp/common/g;->b(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Lcom/umeng/newxp/view/i;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/umeng/newxp/view/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/umeng/newxp/view/i;->show()V

    goto :goto_7

    :cond_34
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_65

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->l:Landroid/widget/ImageView;

    :cond_3c
    :goto_3c
    new-instance v0, Lcom/umeng/newxp/view/J;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/view/J;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V

    new-instance v1, Lcom/umeng/newxp/view/K;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/K;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V

    iput p1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    sparse-switch p1, :sswitch_data_106

    goto :goto_7

    :sswitch_4c
    array-length v0, p3

    if-nez v0, :cond_bf

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->l:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->l:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    new-instance v4, Lcom/umeng/newxp/view/L;

    invoke-direct {v4, p0, v1}, Lcom/umeng/newxp/view/L;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;)V

    invoke-static {v0, v2, v3, v4}, Lcom/umeng/newxp/common/g;->a(Landroid/widget/ImageView;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/common/g$a;)V

    goto :goto_7

    :cond_65
    instance-of v0, p2, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3c

    check-cast p2, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v1, "imageview"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v1, "newtip_area"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v1, "newtip_tv"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v1, "newtip_iv"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->o:Landroid/widget/ImageView;

    goto/16 :goto_3c

    :cond_bf
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->l:Landroid/widget/ImageView;

    aget-object v2, p3, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    const/4 v3, 0x7

    invoke-virtual {v0, v2, v1, v3}, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$NTipsChangedListener;I)V

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->l:Landroid/widget/ImageView;

    new-instance v1, Lcom/umeng/newxp/view/N;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/N;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    :sswitch_da
    array-length v1, p3

    if-nez v1, :cond_ed

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->l:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    new-instance v4, Lcom/umeng/newxp/view/O;

    invoke-direct {v4, p0, v0}, Lcom/umeng/newxp/view/O;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;Landroid/view/View$OnClickListener;)V

    invoke-static {v1, v2, v3, v4}, Lcom/umeng/newxp/common/g;->a(Landroid/widget/ImageView;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/common/g$a;)V

    goto/16 :goto_7

    :cond_ed
    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->l:Landroid/widget/ImageView;

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    nop

    :sswitch_data_fc
    .sparse-switch
        0x7 -> :sswitch_12
        0x1f5 -> :sswitch_1f
    .end sparse-switch

    :sswitch_data_106
    .sparse-switch
        0x7 -> :sswitch_4c
        0x1f5 -> :sswitch_da
    .end sparse-switch
.end method

.method public varargs addView(Landroid/view/ViewGroup;I[Ljava/lang/String;)V
    .registers 12

    const/16 v2, 0xb

    const/4 v1, 0x1

    invoke-direct {p0, p2}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iput p2, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    iput p2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    if-eqz p3, :cond_1d

    :try_start_12
    array-length v0, p3

    if-lez v0, :cond_1d

    array-length v0, p3

    if-lt v0, v1, :cond_1d

    const/4 v0, 0x0

    aget-object v0, p3, v0

    sput-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->CHANNEL:Ljava/lang/String;

    :cond_1d
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->ONLY_CHINESE:Z

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4d

    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "English os can not show ads"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_31} :catch_32

    goto :goto_9

    :catch_32
    move-exception v0

    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "add view error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_9

    :cond_4d
    :try_start_4d
    iget v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5f

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-object v4, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/view/ExHeader;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/newxp/view/au;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;Lcom/umeng/newxp/view/GridTemplateConfig;Lcom/umeng/newxp/view/ExHeader;)V

    goto :goto_9

    :cond_5f
    iget v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    if-ne v0, v2, :cond_70

    new-instance v0, Lcom/umeng/newxp/view/D;

    invoke-direct {v0, p0, p1}, Lcom/umeng/newxp/view/D;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    goto :goto_9

    :cond_70
    iget v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_8c

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0, v1}, Lcom/umeng/newxp/common/g;->b(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v1, Lcom/umeng/newxp/view/i;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/umeng/newxp/view/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/umeng/newxp/view/i;->show()V

    goto/16 :goto_9

    :cond_8c
    iget v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a5

    new-instance v0, Lcom/umeng/newxp/view/GridTemplate;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/umeng/newxp/view/GridTemplate;-><init>(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;Lcom/umeng/newxp/view/GridTemplateConfig;)V

    iget-object v0, v0, Lcom/umeng/newxp/view/GridTemplate;->contentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_9

    :cond_a5
    iget v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_14a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->h:Lcom/umeng/newxp/view/FloatDialogConfig;

    if-eqz v0, :cond_ee

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->h:Lcom/umeng/newxp/view/FloatDialogConfig;

    move-object v1, v0

    :goto_b6
    invoke-virtual {v1, v2, v3}, Lcom/umeng/newxp/view/FloatDialogConfig;->setStartTime(J)Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v0

    if-eqz v0, :cond_c6

    invoke-virtual {v1}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;->onStart()V

    :cond_c6
    new-instance v0, Lcom/umeng/newxp/view/H;

    invoke-direct {v0, p0, v1}, Lcom/umeng/newxp/view/H;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;Lcom/umeng/newxp/view/FloatDialogConfig;)V

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    if-eqz v2, :cond_141

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    iget-object v2, v2, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;

    sget-object v3, Lcom/umeng/newxp/a$a;->a:Lcom/umeng/newxp/a$a;

    if-ne v2, v3, :cond_141

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;

    invoke-virtual {v2}, Lcom/umeng/newxp/a;->b()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_f5

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    goto/16 :goto_9

    :cond_ee
    new-instance v0, Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-direct {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;-><init>()V

    move-object v1, v0

    goto :goto_b6

    :cond_f5
    invoke-virtual {v1}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v0

    if-eqz v0, :cond_103

    invoke-virtual {v1}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;->onPrepared(I)V

    :cond_103
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->opensize:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_137

    if-eqz v2, :cond_12e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_12e

    const-string/jumbo v3, "0.04"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12e

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;)V

    goto/16 :goto_9

    :cond_12e
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-static {v0, v3, v1, v2}, Lcom/umeng/newxp/view/X;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/view/FloatDialogConfig;Ljava/util/List;)V

    goto/16 :goto_9

    :cond_137
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->f:Ljava/lang/String;

    const-string/jumbo v1, "Unshow the suspended window. opensize is null"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_141
    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget-object v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V

    goto/16 :goto_9

    :cond_14a
    iget v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    sparse-switch v0, :sswitch_data_21e

    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "Paramter type  %1$s cannot be handled. It may be deprecated."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_169
    new-instance v0, Lcom/umeng/newxp/view/f;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget v2, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/umeng/newxp/view/f;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/umeng/newxp/controller/ExchangeDataService;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->a:Lcom/umeng/newxp/view/f;

    goto/16 :goto_9

    :sswitch_178
    new-instance v0, Lcom/umeng/newxp/view/aD;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/umeng/newxp/view/aD;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/umeng/newxp/controller/ExchangeDataService;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->b:Lcom/umeng/newxp/view/aD;

    goto/16 :goto_9

    :sswitch_187
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->g:Lcom/umeng/newxp/view/LargeGalleryConfig;

    if-nez v0, :cond_20a

    new-instance v0, Lcom/umeng/newxp/view/LargeGalleryConfig;

    invoke-direct {v0}, Lcom/umeng/newxp/view/LargeGalleryConfig;-><init>()V

    move-object v6, v0

    :goto_191
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v5

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/newxp/a/d;->A(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const-string/jumbo v1, "umeng_xp_gallery"

    invoke-virtual {v5, v1}, Lcom/umeng/common/c;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/umeng/newxp/view/LargeGallery;

    const-string/jumbo v2, "umeng_xp_gallery_pointer"

    invoke-virtual {v5, v2}, Lcom/umeng/common/c;->b(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/umeng/newxp/view/widget/SwipeViewPointer;

    const-string/jumbo v3, "umeng_xp_gallery_entity"

    invoke-virtual {v5, v3}, Lcom/umeng/common/c;->b(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const-string/jumbo v4, "umeng_xp_gallery_progress"

    invoke-virtual {v5, v4}, Lcom/umeng/common/c;->b(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const-string/jumbo v7, "umeng_xp_gallery_errorpage"

    invoke-virtual {v5, v7}, Lcom/umeng/common/c;->b(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    new-instance v7, Lcom/umeng/newxp/view/I;

    invoke-direct {v7, p0, v3, v4, v5}, Lcom/umeng/newxp/view/I;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v7}, Lcom/umeng/newxp/view/LargeGallery;->setLoadListener(Lcom/umeng/newxp/view/LargeGallery$a;)V

    invoke-virtual {v6, v0}, Lcom/umeng/newxp/view/LargeGalleryConfig;->a(Landroid/view/View;)V

    iget-object v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    invoke-virtual {v1, v3, v6}, Lcom/umeng/newxp/view/LargeGallery;->work(Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/view/LargeGalleryConfig;)V

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-virtual {v1, v2}, Lcom/umeng/newxp/view/LargeGallery;->setPageControl(Lcom/umeng/newxp/view/widget/SwipeViewPointer;)V

    goto/16 :goto_9

    :cond_20a
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->g:Lcom/umeng/newxp/view/LargeGalleryConfig;

    move-object v6, v0

    goto :goto_191

    :sswitch_20e
    const/4 v4, 0x0

    new-instance v0, Lcom/umeng/newxp/view/af;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget v3, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    iget-object v5, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/umeng/newxp/view/af;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;IILcom/umeng/newxp/controller/ExchangeDataService;)V
    :try_end_21b
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_21b} :catch_32

    goto/16 :goto_9

    nop

    :sswitch_data_21e
    .sparse-switch
        0x6 -> :sswitch_169
        0xb -> :sswitch_178
        0xd -> :sswitch_20e
        0x2b -> :sswitch_187
    .end sparse-switch
.end method

.method public addView(Landroid/view/ViewGroup;Landroid/widget/ListView;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->addView(Landroid/view/ViewGroup;Landroid/widget/ListView;Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V

    return-void
.end method

.method public addView(Landroid/view/ViewGroup;Landroid/widget/ListView;Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V
    .registers 13

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/umeng/newxp/view/ExchangeViewManager;->a(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iput v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    new-instance v0, Lcom/umeng/newxp/view/EmbededContainer;

    iget-object v1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    iget-object v8, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/view/ExHeader;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/umeng/newxp/view/EmbededContainer;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ListView;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;Ljava/util/List;Lcom/umeng/newxp/view/GridTemplateConfig;Lcom/umeng/newxp/view/ExHeader;)V

    goto :goto_8
.end method

.method public hideBanner()V
    .registers 3

    :try_start_0
    iget v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->d:I

    sparse-switch v0, :sswitch_data_30

    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "paramter type cannot be handled"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_d
    return-void

    :sswitch_e
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->a:Lcom/umeng/newxp/view/f;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->a:Lcom/umeng/newxp/view/f;

    iget-object v0, v0, Lcom/umeng/newxp/view/f;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/umeng/newxp/common/a;->a(Landroid/view/View;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_d

    :catch_1a
    move-exception v0

    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "hideBanner error"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :sswitch_24
    :try_start_24
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->b:Lcom/umeng/newxp/view/aD;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->b:Lcom/umeng/newxp/view/aD;

    iget-object v0, v0, Lcom/umeng/newxp/view/aD;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/umeng/newxp/common/a;->a(Landroid/view/View;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2f} :catch_1a

    goto :goto_d

    :sswitch_data_30
    .sparse-switch
        0x6 -> :sswitch_e
        0xb -> :sswitch_24
    .end sparse-switch
.end method

.method public hideBanner(I)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/umeng/newxp/view/P;

    invoke-direct {v1, p0}, Lcom/umeng/newxp/view/P;-><init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onOrientationChanaged(I)V
    .registers 3

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->k:Lcom/umeng/newxp/controller/ExchangeDataService;

    iget v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I

    packed-switch v0, :pswitch_data_c

    :goto_7
    return-void

    :pswitch_8
    invoke-static {p1}, Lcom/umeng/newxp/view/X;->a(I)V

    goto :goto_7

    :pswitch_data_c
    .packed-switch 0xf
        :pswitch_8
    .end packed-switch
.end method

.method public setBannerOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->a:Lcom/umeng/newxp/view/f;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->a:Lcom/umeng/newxp/view/f;

    invoke-virtual {v0, p1}, Lcom/umeng/newxp/view/f;->a(Landroid/view/View$OnClickListener;)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->b:Lcom/umeng/newxp/view/aD;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->b:Lcom/umeng/newxp/view/aD;

    invoke-virtual {v0, p1}, Lcom/umeng/newxp/view/aD;->a(Landroid/view/View$OnClickListener;)V

    goto :goto_9
.end method

.method public setEntryOnClickListener(Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;)Lcom/umeng/newxp/view/ExchangeViewManager;
    .registers 4

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    if-eq v0, p1, :cond_13

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->f:Ljava/lang/String;

    const-string/jumbo v1, "EntryOnClickListener is exist, and make old listener invalid..."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    :cond_12
    :goto_12
    return-object p0

    :cond_13
    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->f:Ljava/lang/String;

    const-string/jumbo v1, "EntryOnClickListener set up..."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->e:Lcom/umeng/newxp/controller/XpListenersCenter$EntryOnClickListener;

    goto :goto_12
.end method

.method public setFloatDialogConfig(Lcom/umeng/newxp/view/FloatDialogConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->h:Lcom/umeng/newxp/view/FloatDialogConfig;

    return-void
.end method

.method public setGridTemplateConfig(Lcom/umeng/newxp/view/GridTemplateConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->i:Lcom/umeng/newxp/view/GridTemplateConfig;

    return-void
.end method

.method public setLargeGalleryConfig(Lcom/umeng/newxp/view/LargeGalleryConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->g:Lcom/umeng/newxp/view/LargeGalleryConfig;

    return-void
.end method

.method public setListHeader(ILcom/umeng/newxp/controller/ExchangeDataService;)V
    .registers 4

    new-instance v0, Lcom/umeng/newxp/view/ExHeader;

    invoke-direct {v0, p2, p1}, Lcom/umeng/newxp/view/ExHeader;-><init>(Lcom/umeng/newxp/controller/ExchangeDataService;I)V

    iput-object v0, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/view/ExHeader;

    return-void
.end method

.method public setListHeader(Lcom/umeng/newxp/view/ExHeader;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/ExchangeViewManager;->j:Lcom/umeng/newxp/view/ExHeader;

    return-void
.end method

.method public setLoopInterval(I)V
    .registers 3

    const/16 v0, 0xbb8

    if-le p1, v0, :cond_9

    sput p1, Lcom/umeng/newxp/common/ExchangeConstants;->REFRESH_INTERVAL:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->IGNORE_SERVER_INTERVAL:Z

    :cond_9
    return-void
.end method
