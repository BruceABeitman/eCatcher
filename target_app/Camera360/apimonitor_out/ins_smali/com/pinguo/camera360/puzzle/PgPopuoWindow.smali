.class public Lcom/pinguo/camera360/puzzle/PgPopuoWindow;
.super Landroid/widget/PopupWindow;
.source "PgPopuoWindow.java"
.field private mContentView:Landroid/view/View;
.method public constructor <init>(II)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(II)V
invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->init()V
return-void
.end method
.method public constructor <init>(Landroid/view/View;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V
invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->init()V
return-void
.end method
.method public constructor <init>(Landroid/view/View;II)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V
invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->init()V
return-void
.end method
.method public constructor <init>(Landroid/view/View;IIZ)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V
invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->init()V
return-void
.end method
.method private init()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->setTouchable(Z)V
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->setFocusable(Z)V
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->setOutsideTouchable(Z)V
invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->update()V
return-void
.end method
.method public getWidthInPix()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->mContentView:Landroid/view/View;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->mContentView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getWidth()I
move-result v0
goto :goto_5
.end method
.method public setContentView(Landroid/view/View;)V
.registers 4
invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->mContentView:Landroid/view/View;
if-eqz p1, :cond_19
invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->getContentView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f02014d
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/puzzle/PgPopuoWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_19
return-void
.end method