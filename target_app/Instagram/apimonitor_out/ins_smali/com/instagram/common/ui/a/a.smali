.class public final Lcom/instagram/common/ui/a/a;
.super Ljava/lang/Object;
.source "AlphaHelper.java"
.field private a:Landroid/view/animation/AlphaAnimation;
.field private b:Landroid/view/animation/AlphaAnimation;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a()Landroid/view/animation/AlphaAnimation;
.registers 2
iget-object v0, p0, Lcom/instagram/common/ui/a/a;->b:Landroid/view/animation/AlphaAnimation;
if-nez v0, :cond_c
const/high16 v0, 0x3f80
invoke-static {v0}, Lcom/instagram/common/ui/a/a;->a(F)Landroid/view/animation/AlphaAnimation;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/ui/a/a;->b:Landroid/view/animation/AlphaAnimation;
:cond_c
iget-object v0, p0, Lcom/instagram/common/ui/a/a;->b:Landroid/view/animation/AlphaAnimation;
return-object v0
.end method
.method private static a(F)Landroid/view/animation/AlphaAnimation;
.registers 4
new-instance v0, Landroid/view/animation/AlphaAnimation;
invoke-direct {v0, p0, p0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
return-object v0
.end method
.method private b()Landroid/view/animation/AlphaAnimation;
.registers 2
iget-object v0, p0, Lcom/instagram/common/ui/a/a;->a:Landroid/view/animation/AlphaAnimation;
if-nez v0, :cond_b
const/4 v0, 0x0
invoke-static {v0}, Lcom/instagram/common/ui/a/a;->a(F)Landroid/view/animation/AlphaAnimation;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/ui/a/a;->a:Landroid/view/animation/AlphaAnimation;
:cond_b
iget-object v0, p0, Lcom/instagram/common/ui/a/a;->a:Landroid/view/animation/AlphaAnimation;
return-object v0
.end method
.method private static b(Landroid/view/View;F)V
.registers 2
invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V
return-void
.end method
.method public final a(Landroid/view/View;)V
.registers 3
const/high16 v0, 0x3f80
invoke-virtual {p0, p1, v0}, Lcom/instagram/common/ui/a/a;->a(Landroid/view/View;F)V
return-void
.end method
.method public final a(Landroid/view/View;F)V
.registers 5
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_a
invoke-static {p1, p2}, Lcom/instagram/common/ui/a/a;->b(Landroid/view/View;F)V
:goto_9
return-void
:cond_a
const/4 v0, 0x0
cmpl-float v0, p2, v0
if-nez v0, :cond_17
invoke-direct {p0}, Lcom/instagram/common/ui/a/a;->b()Landroid/view/animation/AlphaAnimation;
move-result-object v0
:goto_13
invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_9
:cond_17
const/high16 v0, 0x3f80
cmpl-float v0, p2, v0
if-nez v0, :cond_22
invoke-direct {p0}, Lcom/instagram/common/ui/a/a;->a()Landroid/view/animation/AlphaAnimation;
move-result-object v0
goto :goto_13
:cond_22
invoke-static {p2}, Lcom/instagram/common/ui/a/a;->a(F)Landroid/view/animation/AlphaAnimation;
move-result-object v0
goto :goto_13
.end method
.method public final b(Landroid/view/View;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/instagram/common/ui/a/a;->a(Landroid/view/View;F)V
return-void
.end method