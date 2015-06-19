.class  Landroid/support/v7/internal/widget/m;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.field final synthetic a:Landroid/support/v7/internal/widget/ActivityChooserView;
.method private constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;Landroid/support/v7/internal/widget/ActivityChooserView$1;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/m;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
return-void
.end method
.method private a()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->h(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->h(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;
move-result-object v0
invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V
:cond_11
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/widget/m; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->e(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
move-result-object v0
if-ne p1, v0, :cond_44
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->b()Z
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/l;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->b()Landroid/content/pm/ResolveInfo;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/l;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v7/internal/widget/l;->f()Landroid/support/v7/internal/widget/d;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/d;->a(Landroid/content/pm/ResolveInfo;)I
move-result v0
iget-object v1, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/l;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v7/internal/widget/l;->f()Landroid/support/v7/internal/widget/d;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/d;->b(I)Landroid/content/Intent;
move-result-object v0
if-eqz v0, :cond_43
const/high16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v1, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:goto_43
:cond_43
const-string v1, " - Landroid/support/v7/internal/widget/m; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_44
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->f(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
move-result-object v0
if-ne p1, v0, :cond_5e
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
const/4 v1, 0x0
invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;Z)Z
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
iget-object v1, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->g(Landroid/support/v7/internal/widget/ActivityChooserView;)I
move-result v1
invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V
goto :goto_43
:cond_5e
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
.end method
.method public onDismiss()V
.registers 3
invoke-direct {p0}, Landroid/support/v7/internal/widget/m;->a()V
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Landroid/support/v4/view/ActionProvider;
if-eqz v0, :cond_11
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Landroid/support/v4/view/ActionProvider;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V
:cond_11
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/widget/m; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/l;
invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/l;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_68
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:pswitch_13
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
const v1, 0x7fffffff
invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V
:goto_1b
:cond_1b
const-string v1, " - Landroid/support/v7/internal/widget/m; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_1c
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->b()Z
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->d(Landroid/support/v7/internal/widget/ActivityChooserView;)Z
move-result v0
if-eqz v0, :cond_39
if-lez p3, :cond_1b
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/l;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->f()Landroid/support/v7/internal/widget/d;
move-result-object v0
invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/d;->c(I)V
goto :goto_1b
:cond_39
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/l;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->g()Z
move-result v0
if-eqz v0, :cond_64
:goto_45
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/l;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->f()Landroid/support/v7/internal/widget/d;
move-result-object v0
invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/d;->b(I)Landroid/content/Intent;
move-result-object v0
if-eqz v0, :cond_1b
const/high16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v1, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_1b
:cond_64
add-int/lit8 p3, p3, 0x1
goto :goto_45
nop
:pswitch_data_68
.packed-switch 0x0
:pswitch_1c
:pswitch_13
.end packed-switch
.end method
.method public onLongClick(Landroid/view/View;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/widget/m; onLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x1
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->e(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;
move-result-object v0
if-ne p1, v0, :cond_26
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/l;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/internal/widget/l;->getCount()I
move-result v0
if-lez v0, :cond_25
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v0, v2}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;Z)Z
iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
iget-object v1, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/ActivityChooserView;
invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->g(Landroid/support/v7/internal/widget/ActivityChooserView;)I
move-result v1
invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V
:cond_25
const-string v1, " - Landroid/support/v7/internal/widget/m; onLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v2
:cond_26
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
.end method