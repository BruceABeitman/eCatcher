.class final Landroid/support/v7/internal/widget/ac;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/support/v7/internal/widget/af;
.field final synthetic a:Landroid/support/v7/internal/widget/ab;
.field private b:Landroid/app/AlertDialog;
.field private c:Landroid/widget/ListAdapter;
.field private d:Ljava/lang/CharSequence;
.method private constructor <init>(Landroid/support/v7/internal/widget/ab;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ac;->a:Landroid/support/v7/internal/widget/ab;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ab;B)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/ac;-><init>(Landroid/support/v7/internal/widget/ab;)V
return-void
.end method
.method public final a(Landroid/widget/ListAdapter;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ac;->c:Landroid/widget/ListAdapter;
return-void
.end method
.method public final a(Ljava/lang/CharSequence;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/internal/widget/ac;->d:Ljava/lang/CharSequence;
return-void
.end method
.method public final e()V
.registers 4
new-instance v0, Landroid/app/AlertDialog$Builder;
iget-object v1, p0, Landroid/support/v7/internal/widget/ac;->a:Landroid/support/v7/internal/widget/ab;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ab;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Landroid/support/v7/internal/widget/ac;->d:Ljava/lang/CharSequence;
if-eqz v1, :cond_14
iget-object v1, p0, Landroid/support/v7/internal/widget/ac;->d:Ljava/lang/CharSequence;
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
:cond_14
iget-object v1, p0, Landroid/support/v7/internal/widget/ac;->c:Landroid/widget/ListAdapter;
iget-object v2, p0, Landroid/support/v7/internal/widget/ac;->a:Landroid/support/v7/internal/widget/ab;
iget v2, v2, Landroid/support/v7/internal/widget/l;->v:I
invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/internal/widget/ac;->b:Landroid/app/AlertDialog;
return-void
.end method
.method public final f()V
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ac;->b:Landroid/app/AlertDialog;
invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/internal/widget/ac;->b:Landroid/app/AlertDialog;
return-void
.end method
.method public final i()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/internal/widget/ac;->b:Landroid/app/AlertDialog;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/internal/widget/ac;->b:Landroid/app/AlertDialog;
invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/widget/ac; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ac;->a:Landroid/support/v7/internal/widget/ab;
invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/ab;->a(I)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ac;->a:Landroid/support/v7/internal/widget/ab;
iget-object v0, v0, Landroid/support/v7/internal/widget/ab;->t:Landroid/support/v7/internal/widget/n;
if-eqz v0, :cond_16
iget-object v0, p0, Landroid/support/v7/internal/widget/ac;->a:Landroid/support/v7/internal/widget/ab;
const/4 v1, 0x0
iget-object v2, p0, Landroid/support/v7/internal/widget/ac;->c:Landroid/widget/ListAdapter;
invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J
invoke-virtual {v0, v1, p2}, Landroid/support/v7/internal/widget/ab;->a(Landroid/view/View;I)Z
:cond_16
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ac;->f()V
const-string v1, " - Landroid/support/v7/internal/widget/ac; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method