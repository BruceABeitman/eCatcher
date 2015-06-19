.class public Lcom/umeng/newxp/controller/b;
.super Ljava/lang/Object;
.source "DisplayManager.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
.registers 8
new-instance v0, Lcom/umeng/newxp/net/e$a;
invoke-direct {v0, p0}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V
const/4 v1, 0x7
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0, p4}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Lcom/umeng/newxp/Promoter;
const/4 v2, 0x0
aput-object p3, v1, v2
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {p1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-static {p0, p1}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
new-instance v1, Lcom/umeng/newxp/net/c;
invoke-direct {v1, p0, p3, v0}, Lcom/umeng/newxp/net/c;-><init>(Landroid/content/Context;Lcom/umeng/newxp/Promoter;Lcom/umeng/newxp/net/e$a;)V
invoke-virtual {v1}, Lcom/umeng/newxp/net/c;->a()V
return-void
.end method
.method public static a(Lcom/umeng/newxp/Promoter;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZ)V
.registers 11
const/4 v5, 0x0
new-instance v0, Lcom/umeng/newxp/controller/a$a;
invoke-direct {v0, p0, v5}, Lcom/umeng/newxp/controller/a$a;-><init>(Lcom/umeng/newxp/Promoter;I)V
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-static/range {v0 .. v5}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZI)V
return-void
.end method
.method private static a(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
.registers 14
new-instance v0, Lcom/umeng/newxp/net/e$a;
invoke-direct {v0, p1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0, p5}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Lcom/umeng/newxp/Promoter;
const/4 v2, 0x0
aput-object p4, v1, v2
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {p2}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-static {p1, p2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p2, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p2, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;
move-result-object v0
new-instance v1, Lcom/umeng/newxp/net/XpReportClient;
invoke-direct {v1, p1}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/n;Lcom/umeng/common/net/m$a;)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "umeng_xp_dialog_download_window"
const-string/jumbo v3, "style"
invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v6
new-instance v0, Lcom/umeng/newxp/view/o;
iget v4, p0, Lcom/umeng/newxp/controller/a$a;->b:I
sget-object v7, Lcom/umeng/newxp/view/o$a;->b:Lcom/umeng/newxp/view/o$a;
move-object v1, p1
move-object v2, p4
move v3, p3
move-object v5, p2
invoke-direct/range {v0 .. v7}, Lcom/umeng/newxp/view/o;-><init>(Landroid/content/Context;Lcom/umeng/newxp/Promoter;IILcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/view/o$a;)V
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method public static a(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;IZI)V
.registers 12
const/4 v3, 0x0
iget-object v4, p0, Lcom/umeng/newxp/controller/a$a;->a:Lcom/umeng/newxp/Promoter;
iget-object v0, v4, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/umeng/common/b;->a(Ljava/lang/String;Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_f
invoke-static {p1, p2, p3, v4, p5}, Lcom/umeng/newxp/controller/b;->d(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
:goto_e
return-void
:cond_f
iget-object v0, v4, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_37
sget-object v2, Lcom/umeng/newxp/Promoter$a;->a:Lcom/umeng/newxp/Promoter$a;
invoke-virtual {v2}, Lcom/umeng/newxp/Promoter$a;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_37
invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/umeng/newxp/controller/ExchangeDataService;
invoke-direct {v1, v0}, Lcom/umeng/newxp/controller/ExchangeDataService;-><init>(Ljava/lang/String;)V
const/4 v0, 0x7
iput v0, v1, Lcom/umeng/newxp/controller/ExchangeDataService;->layoutType:I
invoke-static {p1, v1, v3, v3, v3}, Lcom/umeng/newxp/view/au;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;Ljava/util/List;Lcom/umeng/newxp/view/GridTemplateConfig;Lcom/umeng/newxp/view/ExHeader;)V
goto :goto_e
:cond_37
if-eqz v1, :cond_4e
sget-object v0, Lcom/umeng/newxp/Promoter$a;->b:Lcom/umeng/newxp/Promoter$a;
invoke-virtual {v0}, Lcom/umeng/newxp/Promoter$a;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4e
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v5, p5
invoke-static/range {v0 .. v5}, Lcom/umeng/newxp/controller/b;->a(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
goto :goto_e
:cond_4e
iget v0, v4, Lcom/umeng/newxp/Promoter;->landing_type:I
if-eqz p4, :cond_55
if-nez v0, :cond_55
const/4 v0, 0x1
:cond_55
packed-switch v0, :pswitch_data_6e
goto :goto_e
:pswitch_59
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v5, p5
invoke-static/range {v0 .. v5}, Lcom/umeng/newxp/controller/b;->b(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
goto :goto_e
:pswitch_62
invoke-static {p1, p2, p3, v4, p5}, Lcom/umeng/newxp/controller/b;->c(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
goto :goto_e
:pswitch_66
invoke-static {p1, p2, p3, v4, p5}, Lcom/umeng/newxp/controller/b;->b(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
goto :goto_e
:pswitch_6a
invoke-static {p1, p2, p3, v4, p5}, Lcom/umeng/newxp/controller/b;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
goto :goto_e
:pswitch_data_6e
.packed-switch 0x0
:pswitch_59
:pswitch_6a
:pswitch_62
:pswitch_66
:pswitch_62
.end packed-switch
.end method
.method private static b(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
.registers 9
const/4 v3, 0x0
new-instance v0, Lcom/umeng/newxp/net/e$a;
invoke-direct {v0, p0}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0, p4}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Lcom/umeng/newxp/Promoter;
aput-object p3, v1, v3
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {p1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-static {p0, p1}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;
move-result-object v0
new-instance v1, Lcom/umeng/newxp/net/XpReportClient;
invoke-direct {v1, p0}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/n;Lcom/umeng/common/net/m$a;)V
:try_start_4a
iget-object v0, p3, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-string/jumbo v2, "android.intent.action.VIEW"
invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:goto_5b
:try_end_5b
.catch Landroid/content/ActivityNotFoundException; {:try_start_4a .. :try_end_5b} :catch_5c
return-void
:catch_5c
move-exception v0
sget-object v1, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;
move-result-object v0
const-string/jumbo v1, "umeng_xp_no_browser_tips"
invoke-virtual {v0, v1}, Lcom/umeng/common/c;->f(Ljava/lang/String;)I
move-result v0
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_5b
.end method
.method private static b(Lcom/umeng/newxp/controller/a$a;Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
.registers 14
const/4 v2, 0x1
invoke-static {p1}, Lcom/umeng/newxp/a/d;->n(Landroid/content/Context;)I
move-result v0
if-le v2, v0, :cond_13
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v1, "no resource open download dialog."
invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1, p2, p3, p4, p5}, Lcom/umeng/newxp/controller/b;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
:goto_12
return-void
:cond_13
new-instance v0, Lcom/umeng/newxp/net/e$a;
invoke-direct {v0, p1}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0, p5}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
new-array v1, v2, [Lcom/umeng/newxp/Promoter;
const/4 v2, 0x0
aput-object p4, v1, v2
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {p2}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-static {p1, p2}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p2, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p2, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;
move-result-object v0
new-instance v1, Lcom/umeng/newxp/net/XpReportClient;
invoke-direct {v1, p1}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/n;Lcom/umeng/common/net/m$a;)V
sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->USE_SIMPLE_DIALOG:Z
if-eqz v0, :cond_6f
new-instance v0, Lcom/umeng/newxp/view/aI;
iget v4, p0, Lcom/umeng/newxp/controller/a$a;->b:I
move-object v1, p1
move-object v2, p4
move v3, p3
move-object v5, p2
invoke-direct/range {v0 .. v5}, Lcom/umeng/newxp/view/aI;-><init>(Landroid/content/Context;Lcom/umeng/newxp/Promoter;IILcom/umeng/newxp/controller/ExchangeDataService;)V
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
goto :goto_12
:cond_6f
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "umeng_xp_dialog_download_window"
const-string/jumbo v3, "style"
invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v6
new-instance v0, Lcom/umeng/newxp/view/o;
iget v4, p0, Lcom/umeng/newxp/controller/a$a;->b:I
sget-object v7, Lcom/umeng/newxp/view/o$a;->a:Lcom/umeng/newxp/view/o$a;
move-object v1, p1
move-object v2, p4
move v3, p3
move-object v5, p2
invoke-direct/range {v0 .. v7}, Lcom/umeng/newxp/view/o;-><init>(Landroid/content/Context;Lcom/umeng/newxp/Promoter;IILcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/view/o$a;)V
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
goto :goto_12
.end method
.method private static c(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
.registers 8
const/4 v2, 0x1
invoke-static {p0}, Lcom/umeng/newxp/a/d;->q(Landroid/content/Context;)I
move-result v0
if-le v2, v0, :cond_13
sget-object v0, Lcom/umeng/newxp/common/ExchangeConstants;->LOG_TAG:Ljava/lang/String;
const-string/jumbo v1, "no resource open native webview."
invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0, p1, p2, p3, p4}, Lcom/umeng/newxp/controller/b;->b(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
:goto_12
return-void
:cond_13
new-instance v0, Lcom/umeng/newxp/net/e$a;
invoke-direct {v0, p0}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0, p4}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
new-array v1, v2, [Lcom/umeng/newxp/Promoter;
const/4 v2, 0x0
aput-object p3, v1, v2
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {p1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-static {p0, p1}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;
move-result-object v0
new-instance v1, Lcom/umeng/newxp/net/XpReportClient;
invoke-direct {v1, p0}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/n;Lcom/umeng/common/net/m$a;)V
new-instance v0, Lcom/umeng/newxp/view/LandingWebViewDialog;
iget-object v1, p3, Lcom/umeng/newxp/Promoter;->url:Ljava/lang/String;
invoke-direct {v0, p0, v1}, Lcom/umeng/newxp/view/LandingWebViewDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->show()V
goto :goto_12
.end method
.method private static d(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;ILcom/umeng/newxp/Promoter;I)V
.registers 8
const/4 v2, 0x0
new-instance v0, Lcom/umeng/newxp/net/e$a;
invoke-direct {v0, p0}, Lcom/umeng/newxp/net/e$a;-><init>(Landroid/content/Context;)V
const/4 v1, 0x5
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0, p4}, Lcom/umeng/newxp/net/e$a;->b(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/umeng/newxp/net/e$a;->d(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/umeng/newxp/net/e$a;->c(I)Lcom/umeng/newxp/net/e$a;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Lcom/umeng/newxp/Promoter;
aput-object p3, v1, v2
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a([Lcom/umeng/newxp/Promoter;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {p1}, Lcom/umeng/newxp/controller/ExchangeDataService;->getTimeConsuming()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->d(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-static {p0, p1}, Lcom/umeng/newxp/common/g;->a(Landroid/content/Context;Lcom/umeng/newxp/controller/ExchangeDataService;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->b(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->slot_id:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->a(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
iget-object v1, p1, Lcom/umeng/newxp/controller/ExchangeDataService;->sessionId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/umeng/newxp/net/e$a;->c(Ljava/lang/String;)Lcom/umeng/newxp/net/e$a;
move-result-object v0
invoke-virtual {v0}, Lcom/umeng/newxp/net/e$a;->a()Lcom/umeng/newxp/net/e;
move-result-object v0
new-instance v1, Lcom/umeng/newxp/net/XpReportClient;
invoke-direct {v1, p0}, Lcom/umeng/newxp/net/XpReportClient;-><init>(Landroid/content/Context;)V
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/umeng/newxp/net/XpReportClient;->sendAsync(Lcom/umeng/common/net/n;Lcom/umeng/common/net/m$a;)V
iget-object v0, p3, Lcom/umeng/newxp/Promoter;->url_in_app:Ljava/lang/String;
invoke-static {v0}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_57
iget-object v0, p3, Lcom/umeng/newxp/Promoter;->url_in_app:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/umeng/common/util/g;->b(Landroid/content/Context;Ljava/lang/String;)Z
:goto_56
return-void
:cond_57
iget-object v0, p3, Lcom/umeng/newxp/Promoter;->app_package_name:Ljava/lang/String;
invoke-static {p0, v0}, Lcom/umeng/common/util/g;->a(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_56
.end method