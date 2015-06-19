.class public final enum Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
.field public static final enum b:Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
.field private static final synthetic c:[Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
const-string v1, "ADD_LINE"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;->a:Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
new-instance v0, Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
const-string v1, "REDUCE_TEXT_SIZE"
invoke-direct {v0, v1, v3}, Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;->b:Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
const/4 v0, 0x2
new-array v0, v0, [Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
sget-object v1, Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;->a:Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;->b:Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
aput-object v1, v0, v3
sput-object v0, Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;->c:[Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
.registers 2
const-class v0, Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;->c:[Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/util/ui/TextContentFitter$Strategy;
return-object v0
.end method