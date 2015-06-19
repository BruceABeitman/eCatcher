.class final Lcom/bbm/ui/b/n;
.super Ljava/lang/Object;
.source "BBInfoAndRadioButtonDialog.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic a:Lcom/bbm/ui/b/m;
.method constructor <init>(Lcom/bbm/ui/b/m;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/b/n;->a:Lcom/bbm/ui/b/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 5
const/4 v1, 0x0
if-eqz p2, :cond_1c
iget-object v0, p0, Lcom/bbm/ui/b/n;->a:Lcom/bbm/ui/b/m;
invoke-static {v0}, Lcom/bbm/ui/b/m;->a(Lcom/bbm/ui/b/m;)Landroid/widget/RadioButton;
move-result-object v0
if-ne p1, v0, :cond_1d
iget-object v0, p0, Lcom/bbm/ui/b/n;->a:Lcom/bbm/ui/b/m;
invoke-static {v0}, Lcom/bbm/ui/b/m;->b(Lcom/bbm/ui/b/m;)Landroid/widget/RadioButton;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V
:goto_14
iget-object v0, p0, Lcom/bbm/ui/b/n;->a:Lcom/bbm/ui/b/m;
iget-object v0, v0, Lcom/bbm/ui/b/m;->c:Landroid/widget/Button;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
:cond_1c
return-void
:cond_1d
iget-object v0, p0, Lcom/bbm/ui/b/n;->a:Lcom/bbm/ui/b/m;
invoke-static {v0}, Lcom/bbm/ui/b/m;->a(Lcom/bbm/ui/b/m;)Landroid/widget/RadioButton;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V
goto :goto_14
.end method