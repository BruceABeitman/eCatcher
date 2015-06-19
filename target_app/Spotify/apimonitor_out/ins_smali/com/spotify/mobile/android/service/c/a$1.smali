.class final Lcom/spotify/mobile/android/service/c/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/service/c/a;
.method constructor <init>(Lcom/spotify/mobile/android/service/c/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/c/a$1;->a:Lcom/spotify/mobile/android/service/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 8
const/4 v3, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/a$1;->a:Lcom/spotify/mobile/android/service/c/a;
iget-object v0, v0, Lcom/spotify/mobile/android/service/c/a;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/provider/n;->a:Landroid/net/Uri;
invoke-static {}, Lcom/spotify/mobile/android/service/c/a;->b()[Ljava/lang/String;
move-result-object v2
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/a$1;->a:Lcom/spotify/mobile/android/service/c/a;
iget-object v0, v0, Lcom/spotify/mobile/android/service/c/a;->b:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/provider/u;->a:Landroid/net/Uri;
invoke-static {}, Lcom/spotify/mobile/android/service/c/a;->c()[Ljava/lang/String;
move-result-object v2
move-object v4, v3
move-object v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/c/a$1;->a:Lcom/spotify/mobile/android/service/c/a;
invoke-static {v6, v0}, Lcom/spotify/mobile/android/service/c/a;->a(Landroid/database/Cursor;Landroid/database/Cursor;)Lcom/spotify/mobile/android/g/a;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/service/c/a$1;->a:Lcom/spotify/mobile/android/service/c/a;
iget-object v2, v2, Lcom/spotify/mobile/android/service/c/a;->e:Landroid/os/Handler;
const/16 v3, 0xa
invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
invoke-interface {v6}, Landroid/database/Cursor;->close()V
invoke-interface {v0}, Landroid/database/Cursor;->close()V
return-void
.end method