.class final Landroid/support/v4/view/bp;
.super Landroid/support/v4/view/a;
.source "SourceFile"
.field final synthetic b:Landroid/support/v4/view/ViewPager;
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/view/bp;->b:Landroid/support/v4/view/ViewPager;
invoke-direct {p0}, Landroid/support/v4/view/a;-><init>()V
return-void
.end method
.method private a()Z
.registers 3
const/4 v0, 0x1
iget-object v1, p0, Landroid/support/v4/view/bp;->b:Landroid/support/v4/view/ViewPager;
invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ah;
move-result-object v1
if-eqz v1, :cond_16
iget-object v1, p0, Landroid/support/v4/view/bp;->b:Landroid/support/v4/view/ViewPager;
invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ah;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/view/ah;->b()I
move-result v1
if-le v1, v0, :cond_16
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method public final a(Landroid/view/View;Landroid/support/v4/view/a/a;)V
.registers 5
invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->a(Landroid/view/View;Landroid/support/v4/view/a/a;)V
const-class v0, Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->b(Ljava/lang/CharSequence;)V
invoke-direct {p0}, Landroid/support/v4/view/bp;->a()Z
move-result v0
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->i(Z)V
iget-object v0, p0, Landroid/support/v4/view/bp;->b:Landroid/support/v4/view/ViewPager;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z
move-result v0
if-eqz v0, :cond_21
const/16 v0, 0x1000
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(I)V
:cond_21
iget-object v0, p0, Landroid/support/v4/view/bp;->b:Landroid/support/v4/view/ViewPager;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z
move-result v0
if-eqz v0, :cond_2f
const/16 v0, 0x2000
invoke-virtual {p2, v0}, Landroid/support/v4/view/a/a;->a(I)V
:cond_2f
return-void
.end method
.method public final a(Landroid/view/View;ILandroid/os/Bundle;)Z
.registers 8
const/4 v1, 0x0
const/4 v0, 0x1
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z
move-result v2
if-eqz v2, :cond_9
:goto_8
return v0
:cond_9
sparse-switch p2, :sswitch_data_40
move v0, v1
goto :goto_8
:sswitch_e
iget-object v2, p0, Landroid/support/v4/view/bp;->b:Landroid/support/v4/view/ViewPager;
invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z
move-result v2
if-eqz v2, :cond_24
iget-object v1, p0, Landroid/support/v4/view/bp;->b:Landroid/support/v4/view/ViewPager;
iget-object v2, p0, Landroid/support/v4/view/bp;->b:Landroid/support/v4/view/ViewPager;
invoke-static {v2}, Landroid/support/v4/view/ViewPager;->c(Landroid/support/v4/view/ViewPager;)I
move-result v2
add-int/lit8 v2, v2, 0x1
invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->a(I)V
goto :goto_8
:cond_24
move v0, v1
goto :goto_8
:sswitch_26
iget-object v2, p0, Landroid/support/v4/view/bp;->b:Landroid/support/v4/view/ViewPager;
const/4 v3, -0x1
invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->canScrollHorizontally(I)Z
move-result v2
if-eqz v2, :cond_3d
iget-object v1, p0, Landroid/support/v4/view/bp;->b:Landroid/support/v4/view/ViewPager;
iget-object v2, p0, Landroid/support/v4/view/bp;->b:Landroid/support/v4/view/ViewPager;
invoke-static {v2}, Landroid/support/v4/view/ViewPager;->c(Landroid/support/v4/view/ViewPager;)I
move-result v2
add-int/lit8 v2, v2, -0x1
invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->a(I)V
goto :goto_8
:cond_3d
move v0, v1
goto :goto_8
nop
:sswitch_data_40
.sparse-switch
0x1000 -> :sswitch_e
0x2000 -> :sswitch_26
.end sparse-switch
.end method
.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 6
invoke-super {p0, p1, p2}, Landroid/support/v4/view/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
const-class v0, Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
invoke-static {}, Landroid/support/v4/view/a/q;->a()Landroid/support/v4/view/a/q;
move-result-object v0
invoke-direct {p0}, Landroid/support/v4/view/bp;->a()Z
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v4/view/a/q;->a(Z)V
invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I
move-result v1
const/16 v2, 0x1000
if-ne v1, v2, :cond_46
iget-object v1, p0, Landroid/support/v4/view/bp;->b:Landroid/support/v4/view/ViewPager;
invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ah;
move-result-object v1
if-eqz v1, :cond_46
iget-object v1, p0, Landroid/support/v4/view/bp;->b:Landroid/support/v4/view/ViewPager;
invoke-static {v1}, Landroid/support/v4/view/ViewPager;->b(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/ah;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/view/ah;->b()I
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v4/view/a/q;->a(I)V
iget-object v1, p0, Landroid/support/v4/view/bp;->b:Landroid/support/v4/view/ViewPager;
invoke-static {v1}, Landroid/support/v4/view/ViewPager;->c(Landroid/support/v4/view/ViewPager;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v4/view/a/q;->b(I)V
iget-object v1, p0, Landroid/support/v4/view/bp;->b:Landroid/support/v4/view/ViewPager;
invoke-static {v1}, Landroid/support/v4/view/ViewPager;->c(Landroid/support/v4/view/ViewPager;)I
move-result v1
invoke-virtual {v0, v1}, Landroid/support/v4/view/a/q;->c(I)V
:cond_46
return-void
.end method