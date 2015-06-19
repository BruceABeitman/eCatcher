.class final Lcom/spotify/mobile/android/spotlets/a/b$8;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/ds;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/a/b;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/a/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/b$8;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$8;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->l(Lcom/spotify/mobile/android/spotlets/a/b;)Ljava/lang/String;
return-void
.end method
.method public final a(I)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$8;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->c()Landroid/widget/ListView;
move-result-object v0
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$8;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->c()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b$8;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/a/b;->k(Lcom/spotify/mobile/android/spotlets/a/b;)I
move-result v1
add-int/2addr v1, p1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$8;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->e(Lcom/spotify/mobile/android/spotlets/a/b;)Z
move-result v0
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$8;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->c()Landroid/widget/ListView;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b$8;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v1, p1}, Lcom/spotify/mobile/android/spotlets/a/b;->a(Lcom/spotify/mobile/android/spotlets/a/b;I)I
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/eb;->a(Landroid/widget/AdapterView;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$8;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->g(Lcom/spotify/mobile/android/spotlets/a/b;)Z
:cond_34
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b$8;->a:Lcom/spotify/mobile/android/spotlets/a/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/a/b;->l(Lcom/spotify/mobile/android/spotlets/a/b;)Ljava/lang/String;
return-void
.end method