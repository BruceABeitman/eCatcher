.class public Lcom/umeng/newxp/view/X;
.super Landroid/app/Dialog;
.source "FloatDialog.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/umeng/newxp/view/X;


# instance fields
.field public a:F

.field private d:Landroid/content/Context;

.field private e:Lcom/umeng/newxp/view/FloatDialogConfig;

.field private f:Landroid/view/ViewGroup;

.field private g:Lcom/umeng/common/c;

.field private h:Lcom/umeng/newxp/view/T;

.field private i:Landroid/view/View;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/umeng/newxp/view/X;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/newxp/view/X;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/newxp/view/X;->c:Lcom/umeng/newxp/view/X;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/view/FloatDialogConfig;Ljava/lang/String;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            "I",
            "Lcom/umeng/newxp/view/FloatDialogConfig;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    const/4 v4, -0x1

    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/newxp/view/X;->j:Z

    iput-object p1, p0, Lcom/umeng/newxp/view/X;->d:Landroid/content/Context;

    if-eqz p4, :cond_8d

    move-object v0, p4

    :goto_c
    iput-object v0, p0, Lcom/umeng/newxp/view/X;->e:Lcom/umeng/newxp/view/FloatDialogConfig;

    sget-object v0, Lcom/umeng/newxp/view/X;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "FloatDialogConfig is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/umeng/newxp/view/FloatDialogConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/umeng/newxp/view/X;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/X;->g:Lcom/umeng/common/c;

    invoke-virtual {p0}, Lcom/umeng/newxp/view/X;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/umeng/newxp/view/X;->g:Lcom/umeng/common/c;

    const-string/jumbo v2, "umeng_xp_dialog_animations"

    invoke-virtual {v1, v2}, Lcom/umeng/common/c;->e(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {p0}, Lcom/umeng/newxp/view/X;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/umeng/newxp/view/X;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/umeng/newxp/view/T;

    iget-object v1, p0, Lcom/umeng/newxp/view/X;->e:Lcom/umeng/newxp/view/FloatDialogConfig;

    iget-object v2, p0, Lcom/umeng/newxp/view/X;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p0}, Lcom/umeng/newxp/view/T;-><init>(Lcom/umeng/newxp/view/FloatDialogConfig;Landroid/content/Context;Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/X;->h:Lcom/umeng/newxp/view/T;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_94

    iget-object v0, p0, Lcom/umeng/newxp/view/X;->h:Lcom/umeng/newxp/view/T;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/T;->a()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/newxp/view/X;->i:Landroid/view/View;

    :goto_85
    iget-object v0, p0, Lcom/umeng/newxp/view/X;->f:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/umeng/newxp/view/X;->i:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void

    :cond_8d
    new-instance v0, Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-direct {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;-><init>()V

    goto/16 :goto_c

    :cond_94
    iget-object v0, p0, Lcom/umeng/newxp/view/X;->h:Lcom/umeng/newxp/view/T;

    invoke-virtual {v0, p6, p2}, Lcom/umeng/newxp/view/T;->b(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;)Lcom/umeng/newxp/view/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/newxp/view/X;->i:Landroid/view/View;

    goto :goto_85
.end method

.method public static declared-synchronized a(I)V
    .registers 6

    const-class v1, Lcom/umeng/newxp/view/X;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/umeng/newxp/view/X;->c:Lcom/umeng/newxp/view/X;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/umeng/newxp/view/X;->c:Lcom/umeng/newxp/view/X;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/X;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_28

    sget-object v0, Lcom/umeng/newxp/view/X;->c:Lcom/umeng/newxp/view/X;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/X;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/umeng/newxp/view/X;->c:Lcom/umeng/newxp/view/X;

    iget v2, v2, Lcom/umeng/newxp/view/X;->a:F

    invoke-static {v0, v2}, Lcom/umeng/newxp/view/X;->a(Landroid/content/Context;F)[I

    move-result-object v0

    sget-object v2, Lcom/umeng/newxp/view/X;->c:Lcom/umeng/newxp/view/X;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-direct {v2, v3, v0, p0}, Lcom/umeng/newxp/view/X;->a(III)V
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2a

    :cond_28
    monitor-exit v1

    return-void

    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(III)V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/umeng/newxp/view/X;->c:Lcom/umeng/newxp/view/X;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/X;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_c
    invoke-virtual {p0}, Lcom/umeng/newxp/view/X;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0, p3}, Lcom/umeng/newxp/view/X;->b(I)V

    invoke-super {p0}, Landroid/app/Dialog;->show()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 7

    const/4 v4, -0x1

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/umeng/newxp/view/X;->d:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/umeng/newxp/view/X;->g:Lcom/umeng/common/c;

    const-string/jumbo v3, "umeng_xp_floatdialog_content"

    invoke-virtual {v2, v3}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/umeng/newxp/view/X;->g:Lcom/umeng/common/c;

    const-string/jumbo v3, "umeng_xp_float_dialog_content"

    invoke-virtual {v0, v3}, Lcom/umeng/common/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/umeng/newxp/view/X;->f:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/umeng/newxp/view/X;->g:Lcom/umeng/common/c;

    const-string/jumbo v3, "umeng_xp_float_dialog_close"

    invoke-virtual {v0, v3}, Lcom/umeng/common/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/umeng/newxp/view/Y;

    invoke-direct {v3, p0}, Lcom/umeng/newxp/view/Y;-><init>(Lcom/umeng/newxp/view/X;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0, v1}, Lcom/umeng/newxp/view/X;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/view/FloatDialogConfig;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/umeng/newxp/controller/ExchangeDataService;",
            "Lcom/umeng/newxp/view/FloatDialogConfig;",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/newxp/Promoter;",
            ">;)V"
        }
    .end annotation

    const-class v7, Lcom/umeng/newxp/view/X;

    monitor-enter v7

    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {p2}, Lcom/umeng/newxp/view/FloatDialogConfig;->getNativeFlag()I

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/umeng/newxp/common/g;->b(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "&_random="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_22
    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-static {p0}, Lcom/umeng/common/b;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0}, Lcom/umeng/newxp/a/e;->i(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_a9

    :goto_45
    monitor-exit v7

    return-void

    :cond_47
    :try_start_47
    sget-object v0, Lcom/umeng/newxp/view/X;->c:Lcom/umeng/newxp/view/X;

    if-eqz v0, :cond_58

    sget-object v0, Lcom/umeng/newxp/view/X;->c:Lcom/umeng/newxp/view/X;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/X;->isShowing()Z
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_a9

    move-result v0

    if-eqz v0, :cond_58

    :try_start_53
    sget-object v0, Lcom/umeng/newxp/view/X;->c:Lcom/umeng/newxp/view/X;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/X;->dismiss()V
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_a9
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_ac

    :cond_58
    :goto_58
    :try_start_58
    iget-object v0, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->opensize:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    const/high16 v0, 0x3f80

    cmpl-float v0, v8, v0

    if-ltz v0, :cond_ba

    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->full_screen:Z

    if-eqz v0, :cond_b6

    const v0, 0x1030011

    :goto_6b
    move v3, v0

    :goto_6c
    new-instance v0, Lcom/umeng/newxp/view/X;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/umeng/newxp/view/X;-><init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/view/FloatDialogConfig;Ljava/lang/String;Ljava/util/List;)V

    sput-object v0, Lcom/umeng/newxp/view/X;->c:Lcom/umeng/newxp/view/X;

    sget-object v0, Lcom/umeng/newxp/view/X;->c:Lcom/umeng/newxp/view/X;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/X;->a()V

    sget-object v0, Lcom/umeng/newxp/view/X;->c:Lcom/umeng/newxp/view/X;

    iput v8, v0, Lcom/umeng/newxp/view/X;->a:F

    invoke-static {p0, v8}, Lcom/umeng/newxp/view/X;->a(Landroid/content/Context;F)[I

    move-result-object v0

    if-eqz p2, :cond_8c

    invoke-virtual {p2}, Lcom/umeng/newxp/view/FloatDialogConfig;->isDelay()Z

    move-result v1

    if-nez v1, :cond_99

    :cond_8c
    sget-object v1, Lcom/umeng/newxp/view/X;->c:Lcom/umeng/newxp/view/X;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/X;->show()V

    sget-object v1, Lcom/umeng/newxp/view/X;->b:Ljava/lang/String;

    const-string/jumbo v2, "show dialog on create..."

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_99
    sget-object v1, Lcom/umeng/newxp/view/X;->c:Lcom/umeng/newxp/view/X;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/X;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setLayout(II)V
    :try_end_a8
    .catchall {:try_start_58 .. :try_end_a8} :catchall_a9

    goto :goto_45

    :catchall_a9
    move-exception v0

    monitor-exit v7

    throw v0

    :catch_ac
    move-exception v0

    :try_start_ad
    sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Reset list dialog..."

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_58

    :cond_b6
    const v0, 0x1030010

    goto :goto_6b

    :cond_ba
    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string/jumbo v1, "umeng_xp_dialog_download_window"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->e(Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_ad .. :try_end_c4} :catchall_a9

    move-result v3

    goto :goto_6c
.end method

.method private static a(Landroid/content/Context;F)[I
    .registers 13

    const/high16 v10, 0x4120

    const/high16 v9, 0x40e0

    const/4 v8, 0x1

    const v7, 0x3f19999a

    const v6, 0x3f4ccccd

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v0, Lcom/umeng/common/util/i;

    invoke-direct {v0, p0}, Lcom/umeng/common/util/i;-><init>(Landroid/content/Context;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v1, -0x1

    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/high16 v5, 0x3f80

    cmpl-float v5, v5, p1

    if-lez v5, :cond_61

    cmpg-float v5, v6, p1

    if-gtz v5, :cond_61

    if-ne v4, v8, :cond_55

    int-to-float v0, v2

    mul-float/2addr v0, v6

    float-to-int v1, v0

    invoke-static {v9}, Lcom/umeng/common/util/i;->a(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v3, v0

    :cond_4c
    :goto_4c
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    aput v1, v2, v8

    return-object v2

    :cond_55
    invoke-static {v10}, Lcom/umeng/common/util/i;->a(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v1, v2, v0

    int-to-float v0, v3

    mul-float/2addr v0, v6

    float-to-int v0, v0

    goto :goto_4c

    :cond_61
    cmpl-float v5, v6, p1

    if-lez v5, :cond_4c

    cmpg-float v5, v7, p1

    if-gtz v5, :cond_4c

    if-ne v4, v8, :cond_77

    int-to-float v0, v2

    mul-float/2addr v0, v7

    float-to-int v1, v0

    invoke-static {v9}, Lcom/umeng/common/util/i;->a(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v3, v0

    goto :goto_4c

    :cond_77
    invoke-static {v10}, Lcom/umeng/common/util/i;->a(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v1, v2, v0

    int-to-float v0, v3

    mul-float/2addr v0, v7

    float-to-int v0, v0

    goto :goto_4c
.end method


# virtual methods
.method protected a()V
    .registers 3

    iget-object v0, p0, Lcom/umeng/newxp/view/X;->i:Landroid/view/View;

    instance-of v0, v0, Lcom/umeng/newxp/view/Q;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/umeng/newxp/view/X;->i:Landroid/view/View;

    check-cast v0, Lcom/umeng/newxp/view/Q;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/Q;->a()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/newxp/view/X;->j:Z

    sget-object v0, Lcom/umeng/newxp/view/X;->b:Ljava/lang/String;

    const-string/jumbo v1, "build FImageView failed.please check  promoter is correct."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method protected b(I)V
    .registers 3

    iget-object v0, p0, Lcom/umeng/newxp/view/X;->i:Landroid/view/View;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/umeng/newxp/view/X;->i:Landroid/view/View;

    instance-of v0, v0, Lcom/umeng/newxp/view/aC;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/umeng/newxp/view/X;->i:Landroid/view/View;

    check-cast v0, Lcom/umeng/newxp/view/aC;

    invoke-interface {v0, p1}, Lcom/umeng/newxp/view/aC;->a(I)V

    :cond_11
    return-void
.end method

.method public dismiss()V
    .registers 2

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/umeng/newxp/view/X;->e:Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/umeng/newxp/view/X;->e:Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;->onClose()V

    :cond_14
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/newxp/view/X;->c:Lcom/umeng/newxp/view/X;

    return-void
.end method

.method public show()V
    .registers 4

    iget-object v0, p0, Lcom/umeng/newxp/view/X;->e:Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;->isTimeout()Z

    move-result v0

    iget-object v1, p0, Lcom/umeng/newxp/view/X;->e:Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/umeng/newxp/view/X;->e:Lcom/umeng/newxp/view/FloatDialogConfig;

    invoke-virtual {v1}, Lcom/umeng/newxp/view/FloatDialogConfig;->getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;->onShow(Z)V

    :cond_17
    iget-boolean v1, p0, Lcom/umeng/newxp/view/X;->j:Z

    if-eqz v1, :cond_3a

    sget-object v0, Lcom/umeng/newxp/view/X;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "can`t show float window.[FLAG interrupt = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/umeng/newxp/view/X;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]  please check log. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_39
    return-void

    :cond_3a
    if-nez v0, :cond_6a

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/umeng/newxp/view/X;->i:Landroid/view/View;

    instance-of v0, v0, Landroid/webkit/WebView;

    if-nez v0, :cond_61

    :try_start_45
    iget-object v0, p0, Lcom/umeng/newxp/view/X;->i:Landroid/view/View;

    check-cast v0, Lcom/umeng/newxp/view/at;

    invoke-interface {v0}, Lcom/umeng/newxp/view/at;->b()V
    :try_end_4c
    .catch Ljava/lang/ClassCastException; {:try_start_45 .. :try_end_4c} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_57

    goto :goto_39

    :catch_4d
    move-exception v0

    sget-object v0, Lcom/umeng/newxp/view/X;->b:Ljava/lang/String;

    const-string/jumbo v1, "FloatDialog template is not LazyImpressionView or WebView"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :catch_57
    move-exception v0

    sget-object v1, Lcom/umeng/newxp/view/X;->b:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_39

    :cond_61
    sget-object v0, Lcom/umeng/newxp/view/X;->b:Ljava/lang/String;

    const-string/jumbo v1, "FloatDialog template is WebView"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :cond_6a
    sget-object v0, Lcom/umeng/newxp/view/X;->b:Ljava/lang/String;

    const-string/jumbo v1, "FloatDialog timeout unshow."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39
.end method
