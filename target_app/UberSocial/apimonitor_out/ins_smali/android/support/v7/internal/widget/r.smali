.class  Landroid/support/v7/internal/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Landroid/support/v7/internal/widget/n;
.field private final b:Landroid/support/v7/internal/widget/q;
.method public constructor <init>(Landroid/support/v7/internal/widget/n;Landroid/support/v7/internal/widget/q;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/widget/r;->a:Landroid/support/v7/internal/widget/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Landroid/support/v7/internal/widget/r;->b:Landroid/support/v7/internal/widget/q;
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 12
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/widget/r; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v7/internal/widget/r;->b:Landroid/support/v7/internal/widget/q;
iget-object v1, p0, Landroid/support/v7/internal/widget/r;->a:Landroid/support/v7/internal/widget/n;
move-object v2, p2
move v3, p3
move-wide v4, p4
invoke-interface/range {v0 .. v5}, Landroid/support/v7/internal/widget/q;->a(Landroid/support/v7/internal/widget/n;Landroid/view/View;IJ)V
const-string v1, " - Landroid/support/v7/internal/widget/r; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method