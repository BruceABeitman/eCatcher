.class public final Lcom/instagram/creation/video/ui/l;
.super Landroid/widget/PopupWindow;
.source "SoftDeletePopupWindow.java"
.field private final a:Lcom/instagram/creation/video/a;
.field private b:F
.field private c:F
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/creation/video/a;Landroid/view/View;)V
.registers 7
const/4 v1, -0x1
new-instance v0, Landroid/widget/FrameLayout;
invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V
iput-object p2, p0, Lcom/instagram/creation/video/ui/l;->a:Lcom/instagram/creation/video/a;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
invoke-virtual {p3, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z
invoke-virtual {p0}, Lcom/instagram/creation/video/ui/l;->getContentView()Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/creation/video/ui/m;
invoke-direct {v2, p0, v0, p3}, Lcom/instagram/creation/video/ui/m;-><init>(Lcom/instagram/creation/video/ui/l;Landroid/graphics/Rect;Landroid/view/View;)V
invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
invoke-virtual {p0}, Lcom/instagram/creation/video/ui/l;->getContentView()Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/creation/video/ui/n;
invoke-direct {v2, p0, v0, p3}, Lcom/instagram/creation/video/ui/n;-><init>(Lcom/instagram/creation/video/ui/l;Landroid/graphics/Rect;Landroid/view/View;)V
invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/creation/video/ui/l;)F
.registers 2
iget v0, p0, Lcom/instagram/creation/video/ui/l;->b:F
return v0
.end method
.method static synthetic a(Lcom/instagram/creation/video/ui/l;F)F
.registers 2
iput p1, p0, Lcom/instagram/creation/video/ui/l;->b:F
return p1
.end method
.method static synthetic b(Lcom/instagram/creation/video/ui/l;)F
.registers 2
iget v0, p0, Lcom/instagram/creation/video/ui/l;->c:F
return v0
.end method
.method static synthetic b(Lcom/instagram/creation/video/ui/l;F)F
.registers 2
iput p1, p0, Lcom/instagram/creation/video/ui/l;->c:F
return p1
.end method
.method static synthetic c(Lcom/instagram/creation/video/ui/l;)Lcom/instagram/creation/video/a;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/ui/l;->a:Lcom/instagram/creation/video/a;
return-object v0
.end method