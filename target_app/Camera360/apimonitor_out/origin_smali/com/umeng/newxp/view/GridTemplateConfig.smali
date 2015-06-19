.class public Lcom/umeng/newxp/view/GridTemplateConfig;
.super Ljava/lang/Object;
.source "GridTemplateConfig.java"


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:Landroid/graphics/drawable/Drawable;

.field c:Z

.field d:Z

.field public maxPsize:I

.field public numColumns:I

.field public verticalSpacing:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->numColumns:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->verticalSpacing:I

    iput-boolean v1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->c:Z

    iput-boolean v1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->d:Z

    return-void
.end method


# virtual methods
.method public setActivePointer(Landroid/graphics/drawable/Drawable;)Lcom/umeng/newxp/view/GridTemplateConfig;
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->a:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setInactivePointer(Landroid/graphics/drawable/Drawable;)Lcom/umeng/newxp/view/GridTemplateConfig;
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->b:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setMaxPsize(I)Lcom/umeng/newxp/view/GridTemplateConfig;
    .registers 4

    const/16 v1, 0xf

    const/4 v0, 0x1

    if-ge p1, v0, :cond_7

    iput v0, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    :cond_7
    if-le p1, v1, :cond_13

    iput v1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "IconList max page count is 15..."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    iput p1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->maxPsize:I

    return-object p0
.end method

.method public setNumColumns(I)Lcom/umeng/newxp/view/GridTemplateConfig;
    .registers 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_5

    iput v0, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->numColumns:I

    :cond_5
    iput p1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->numColumns:I

    return-object p0
.end method

.method public setPaging(Z)Lcom/umeng/newxp/view/GridTemplateConfig;
    .registers 2

    iput-boolean p1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->c:Z

    return-object p0
.end method

.method public setPointer(Z)Lcom/umeng/newxp/view/GridTemplateConfig;
    .registers 2

    iput-boolean p1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->d:Z

    return-object p0
.end method

.method public setVerticalSpacing(I)Lcom/umeng/newxp/view/GridTemplateConfig;
    .registers 2

    iput p1, p0, Lcom/umeng/newxp/view/GridTemplateConfig;->verticalSpacing:I

    return-object p0
.end method
