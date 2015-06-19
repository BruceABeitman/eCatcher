.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/j$7;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/ds;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
const/4 v1, -0x1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;I)I
return-void
.end method
.method public final a(I)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Landroid/widget/ListView;
move-result-object v0
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->e(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)I
move-result v0
div-int v0, p1, v0
if-lez v0, :cond_37
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Landroid/widget/ListView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v2
add-int/2addr v0, v2
invoke-static {v1, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->a(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;I)I
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->d(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->f(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)I
move-result v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$7;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->g(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V
:cond_37
return-void
.end method