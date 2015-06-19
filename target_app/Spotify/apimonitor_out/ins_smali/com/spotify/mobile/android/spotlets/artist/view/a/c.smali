.class public abstract Lcom/spotify/mobile/android/spotlets/artist/view/a/c;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/content/Context;
.field private final b:Ljava/lang/String;
.field private final c:Lcom/spotify/mobile/android/spotlets/artist/view/a/b;
.field private final d:Ljava/util/Map;
.field private final e:Lcom/spotify/mobile/android/spotlets/artist/view/a/d;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/artist/view/a/b;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/google/common/collect/ak;->a()Ljava/util/HashMap;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->d:Ljava/util/Map;
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->b:Ljava/lang/String;
new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/a/d;
invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/spotlets/artist/view/a/d;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/a/c;Landroid/content/ContentResolver;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->e:Lcom/spotify/mobile/android/spotlets/artist/view/a/d;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->c:Lcom/spotify/mobile/android/spotlets/artist/view/a/b;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/view/a/c;Landroid/database/Cursor;Ljava/lang/String;)V
.registers 5
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->a(Landroid/database/Cursor;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->d:Ljava/util/Map;
invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->c:Lcom/spotify/mobile/android/spotlets/artist/view/a/b;
invoke-interface {v0, p2}, Lcom/spotify/mobile/android/spotlets/artist/view/a/b;->a(Ljava/lang/String;)V
return-void
.end method
.method protected final a()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->a:Landroid/content/Context;
return-object v0
.end method
.method protected abstract a(Landroid/database/Cursor;)Ljava/lang/Object;
.end method
.method protected abstract a(Landroid/view/ContextMenu;Ljava/lang/Object;)V
.end method
.method protected abstract a(Ljava/lang/String;)V
.end method
.method protected final a(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.registers 14
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->e:Lcom/spotify/mobile/android/spotlets/artist/view/a/d;
const/4 v1, 0x0
const/4 v7, 0x0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
move-object v6, p5
invoke-virtual/range {v0 .. v7}, Lcom/spotify/mobile/android/spotlets/artist/view/a/d;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/lang/String;Landroid/view/ContextMenu;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->d:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->d:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->a(Landroid/view/ContextMenu;Ljava/lang/Object;)V
:goto_11
return-void
:cond_12
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->a(Ljava/lang/String;)V
goto :goto_11
.end method
.method protected final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->b:Ljava/lang/String;
return-object v0
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a/c;->d:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
.end method