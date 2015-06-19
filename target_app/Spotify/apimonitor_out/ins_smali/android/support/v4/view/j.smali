.class final Landroid/support/v4/view/j;
.super Landroid/database/DataSetObserver;
.source "SourceFile"
.implements Landroid/support/v4/view/bq;
.implements Landroid/support/v4/view/br;
.field final synthetic a:Landroid/support/v4/view/ActionBarTabStrip;
.field private b:I
.method private constructor <init>(Landroid/support/v4/view/ActionBarTabStrip;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ActionBarTabStrip;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v4/view/ActionBarTabStrip;B)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/view/j;-><init>(Landroid/support/v4/view/ActionBarTabStrip;)V
return-void
.end method
.method public final a(I)V
.registers 4
iget v0, p0, Landroid/support/v4/view/j;->b:I
iget-object v0, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ActionBarTabStrip;
invoke-static {v0, p1}, Landroid/support/v4/view/ActionBarTabStrip;->a(Landroid/support/v4/view/ActionBarTabStrip;I)I
const/4 v0, 0x0
:goto_8
iget-object v1, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ActionBarTabStrip;
invoke-virtual {v1}, Landroid/support/v4/view/ActionBarTabStrip;->getChildCount()I
move-result v1
if-ge v0, v1, :cond_1c
iget-object v1, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ActionBarTabStrip;
invoke-virtual {v1, v0}, Landroid/support/v4/view/ActionBarTabStrip;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->refreshDrawableState()V
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_1c
return-void
.end method
.method public final a(IFI)V
.registers 4
return-void
.end method
.method public final a(Landroid/support/v4/view/ah;Landroid/support/v4/view/ah;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ActionBarTabStrip;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ActionBarTabStrip;->a(Landroid/support/v4/view/ah;Landroid/support/v4/view/ah;)V
return-void
.end method
.method public final b(I)V
.registers 2
iput p1, p0, Landroid/support/v4/view/j;->b:I
return-void
.end method
.method public final onChanged()V
.registers 2
iget-object v0, p0, Landroid/support/v4/view/j;->a:Landroid/support/v4/view/ActionBarTabStrip;
invoke-static {v0}, Landroid/support/v4/view/ActionBarTabStrip;->d(Landroid/support/v4/view/ActionBarTabStrip;)V
return-void
.end method