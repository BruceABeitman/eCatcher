.class public final Lcom/bbm/ui/q;
.super Ljava/lang/Object;
.source "BBSpinnerAdapter.java"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field private final a:Lcom/bbm/ui/l;
.field private final b:Lcom/bbm/ui/p;
.method public constructor <init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/bbm/ui/q;->a:Lcom/bbm/ui/l;
iput-object p2, p0, Lcom/bbm/ui/q;->b:Lcom/bbm/ui/p;
return-void
.end method
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/q; onItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/q;->a:Lcom/bbm/ui/l;
iget-object v1, p0, Lcom/bbm/ui/q;->a:Lcom/bbm/ui/l;
iget v1, v1, Lcom/bbm/ui/l;->a:I
iput v1, v0, Lcom/bbm/ui/l;->b:I
iget-object v0, p0, Lcom/bbm/ui/q;->a:Lcom/bbm/ui/l;
iput p3, v0, Lcom/bbm/ui/l;->a:I
iget-object v0, p0, Lcom/bbm/ui/q;->a:Lcom/bbm/ui/l;
invoke-virtual {v0}, Lcom/bbm/ui/l;->notifyDataSetChanged()V
iget-object v0, p0, Lcom/bbm/ui/q;->b:Lcom/bbm/ui/p;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/bbm/ui/q;->b:Lcom/bbm/ui/p;
invoke-interface {v0, p3}, Lcom/bbm/ui/p;->a(I)V
:cond_1a
const-string v1, " - Lcom/bbm/ui/q; onItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onNothingSelected(Landroid/widget/AdapterView;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/q; onNothingSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/q;->a:Lcom/bbm/ui/l;
const/4 v1, 0x0
iput v1, v0, Lcom/bbm/ui/l;->a:I
iget-object v0, p0, Lcom/bbm/ui/q;->a:Lcom/bbm/ui/l;
invoke-virtual {v0}, Lcom/bbm/ui/l;->notifyDataSetChanged()V
const-string v1, " - Lcom/bbm/ui/q; onNothingSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method