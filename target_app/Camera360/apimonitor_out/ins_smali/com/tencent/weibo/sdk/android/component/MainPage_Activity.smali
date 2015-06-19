.class public Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;
.super Landroid/app/Activity;
.source "MainPage_Activity.java"
.field private add:Landroid/widget/Button;
.field private authorize:Landroid/widget/Button;
.field private context:Landroid/content/Context;
.field private readd:Landroid/widget/Button;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->authorize:Landroid/widget/Button;
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->add:Landroid/widget/Button;
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->readd:Landroid/widget/Button;
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->context:Landroid/content/Context;
return-void
.end method
.method static synthetic access$0(Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->context:Landroid/content/Context;
return-object v0
.end method
.method public init()V
.registers 5
sget v2, Lcom/tencent/weibo/sdk/android/component/R$id;->authorize:I
invoke-virtual {p0, v2}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
iput-object v2, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->authorize:Landroid/widget/Button;
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->authorize:Landroid/widget/Button;
new-instance v3, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$1;
invoke-direct {v3, p0}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$1;-><init>(Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;)V
invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
sget v2, Lcom/tencent/weibo/sdk/android/component/R$id;->add:I
invoke-virtual {p0, v2}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
iput-object v2, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->add:Landroid/widget/Button;
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->add:Landroid/widget/Button;
new-instance v3, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$2;
invoke-direct {v3, p0}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$2;-><init>(Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;)V
invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
sget v2, Lcom/tencent/weibo/sdk/android/component/R$id;->readd:I
invoke-virtual {p0, v2}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/Button;
iput-object v2, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->readd:Landroid/widget/Button;
iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->readd:Landroid/widget/Button;
new-instance v3, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$3;
invoke-direct {v3, p0}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$3;-><init>(Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;)V
invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
sget v2, Lcom/tencent/weibo/sdk/android/component/R$id;->exit:I
invoke-virtual {p0, v2}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
new-instance v2, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$4;
invoke-direct {v2, p0}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$4;-><init>(Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;)V
invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
sget v2, Lcom/tencent/weibo/sdk/android/component/R$id;->commoninterface:I
invoke-virtual {p0, v2}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
new-instance v2, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$5;
invoke-direct {v2, p0}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity$5;-><init>(Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;)V
invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/tencent/weibo/sdk/android/component/MainPage_Activity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->requestWindowFeature(I)Z
sget v0, Lcom/tencent/weibo/sdk/android/component/R$layout;->main_layout:I
invoke-virtual {p0, v0}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->setContentView(I)V
invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->context:Landroid/content/Context;
invoke-virtual {p0}, Lcom/tencent/weibo/sdk/android/component/MainPage_Activity;->init()V
const-string v1, " - Lcom/tencent/weibo/sdk/android/component/MainPage_Activity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method