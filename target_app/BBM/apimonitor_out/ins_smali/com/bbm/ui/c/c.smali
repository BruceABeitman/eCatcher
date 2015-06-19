.class final Lcom/bbm/ui/c/c;
.super Lcom/bbm/j/u;
.source "BlockedContactsFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/a;
.method constructor <init>(Lcom/bbm/ui/c/a;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/c;->a:Lcom/bbm/ui/c/a;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 8
const/4 v3, 0x0
const/4 v2, 0x1
iget-object v0, p0, Lcom/bbm/ui/c/c;->a:Lcom/bbm/ui/c/a;
invoke-static {v0}, Lcom/bbm/ui/c/a;->a(Lcom/bbm/ui/c/a;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_c
move v0, v2
:goto_b
return v0
:cond_c
iget-object v0, p0, Lcom/bbm/ui/c/c;->a:Lcom/bbm/ui/c/a;
invoke-virtual {v0}, Lcom/bbm/ui/c/a;->isAdded()Z
move-result v0
if-nez v0, :cond_16
move v0, v2
goto :goto_b
:cond_16
iget-object v0, p0, Lcom/bbm/ui/c/c;->a:Lcom/bbm/ui/c/a;
invoke-virtual {v0}, Lcom/bbm/ui/c/a;->getActivity()Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/BlockedContactsActivity;
iget-object v4, v0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
iget-object v1, p0, Lcom/bbm/ui/c/c;->a:Lcom/bbm/ui/c/a;
iget-object v5, p0, Lcom/bbm/ui/c/c;->a:Lcom/bbm/ui/c/a;
invoke-static {v5}, Lcom/bbm/ui/c/a;->a(Lcom/bbm/ui/c/a;)Ljava/lang/Object;
move-result-object v5
invoke-virtual {v1, v5}, Lcom/bbm/ui/c/a;->c(Ljava/lang/Object;)Lcom/bbm/d/a/a;
move-result-object v1
instance-of v5, v1, Lcom/bbm/d/gs;
if-eqz v5, :cond_73
iget-object v5, p0, Lcom/bbm/ui/c/c;->a:Lcom/bbm/ui/c/a;
iget-object v5, v5, Lcom/bbm/ui/c/a;->a:Lcom/bbm/d/a;
check-cast v1, Lcom/bbm/d/gs;
iget-object v1, v1, Lcom/bbm/d/gs;->c:Ljava/lang/String;
invoke-virtual {v5, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v1
sget-object v5, Lcom/bbm/ui/c/f;->a:[I
iget-object v6, v1, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
invoke-virtual {v6}, Lcom/bbm/util/bh;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_ae
:goto_49
:cond_49
invoke-virtual {v0}, Lcom/bbm/ui/activities/BlockedContactsActivity;->o()V
iget-object v0, p0, Lcom/bbm/ui/c/c;->a:Lcom/bbm/ui/c/a;
invoke-static {v0}, Lcom/bbm/ui/c/a;->b(Lcom/bbm/ui/c/a;)Ljava/lang/Object;
move v0, v2
goto :goto_b
:pswitch_53
move v0, v3
goto :goto_b
:pswitch_55
const-string v0, "No user found for Uri %s"
new-array v4, v2, [Ljava/lang/Object;
iget-object v1, v1, Lcom/bbm/d/gp;->A:Ljava/lang/String;
aput-object v1, v4, v3
invoke-static {v0, v4}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/c/c;->a:Lcom/bbm/ui/c/a;
invoke-static {v0}, Lcom/bbm/ui/c/a;->b(Lcom/bbm/ui/c/a;)Ljava/lang/Object;
move v0, v2
goto :goto_b
:pswitch_67
invoke-static {v1}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v3
iget-object v5, p0, Lcom/bbm/ui/c/c;->a:Lcom/bbm/ui/c/a;
iget-object v1, v1, Lcom/bbm/d/gp;->d:Ljava/lang/String;
invoke-static {v5, v4, v1, v3}, Lcom/bbm/ui/c/a;->a(Lcom/bbm/ui/c/a;Lcom/bbm/ui/c/fm;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_49
:cond_73
instance-of v5, v1, Lcom/bbm/g/a;
if-eqz v5, :cond_49
check-cast v1, Lcom/bbm/g/a;
sget-object v5, Lcom/bbm/ui/c/f;->a:[I
iget-object v6, v1, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;
invoke-virtual {v6}, Lcom/bbm/util/bh;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_b8
goto :goto_49
:pswitch_87
move v0, v3
goto :goto_b
:pswitch_89
const-string v0, "No group found for Uri %s"
new-array v4, v2, [Ljava/lang/Object;
iget-object v1, v1, Lcom/bbm/g/a;->v:Ljava/lang/String;
aput-object v1, v4, v3
invoke-static {v0, v4}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/ui/c/c;->a:Lcom/bbm/ui/c/a;
invoke-static {v0}, Lcom/bbm/ui/c/a;->b(Lcom/bbm/ui/c/a;)Ljava/lang/Object;
move v0, v2
goto/16 :goto_b
:pswitch_9c
iget-object v3, p0, Lcom/bbm/ui/c/c;->a:Lcom/bbm/ui/c/a;
iget-object v1, v1, Lcom/bbm/g/a;->r:Ljava/lang/String;
iget-object v5, p0, Lcom/bbm/ui/c/c;->a:Lcom/bbm/ui/c/a;
const v6, 0x7f0e0139
invoke-virtual {v5, v6}, Lcom/bbm/ui/c/a;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-static {v3, v4, v1, v5}, Lcom/bbm/ui/c/a;->a(Lcom/bbm/ui/c/a;Lcom/bbm/ui/c/fm;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_49
nop
:pswitch_data_ae
.packed-switch 0x1
:pswitch_53
:pswitch_55
:pswitch_67
.end packed-switch
:pswitch_data_b8
.packed-switch 0x1
:pswitch_87
:pswitch_89
:pswitch_9c
.end packed-switch
.end method