.class final Lcom/bbm/setup/x;
.super Lcom/bbm/j/k;
.source "SetupErrorActivity.java"
.field final synthetic a:Lcom/bbm/setup/SetupErrorActivity;
.method constructor <init>(Lcom/bbm/setup/SetupErrorActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 8
const v5, 0x7f0e06f9
const v4, 0x7f0e00e0
const v6, 0x7f0e00df
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
sget-object v1, Lcom/bbm/Alaska;->b:Lcom/bbm/setup/aa;
invoke-virtual {v1}, Lcom/bbm/setup/aa;->a()Lcom/bbm/setup/ag;
move-result-object v1
iget-object v1, v1, Lcom/bbm/setup/ag;->a:Lcom/bbm/setup/ah;
sget-object v2, Lcom/bbm/setup/ah;->j:Lcom/bbm/setup/ah;
if-eq v1, v2, :cond_24
iget-object v0, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
invoke-virtual {v0}, Lcom/bbm/setup/SetupErrorActivity;->b()V
:goto_23
:cond_23
return-void
:cond_24
const-string v1, ""
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/Alaska;->n()Z
move-result v2
if-eqz v2, :cond_93
sget-object v0, Lcom/bbm/al;->h:Lcom/bbm/al;
invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
:goto_39
sget-object v2, Lcom/bbm/al;->k:Lcom/bbm/al;
invoke-virtual {v0, v2}, Lcom/google/b/a/l;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/al;
sget-object v2, Lcom/bbm/setup/z;->a:[I
invoke-virtual {v0}, Lcom/bbm/al;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_130
const-string v2, "Default Error title used for error  %s"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-virtual {v0}, Lcom/bbm/al;->name()Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v2, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
invoke-virtual {v2, v6}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v2
:goto_61
iget-object v3, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
invoke-static {v3}, Lcom/bbm/setup/SetupErrorActivity;->a(Lcom/bbm/setup/SetupErrorActivity;)Landroid/widget/TextView;
move-result-object v3
invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
invoke-static {v2}, Lcom/bbm/setup/SetupErrorActivity;->b(Lcom/bbm/setup/SetupErrorActivity;)Landroid/widget/TextView;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
invoke-static {v1}, Lcom/bbm/setup/SetupErrorActivity;->c(Lcom/bbm/setup/SetupErrorActivity;)Lcom/bbm/al;
move-result-object v1
if-eq v1, v0, :cond_23
iget-object v1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
invoke-static {v1, v0}, Lcom/bbm/setup/SetupErrorActivity;->a(Lcom/bbm/setup/SetupErrorActivity;Lcom/bbm/al;)Lcom/bbm/al;
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
iget-object v1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
invoke-static {v1}, Lcom/bbm/setup/SetupErrorActivity;->c(Lcom/bbm/setup/SetupErrorActivity;)Lcom/bbm/al;
move-result-object v1
iget v2, v0, Lcom/bbm/c/c;->ah:I
add-int/lit8 v2, v2, 0x1
iput v2, v0, Lcom/bbm/c/c;->ah:I
iput-object v1, v0, Lcom/bbm/c/c;->ap:Lcom/bbm/al;
goto :goto_23
:cond_93
invoke-virtual {v0}, Lcom/bbm/d/a;->c()Lcom/google/b/a/l;
move-result-object v0
goto :goto_39
:pswitch_98
iget-object v1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
const v2, 0x7f0e0327
invoke-virtual {v1, v2}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v2
iget-object v1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
const v3, 0x7f0e0121
invoke-virtual {v1, v3}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v1
goto :goto_61
:pswitch_ab
iget-object v1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
const v2, 0x7f0e0305
invoke-virtual {v1, v2}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v2
iget-object v1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
const v3, 0x7f0e06fc
invoke-virtual {v1, v3}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v1
goto :goto_61
:pswitch_be
iget-object v1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
invoke-virtual {v1, v5}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v2
iget-object v1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
invoke-virtual {v1, v4}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v1
goto :goto_61
:pswitch_cb
iget-object v1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
const v2, 0x7f0e047b
invoke-virtual {v1, v2}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v2
iget-object v1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
const v3, 0x7f0e058e
invoke-virtual {v1, v3}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v1
goto :goto_61
:pswitch_de
iget-object v1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
const v2, 0x7f0e0525
invoke-virtual {v1, v2}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v2
iget-object v1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
const v3, 0x7f0e012b
invoke-virtual {v1, v3}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v1
goto/16 :goto_61
:pswitch_f2
iget-object v1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
invoke-virtual {v1, v5}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v2
iget-object v1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
invoke-virtual {v1, v4}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v1
goto/16 :goto_61
:pswitch_100
iget-object v2, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
const v3, 0x7f0e012a
invoke-virtual {v2, v3}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v2
goto/16 :goto_61
:pswitch_10b
iget-object v2, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
invoke-virtual {v2, v6}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v2
goto/16 :goto_61
:pswitch_113
iget-object v1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
const v2, 0x7f0e071a
invoke-virtual {v1, v2}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v2
iget-object v1, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
const v3, 0x7f0e078b
invoke-virtual {v1, v3}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v1
goto/16 :goto_61
:pswitch_127
iget-object v2, p0, Lcom/bbm/setup/x;->a:Lcom/bbm/setup/SetupErrorActivity;
invoke-virtual {v2, v6}, Lcom/bbm/setup/SetupErrorActivity;->getString(I)Ljava/lang/String;
move-result-object v2
goto/16 :goto_61
nop
:pswitch_data_130
.packed-switch 0x1
:pswitch_98
:pswitch_ab
:pswitch_be
:pswitch_cb
:pswitch_de
:pswitch_f2
:pswitch_100
:pswitch_10b
:pswitch_113
:pswitch_127
.end packed-switch
.end method