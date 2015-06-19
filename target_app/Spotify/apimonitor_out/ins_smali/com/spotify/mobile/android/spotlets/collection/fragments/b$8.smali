.class final Lcom/spotify/mobile/android/spotlets/collection/fragments/b$8;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/collection/cosmos/a/b;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$8;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(II)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$8;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->getCount()I
move-result v0
if-nez v0, :cond_d
:goto_c
return-void
:cond_d
:goto_d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$8;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->getCount()I
move-result v0
if-ge p1, v0, :cond_2e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$8;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->b(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/adapter/a;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/AlbumModel;->isHeader()Z
move-result v0
if-eqz v0, :cond_2e
add-int/lit8 p1, p1, 0x1
goto :goto_d
:cond_2e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$8;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->e(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/spotlets/collection/a/a;
move-result-object v0
invoke-interface {v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/collection/a/a;->a(II)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/b$8;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/b;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/b;->e(Lcom/spotify/mobile/android/spotlets/collection/fragments/b;)Lcom/spotify/mobile/android/spotlets/collection/a/a;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/collection/a/a;->a()V
goto :goto_c
.end method