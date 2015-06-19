.class public Lcom/pinguo/camera360/save/processer/PhotoProcessView;
.super Ljava/lang/Object;
.source "PhotoProcessView.java"


# static fields
.field private static volatile INSTANCE:Lcom/pinguo/camera360/save/processer/PhotoProcessView;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mRootView:Landroid/view/View;

.field myTouchListenter:Landroid/view/View$OnTouchListener;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private photoProcessMsg:Landroid/widget/TextView;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->INSTANCE:Lcom/pinguo/camera360/save/processer/PhotoProcessView;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/pinguo/camera360/save/processer/PhotoProcessView$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcessView$1;-><init>(Lcom/pinguo/camera360/save/processer/PhotoProcessView;)V

    iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->myTouchListenter:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->init()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/save/processer/PhotoProcessView;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->updatePosition(FF)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/pinguo/camera360/save/processer/PhotoProcessView;
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->INSTANCE:Lcom/pinguo/camera360/save/processer/PhotoProcessView;

    if-nez v0, :cond_13

    const-class v1, Lcom/pinguo/camera360/save/processer/PhotoProcessView;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->INSTANCE:Lcom/pinguo/camera360/save/processer/PhotoProcessView;

    if-nez v0, :cond_12

    new-instance v0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcessView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->INSTANCE:Lcom/pinguo/camera360/save/processer/PhotoProcessView;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->INSTANCE:Lcom/pinguo/camera360/save/processer/PhotoProcessView;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private init()V
    .registers 5

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->mRootView:Landroid/view/View;

    const v1, 0x7f0a03b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->photoProcessMsg:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->mRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->myTouchListenter:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->wm:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->params:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d7

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->params:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->params:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->params:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x42c8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->params:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->params:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->wm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method private updatePosition(FF)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->params:Landroid/view/WindowManager$LayoutParams;

    float-to-int v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->params:Landroid/view/WindowManager$LayoutParams;

    float-to-int v1, p2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->mRootView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public sendMsg(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->mRootView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->photoProcessMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public show()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessView;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
