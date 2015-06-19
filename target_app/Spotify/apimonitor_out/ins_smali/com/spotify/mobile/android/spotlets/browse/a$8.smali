.class final Lcom/spotify/mobile/android/spotlets/browse/a$8;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/browse/datasource/a;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/a$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/util/List;Ljava/util/Map;IZLcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V
.registers 8
sget-object v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->b:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
invoke-static {v0, p5}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->k(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->d()Z
move-result v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->k(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V
:cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->o()Z
move-result v0
if-nez v0, :cond_23
:goto_22
return-void
:cond_23
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->l(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/b;->a()V
if-eqz p1, :cond_31
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->a(Ljava/util/List;)V
:cond_31
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->l(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/a/b;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/a$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/browse/a;->k()Landroid/content/res/Resources;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->a(Landroid/content/res/Resources;)Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/a/b;->a(Ljava/util/List;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/a$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->l(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/b;->notifyDataSetChanged()V
goto :goto_22
.end method