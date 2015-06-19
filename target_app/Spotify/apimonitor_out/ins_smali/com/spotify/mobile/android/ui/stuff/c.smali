.class public final Lcom/spotify/mobile/android/ui/stuff/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/util/List;
.field private b:Landroid/content/Context;
.field private c:Lcom/spotify/android/paste/widget/EmptyView;
.field private d:Landroid/view/View;
.field private e:Lcom/spotify/mobile/android/ui/stuff/d;
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Landroid/view/View;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/c;->a:Ljava/util/List;
iput-object p1, p0, Lcom/spotify/mobile/android/ui/stuff/c;->b:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/stuff/c;->c:Lcom/spotify/android/paste/widget/EmptyView;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/stuff/c;->d:Landroid/view/View;
return-void
.end method
.method private a(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/c;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_18
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/stuff/e;
iget-object v0, v0, Lcom/spotify/mobile/android/ui/stuff/e;->a:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/Assertion;->b(Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_6
:cond_18
return-void
.end method
.method public final a()Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
.registers 7
new-instance v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/stuff/c;->b:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/stuff/c;->c:Lcom/spotify/android/paste/widget/EmptyView;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/stuff/c;->d:Landroid/view/View;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/stuff/c;->e:Lcom/spotify/mobile/android/ui/stuff/d;
const/4 v5, 0x0
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/widget/EmptyView;Landroid/view/View;Lcom/spotify/mobile/android/ui/stuff/d;B)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/stuff/c;->a:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_14
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_24
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/ui/stuff/e;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;->a(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager;Lcom/spotify/mobile/android/ui/stuff/e;)V
goto :goto_14
:cond_24
return-object v0
.end method
.method public final a(II)Lcom/spotify/mobile/android/ui/stuff/c;
.registers 10
sget-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->a:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/stuff/c;->a(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;)V
iget-object v6, p0, Lcom/spotify/mobile/android/ui/stuff/c;->a:Ljava/util/List;
new-instance v0, Lcom/spotify/mobile/android/ui/stuff/e;
sget-object v1, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->a:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->cO:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const/4 v5, 0x0
move v3, p1
move v4, p2
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/stuff/e;-><init>(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;Lcom/spotify/android/paste/graphics/SpotifyIcon;IIB)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public final a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/ui/stuff/c;
.registers 9
sget-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->c:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/stuff/c;->a(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;)V
iget-object v6, p0, Lcom/spotify/mobile/android/ui/stuff/c;->a:Ljava/util/List;
new-instance v0, Lcom/spotify/mobile/android/ui/stuff/e;
sget-object v1, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->c:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
const v3, 0x7f0f0240
const v4, 0x7f0f023f
const/4 v5, 0x0
move-object v2, p1
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/stuff/e;-><init>(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;Lcom/spotify/android/paste/graphics/SpotifyIcon;IIB)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public final a(Lcom/spotify/android/paste/graphics/SpotifyIcon;II)Lcom/spotify/mobile/android/ui/stuff/c;
.registers 11
sget-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->d:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/stuff/c;->a(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;)V
iget-object v6, p0, Lcom/spotify/mobile/android/ui/stuff/c;->a:Ljava/util/List;
new-instance v0, Lcom/spotify/mobile/android/ui/stuff/e;
sget-object v1, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->d:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
const/4 v5, 0x0
move-object v2, p1
move v3, p2
move v4, p3
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/stuff/e;-><init>(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;Lcom/spotify/android/paste/graphics/SpotifyIcon;IIB)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public final a(Lcom/spotify/mobile/android/ui/stuff/d;)Lcom/spotify/mobile/android/ui/stuff/c;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/stuff/c;->e:Lcom/spotify/mobile/android/ui/stuff/d;
return-object p0
.end method
.method public final b(II)Lcom/spotify/mobile/android/ui/stuff/c;
.registers 10
sget-object v0, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->b:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/stuff/c;->a(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;)V
iget-object v6, p0, Lcom/spotify/mobile/android/ui/stuff/c;->a:Ljava/util/List;
new-instance v0, Lcom/spotify/mobile/android/ui/stuff/e;
sget-object v1, Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;->b:Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->cm:Lcom/spotify/android/paste/graphics/SpotifyIcon;
const/4 v5, 0x0
move v3, p1
move v4, p2
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/ui/stuff/e;-><init>(Lcom/spotify/mobile/android/ui/stuff/ContentViewManager$ContentState;Lcom/spotify/android/paste/graphics/SpotifyIcon;IIB)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-object p0
.end method