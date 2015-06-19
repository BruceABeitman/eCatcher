.class  Lcom/umeng/newxp/view/p;
.super Ljava/lang/Object;
.source "DownloadDialog.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/umeng/newxp/view/o;
.field private final synthetic b:Lcom/umeng/newxp/Promoter;
.field private final synthetic c:I
.field private final synthetic d:Lcom/umeng/newxp/controller/ExchangeDataService;
.method constructor <init>(Lcom/umeng/newxp/view/o;Lcom/umeng/newxp/Promoter;ILcom/umeng/newxp/controller/ExchangeDataService;)V
.registers 5
iput-object p1, p0, Lcom/umeng/newxp/view/p;->a:Lcom/umeng/newxp/view/o;
iput-object p2, p0, Lcom/umeng/newxp/view/p;->b:Lcom/umeng/newxp/Promoter;
iput p3, p0, Lcom/umeng/newxp/view/p;->c:I
iput-object p4, p0, Lcom/umeng/newxp/view/p;->d:Lcom/umeng/newxp/controller/ExchangeDataService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a(Lcom/umeng/newxp/Promoter;ILcom/umeng/newxp/controller/ExchangeDataService;)V
.registers 9
iget-object v0, p1, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/p;->a:Lcom/umeng/newxp/view/o;
invoke-static {v1}, Lcom/umeng/newxp/view/o;->b(Lcom/umeng/newxp/view/o;)Landroid/content/Context;
move-result-object v1
const-string/jumbo v2, "android.permission.CALL_PHONE"
invoke-static {v1, v2}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_27
iget-object v0, p0, Lcom/umeng/newxp/view/p;->a:Lcom/umeng/newxp/view/o;
invoke-static {v0}, Lcom/umeng/newxp/view/o;->b(Lcom/umeng/newxp/view/o;)Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "This App has no call_phone permission!"
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:goto_26
return-void
:cond_27
invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-string/jumbo v2, "android.intent.action.CALL"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "tel:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
iget-object v0, p0, Lcom/umeng/newxp/view/p;->a:Lcom/umeng/newxp/view/o;
invoke-static {v0}, Lcom/umeng/newxp/view/o;->b(Lcom/umeng/newxp/view/o;)Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_26
.end method
.method private b(Lcom/umeng/newxp/Promoter;ILcom/umeng/newxp/controller/ExchangeDataService;)V
.registers 7
iget-object v0, p0, Lcom/umeng/newxp/view/p;->a:Lcom/umeng/newxp/view/o;
iget-object v1, p0, Lcom/umeng/newxp/view/p;->a:Lcom/umeng/newxp/view/o;
invoke-static {v1}, Lcom/umeng/newxp/view/o;->b(Lcom/umeng/newxp/view/o;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/o;->a(Landroid/content/Context;)I
move-result v0
new-instance v1, Lcom/umeng/newxp/net/e$a;
iget-object v2, p0, Lcom/umeng/newxp/view/p;->a:Lcom/umeng/newxp/view/o;
invoke-static {v2}, Lcom/umeng/newxp/view/o;->b(Lcom/umeng/newxp/view/o;)Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V
const/4 v2, 0x3
invoke-virtual {v1, v2}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;
move-result-object v1
invoke-virtual {p3}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v1
invoke-virtual {v1, p2}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/p;->a:Lcom/umeng/newxp/view/o;
invoke-static {v1}, Lcom/umeng/newxp/view/o;->c(Lcom/umeng/newxp/view/o;)I
move-result v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Lcom/umeng/newxp/Promoter;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p0, Lcom/umeng/newxp/view/p;->a:Lcom/umeng/newxp/view/o;
invoke-static {v1}, Lcom/umeng/newxp/view/o;->b(Lcom/umeng/newxp/view/o;)Landroid/content/Context;
move-result-object v1
invoke-static {v1, p3}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p3, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p3, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
new-instance v1, Lcom/umeng/newxp/net/c;
iget-object v2, p0, Lcom/umeng/newxp/view/p;->a:Lcom/umeng/newxp/view/o;
invoke-static {v2}, Lcom/umeng/newxp/view/o;->b(Lcom/umeng/newxp/view/o;)Landroid/content/Context;
move-result-object v2
invoke-direct {v1, v2, p1, v0}, Lcom/umeng/newxp/net/c;-><init>(Landroid/content/Context;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/net/e$a;)V
invoke-virtual {v1}, Lcom/umeng/newxp/net/c;->a()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/newxp/view/p; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/umeng/newxp/view/p;->a:Lcom/umeng/newxp/view/o;
invoke-virtual {v0}, Lcom/umeng/newxp/view/o;->dismiss()V
iget-object v0, p0, Lcom/umeng/newxp/view/p;->a:Lcom/umeng/newxp/view/o;
invoke-static {v0}, Lcom/umeng/newxp/view/o;->a(Lcom/umeng/newxp/view/o;)Lcom/umeng/newxp/view/o$a;
move-result-object v0
sget-object v1, Lcom/umeng/newxp/view/o$a;->b:Lcom/umeng/newxp/view/o$a;
if-ne v0, v1, :cond_19
iget-object v0, p0, Lcom/umeng/newxp/view/p;->b:Lcom/umeng/newxp/Promoter;
iget v1, p0, Lcom/umeng/newxp/view/p;->c:I
iget-object v2, p0, Lcom/umeng/newxp/view/p;->d:Lcom/umeng/newxp/controller/ExchangeDataService;
invoke-direct {p0, v0, v1, v2}, Lcom/umeng/newxp/view/p;->a(Lcom/umeng/newxp/Promoter;ILcom/umeng/newxp/controller/ExchangeDataService;)V
:goto_18
const-string v1, " - Lcom/umeng/newxp/view/p; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_19
iget-object v0, p0, Lcom/umeng/newxp/view/p;->b:Lcom/umeng/newxp/Promoter;
iget v1, p0, Lcom/umeng/newxp/view/p;->c:I
iget-object v2, p0, Lcom/umeng/newxp/view/p;->d:Lcom/umeng/newxp/controller/ExchangeDataService;
invoke-direct {p0, v0, v1, v2}, Lcom/umeng/newxp/view/p;->b(Lcom/umeng/newxp/Promoter;ILcom/umeng/newxp/controller/ExchangeDataService;)V
goto :goto_18
.end method