.class public Lcom/instagram/camera/ShutterButton;
.super Landroid/widget/ImageView;
.source "ShutterButton.java"
.field private a:Lcom/instagram/camera/r;
.field private b:Z
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/camera/ShutterButton;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/camera/ShutterButton;->a(Z)V
return-void
.end method
.method private a(Z)V
.registers 3
iget-object v0, p0, Lcom/instagram/camera/ShutterButton;->a:Lcom/instagram/camera/r;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/camera/ShutterButton;->a:Lcom/instagram/camera/r;
invoke-interface {v0, p1}, Lcom/instagram/camera/r;->a(Z)V
:cond_9
return-void
.end method
.method protected drawableStateChanged()V
.registers 3
invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V
invoke-virtual {p0}, Lcom/instagram/camera/ShutterButton;->isPressed()Z
move-result v0
iget-boolean v1, p0, Lcom/instagram/camera/ShutterButton;->b:Z
if-eq v0, v1, :cond_17
if-nez v0, :cond_18
new-instance v1, Lcom/instagram/camera/q;
invoke-direct {v1, p0, v0}, Lcom/instagram/camera/q;-><init>(Lcom/instagram/camera/ShutterButton;Z)V
invoke-virtual {p0, v1}, Lcom/instagram/camera/ShutterButton;->post(Ljava/lang/Runnable;)Z
:goto_15
iput-boolean v0, p0, Lcom/instagram/camera/ShutterButton;->b:Z
:cond_17
return-void
:cond_18
invoke-direct {p0, v0}, Lcom/instagram/camera/ShutterButton;->a(Z)V
goto :goto_15
.end method
.method public performClick()Z
.registers 3
invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z
move-result v0
iget-object v1, p0, Lcom/instagram/camera/ShutterButton;->a:Lcom/instagram/camera/r;
if-eqz v1, :cond_d
iget-object v1, p0, Lcom/instagram/camera/ShutterButton;->a:Lcom/instagram/camera/r;
invoke-interface {v1}, Lcom/instagram/camera/r;->f()V
:cond_d
return v0
.end method
.method public setOnShutterButtonListener(Lcom/instagram/camera/r;)V
.registers 2
iput-object p1, p0, Lcom/instagram/camera/ShutterButton;->a:Lcom/instagram/camera/r;
return-void
.end method