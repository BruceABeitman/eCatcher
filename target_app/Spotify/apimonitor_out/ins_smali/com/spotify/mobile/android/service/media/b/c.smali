.class public final Lcom/spotify/mobile/android/service/media/b/c;
.super Lcom/spotify/mobile/android/service/media/b/a;
.source "SourceFile"
.field private static final a:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x5
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "uri"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "title"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "subtitle"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "image_uri"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "supported_actions"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/service/media/b/c;->a:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
sget-object v0, Lcom/spotify/mobile/android/service/media/b/c;->a:[Ljava/lang/String;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/service/media/b/a;-><init>([Ljava/lang/String;)V
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)[Ljava/lang/Object;
.registers 6
check-cast p1, Lcom/spotify/mobile/android/service/media/c/b;
const/4 v0, 0x5
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-interface {p1}, Lcom/spotify/mobile/android/service/media/c/b;->a()Landroid/net/Uri;
move-result-object v2
invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-interface {p1}, Lcom/spotify/mobile/android/service/media/c/b;->b()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
invoke-interface {p1}, Lcom/spotify/mobile/android/service/media/c/b;->c()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-interface {p1}, Lcom/spotify/mobile/android/service/media/c/b;->d()Landroid/net/Uri;
move-result-object v2
invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
invoke-interface {p1}, Lcom/spotify/mobile/android/service/media/c/b;->e()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
return-object v0
.end method