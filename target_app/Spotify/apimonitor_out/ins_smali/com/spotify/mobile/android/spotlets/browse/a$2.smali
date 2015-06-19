.class final Lcom/spotify/mobile/android/spotlets/browse/a$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/browse/datasource/a;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/util/List;Ljava/util/Map;IZLcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V
.registers 10
sget-object v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->a:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
invoke-static {v0, p5}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->k(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->d()Z
move-result v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->k(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V
:cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->o()Z
move-result v0
if-nez v0, :cond_23
:goto_22
:cond_22
return-void
:cond_23
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->m(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/a;->a()V
if-eqz p1, :cond_37
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->m(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/a/a;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/browse/a/a;->a(Ljava/util/List;)V
:cond_37
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->m(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/a;->notifyDataSetChanged()V
if-eqz p2, :cond_7d
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
const-string v0, "label"
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v1, v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Lcom/spotify/mobile/android/spotlets/browse/a;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->n(Lcom/spotify/mobile/android/spotlets/browse/a;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_7d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/browse/a;->n(Lcom/spotify/mobile/android/spotlets/browse/a;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/a;->b(Lcom/spotify/mobile/android/spotlets/browse/a;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->d(Lcom/spotify/mobile/android/spotlets/browse/a;)Z
move-result v0
if-nez v0, :cond_7d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->i(Lcom/spotify/mobile/android/spotlets/browse/a;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/browse/a;->n(Lcom/spotify/mobile/android/spotlets/browse/a;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_7d
if-eqz p1, :cond_a8
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_a8
const/4 v0, 0x0
invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->f()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->c(Lcom/spotify/mobile/android/spotlets/browse/a;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->d(Lcom/spotify/mobile/android/spotlets/browse/a;)Z
move-result v0
if-nez v0, :cond_a8
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/browse/a;->o(Lcom/spotify/mobile/android/spotlets/browse/a;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Ljava/lang/String;)V
:cond_a8
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Lcom/spotify/mobile/android/spotlets/browse/a;)Z
move-result v0
if-nez v0, :cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->d(Lcom/spotify/mobile/android/spotlets/browse/a;)Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$2;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->p(Lcom/spotify/mobile/android/spotlets/browse/a;)Landroid/os/Handler;
move-result-object v0
const v1, 0x7f0a0121
const-wide/16 v2, 0x1f4
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
goto/16 :goto_22
.end method