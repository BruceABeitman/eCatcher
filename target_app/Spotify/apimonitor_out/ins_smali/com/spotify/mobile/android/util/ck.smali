.class public final Lcom/spotify/mobile/android/util/ck;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Landroid/net/Uri;
.field static final b:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
sget-object v0, Lcom/spotify/mobile/android/provider/n;->a:Landroid/net/Uri;
sput-object v0, Lcom/spotify/mobile/android/util/ck;->a:Landroid/net/Uri;
const/16 v0, 0x9
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "paused"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "is_prev_enabled"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "is_next_enabled"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "is_ad_playing"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "ad_type"
aput-object v2, v0, v1
const/4 v1, 0x5
const-string v2, "position"
aput-object v2, v0, v1
const/4 v1, 0x6
const-string v2, "is_local_player"
aput-object v2, v0, v1
const/4 v1, 0x7
const-string v2, "is_suggested_track"
aput-object v2, v0, v1
const/16 v1, 0x8
const-string v2, "context_uri"
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/util/ck;->b:[Ljava/lang/String;
return-void
.end method