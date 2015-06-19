.class final Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$3;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$3; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$3;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v0, p3}, Lcom/spotify/mobile/android/ui/adapter/o;->b(I)I
move-result v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$3;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v1, p3, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->a(II)I
move-result v1
invoke-static {}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->values()[Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;
move-result-object v2
aget-object v2, v2, v0
sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->a:[I
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I
move-result v3
aget v0, v0, v3
packed-switch v0, :pswitch_data_a0
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Unrecognized section clicked: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
:goto_33
const-string v1, " - Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$3; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_34
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$3;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->d:Lcom/spotify/mobile/android/spotlets/search/adapter/c;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->getItemViewType(I)I
move-result v0
const/4 v2, 0x1
if-ne v0, v2, :cond_47
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$3;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->c:Lcom/spotify/mobile/android/spotlets/search/view/f;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/view/f;->J()V
goto :goto_33
:cond_47
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$3;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v2, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->c:Lcom/spotify/mobile/android/spotlets/search/view/f;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$3;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->d:Lcom/spotify/mobile/android/spotlets/search/adapter/c;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->a(I)Ljava/lang/CharSequence;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {v2, v0, v1}, Lcom/spotify/mobile/android/spotlets/search/view/f;->a(Ljava/lang/String;I)V
goto :goto_33
:pswitch_59
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$3;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v0, p3}, Lcom/spotify/mobile/android/ui/adapter/o;->getItem(I)Ljava/lang/Object;
move-result-object v0
instance-of v3, v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/c;
if-eqz v3, :cond_73
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$3;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->c:Lcom/spotify/mobile/android/spotlets/search/view/f;
check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/c;->a()Lcom/spotify/mobile/android/spotlets/search/model/entity/b;
move-result-object v0
invoke-interface {v1, v0}, Lcom/spotify/mobile/android/spotlets/search/view/f;->a(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;)V
goto :goto_33
:cond_73
instance-of v3, v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;
if-eqz v3, :cond_81
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$3;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v3, v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->c:Lcom/spotify/mobile/android/spotlets/search/view/f;
check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/entity/b;
invoke-interface {v3, v0, v2, v1, p3}, Lcom/spotify/mobile/android/spotlets/search/view/f;->a(Lcom/spotify/mobile/android/spotlets/search/model/entity/b;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;II)V
goto :goto_33
:cond_81
instance-of v1, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;
if-eqz v1, :cond_8d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$3;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->c:Lcom/spotify/mobile/android/spotlets/search/view/f;
invoke-interface {v0, v2, p3}, Lcom/spotify/mobile/android/spotlets/search/view/f;->a(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;I)V
goto :goto_33
:cond_8d
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unrecognized item clicked: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
goto :goto_33
:pswitch_data_a0
.packed-switch 0x1
:pswitch_34
:pswitch_59
:pswitch_59
:pswitch_59
:pswitch_59
:pswitch_59
:pswitch_59
:pswitch_59
:pswitch_59
:pswitch_59
:pswitch_59
.end packed-switch
.end method