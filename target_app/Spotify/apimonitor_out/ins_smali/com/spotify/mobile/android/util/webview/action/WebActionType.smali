.class public final enum Lcom/spotify/mobile/android/util/webview/action/WebActionType;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/util/webview/action/WebActionType;
.field public static final enum b:Lcom/spotify/mobile/android/util/webview/action/WebActionType;
.field public static final enum c:Lcom/spotify/mobile/android/util/webview/action/WebActionType;
.field public static final enum d:Lcom/spotify/mobile/android/util/webview/action/WebActionType;
.field public static final enum e:Lcom/spotify/mobile/android/util/webview/action/WebActionType;
.field private static f:Landroid/content/UriMatcher;
.field private static final g:[Lcom/spotify/mobile/android/util/webview/action/WebActionType;
.field private static final synthetic h:[Lcom/spotify/mobile/android/util/webview/action/WebActionType;
.field private mPattern:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;
const-string v1, "CLOSE"
const-string v2, "close"
invoke-direct {v0, v1, v3, v2}, Lcom/spotify/mobile/android/util/webview/action/WebActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->a:Lcom/spotify/mobile/android/util/webview/action/WebActionType;
new-instance v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;
const-string v1, "NPS"
const-string v2, "nps"
invoke-direct {v0, v1, v4, v2}, Lcom/spotify/mobile/android/util/webview/action/WebActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->b:Lcom/spotify/mobile/android/util/webview/action/WebActionType;
new-instance v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;
const-string v1, "PLAYER"
const-string v2, "player"
invoke-direct {v0, v1, v5, v2}, Lcom/spotify/mobile/android/util/webview/action/WebActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->c:Lcom/spotify/mobile/android/util/webview/action/WebActionType;
new-instance v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;
const-string v1, "SHARE"
const-string v2, "share"
invoke-direct {v0, v1, v6, v2}, Lcom/spotify/mobile/android/util/webview/action/WebActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->d:Lcom/spotify/mobile/android/util/webview/action/WebActionType;
new-instance v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;
const-string v1, "NO_MATCH"
const-string v2, ""
invoke-direct {v0, v1, v7, v2}, Lcom/spotify/mobile/android/util/webview/action/WebActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->e:Lcom/spotify/mobile/android/util/webview/action/WebActionType;
const/4 v0, 0x5
new-array v0, v0, [Lcom/spotify/mobile/android/util/webview/action/WebActionType;
sget-object v1, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->a:Lcom/spotify/mobile/android/util/webview/action/WebActionType;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->b:Lcom/spotify/mobile/android/util/webview/action/WebActionType;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->c:Lcom/spotify/mobile/android/util/webview/action/WebActionType;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->d:Lcom/spotify/mobile/android/util/webview/action/WebActionType;
aput-object v1, v0, v6
sget-object v1, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->e:Lcom/spotify/mobile/android/util/webview/action/WebActionType;
aput-object v1, v0, v7
sput-object v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->h:[Lcom/spotify/mobile/android/util/webview/action/WebActionType;
invoke-static {}, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->values()[Lcom/spotify/mobile/android/util/webview/action/WebActionType;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->g:[Lcom/spotify/mobile/android/util/webview/action/WebActionType;
new-instance v0, Landroid/content/UriMatcher;
const/4 v1, -0x1
invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V
sput-object v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->f:Landroid/content/UriMatcher;
const-class v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;
invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;
move-result-object v0
invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_87
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;
sget-object v2, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->f:Landroid/content/UriMatcher;
const-string v3, "*"
iget-object v4, v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->mPattern:Ljava/lang/String;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->ordinal()I
move-result v0
invoke-virtual {v2, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
goto :goto_6d
:cond_87
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->mPattern:Ljava/lang/String;
return-void
.end method
.method public static a(Landroid/net/Uri;)Lcom/spotify/mobile/android/util/webview/action/WebActionType;
.registers 3
sget-object v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->f:Landroid/content/UriMatcher;
invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_c
sget-object v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->e:Lcom/spotify/mobile/android/util/webview/action/WebActionType;
:goto_b
return-object v0
:cond_c
sget-object v1, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->g:[Lcom/spotify/mobile/android/util/webview/action/WebActionType;
aget-object v0, v1, v0
goto :goto_b
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/util/webview/action/WebActionType;
.registers 2
const-class v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/util/webview/action/WebActionType;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/util/webview/action/WebActionType;->h:[Lcom/spotify/mobile/android/util/webview/action/WebActionType;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/util/webview/action/WebActionType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/util/webview/action/WebActionType;
return-object v0
.end method