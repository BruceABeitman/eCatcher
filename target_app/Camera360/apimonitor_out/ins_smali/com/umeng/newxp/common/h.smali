.class  Lcom/umeng/newxp/common/h;
.super Ljava/lang/Object;
.source "XpUtils.java"
.implements Lcom/umeng/newxp/controller/XpListenersCenter$ExchangeDataRequestListener;
.field private final synthetic a:Lcom/umeng/newxp/common/g$a;
.field private final synthetic b:Lcom/umeng/newxp/controller/ExchangeDataService;
.field private final synthetic c:Landroid/content/Context;
.field private final synthetic d:Landroid/widget/ImageView;
.method constructor <init>(Lcom/umeng/newxp/common/g$a;Lcom/umeng/newxp/controller/ExchangeDataService;Landroid/content/Context;Landroid/widget/ImageView;)V
.registers 5
iput-object p1, p0, Lcom/umeng/newxp/common/h;->a:Lcom/umeng/newxp/common/g$a;
iput-object p2, p0, Lcom/umeng/newxp/common/h;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iput-object p3, p0, Lcom/umeng/newxp/common/h;->c:Landroid/content/Context;
iput-object p4, p0, Lcom/umeng/newxp/common/h;->d:Landroid/widget/ImageView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public dataReceived(ILjava/util/List;)V
.registers 9
if-nez p1, :cond_8
iget-object v0, p0, Lcom/umeng/newxp/common/h;->a:Lcom/umeng/newxp/common/g$a;
invoke-interface {v0, p1}, Lcom/umeng/newxp/common/g$a;->a(I)V
:cond_7
:goto_7
return-void
:cond_8
iget-object v0, p0, Lcom/umeng/newxp/common/h;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v0, v0, Lcom/umeng/newxp/controller/ExchangeDataService;->landing_image:Ljava/lang/String;
if-eqz v0, :cond_7
new-instance v4, Lcom/umeng/newxp/common/i;
iget-object v0, p0, Lcom/umeng/newxp/common/h;->a:Lcom/umeng/newxp/common/g$a;
iget-object v1, p0, Lcom/umeng/newxp/common/h;->d:Landroid/widget/ImageView;
invoke-direct {v4, p0, v0, v1, p2}, Lcom/umeng/newxp/common/i;-><init>(Lcom/umeng/newxp/common/h;Lcom/umeng/newxp/common/g$a;Landroid/widget/ImageView;Ljava/util/List;)V
iget-object v0, p0, Lcom/umeng/newxp/common/h;->c:Landroid/content/Context;
iget-object v1, p0, Lcom/umeng/newxp/common/h;->d:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/umeng/newxp/common/h;->b:Lcom/umeng/newxp/controller/ExchangeDataService;
iget-object v2, v2, Lcom/umeng/newxp/controller/ExchangeDataService;->landing_image:Ljava/lang/String;
const/4 v3, 0x0
const/4 v5, 0x0
invoke-static/range {v0 .. v5}, Lcom/umeng/common/net/p;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZLcom/umeng/common/net/p$a;Landroid/view/animation/Animation;)V
goto :goto_7
.end method