.class public Lcom/umeng/newxp/view/aI;
.super Landroid/app/AlertDialog;
.source "SimpleDownloadDialog.java"
.field private a:Landroid/content/Context;
.field private b:Lcom/umeng/newxp/Promoter;
.field private c:I
.field private d:I
.method public constructor <init>(Landroid/content/Context;Lcom/umeng/newxp/Promoter;IILcom/umeng/newxp/controller/ExchangeDataService;)V
.registers 9
invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V
iput-object p1, p0, Lcom/umeng/newxp/view/aI;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/umeng/newxp/view/aI;->b:Lcom/umeng/newxp/Promoter;
iput p3, p0, Lcom/umeng/newxp/view/aI;->c:I
iput p4, p0, Lcom/umeng/newxp/view/aI;->d:I
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "\u4e0b\u8f7d"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/umeng/newxp/view/aI;->b:Lcom/umeng/newxp/Promoter;
iget-object v1, v1, Lcom/umeng/newxp/Promoter;->title:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/umeng/newxp/view/aI;->setMessage(Ljava/lang/CharSequence;)V
const/4 v0, -0x1
const-string/jumbo v1, "\u4e0b\u8f7d"
new-instance v2, Lcom/umeng/newxp/view/aJ;
invoke-direct {v2, p0, p5}, Lcom/umeng/newxp/view/aJ;-><init>(Lcom/umeng/newxp/view/aI;Lcom/umeng/newxp/controller/ExchangeDataService;)V
invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/newxp/view/aI;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
const/4 v0, -0x2
const-string/jumbo v1, "\u4e0b\u8f7d"
new-instance v2, Lcom/umeng/newxp/view/aK;
invoke-direct {v2, p0}, Lcom/umeng/newxp/view/aK;-><init>(Lcom/umeng/newxp/view/aI;)V
invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/newxp/view/aI;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
return-void
.end method
.method static synthetic a(Lcom/umeng/newxp/view/aI;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/aI;->a:Landroid/content/Context;
return-object v0
.end method
.method static synthetic b(Lcom/umeng/newxp/view/aI;)I
.registers 2
iget v0, p0, Lcom/umeng/newxp/view/aI;->d:I
return v0
.end method
.method static synthetic c(Lcom/umeng/newxp/view/aI;)I
.registers 2
iget v0, p0, Lcom/umeng/newxp/view/aI;->c:I
return v0
.end method
.method static synthetic d(Lcom/umeng/newxp/view/aI;)Lcom/umeng/newxp/Promoter;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/aI;->b:Lcom/umeng/newxp/Promoter;
return-object v0
.end method
.method  a(Landroid/content/Context;)I
.registers 5
const/4 v1, 0x3
const/4 v0, 0x2
iget v2, p0, Lcom/umeng/newxp/view/aI;->c:I
packed-switch v2, :pswitch_data_c
:pswitch_7
:goto_7
return v0
:pswitch_8
move v0, v1
goto :goto_7
:pswitch_a
move v0, v1
goto :goto_7
:pswitch_data_c
.packed-switch 0x0
:pswitch_7
:pswitch_7
:pswitch_7
:pswitch_7
:pswitch_a
:pswitch_a
:pswitch_7
:pswitch_8
:pswitch_7
:pswitch_7
.end packed-switch
.end method