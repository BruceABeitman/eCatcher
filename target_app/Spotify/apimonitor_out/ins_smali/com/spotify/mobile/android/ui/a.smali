.class public final Lcom/spotify/mobile/android/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/google/common/collect/ak;->a()Ljava/util/HashMap;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/a;->a:Ljava/util/Map;
const-class v0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->a()Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->b()V
const-class v0, Lcom/spotify/mobile/android/spotlets/browse/c;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->a()Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->b()V
const-class v0, Lcom/spotify/mobile/android/spotlets/artist/e;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->a()Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->b()V
const-class v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/a;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->a()Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->b()V
const-class v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->a()Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->b()V
const-class v0, Lcom/spotify/mobile/android/spotlets/user/f;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->a()Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->b()V
const-class v0, Lcom/spotify/mobile/android/spotlets/a/a;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->a()Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->b()V
const-class v0, Lcom/spotify/mobile/android/spotlets/artist/d;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->a()Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->b()V
const-class v0, Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->a()Lcom/spotify/mobile/android/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/c;->b()V
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic a()Ljava/util/Map;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/ui/a;->a:Ljava/util/Map;
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/Class;)Z
.registers 4
const/4 v0, 0x0
if-eqz p0, :cond_5
if-nez p1, :cond_6
:cond_5
:goto_5
return v0
:cond_6
sget-object v1, Lcom/spotify/mobile/android/ui/a;->a:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5
sget-object v0, Lcom/spotify/mobile/android/ui/a;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/b;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/ui/b;->a(Landroid/content/Context;)Z
move-result v0
goto :goto_5
.end method