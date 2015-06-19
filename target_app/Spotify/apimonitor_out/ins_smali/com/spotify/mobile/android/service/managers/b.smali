.class final Lcom/spotify/mobile/android/service/managers/b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/ct;
.field final synthetic a:Lcom/spotify/mobile/android/service/managers/ConnectManager;
.method private constructor <init>(Lcom/spotify/mobile/android/service/managers/ConnectManager;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/managers/b;->a:Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/service/managers/ConnectManager;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/managers/b;-><init>(Lcom/spotify/mobile/android/service/managers/ConnectManager;)V
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/util/cs;Landroid/database/Cursor;)V
.registers 7
const-string v0, "Received device list update (Device count: %d)"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-interface {p2}, Landroid/database/Cursor;->getCount()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/b;->a:Lcom/spotify/mobile/android/service/managers/ConnectManager;
invoke-static {v0, p2}, Lcom/spotify/mobile/android/service/managers/ConnectManager;->a(Lcom/spotify/mobile/android/service/managers/ConnectManager;Landroid/database/Cursor;)V
return-void
.end method