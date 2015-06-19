.class public Lcom/umeng/newxp/view/UGallery;
.super Landroid/widget/Gallery;
.source "UGallery.java"
.field private static final b:Ljava/lang/String;
.field private a:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/umeng/newxp/view/UGallery;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/umeng/newxp/view/UGallery;->b:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/umeng/newxp/view/UGallery;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0}, Lcom/umeng/newxp/view/UGallery;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-direct {p0}, Lcom/umeng/newxp/view/UGallery;->a()V
return-void
.end method
.method private a()V
.registers 1
return-void
.end method
.method private a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
.registers 5
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
cmpl-float v0, v0, v1
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public isTouch()Z
.registers 2
iget-boolean v0, p0, Lcom/umeng/newxp/view/UGallery;->a:Z
return v0
.end method
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 7
invoke-direct {p0, p1, p2}, Lcom/umeng/newxp/view/UGallery;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
move-result v0
if-eqz v0, :cond_16
sget-object v0, Lcom/umeng/newxp/view/UGallery;->b:Ljava/lang/String;
const-string/jumbo v1, "fling Left"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
const/16 v0, 0x15
:goto_10
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/umeng/newxp/view/UGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z
const/4 v0, 0x1
return v0
:cond_16
sget-object v0, Lcom/umeng/newxp/view/UGallery;->b:Ljava/lang/String;
const-string/jumbo v1, "fling Right"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
const/16 v0, 0x16
goto :goto_10
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_14
:goto_7
invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
:pswitch_c
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/umeng/newxp/view/UGallery;->a:Z
goto :goto_7
:pswitch_10
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/umeng/newxp/view/UGallery;->a:Z
goto :goto_7
:pswitch_data_14
.packed-switch 0x0
:pswitch_c
:pswitch_10
.end packed-switch
.end method
.method public postDelayedScrollNext()V
.registers 3
sget-object v0, Lcom/umeng/newxp/view/UGallery;->b:Ljava/lang/String;
const-string/jumbo v1, "postDelayedScrollNext Right"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
const/16 v0, 0x16
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/umeng/newxp/view/UGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z
return-void
.end method