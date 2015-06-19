.class final Landroid/support/v4/widget/d;
.super Landroid/support/v4/view/a;
.source "DrawerLayout.java"
.field final synthetic b:Landroid/support/v4/widget/DrawerLayout;
.field private final c:Landroid/graphics/Rect;
.method constructor <init>(Landroid/support/v4/widget/DrawerLayout;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/widget/d;->b:Landroid/support/v4/widget/DrawerLayout;
invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/graphics/Rect;
return-void
.end method
.method private a(Landroid/support/v4/view/a/a;Landroid/view/ViewGroup;)V
.registers 7
invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I
move-result v2
const/4 v0, 0x0
move v1, v0
:goto_6
if-ge v1, v2, :cond_2e
invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v4/widget/d;->b(Landroid/view/View;)Z
move-result v3
if-nez v3, :cond_19
invoke-static {v0}, Landroid/support/v4/view/as;->d(Landroid/view/View;)I
move-result v3
packed-switch v3, :pswitch_data_30
:cond_19
:pswitch_19
:goto_19
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6
:pswitch_1d
instance-of v3, v0, Landroid/view/ViewGroup;
if-eqz v3, :cond_19
check-cast v0, Landroid/view/ViewGroup;
invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/d;->a(Landroid/support/v4/view/a/a;Landroid/view/ViewGroup;)V
goto :goto_19
:pswitch_27
invoke-static {v0}, Landroid/support/v4/view/as;->e(Landroid/view/View;)V
:pswitch_2a
invoke-virtual {p1, v0}, Landroid/support/v4/view/a/a;->b(Landroid/view/View;)V
goto :goto_19
:cond_2e
return-void
nop
:pswitch_data_30
.packed-switch 0x0
:pswitch_27
:pswitch_2a
:pswitch_1d
:pswitch_19
:pswitch_19
.end packed-switch
.end method
.method private b(Landroid/view/View;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/d;->b:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout;->a()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_c
if-eq v0, p1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public final a(Landroid/view/View;Landroid/support/v4/view/a/a;)V
.registers 6
invoke-static {p2}, Landroid/support/v4/view/a/a;->a(Landroid/support/v4/view/a/a;)Landroid/support/v4/view/a/a;
move-result-object v1
invoke-super {p0, p1, v1}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/a;)V
const-class v0, Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->b(Ljava/lang/CharSequence;)V
invoke-virtual {p2, p1}, Landroid/support/v4/view/a/a;->a(Landroid/view/View;)V
invoke-static {p1}, Landroid/support/v4/view/as;->h(Landroid/view/View;)Landroid/view/ViewParent;
move-result-object v0
instance-of v2, v0, Landroid/view/View;
if-eqz v2, :cond_20
check-cast v0, Landroid/view/View;
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->c(Landroid/view/View;)V
:cond_20
iget-object v0, p0, Landroid/support/v4/widget/d;->c:Landroid/graphics/Rect;
invoke-virtual {v1, v0}, Landroid/support/v4/view/a/a;->a(Landroid/graphics/Rect;)V
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->b(Landroid/graphics/Rect;)V
invoke-virtual {v1, v0}, Landroid/support/v4/view/a/a;->c(Landroid/graphics/Rect;)V
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->d(Landroid/graphics/Rect;)V
invoke-virtual {v1}, Landroid/support/v4/view/a/a;->d()Z
move-result v0
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->c(Z)V
invoke-virtual {v1}, Landroid/support/v4/view/a/a;->j()Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(Ljava/lang/CharSequence;)V
invoke-virtual {v1}, Landroid/support/v4/view/a/a;->k()Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->b(Ljava/lang/CharSequence;)V
invoke-virtual {v1}, Landroid/support/v4/view/a/a;->l()Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->c(Ljava/lang/CharSequence;)V
invoke-virtual {v1}, Landroid/support/v4/view/a/a;->i()Z
move-result v0
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->h(Z)V
invoke-virtual {v1}, Landroid/support/v4/view/a/a;->g()Z
move-result v0
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->f(Z)V
invoke-virtual {v1}, Landroid/support/v4/view/a/a;->b()Z
move-result v0
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(Z)V
invoke-virtual {v1}, Landroid/support/v4/view/a/a;->c()Z
move-result v0
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->b(Z)V
invoke-virtual {v1}, Landroid/support/v4/view/a/a;->e()Z
move-result v0
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->d(Z)V
invoke-virtual {v1}, Landroid/support/v4/view/a/a;->f()Z
move-result v0
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->e(Z)V
invoke-virtual {v1}, Landroid/support/v4/view/a/a;->h()Z
move-result v0
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->g(Z)V
invoke-virtual {v1}, Landroid/support/v4/view/a/a;->a()I
move-result v0
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(I)V
invoke-virtual {v1}, Landroid/support/v4/view/a/a;->m()V
check-cast p1, Landroid/view/ViewGroup;
invoke-direct {p0, p2, p1}, Landroid/support/v4/widget/d;->a(Landroid/support/v4/view/a/a;Landroid/view/ViewGroup;)V
return-void
.end method
.method public final a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 5
invoke-direct {p0, p2}, Landroid/support/v4/widget/d;->b(Landroid/view/View;)Z
move-result v0
if-nez v0, :cond_b
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 7
invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I
move-result v0
const/16 v1, 0x20
if-ne v0, v1, :cond_38
invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;
move-result-object v1
iget-object v0, p0, Landroid/support/v4/widget/d;->b:Landroid/support/v4/widget/DrawerLayout;
invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout;->a(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_2e
iget-object v2, p0, Landroid/support/v4/widget/d;->b:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v2, v0}, Landroid/support/v4/widget/DrawerLayout;->c(Landroid/view/View;)I
move-result v0
iget-object v2, p0, Landroid/support/v4/widget/d;->b:Landroid/support/v4/widget/DrawerLayout;
invoke-static {v2}, Landroid/support/v4/view/as;->g(Landroid/view/View;)I
move-result v3
invoke-static {v0, v3}, Landroid/support/v4/view/s;->a(II)I
move-result v0
const/4 v3, 0x3
if-ne v0, v3, :cond_30
iget-object v0, v2, Landroid/support/v4/widget/DrawerLayout;->f:Ljava/lang/CharSequence;
:goto_29
if-eqz v0, :cond_2e
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_2e
const/4 v0, 0x1
:goto_2f
return v0
:cond_30
const/4 v3, 0x5
if-ne v0, v3, :cond_36
iget-object v0, v2, Landroid/support/v4/widget/DrawerLayout;->g:Ljava/lang/CharSequence;
goto :goto_29
:cond_36
const/4 v0, 0x0
goto :goto_29
:cond_38
invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
move-result v0
goto :goto_2f
.end method
.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
const-class v0, Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
return-void
.end method