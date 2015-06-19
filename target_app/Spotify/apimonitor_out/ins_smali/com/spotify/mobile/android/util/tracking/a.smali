.class final Lcom/spotify/mobile/android/util/tracking/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/tracking/f;
.field private final a:Ljava/util/List;
.field private final b:Lcom/spotify/mobile/android/spotlets/video/f;
.method constructor <init>()V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/a;->a:Ljava/util/List;
const-class v0, Lcom/spotify/mobile/android/spotlets/video/f;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/video/f;
iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/a;->b:Lcom/spotify/mobile/android/spotlets/video/f;
sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->x:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
iget-object v1, p0, Lcom/spotify/mobile/android/util/tracking/a;->a:Ljava/util/List;
new-instance v2, Lcom/spotify/mobile/android/util/tracking/b;
const-string v3, "TYPE_VIEW_VISIBILITY"
const-string v4, "EVENT_VIEW_APPEAR"
const/4 v5, 0x0
invoke-direct {v2, v3, v4, v0, v5}, Lcom/spotify/mobile/android/util/tracking/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;B)V
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->P:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/tracking/a;->a(Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;)V
sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->u:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/tracking/a;->a(Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;)V
sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->h:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/tracking/a;->a(Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;)V
sget-object v0, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->d:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/tracking/a;->a(Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;)V
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->G:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/tracking/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->h:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/util/tracking/a;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
return-void
.end method
.method private a(Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;)V
.registers 7
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/a;->a:Ljava/util/List;
new-instance v1, Lcom/spotify/mobile/android/util/tracking/b;
const-string v2, "TYPE_VIEW_LOADING"
const-string v3, "load_start"
const/4 v4, 0x0
invoke-direct {v1, v2, v3, p1, v4}, Lcom/spotify/mobile/android/util/tracking/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;B)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method private a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
.registers 8
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/a;->a:Ljava/util/List;
new-instance v1, Lcom/spotify/mobile/android/util/tracking/b;
const-string v2, "TYPE_VIEW_LOADING"
const-string v3, "load_start"
invoke-virtual {p1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x0
invoke-direct {v1, v2, v3, v4, v5}, Lcom/spotify/mobile/android/util/tracking/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 11
const/4 v1, 0x1
const/4 v2, 0x0
const/4 v0, 0x0
const-string v3, "TYPE_VIEW_VISIBILITY"
invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_5a
const-string v3, "EVENT_VIEW_APPEAR"
invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_5a
const-string v0, "ARG_VIEW_NAME"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
move-object v3, v0
:goto_1a
if-eqz v3, :cond_7a
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/a;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_22
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_7a
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/tracking/b;
iget-object v5, v0, Lcom/spotify/mobile/android/util/tracking/b;->a:Ljava/lang/String;
invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_78
iget-object v5, v0, Lcom/spotify/mobile/android/util/tracking/b;->b:Ljava/lang/String;
invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_78
new-instance v5, Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-direct {v5, v3}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Lcom/spotify/mobile/android/util/SpotifyLink;->a()Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
move-result-object v5
iget-object v6, v0, Lcom/spotify/mobile/android/util/tracking/b;->d:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
if-eq v5, v6, :cond_53
iget-object v0, v0, Lcom/spotify/mobile/android/util/tracking/b;->c:Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_78
:cond_53
move v0, v1
:goto_54
if-eqz v0, :cond_22
move v0, v1
:goto_57
if-nez v0, :cond_7c
:goto_59
return-void
:cond_5a
const-string v3, "TYPE_VIEW_LOADING"
invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_8b
const-string v3, "load_start"
invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_8b
const-string v0, "ARG_MESSAGE"
invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a()Ljava/lang/String;
move-result-object v0
move-object v3, v0
goto :goto_1a
:cond_78
move v0, v2
goto :goto_54
:cond_7a
move v0, v2
goto :goto_57
:cond_7c
const-string v0, "Prepare ad. View uri: %s"
new-array v1, v1, [Ljava/lang/Object;
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/a;->b:Lcom/spotify/mobile/android/spotlets/video/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/f;->a()V
goto :goto_59
:cond_8b
move-object v3, v0
goto :goto_1a
.end method