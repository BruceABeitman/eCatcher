.class  Landroid/support/v7/app/t;
.super Landroid/support/v7/app/q;
.source "SourceFile"
.implements Landroid/support/v7/internal/widget/ac;
.field final n:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;
.field private o:Landroid/view/ActionMode;
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/support/v7/app/q;-><init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/a;)V
sget v0, Landroid/support/v7/a/i;->action_bar_root:I
invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;
iput-object v0, p0, Landroid/support/v7/app/t;->n:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;
iget-object v0, p0, Landroid/support/v7/app/t;->n:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;
if-eqz v0, :cond_16
iget-object v0, p0, Landroid/support/v7/app/t;->n:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;
invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->setActionModeForChildListener(Landroid/support/v7/internal/widget/ac;)V
:cond_16
return-void
.end method
.method static synthetic a(Landroid/support/v7/app/t;Landroid/view/ActionMode;)Landroid/view/ActionMode;
.registers 2
iput-object p1, p0, Landroid/support/v7/app/t;->o:Landroid/view/ActionMode;
return-object p1
.end method
.method public a(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
.registers 3
new-instance v0, Landroid/support/v7/app/u;
invoke-direct {v0, p0, p1}, Landroid/support/v7/app/u;-><init>(Landroid/support/v7/app/t;Landroid/view/ActionMode$Callback;)V
return-object v0
.end method
.method public m()V
.registers 2
invoke-super {p0}, Landroid/support/v7/app/q;->m()V
iget-object v0, p0, Landroid/support/v7/app/t;->o:Landroid/view/ActionMode;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/app/t;->o:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V
:cond_c
return-void
.end method
.method public n()V
.registers 2
invoke-super {p0}, Landroid/support/v7/app/q;->n()V
iget-object v0, p0, Landroid/support/v7/app/t;->o:Landroid/view/ActionMode;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/app/t;->o:Landroid/view/ActionMode;
invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V
:cond_c
return-void
.end method
.method  t()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/app/t;->o:Landroid/view/ActionMode;
if-nez v0, :cond_c
invoke-super {p0}, Landroid/support/v7/app/q;->t()Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method