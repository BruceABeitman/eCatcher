.class final Lcom/spotify/mobile/android/spotlets/browse/util/e$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 5
check-cast p1, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
check-cast p2, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
return v0
.end method