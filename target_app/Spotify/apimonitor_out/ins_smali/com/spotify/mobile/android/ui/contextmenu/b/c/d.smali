.class public final Lcom/spotify/mobile/android/ui/contextmenu/b/c/d;
.super Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;
.source "SourceFile"
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;)V
return-void
.end method
.method protected final a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
.registers 9
invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-static {p2}, Lcom/spotify/mobile/android/provider/b;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/model/e;->a:[Ljava/lang/String;
const-string v3, "uri=?"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/String;
const/4 v5, 0x0
aput-object p2, v4, v5
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
return-object v0
.end method
.method protected final synthetic a(Landroid/database/Cursor;)Ljava/lang/Object;
.registers 5
new-instance v0, Lcom/spotify/mobile/android/model/e;
invoke-direct {v0}, Lcom/spotify/mobile/android/model/e;-><init>()V
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/model/e;->a(Landroid/database/Cursor;)V
invoke-interface {v0}, Lcom/spotify/mobile/android/model/b;->getUri()Ljava/lang/String;
move-result-object v1
invoke-interface {v0}, Lcom/spotify/mobile/android/model/b;->getName()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;
move-result-object v0
return-object v0
.end method