.class final Lcom/bbm/b/k;
.super Ljava/lang/Object;
.source "AdUtils.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;
.field final synthetic b:Lcom/bbm/b/a;
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/b/a;)V
.registers 3
iput-object p1, p0, Lcom/bbm/b/k;->a:Lcom/bbm/ui/activities/MainActivity;
iput-object p2, p0, Lcom/bbm/b/k;->b:Lcom/bbm/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/b/k; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v6, 0x1
const/4 v5, 0x0
new-instance v0, Lcom/bbm/ui/b/o;
iget-object v1, p0, Lcom/bbm/b/k;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-direct {v0, v1}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/bbm/b/k;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0751
new-array v3, v6, [Ljava/lang/Object;
iget-object v4, p0, Lcom/bbm/b/k;->b:Lcom/bbm/b/a;
iget-object v4, v4, Lcom/bbm/b/a;->q:Ljava/lang/String;
aput-object v4, v3, v5
invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(Ljava/lang/String;)V
sget-object v1, Lcom/bbm/b/o;->b:[I
iget-object v2, p0, Lcom/bbm/b/k;->b:Lcom/bbm/b/a;
iget-object v2, v2, Lcom/bbm/b/a;->r:Lcom/bbm/b/b;
invoke-virtual {v2}, Lcom/bbm/b/b;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_82
:goto_30
const v1, 0x7f0e0148
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(I)V
const v1, 0x7f0e0146
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(I)V
new-instance v1, Lcom/bbm/b/l;
invoke-direct {v1, p0, v0}, Lcom/bbm/b/l;-><init>(Lcom/bbm/b/k;Lcom/bbm/ui/b/o;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V
new-instance v1, Lcom/bbm/b/m;
invoke-direct {v1, p0, v0}, Lcom/bbm/b/m;-><init>(Lcom/bbm/b/k;Lcom/bbm/ui/b/o;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V
const-string v1, " - Lcom/bbm/b/k; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_50
iget-object v1, p0, Lcom/bbm/b/k;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e00f0
new-array v3, v6, [Ljava/lang/Object;
iget-object v4, p0, Lcom/bbm/b/k;->b:Lcom/bbm/b/a;
iget-object v4, v4, Lcom/bbm/b/a;->q:Ljava/lang/String;
aput-object v4, v3, v5
invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a_(Ljava/lang/String;)V
goto :goto_30
:pswitch_69
iget-object v1, p0, Lcom/bbm/b/k;->a:Lcom/bbm/ui/activities/MainActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e00ef
new-array v3, v6, [Ljava/lang/Object;
iget-object v4, p0, Lcom/bbm/b/k;->b:Lcom/bbm/b/a;
iget-object v4, v4, Lcom/bbm/b/a;->q:Ljava/lang/String;
aput-object v4, v3, v5
invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a_(Ljava/lang/String;)V
goto :goto_30
:pswitch_data_82
.packed-switch 0x1
:pswitch_50
:pswitch_69
.end packed-switch
.end method