.class public Lcom/spotify/mobile/android/ui/fragments/logic/h;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/c/a;
.field private final a:Ljava/util/Map;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/IdentityHashMap;
const/4 v1, 0x4
invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/h;->a:Ljava/util/Map;
return-void
.end method
.method final a(Lcom/spotify/mobile/android/ui/fragments/logic/Flag;)Ljava/io/Serializable;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/h;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/Serializable;
return-object v0
.end method
.method final b(Lcom/spotify/mobile/android/ui/fragments/logic/Flag;)Z
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/h;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
return v0
.end method