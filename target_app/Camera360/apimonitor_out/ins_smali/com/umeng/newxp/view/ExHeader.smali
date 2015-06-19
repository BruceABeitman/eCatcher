.class public Lcom/umeng/newxp/view/ExHeader;
.super Ljava/lang/Object;
.source "ExHeader.java"
.field private a:Lcom/umeng/newxp/controller/ExchangeDataService;
.field private b:I
.method public constructor <init>(Lcom/umeng/newxp/controller/ExchangeDataService;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/umeng/newxp/view/ExHeader;->a:Lcom/umeng/newxp/controller/ExchangeDataService;
iput p2, p0, Lcom/umeng/newxp/view/ExHeader;->b:I
return-void
.end method
.method public final attachToList(Landroid/content/Context;Landroid/widget/ListView;)Z
.registers 7
:try_start_0
new-instance v0, Landroid/widget/FrameLayout;
invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->density:F
iget v2, p0, Lcom/umeng/newxp/view/ExHeader;->b:I
int-to-float v2, v2
mul-float/2addr v1, v2
const/high16 v2, 0x3f00
add-float/2addr v1, v2
float-to-int v1, v1
new-instance v2, Landroid/widget/AbsListView$LayoutParams;
const/4 v3, -0x1
invoke-direct {v2, v3, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V
invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v1, Lcom/umeng/newxp/view/ExchangeViewManager;
iget-object v2, p0, Lcom/umeng/newxp/view/ExHeader;->a:Lcom/umeng/newxp/controller/ExchangeDataService;
invoke-direct {v1, p1, v2}, Lcom/umeng/newxp/view/ExchangeViewManager;-><init>(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)V
invoke-virtual {p0, v0, v1}, Lcom/umeng/newxp/view/ExHeader;->onAttchContent(Landroid/widget/FrameLayout;Lcom/umeng/newxp/view/ExchangeViewManager;)Z
invoke-virtual {p2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V
:try_end_2d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2f
const/4 v0, 0x1
:goto_2e
return v0
:catch_2f
move-exception v0
sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v2, "attch header failed."
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v0, 0x0
goto :goto_2e
.end method
.method public onAttchContent(Landroid/widget/FrameLayout;Lcom/umeng/newxp/view/ExchangeViewManager;)Z
.registers 5
const/4 v0, 0x0
if-eqz p2, :cond_b
const/16 v1, 0x2b
new-array v0, v0, [Ljava/lang/String;
invoke-virtual {p2, p1, v1, v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->addView(Landroid/view/ViewGroup;I[Ljava/lang/String;)V
const/4 v0, 0x1
:cond_b
return v0
.end method