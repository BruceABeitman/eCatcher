.class final Lcom/bbm/ui/fr;
.super Ljava/lang/Object;
.source "SegmentedControl.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/SegmentedControl;
.method constructor <init>(Lcom/bbm/ui/SegmentedControl;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/fr;->a:Lcom/bbm/ui/SegmentedControl;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/fr; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/fr;->a:Lcom/bbm/ui/SegmentedControl;
invoke-static {v0}, Lcom/bbm/ui/SegmentedControl;->a(Lcom/bbm/ui/SegmentedControl;)Landroid/widget/LinearLayout;
move-result-object v0
if-ne p1, v0, :cond_16
const-string v0, "Left option clicked"
const-class v1, Lcom/bbm/ui/SegmentedControl;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/fr;->a:Lcom/bbm/ui/SegmentedControl;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/SegmentedControl;->a(I)V
:goto_15
:cond_15
const-string v1, " - Lcom/bbm/ui/fr; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_16
iget-object v0, p0, Lcom/bbm/ui/fr;->a:Lcom/bbm/ui/SegmentedControl;
invoke-static {v0}, Lcom/bbm/ui/SegmentedControl;->b(Lcom/bbm/ui/SegmentedControl;)Landroid/widget/LinearLayout;
move-result-object v0
if-ne p1, v0, :cond_15
const-string v0, "Right option clicked"
const-class v1, Lcom/bbm/ui/SegmentedControl;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/fr;->a:Lcom/bbm/ui/SegmentedControl;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/bbm/ui/SegmentedControl;->a(I)V
goto :goto_15
.end method