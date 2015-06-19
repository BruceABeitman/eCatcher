.class final Lcom/spotify/mobile/android/spotlets/artist/model/g;
.super Ljava/lang/Object;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
.field private b:Lcom/google/common/base/Optional;
.field private c:Lcom/google/common/base/Optional;
.field private d:Lcom/google/common/base/Optional;
.field private e:Z
.method private constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->b:Lcom/google/common/base/Optional;
invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->c:Lcom/google/common/base/Optional;
invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->d:Lcom/google/common/base/Optional;
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/model/g;-><init>(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/model/g;)V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->e:Z
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/model/g;II)V
.registers 4
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->c:Lcom/google/common/base/Optional;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->d:Lcom/google/common/base/Optional;
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/model/g;->b()V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/model/g;Z)V
.registers 3
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-static {v0}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->b:Lcom/google/common/base/Optional;
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/model/g;->b()V
return-void
.end method
.method private a()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->e:Z
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->b:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->c:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->d:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_1e
:cond_1c
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method
.method private b()V
.registers 6
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/model/g;->a()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->e:Z
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->a(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)Lcom/spotify/mobile/android/spotlets/artist/model/h;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/h;->a()V
goto :goto_6
:cond_15
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/artist/model/g;->a()Z
move-result v0
invoke-static {v0}, Lcom/google/common/base/i;->b(Z)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->e:Z
if-nez v0, :cond_5d
const/4 v0, 0x1
:goto_21
invoke-static {v0}, Lcom/google/common/base/i;->b(Z)V
new-instance v1, Lcom/spotify/mobile/android/spotlets/follow/a;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->d(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)Ljava/lang/String;
move-result-object v2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->c:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->d:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->b:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-direct {v1, v2, v3, v4, v0}, Lcom/spotify/mobile/android/spotlets/follow/a;-><init>(Ljava/lang/String;IIZ)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/g;->a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->e(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)Lcom/spotify/mobile/android/spotlets/follow/FollowManager;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/follow/FollowManager;->a(Lcom/spotify/mobile/android/spotlets/follow/a;)V
goto :goto_6
:cond_5d
const/4 v0, 0x0
goto :goto_21
.end method