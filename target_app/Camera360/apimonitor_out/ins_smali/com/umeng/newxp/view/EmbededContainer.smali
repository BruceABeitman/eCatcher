.class public Lcom/umeng/newxp/view/EmbededContainer;
.super Ljava/lang/Object;
.source "EmbededContainer.java"
.field private a:Landroid/view/ViewGroup;
.field private b:Landroid/widget/ListView;
.field private c:Landroid/content/Context;
.field private d:Lcom/umeng/newxp/controller/ExchangeDataService;
.field private e:Ljava/util/List;
.field private f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;
.field private g:I
.field private h:Lcom/umeng/newxp/view/GridTemplateConfig;
.field private i:Lcom/umeng/newxp/view/ExHeader;
.field private j:Landroid/view/animation/Animation;
.field private k:Z
.field private l:Z
.field private m:Z
.field public mType:I
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ListView;Lcom/umeng/newxp/controller/ExchangeDataService;Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;Ljava/util/List;Lcom/umeng/newxp/view/GridTemplateConfig;Lcom/umeng/newxp/view/ExHeader;)V
.registers 14
const/16 v2, 0x8
const/4 v1, 0x0
const/4 v4, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->mType:I
const/4 v0, 0x5
iput v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->g:I
iput-boolean v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->k:Z
iput-boolean v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->l:Z
iput-boolean v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->m:Z
const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"
invoke-static {p1, v0}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_35
invoke-static {p1}, Lcom/umeng/common/b;->n(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_35
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-static {p1}, Lcom/umeng/common/a/c;->a(Landroid/content/Context;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:goto_34
return-void
:cond_35
iput-object p1, p0, Lcom/umeng/newxp/view/EmbededContainer;->c:Landroid/content/Context;
iput-object p7, p0, Lcom/umeng/newxp/view/EmbededContainer;->h:Lcom/umeng/newxp/view/GridTemplateConfig;
iput-object p5, p0, Lcom/umeng/newxp/view/EmbededContainer;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;
iput-object p8, p0, Lcom/umeng/newxp/view/EmbededContainer;->i:Lcom/umeng/newxp/view/ExHeader;
if-nez p2, :cond_4a
if-nez p3, :cond_4a
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v1, "this container integrated approach is failed! [view params neither ListView nor ViewGroup]"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_34
:cond_4a
if-eqz p2, :cond_94
iput-boolean v4, p0, Lcom/umeng/newxp/view/EmbededContainer;->m:Z
iput-object p2, p0, Lcom/umeng/newxp/view/EmbededContainer;->a:Landroid/view/ViewGroup;
:goto_50
if-eqz p3, :cond_9d
iput-boolean v4, p0, Lcom/umeng/newxp/view/EmbededContainer;->l:Z
iput-object p3, p0, Lcom/umeng/newxp/view/EmbededContainer;->b:Landroid/widget/ListView;
:goto_56
iput v2, p4, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I
iput-object p4, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;
new-instance v0, Lcom/umeng/newxp/view/aG;
iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->c:Landroid/content/Context;
iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->a:Landroid/view/ViewGroup;
invoke-direct {v0, v1, v2}, Lcom/umeng/newxp/view/aG;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
iget-boolean v1, p4, Lcom/umeng/newxp/controller/ExchangeDataService;->show_progress_wheel:Z
if-eqz v1, :cond_6a
invoke-virtual {v0}, Lcom/umeng/newxp/view/aG;->a()V
:cond_6a
new-instance v1, Lcom/umeng/newxp/view/r;
invoke-direct {v1, p0, v0}, Lcom/umeng/newxp/view/r;-><init>(Lcom/umeng/newxp/view/EmbededContainer;Lcom/umeng/newxp/view/aG;)V
if-eqz p6, :cond_a6
invoke-interface {p6}, Ljava/util/List;->size()I
move-result v2
if-lez v2, :cond_a6
invoke-direct {p0, v0, v4, p6}, Lcom/umeng/newxp/view/EmbededContainer;->a(Lcom/umeng/newxp/view/aG;ILjava/util/List;)V
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "init view use setData.... "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {p6}, Ljava/util/List;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_34
:cond_94
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v1, "this container integrated approach is not support grid template!"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_50
:cond_9d
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v1, "this container integrated approach is not support list template!"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_56
:cond_a6
iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;
if-eqz v2, :cond_dc
iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;
iget-object v2, v2, Lcom/umeng/newxp/a;->a:Lcom/umeng/newxp/a$a;
sget-object v3, Lcom/umeng/newxp/a$a;->a:Lcom/umeng/newxp/a$a;
if-ne v2, v3, :cond_dc
iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v1, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->preloadData:Lcom/umeng/newxp/a;
invoke-virtual {v1}, Lcom/umeng/newxp/a;->b()Ljava/util/List;
move-result-object v1
invoke-direct {p0, v0, v4, v1}, Lcom/umeng/newxp/view/EmbededContainer;->a(Lcom/umeng/newxp/view/aG;ILjava/util/List;)V
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "init view use preloadData.... "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_34
:cond_dc
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;
const-string/jumbo v2, ""
iput-object v2, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->c:Landroid/content/Context;
invoke-virtual {v0, v2, v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->requestDataAsyn(Landroid/content/Context;Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;)V
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v1, "init view use server data.... "
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_34
.end method
.method static synthetic a(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/view/animation/Animation;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->j:Landroid/view/animation/Animation;
return-object v0
.end method
.method private a()V
.registers 5
sget v0, Lcom/umeng/newxp/common/ExchangeConstants;->CONTAINER_LIST_COUNT:I
iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->e:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-le v0, v1, :cond_2f
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
:goto_10
iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->a:Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
new-instance v2, Lcom/umeng/common/util/i;
iget-object v3, p0, Lcom/umeng/newxp/view/EmbededContainer;->c:Landroid/content/Context;
invoke-direct {v2, v3}, Lcom/umeng/common/util/i;-><init>(Landroid/content/Context;)V
sget v2, Lcom/umeng/newxp/common/ExchangeConstants;->CONTAINER_HEIGHT:I
add-int/lit8 v2, v2, 0x1
mul-int/2addr v0, v2
int-to-float v0, v0
invoke-static {v0}, Lcom/umeng/common/util/i;->a(F)I
move-result v0
iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->a:Landroid/view/ViewGroup;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-void
:cond_2f
sget v0, Lcom/umeng/newxp/common/ExchangeConstants;->CONTAINER_LIST_COUNT:I
goto :goto_10
.end method
.method static synthetic a(Lcom/umeng/newxp/view/EmbededContainer;Landroid/view/animation/Animation;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/EmbededContainer;->j:Landroid/view/animation/Animation;
return-void
.end method
.method static synthetic a(Lcom/umeng/newxp/view/EmbededContainer;Lcom/umeng/newxp/view/aG;ILjava/util/List;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/umeng/newxp/view/EmbededContainer;->a(Lcom/umeng/newxp/view/aG;ILjava/util/List;)V
return-void
.end method
.method static synthetic a(Lcom/umeng/newxp/view/EmbededContainer;Z)V
.registers 2
iput-boolean p1, p0, Lcom/umeng/newxp/view/EmbededContainer;->k:Z
return-void
.end method
.method private a(Lcom/umeng/newxp/view/aG;ILjava/util/List;)V
.registers 6
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v1, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->initializeListener:Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;
if-nez p3, :cond_18
const/4 v0, 0x0
:goto_d
invoke-interface {v1, v0}, Lcom/umeng/newxp/controller/XpListenersCenter$InitializeListener;->onReceived(I)V
:cond_10
if-eqz p1, :cond_15
invoke-virtual {p1}, Lcom/umeng/newxp/view/aG;->b()V
:cond_15
if-nez p2, :cond_1d
:goto_17
return-void
:cond_18
invoke-interface {p3}, Ljava/util/List;->size()I
move-result v0
goto :goto_d
:cond_1d
iput-object p3, p0, Lcom/umeng/newxp/view/EmbededContainer;->e:Ljava/util/List;
invoke-virtual {p0}, Lcom/umeng/newxp/view/EmbededContainer;->setInteraction()V
goto :goto_17
.end method
.method static synthetic b(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->c:Landroid/content/Context;
return-object v0
.end method
.method static synthetic c(Lcom/umeng/newxp/view/EmbededContainer;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->b:Landroid/widget/ListView;
return-object v0
.end method
.method static synthetic d(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/controller/ExchangeDataService;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;
return-object v0
.end method
.method static synthetic e(Lcom/umeng/newxp/view/EmbededContainer;)Lcom/umeng/newxp/view/ExHeader;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->i:Lcom/umeng/newxp/view/ExHeader;
return-object v0
.end method
.method static synthetic f(Lcom/umeng/newxp/view/EmbededContainer;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->e:Ljava/util/List;
return-object v0
.end method
.method static synthetic g(Lcom/umeng/newxp/view/EmbededContainer;)Z
.registers 2
iget-boolean v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->k:Z
return v0
.end method
.method static synthetic h(Lcom/umeng/newxp/view/EmbededContainer;)V
.registers 1
invoke-direct {p0}, Lcom/umeng/newxp/view/EmbededContainer;->a()V
return-void
.end method
.method static synthetic i(Lcom/umeng/newxp/view/EmbededContainer;)I
.registers 2
iget v0, p0, Lcom/umeng/newxp/view/EmbededContainer;->g:I
return v0
.end method
.method public setInteraction()V
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;
invoke-virtual {v1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTemplate()I
move-result v1
packed-switch v1, :pswitch_data_54
iget-boolean v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->l:Z
if-eqz v1, :cond_44
new-instance v1, Lcom/umeng/newxp/view/EmbededContainer$a;
iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->b:Landroid/widget/ListView;
iget-object v3, p0, Lcom/umeng/newxp/view/EmbededContainer;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;
invoke-direct {v1, p0, v2, v3}, Lcom/umeng/newxp/view/EmbededContainer$a;-><init>(Lcom/umeng/newxp/view/EmbededContainer;Landroid/widget/ListView;Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V
:goto_17
if-eqz v0, :cond_25
iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->b:Landroid/widget/ListView;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->a:Landroid/view/ViewGroup;
invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:cond_25
return-void
:pswitch_26
iget-boolean v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->m:Z
if-eqz v1, :cond_3a
new-instance v0, Lcom/umeng/newxp/view/GridTemplate;
iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->e:Ljava/util/List;
iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v3, p0, Lcom/umeng/newxp/view/EmbededContainer;->c:Landroid/content/Context;
iget-object v4, p0, Lcom/umeng/newxp/view/EmbededContainer;->h:Lcom/umeng/newxp/view/GridTemplateConfig;
invoke-direct {v0, v1, v2, v3, v4}, Lcom/umeng/newxp/view/GridTemplate;-><init>(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;Lcom/umeng/newxp/view/GridTemplateConfig;)V
iget-object v0, v0, Lcom/umeng/newxp/view/GridTemplate;->contentView:Landroid/view/View;
goto :goto_17
:cond_3a
new-instance v1, Lcom/umeng/newxp/view/EmbededContainer$a;
iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->b:Landroid/widget/ListView;
iget-object v3, p0, Lcom/umeng/newxp/view/EmbededContainer;->f:Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;
invoke-direct {v1, p0, v2, v3}, Lcom/umeng/newxp/view/EmbededContainer$a;-><init>(Lcom/umeng/newxp/view/EmbededContainer;Landroid/widget/ListView;Lcom/umeng/newxp/controller/XpListenersCenter$AdapterListener;)V
goto :goto_17
:cond_44
new-instance v0, Lcom/umeng/newxp/view/GridTemplate;
iget-object v1, p0, Lcom/umeng/newxp/view/EmbededContainer;->e:Ljava/util/List;
iget-object v2, p0, Lcom/umeng/newxp/view/EmbededContainer;->d:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v3, p0, Lcom/umeng/newxp/view/EmbededContainer;->c:Landroid/content/Context;
iget-object v4, p0, Lcom/umeng/newxp/view/EmbededContainer;->h:Lcom/umeng/newxp/view/GridTemplateConfig;
invoke-direct {v0, v1, v2, v3, v4}, Lcom/umeng/newxp/view/GridTemplate;-><init>(Ljava/util/List;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;Lcom/umeng/newxp/view/GridTemplateConfig;)V
iget-object v0, v0, Lcom/umeng/newxp/view/GridTemplate;->contentView:Landroid/view/View;
goto :goto_17
:pswitch_data_54
.packed-switch 0x1
:pswitch_26
.end packed-switch
.end method