.class final Lcom/bbm/ui/c/cl;
.super Lcom/bbm/j/u;
.source "GroupMembersFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/ck;
.method constructor <init>(Lcom/bbm/ui/c/ck;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 13
const/4 v6, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
invoke-static {v0}, Lcom/bbm/ui/c/ck;->b(Lcom/bbm/ui/c/ck;)Lcom/bbm/ui/ct;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
invoke-static {v1}, Lcom/bbm/ui/c/ck;->a(Lcom/bbm/ui/c/ck;)I
move-result v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/ct;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/cx;
iget-object v1, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
iget-object v1, v1, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v1, v1, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v3, v0, Lcom/bbm/ui/c/cx;->d:Ljava/lang/String;
invoke-virtual {v1, v3}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v7
sget-object v1, Lcom/bbm/ui/c/cu;->a:[I
iget-object v3, v7, Lcom/bbm/g/o;->g:Lcom/bbm/util/bh;
invoke-virtual {v3}, Lcom/bbm/util/bh;->ordinal()I
move-result v3
aget v1, v1, v3
packed-switch v1, :pswitch_data_172
iget-object v0, v0, Lcom/bbm/ui/c/cx;->a:Lcom/bbm/ui/c/cy;
sget-object v1, Lcom/bbm/ui/c/cy;->b:Lcom/bbm/ui/c/cy;
if-ne v0, v1, :cond_47
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
invoke-static {v0}, Lcom/bbm/ui/c/ck;->c(Lcom/bbm/ui/c/ck;)Z
move-result v0
if-eqz v0, :cond_47
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
const v1, 0x7f0a0070
invoke-static {v0, v7, v1}, Lcom/bbm/ui/c/ck;->a(Lcom/bbm/ui/c/ck;Lcom/bbm/g/o;I)Z
move-result v2
:cond_44
:goto_44
:pswitch_44
return v2
:pswitch_45
move v2, v6
goto :goto_44
:cond_47
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
iget-object v0, v0, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->I()Lcom/bbm/j/w;
move-result-object v8
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
iget-object v0, v0, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v1, v7, Lcom/bbm/g/o;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->i(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v0
sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_91
sget-object v3, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
sget-object v0, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
:goto_6d
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v2, :cond_118
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
invoke-static {v0}, Lcom/bbm/ui/c/ck;->c(Lcom/bbm/ui/c/ck;)Z
move-result v0
if-nez v0, :cond_8f
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
invoke-virtual {v1}, Lcom/bbm/ui/c/ck;->getActivity()Landroid/app/Activity;
move-result-object v1
const-class v2, Lcom/bbm/ui/activities/OwnProfileActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
invoke-virtual {v1}, Lcom/bbm/ui/c/ck;->getActivity()Landroid/app/Activity;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
:cond_8f
move v2, v6
goto :goto_44
:cond_91
sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_44
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
iget-object v0, v0, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v1, v7, Lcom/bbm/g/o;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;
move-result-object v9
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
iget-object v0, v0, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->h()Ljava/lang/String;
move-result-object v0
iget-object v1, v9, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_44
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_44
iget-object v1, v9, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c8
sget-object v3, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
sget-object v0, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
goto :goto_6d
:cond_c8
sget-object v5, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
invoke-interface {v8}, Lcom/bbm/j/w;->b()Z
move-result v0
if-nez v0, :cond_44
sget-object v0, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;
move v1, v2
move-object v3, v0
:goto_d4
invoke-interface {v8}, Lcom/bbm/j/w;->d()I
move-result v0
if-ge v1, v0, :cond_f4
invoke-interface {v8, v1}, Lcom/bbm/j/w;->a(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/fn;
iget-object v10, v0, Lcom/bbm/d/fn;->j:Ljava/lang/String;
iget-object v11, v9, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_f0
iget-boolean v0, v0, Lcom/bbm/d/fn;->d:Z
if-nez v0, :cond_f0
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
:cond_f0
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_d4
:cond_f4
sget-object v0, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v3, v0, :cond_113
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
iget-object v0, v0, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v1, v9, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->L(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v0
sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v1, :cond_114
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
iget-object v0, v0, Lcom/bbm/ui/c/ck;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->M()Lcom/bbm/j/w;
goto/16 :goto_44
:cond_113
move-object v0, v4
:cond_114
move-object v1, v0
move-object v0, v5
goto/16 :goto_6d
:cond_118
sget-object v0, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v3, v0, :cond_137
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
invoke-static {v0}, Lcom/bbm/ui/c/ck;->c(Lcom/bbm/ui/c/ck;)Z
move-result v0
if-nez v0, :cond_12c
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
invoke-static {v0, v7}, Lcom/bbm/ui/c/ck;->a(Lcom/bbm/ui/c/ck;Lcom/bbm/g/o;)V
move v2, v6
goto/16 :goto_44
:cond_12c
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
const v1, 0x7f0a0072
invoke-static {v0, v7, v1}, Lcom/bbm/ui/c/ck;->a(Lcom/bbm/ui/c/ck;Lcom/bbm/g/o;I)Z
move-result v2
goto/16 :goto_44
:cond_137
sget-object v0, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v1, v0, :cond_156
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
invoke-static {v0}, Lcom/bbm/ui/c/ck;->c(Lcom/bbm/ui/c/ck;)Z
move-result v0
if-nez v0, :cond_14b
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
invoke-static {v0, v7}, Lcom/bbm/ui/c/ck;->b(Lcom/bbm/ui/c/ck;Lcom/bbm/g/o;)V
move v2, v6
goto/16 :goto_44
:cond_14b
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
const v1, 0x7f0a006f
invoke-static {v0, v7, v1}, Lcom/bbm/ui/c/ck;->a(Lcom/bbm/ui/c/ck;Lcom/bbm/g/o;I)Z
move-result v2
goto/16 :goto_44
:cond_156
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
invoke-static {v0}, Lcom/bbm/ui/c/ck;->c(Lcom/bbm/ui/c/ck;)Z
move-result v0
if-nez v0, :cond_166
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
invoke-static {v0, v7}, Lcom/bbm/ui/c/ck;->c(Lcom/bbm/ui/c/ck;Lcom/bbm/g/o;)V
move v2, v6
goto/16 :goto_44
:cond_166
iget-object v0, p0, Lcom/bbm/ui/c/cl;->a:Lcom/bbm/ui/c/ck;
const v1, 0x7f0a0071
invoke-static {v0, v7, v1}, Lcom/bbm/ui/c/ck;->a(Lcom/bbm/ui/c/ck;Lcom/bbm/g/o;I)Z
move-result v2
goto/16 :goto_44
nop
:pswitch_data_172
.packed-switch 0x1
:pswitch_45
:pswitch_44
.end packed-switch
.end method