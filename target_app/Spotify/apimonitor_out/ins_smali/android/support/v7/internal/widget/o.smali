.class final Landroid/support/v7/internal/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Landroid/support/v7/internal/widget/l;
.field private final b:Landroid/support/v7/internal/widget/n;
.method public constructor <init>(Landroid/support/v7/internal/widget/l;Landroid/support/v7/internal/widget/n;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/widget/o;->a:Landroid/support/v7/internal/widget/l;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Landroid/support/v7/internal/widget/o;->b:Landroid/support/v7/internal/widget/n;
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/widget/o; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/o;->b:Landroid/support/v7/internal/widget/n;
iget-object v1, p0, Landroid/support/v7/internal/widget/o;->a:Landroid/support/v7/internal/widget/l;
invoke-interface {v0, p2, p3}, Landroid/support/v7/internal/widget/n;->a(Landroid/view/View;I)V
const-string v1, " - Landroid/support/v7/internal/widget/o; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method