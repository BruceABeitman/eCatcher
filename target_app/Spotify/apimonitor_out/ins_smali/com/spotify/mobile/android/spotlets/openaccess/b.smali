.class public final Lcom/spotify/mobile/android/spotlets/openaccess/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/lang/String;
.field public static final b:Ljava/lang/String;
.field public static final c:Lcom/spotify/mobile/android/util/cz;
.method static constructor <clinit>()V
.registers 2
const-string v0, "cc870833526d55790067577a577546370b6d51305e7a0f390036557440355531586b5c34033112360a71106d58321236096551650878506a156c4f73056b0e695438"
const-string v1, "337930336a6d66793567327a32757737326d34306b7a39396536617477353431396b6434333174363971766d613277366c6563656b78646a706c7873676b6f696138"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/bu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/b;->a:Ljava/lang/String;
const-string v0, "9b8755364b3508740b38057608300f670e6307795979087742785d754c680b6917794d325d645e774a36133106314c32507411395d36536f0178027a156c5b395866"
const-string v1, "6479653672356974393833766c306d6736633479697931777478697574686869767975326f646a777236753136317a32637474393936616f3378637a776c6c396c66"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/bu;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/b;->b:Ljava/lang/String;
const-string v0, "open_access_spotify_web_api_access_token"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/openaccess/b;->c:Lcom/spotify/mobile/android/util/cz;
return-void
.end method