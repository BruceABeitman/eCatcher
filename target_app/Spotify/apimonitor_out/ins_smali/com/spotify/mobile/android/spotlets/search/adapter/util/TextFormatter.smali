.class public abstract enum Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
.field public static final enum b:Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
.field private static final synthetic c:[Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter$1;
const-string v1, "HIGHLIGHT_SEARCH_TERM"
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter$1;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter$2;
const-string v1, "NO_FORMAT"
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter$2;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;->b:Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
const/4 v0, 0x2
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
const/4 v1, 0x0
sget-object v2, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;->a:Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
aput-object v2, v0, v1
const/4 v1, 0x1
sget-object v2, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;->b:Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;->c:[Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;IB)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
.registers 2
const-class v0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;->c:[Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;
return-object v0
.end method
.method abstract a(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/String;)Ljava/lang/CharSequence;
.end method
.method public final b(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/String;)Ljava/lang/CharSequence;
.registers 4
if-nez p2, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
invoke-virtual {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/TextFormatter;->a(Lcom/spotify/mobile/android/spotlets/search/a;Ljava/lang/String;)Ljava/lang/CharSequence;
move-result-object v0
goto :goto_3
.end method