.class public Lcom/spotify/mobile/android/spotlets/artist/util/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/c/a;
.field private final a:Ljava/util/Map;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/util/a;->a:Ljava/util/Map;
return-void
.end method
.method public final a(Ljava/lang/String;)Lcom/google/common/base/Optional;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/util/a;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
return-object v0
.end method
.method public final a(Ljava/lang/String;Ljava/util/List;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/util/a;->a:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method