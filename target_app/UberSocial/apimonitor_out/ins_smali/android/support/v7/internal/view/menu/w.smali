.class  Landroid/support/v7/internal/view/menu/w;
.super Landroid/support/v7/internal/view/menu/k;
.source "SourceFile"
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.field final synthetic b:Landroid/support/v7/internal/view/menu/s;
.method constructor <init>(Landroid/support/v7/internal/view/menu/s;Landroid/view/MenuItem$OnMenuItemClickListener;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/internal/view/menu/w;->b:Landroid/support/v7/internal/view/menu/s;
invoke-direct {p0, p2}, Landroid/support/v7/internal/view/menu/k;-><init>(Ljava/lang/Object;)V
return-void
.end method
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/internal/view/menu/w; onMenuItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v7/internal/view/menu/w;->a:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;
iget-object v1, p0, Landroid/support/v7/internal/view/menu/w;->b:Landroid/support/v7/internal/view/menu/s;
invoke-virtual {v1, p1}, Landroid/support/v7/internal/view/menu/s;->a(Landroid/view/MenuItem;)Landroid/support/v4/internal/view/SupportMenuItem;
move-result-object v1
invoke-interface {v0, v1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z
move-result v0
move v2, v0
const-string v1, " - Landroid/support/v7/internal/view/menu/w; onMenuItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method