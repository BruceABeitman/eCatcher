.class public Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;
.super Landroid/app/Dialog;
.source "PreviewAdjustDialog.java"


# static fields
.field public static final ADJUST_PREIVEW_RIGHT:I = 0x1

.field public static final ADJUST_PREIVEW_WRONG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PreviewAdjustDialog"


# instance fields
.field private mDegree:I

.field private mListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const v0, 0x7f090042

    invoke-direct {p0, p1, v0, p2}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/16 v0, 0x5a

    iput v0, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->mDegree:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->mListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;

    iput p3, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->mDegree:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->setCancelable(Z)V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->initView()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;)Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->mListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->mDegree:I

    return v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->mDegree:I

    return-void
.end method

.method private initView()V
    .registers 5

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f03002b

    invoke-virtual {v2, v3}, Landroid/view/Window;->setContentView(I)V

    const v3, 0x7f0a00e7

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$1;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$1;-><init>(Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a00e8

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$2;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog$2;-><init>(Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setListener(Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;)V
    .registers 5

    const-string/jumbo v0, "PreviewAdjustDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PreviewAdjustDialog setListener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->mListener:Lcom/pinguo/camera360/adjustOrientation/AdjustPreviewListener;

    return-void
.end method

.method public show()V
    .registers 6

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/dialog/PreviewAdjustDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const-string/jumbo v2, "PreviewAdjustDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "LayoutParams : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x51

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string/jumbo v2, "PreviewAdjustDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "LayoutParams : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
