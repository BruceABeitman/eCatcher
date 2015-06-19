.class  Lcom/umeng/newxp/view/as;
.super Ljava/lang/Object;
.source "LargeGallery.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/umeng/newxp/view/LargeGallery;
.field private final synthetic b:Lcom/umeng/newxp/Promoter;
.method constructor <init>(Lcom/umeng/newxp/view/LargeGallery;Lcom/umeng/newxp/Promoter;)V
.registers 3
iput-object p1, p0, Lcom/umeng/newxp/view/as;->a:Lcom/umeng/newxp/view/LargeGallery;
iput-object p2, p0, Lcom/umeng/newxp/view/as;->b:Lcom/umeng/newxp/Promoter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/newxp/view/as; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/umeng/newxp/view/as;->b:Lcom/umeng/newxp/Promoter;
iget-object v1, p0, Lcom/umeng/newxp/view/as;->a:Lcom/umeng/newxp/view/LargeGallery;
invoke-static {v1}, Lcom/umeng/newxp/view/LargeGallery;->f(Lcom/umeng/newxp/view/LargeGallery;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/umeng/newxp/view/as;->a:Lcom/umeng/newxp/view/LargeGallery;
invoke-static {v2}, Lcom/umeng/newxp/view/LargeGallery;->g(Lcom/umeng/newxp/view/LargeGallery;)Lcom/umeng/newxp/controller/ExchangeDataService;
move-result-object v2
const/16 v3, 0x2b
const/4 v4, 0x0
invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/Promoter;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZ)V
const-string v1, " - Lcom/umeng/newxp/view/as; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method