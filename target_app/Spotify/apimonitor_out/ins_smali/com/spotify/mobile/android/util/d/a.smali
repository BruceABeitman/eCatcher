.class public final Lcom/spotify/mobile/android/util/d/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/util/List;
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/util/d/a;->a:Ljava/util/List;
invoke-static {}, Lcom/spotify/mobile/android/f/a;->a()Z
move-result v0
if-nez v0, :cond_7c
iget-object v0, p0, Lcom/spotify/mobile/android/util/d/a;->a:Ljava/util/List;
new-instance v1, Lcom/spotify/mobile/android/util/d/d;
invoke-direct {v1}, Lcom/spotify/mobile/android/util/d/d;-><init>()V
const-string v2, "connectplayabckonly-2014-08-21"
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/d/d;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/d/d;
move-result-object v1
const v2, 0x7f0f0168
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/d/d;->a(I)Lcom/spotify/mobile/android/util/d/d;
move-result-object v1
const v2, 0x7f0f0167
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/d/d;->b(I)Lcom/spotify/mobile/android/util/d/d;
move-result-object v1
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->bn:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/d/d;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/util/d/d;
move-result-object v1
const v2, 0x7f02016d
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/d/d;->c(I)Lcom/spotify/mobile/android/util/d/d;
move-result-object v1
new-instance v2, Lcom/spotify/mobile/android/util/d/a$1;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/util/d/a$1;-><init>(Lcom/spotify/mobile/android/util/d/a;)V
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/d/d;->a(Lcom/spotify/mobile/android/util/d/c;)Lcom/spotify/mobile/android/util/d/d;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/d/d;->b()Lcom/spotify/mobile/android/util/d/b;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/spotify/mobile/android/util/d/d;
invoke-direct {v1}, Lcom/spotify/mobile/android/util/d/d;-><init>()V
const-string v2, "social-chart-2014-9-12"
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/d/d;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/d/d;
move-result-object v1
const v2, 0x7f0f03a2
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/d/d;->a(I)Lcom/spotify/mobile/android/util/d/d;
move-result-object v1
const v2, 0x7f0f03a0
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/d/d;->b(I)Lcom/spotify/mobile/android/util/d/d;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/d/d;->a()Lcom/spotify/mobile/android/util/d/d;
move-result-object v1
const v2, 0x7f0201ca
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/d/d;->c(I)Lcom/spotify/mobile/android/util/d/d;
move-result-object v1
new-instance v2, Lcom/spotify/mobile/android/util/d/a$2;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/util/d/a$2;-><init>(Lcom/spotify/mobile/android/util/d/a;)V
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/d/d;->a(Lcom/spotify/mobile/android/util/d/c;)Lcom/spotify/mobile/android/util/d/d;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/d/d;->b()Lcom/spotify/mobile/android/util/d/b;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_7c
return-void
.end method
.method public final a()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/d/a;->a:Ljava/util/List;
return-object v0
.end method