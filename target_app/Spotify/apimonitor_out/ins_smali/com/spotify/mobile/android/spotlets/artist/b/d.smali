.class public final Lcom/spotify/mobile/android/spotlets/artist/b/d;
.super Lcom/spotify/mobile/android/spotlets/artist/b/b;
.source "SourceFile"
.field static final a:Ljava/util/regex/Pattern;
.method static constructor <clinit>()V
.registers 1
const-string v0, "spotify:artist:([a-zA-Z0-9]+):concert"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/b/d;->a:Ljava/util/regex/Pattern;
return-void
.end method
.method constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/artist/b/b;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
const-string v0, "concert"
return-object v0
.end method