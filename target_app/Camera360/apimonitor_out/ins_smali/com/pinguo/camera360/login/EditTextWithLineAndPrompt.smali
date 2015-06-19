.class public Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;
.super Landroid/widget/EditText;
.source "EditTextWithLineAndPrompt.java"
.field private static final MATCH_EMAIL:[Ljava/lang/String;
.field private mCheckEmail:Z
.field private mDrawPromptText:Z
.field private mEmailCheckFutrue:Lcom/pinguo/camera360/login/model/EmailCheck;
.field private mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
.field private mLinePaint:Landroid/graphics/Paint;
.field private mPromptText:Ljava/lang/String;
.field private mRect:Landroid/graphics/Rect;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x4e
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string/jumbo v2, "gmail.com"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string/jumbo v2, "yahoo.com"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string/jumbo v2, "msn.com"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string/jumbo v2, "hotmail.com"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string/jumbo v2, "163.com"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string/jumbo v2, "126.com"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string/jumbo v2, "sina.com"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string/jumbo v2, "sohu.com"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string/jumbo v2, "tom.com"
aput-object v2, v0, v1
const/16 v1, 0x9
const-string/jumbo v2, "163.net"
aput-object v2, v0, v1
const/16 v1, 0xa
const-string/jumbo v2, "qq.com"
aput-object v2, v0, v1
const/16 v1, 0xb
const-string/jumbo v2, "aol.com"
aput-object v2, v0, v1
const/16 v1, 0xc
const-string/jumbo v2, "263.net"
aput-object v2, v0, v1
const/16 v1, 0xd
const-string/jumbo v2, "live.com"
aput-object v2, v0, v1
const/16 v1, 0xe
const-string/jumbo v2, "ask.com"
aput-object v2, v0, v1
const/16 v1, 0xf
const-string/jumbo v2, "0355.net"
aput-object v2, v0, v1
const/16 v1, 0x10
const-string/jumbo v2, "3721.net"
aput-object v2, v0, v1
const/16 v1, 0x11
const-string/jumbo v2, "yeah.net"
aput-object v2, v0, v1
const/16 v1, 0x12
const-string/jumbo v2, "sogou.com"
aput-object v2, v0, v1
const/16 v1, 0x13
const-string/jumbo v2, "citiz.com"
aput-object v2, v0, v1
const/16 v1, 0x14
const-string/jumbo v2, "21cn.com"
aput-object v2, v0, v1
const/16 v1, 0x15
const-string/jumbo v2, "aim.com"
aput-object v2, v0, v1
const/16 v1, 0x16
const-string/jumbo v2, "mail.com"
aput-object v2, v0, v1
const/16 v1, 0x17
const-string/jumbo v2, "walla.com"
aput-object v2, v0, v1
const/16 v1, 0x18
const-string/jumbo v2, "chinaren.com"
aput-object v2, v0, v1
const/16 v1, 0x19
const-string/jumbo v2, "56.com"
aput-object v2, v0, v1
const/16 v1, 0x1a
const-string/jumbo v2, "hongkong.com"
aput-object v2, v0, v1
const/16 v1, 0x1b
const-string/jumbo v2, "hknet.com"
aput-object v2, v0, v1
const/16 v1, 0x1c
const-string/jumbo v2, "netvigator.com"
aput-object v2, v0, v1
const/16 v1, 0x1d
const-string/jumbo v2, "dnet.net.id"
aput-object v2, v0, v1
const/16 v1, 0x1e
const-string/jumbo v2, "hn.vnn.vn"
aput-object v2, v0, v1
const/16 v1, 0x1f
const-string/jumbo v2, "hcm.fpt.vn"
aput-object v2, v0, v1
const/16 v1, 0x20
const-string/jumbo v2, "hcm.vnn.vn"
aput-object v2, v0, v1
const/16 v1, 0x21
const-string/jumbo v2, "sinos.net"
aput-object v2, v0, v1
const/16 v1, 0x22
const-string/jumbo v2, "netzero.net"
aput-object v2, v0, v1
const/16 v1, 0x23
const-string/jumbo v2, "twcny.rr.com"
aput-object v2, v0, v1
const/16 v1, 0x24
const-string/jumbo v2, "comcast.net"
aput-object v2, v0, v1
const/16 v1, 0x25
const-string/jumbo v2, "warwick.net"
aput-object v2, v0, v1
const/16 v1, 0x26
const-string/jumbo v2, "cs.com"
aput-object v2, v0, v1
const/16 v1, 0x27
const-string/jumbo v2, "verizon.net"
aput-object v2, v0, v1
const/16 v1, 0x28
const-string/jumbo v2, "candel.co.jp"
aput-object v2, v0, v1
const/16 v1, 0x29
const-string/jumbo v2, "vsnl.com"
aput-object v2, v0, v1
const/16 v1, 0x2a
const-string/jumbo v2, "wilnetonline.net"
aput-object v2, v0, v1
const/16 v1, 0x2b
const-string/jumbo v2, "cal3.vsnl.net.in"
aput-object v2, v0, v1
const/16 v1, 0x2c
const-string/jumbo v2, "rediffmail.com"
aput-object v2, v0, v1
const/16 v1, 0x2d
const-string/jumbo v2, "sancharnet.in"
aput-object v2, v0, v1
const/16 v1, 0x2e
const-string/jumbo v2, "prodigy.net.mx"
aput-object v2, v0, v1
const/16 v1, 0x2f
const-string/jumbo v2, "wannado.fr"
aput-object v2, v0, v1
const/16 v1, 0x30
const-string/jumbo v2, "mindspring.com"
aput-object v2, v0, v1
const/16 v1, 0x31
const-string/jumbo v2, "excite.com"
aput-object v2, v0, v1
const/16 v1, 0x32
const-string/jumbo v2, "libero.it"
aput-object v2, v0, v1
const/16 v1, 0x33
const-string/jumbo v2, "pacific.net.sg"
aput-object v2, v0, v1
const/16 v1, 0x34
const-string/jumbo v2, "cyber.net.pk"
aput-object v2, v0, v1
const/16 v1, 0x35
const-string/jumbo v2, "webmail.co.za"
aput-object v2, v0, v1
const/16 v1, 0x36
const-string/jumbo v2, "xtra.co.nz"
aput-object v2, v0, v1
const/16 v1, 0x37
const-string/jumbo v2, "eim.ae"
aput-object v2, v0, v1
const/16 v1, 0x38
const-string/jumbo v2, "superonline.com"
aput-object v2, v0, v1
const/16 v1, 0x39
const-string/jumbo v2, "yemen.net.ye"
aput-object v2, v0, v1
const/16 v1, 0x3a
const-string/jumbo v2, "bigpond.com"
aput-object v2, v0, v1
const/16 v1, 0x3b
const-string/jumbo v2, "otenet.gr"
aput-object v2, v0, v1
const/16 v1, 0x3c
const-string/jumbo v2, "cyber.net.pk"
aput-object v2, v0, v1
const/16 v1, 0x3d
const-string/jumbo v2, "zamnet.zm"
aput-object v2, v0, v1
const/16 v1, 0x3e
const-string/jumbo v2, "amet.com.ar"
aput-object v2, v0, v1
const/16 v1, 0x3f
const-string/jumbo v2, "sotelgui.net.gn"
aput-object v2, v0, v1
const/16 v1, 0x40
const-string/jumbo v2, "citechco.net"
aput-object v2, v0, v1
const/16 v1, 0x41
const-string/jumbo v2, "terra.es"
aput-object v2, v0, v1
const/16 v1, 0x42
const-string/jumbo v2, "iway.na"
aput-object v2, v0, v1
const/16 v1, 0x43
const-string/jumbo v2, "ntc.net.np"
aput-object v2, v0, v1
const/16 v1, 0x44
const-string/jumbo v2, "mynet.com"
aput-object v2, v0, v1
const/16 v1, 0x45
const-string/jumbo v2, "indigo.ie"
aput-object v2, v0, v1
const/16 v1, 0x46
const-string/jumbo v2, "nesma.net.sa"
aput-object v2, v0, v1
const/16 v1, 0x47
const-string/jumbo v2, "mail.mn"
aput-object v2, v0, v1
const/16 v1, 0x48
const-string/jumbo v2, "tiscali.co.uk"
aput-object v2, v0, v1
const/16 v1, 0x49
const-string/jumbo v2, "caron.se"
aput-object v2, v0, v1
const/16 v1, 0x4a
const-string/jumbo v2, "vodamail.co.za"
aput-object v2, v0, v1
const/16 v1, 0x4b
const-string/jumbo v2, "eunet.at"
aput-object v2, v0, v1
const/16 v1, 0x4c
const-string/jumbo v2, "spark.net.gr"
aput-object v2, v0, v1
const/16 v1, 0x4d
const-string/jumbo v2, "swiszcz.com"
aput-object v2, v0, v1
sput-object v0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->MATCH_EMAIL:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mPromptText:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mDrawPromptText:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mCheckEmail:Z
invoke-direct {p0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mPromptText:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mDrawPromptText:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mCheckEmail:Z
invoke-direct {p0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mPromptText:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mDrawPromptText:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mCheckEmail:Z
invoke-direct {p0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->init()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mPromptText:Ljava/lang/String;
return-void
.end method
.method static synthetic access$2()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->MATCH_EMAIL:[Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mDrawPromptText:Z
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mPromptText:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mCheckEmail:Z
return v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->checkEmailValidate(Ljava/lang/String;)V
return-void
.end method
.method private checkEmailValidate(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
const/4 v1, 0x3
invoke-interface {v0, v1}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;->showEmailCheckStatus(I)V
:cond_a
iget-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mEmailCheckFutrue:Lcom/pinguo/camera360/login/model/EmailCheck;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mEmailCheckFutrue:Lcom/pinguo/camera360/login/model/EmailCheck;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/EmailCheck;->cancel(Z)Z
:cond_14
new-instance v0, Lcom/pinguo/camera360/login/model/EmailCheck;
invoke-virtual {p0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Lcom/pinguo/camera360/login/model/EmailCheck;-><init>(Landroid/content/Context;Ljava/lang/String;)V
iput-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mEmailCheckFutrue:Lcom/pinguo/camera360/login/model/EmailCheck;
iget-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mEmailCheckFutrue:Lcom/pinguo/camera360/login/model/EmailCheck;
new-instance v1, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$3;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$3;-><init>(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/EmailCheck;->get(Lcom/pinguo/lib/os/AsyncResult;)V
return-void
.end method
.method private init()V
.registers 3
new-instance v0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$1;-><init>(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->addTextChangedListener(Landroid/text/TextWatcher;)V
new-instance v0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$2;-><init>(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mLinePaint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mLinePaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mLinePaint:Landroid/graphics/Paint;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mRect:Landroid/graphics/Rect;
return-void
.end method
.method public cancelEmailCheck()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mEmailCheckFutrue:Lcom/pinguo/camera360/login/model/EmailCheck;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mEmailCheckFutrue:Lcom/pinguo/camera360/login/model/EmailCheck;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/login/model/EmailCheck;->cancel(Z)Z
:cond_a
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 11
const/4 v4, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mPromptText:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_33
iget-boolean v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mDrawPromptText:Z
if-eqz v0, :cond_33
iget-object v7, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mRect:Landroid/graphics/Rect;
invoke-virtual {p0, v4, v7}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getLineBounds(ILandroid/graphics/Rect;)I
new-instance v8, Landroid/graphics/Paint;
invoke-virtual {p0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getPaint()Landroid/text/TextPaint;
move-result-object v0
invoke-direct {v8, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V
const v0, -0x7f000001
invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V
const/4 v6, 0x1
iget-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mPromptText:Ljava/lang/String;
iget v1, v7, Landroid/graphics/Rect;->left:I
int-to-float v1, v1
iget v2, v7, Landroid/graphics/Rect;->bottom:I
invoke-virtual {p0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getPaddingBottom()I
move-result v3
sub-int/2addr v2, v3
sub-int/2addr v2, v6
int-to-float v2, v2
invoke-virtual {p1, v0, v1, v2, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
:cond_33
iget-object v5, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mLinePaint:Landroid/graphics/Paint;
iget-object v7, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mRect:Landroid/graphics/Rect;
invoke-virtual {p0, v4, v7}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getLineBounds(ILandroid/graphics/Rect;)I
iget v0, v7, Landroid/graphics/Rect;->left:I
invoke-virtual {p0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getPaddingLeft()I
move-result v1
sub-int/2addr v0, v1
int-to-float v1, v0
invoke-virtual {p0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getHeight()I
move-result v0
add-int/lit8 v0, v0, -0x1
int-to-float v2, v0
iget v0, v7, Landroid/graphics/Rect;->right:I
invoke-virtual {p0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getPaddingRight()I
move-result v3
add-int/2addr v0, v3
int-to-float v3, v0
invoke-virtual {p0}, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->getHeight()I
move-result v0
add-int/lit8 v0, v0, -0x1
int-to-float v4, v0
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V
return-void
.end method
.method public setIsCheckEmail(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mCheckEmail:Z
return-void
.end method
.method public setmHideErrorPromptListerner(Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt;->mHideErrorPromptListerner:Lcom/pinguo/camera360/login/EditTextWithLineAndPrompt$HideErrorPromptListerner;
return-void
.end method