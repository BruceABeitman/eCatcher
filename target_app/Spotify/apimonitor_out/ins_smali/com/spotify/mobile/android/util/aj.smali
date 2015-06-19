.class public final Lcom/spotify/mobile/android/util/aj;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Lcom/spotify/mobile/android/util/cz;
.field public static final b:Lcom/spotify/mobile/android/util/cz;
.method static constructor <clinit>()V
.registers 1
const-string v0, "startup_time"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/util/aj;->a:Lcom/spotify/mobile/android/util/cz;
const-string v0, "user_id"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/util/aj;->b:Lcom/spotify/mobile/android/util/cz;
return-void
.end method