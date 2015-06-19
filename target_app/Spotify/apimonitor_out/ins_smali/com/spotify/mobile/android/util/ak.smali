.class public Lcom/spotify/mobile/android/util/ak;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/c/a;
.method static constructor <clinit>()V
.registers 4
const-class v0, Lcom/spotify/mobile/android/util/ak;
const-class v1, Lcom/spotify/mobile/android/util/ai;
new-instance v2, Lcom/spotify/mobile/android/util/ai;
invoke-direct {v2}, Lcom/spotify/mobile/android/util/ai;-><init>()V
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
const-class v0, Lcom/spotify/mobile/android/util/ak;
const-class v1, Lcom/spotify/mobile/android/util/l;
new-instance v2, Lcom/spotify/mobile/android/util/l;
const-string v3, "http://crashdump.spotify.com:80"
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/util/l;-><init>(Ljava/lang/String;)V
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/spotify/mobile/android/c/a;)V
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/cx;Ljava/lang/Throwable;)V
.registers 7
const-class v0, Lcom/spotify/mobile/android/util/ak;
const-class v1, Lcom/spotify/mobile/android/util/ai;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ai;
invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/util/ai;->getInfoMap(Lcom/spotify/mobile/android/util/cx;Ljava/lang/Throwable;)Ljava/util/Map;
move-result-object v1
const-class v0, Lcom/spotify/mobile/android/util/ak;
const-class v2, Lcom/spotify/mobile/android/util/l;
invoke-static {v0, v2}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/l;
const-string v2, ""
new-instance v3, Lcom/spotify/mobile/android/util/ak$1;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/util/ak$1;-><init>(Lcom/spotify/mobile/android/util/ak;)V
invoke-virtual {v0, v2, v1, v3}, Lcom/spotify/mobile/android/util/l;->a(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bg;)V
return-void
.end method