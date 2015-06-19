.class final Lcom/instagram/android/people/b/i;
.super Ljava/lang/Object;
.source "PeopleTagSearchFragment.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/instagram/android/people/b/h;
.method constructor <init>(Lcom/instagram/android/people/b/h;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/people/b/i;->a:Lcom/instagram/android/people/b/h;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/people/b/i; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_2f
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
const-string v1, "TAG_ROW_FOOTER_SEARCH"
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/instagram/android/people/b/i;->a:Lcom/instagram/android/people/b/h;
iget-object v1, p0, Lcom/instagram/android/people/b/i;->a:Lcom/instagram/android/people/b/h;
invoke-static {v1}, Lcom/instagram/android/people/b/h;->a(Lcom/instagram/android/people/b/h;)Lcom/instagram/ui/widget/searchedittext/SearchEditText;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getStrippedText()Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/people/b/h;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/people/b/i;->a:Lcom/instagram/android/people/b/h;
invoke-static {v0}, Lcom/instagram/android/people/b/h;->a(Lcom/instagram/android/people/b/h;)Lcom/instagram/ui/widget/searchedittext/SearchEditText;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b()V
:goto_2e
const-string v1, " - Lcom/instagram/android/people/b/i; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_2f
iget-object v0, p0, Lcom/instagram/android/people/b/i;->a:Lcom/instagram/android/people/b/h;
invoke-virtual {v0, p1, p3}, Lcom/instagram/android/people/b/h;->a(Landroid/widget/AdapterView;I)V
goto :goto_2e
.end method