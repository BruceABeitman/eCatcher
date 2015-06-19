.class final Lcom/instagram/android/fragment/ef;
.super Ljava/lang/Object;
.source "SearchFragment.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/instagram/android/fragment/ee;
.method constructor <init>(Lcom/instagram/android/fragment/ee;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/ef;->a:Lcom/instagram/android/fragment/ee;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/ef; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "TAG_ROW_FOOTER_SEARCH"
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/instagram/android/fragment/ef;->a:Lcom/instagram/android/fragment/ee;
iget-object v1, p0, Lcom/instagram/android/fragment/ef;->a:Lcom/instagram/android/fragment/ee;
invoke-static {v1}, Lcom/instagram/android/fragment/ee;->a(Lcom/instagram/android/fragment/ee;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ee;->b(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/fragment/ef;->a:Lcom/instagram/android/fragment/ee;
invoke-static {v0}, Lcom/instagram/android/fragment/ee;->b(Lcom/instagram/android/fragment/ee;)Lcom/instagram/android/fragment/y;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/fragment/y;->b()V
:cond_20
:goto_20
const-string v1, " - Lcom/instagram/android/fragment/ef; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_21
iget-object v0, p0, Lcom/instagram/android/fragment/ef;->a:Lcom/instagram/android/fragment/ee;
invoke-static {v0}, Lcom/instagram/android/fragment/ee;->c(Lcom/instagram/android/fragment/ee;)Landroid/view/View;
move-result-object v0
if-eq p2, v0, :cond_20
iget-object v0, p0, Lcom/instagram/android/fragment/ef;->a:Lcom/instagram/android/fragment/ee;
invoke-virtual {v0, p1, p3}, Lcom/instagram/android/fragment/ee;->a(Landroid/widget/AdapterView;I)V
goto :goto_20
.end method