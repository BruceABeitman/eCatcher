.class public final Lcom/instagram/ui/f/a;
.super Ljava/lang/Object;
.source "PopupWindowBuilder.java"
.field private a:Landroid/view/View;
.field private b:Lcom/instagram/ui/f/f;
.field private c:Landroid/widget/PopupWindow;
.field private d:I
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/instagram/ui/f/a;->d:I
return-void
.end method
.method public static a()Lcom/instagram/ui/f/a;
.registers 1
new-instance v0, Lcom/instagram/ui/f/a;
invoke-direct {v0}, Lcom/instagram/ui/f/a;-><init>()V
return-object v0
.end method
.method public final a(Landroid/view/View;)Lcom/instagram/ui/f/a;
.registers 2
iput-object p1, p0, Lcom/instagram/ui/f/a;->a:Landroid/view/View;
return-object p0
.end method
.method public final a(Lcom/instagram/ui/f/f;)Lcom/instagram/ui/f/a;
.registers 2
iput-object p1, p0, Lcom/instagram/ui/f/a;->b:Lcom/instagram/ui/f/f;
return-object p0
.end method
.method public final a(Landroid/content/Context;)Lcom/instagram/ui/f/b;
.registers 6
iget-object v0, p0, Lcom/instagram/ui/f/a;->c:Landroid/widget/PopupWindow;
if-nez v0, :cond_16
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-ge v0, v1, :cond_2f
new-instance v0, Landroid/widget/PopupWindow;
new-instance v1, Landroid/view/View;
invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V
iput-object v0, p0, Lcom/instagram/ui/f/a;->c:Landroid/widget/PopupWindow;
:cond_16
:goto_16
iget-object v0, p0, Lcom/instagram/ui/f/a;->c:Landroid/widget/PopupWindow;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V
iget-object v0, p0, Lcom/instagram/ui/f/a;->c:Landroid/widget/PopupWindow;
iget v1, p0, Lcom/instagram/ui/f/a;->d:I
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V
new-instance v0, Lcom/instagram/ui/f/b;
iget-object v1, p0, Lcom/instagram/ui/f/a;->a:Landroid/view/View;
iget-object v2, p0, Lcom/instagram/ui/f/a;->b:Lcom/instagram/ui/f/f;
iget-object v3, p0, Lcom/instagram/ui/f/a;->c:Landroid/widget/PopupWindow;
invoke-direct {v0, v1, v2, v3}, Lcom/instagram/ui/f/b;-><init>(Landroid/view/View;Lcom/instagram/ui/f/f;Landroid/widget/PopupWindow;)V
return-object v0
:cond_2f
new-instance v0, Landroid/widget/PopupWindow;
invoke-direct {v0}, Landroid/widget/PopupWindow;-><init>()V
iput-object v0, p0, Lcom/instagram/ui/f/a;->c:Landroid/widget/PopupWindow;
goto :goto_16
.end method
.method public final b()Lcom/instagram/ui/f/a;
.registers 2
const/4 v0, 0x1
iput v0, p0, Lcom/instagram/ui/f/a;->d:I
return-object p0
.end method