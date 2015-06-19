.class public final enum Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;
.field private static final synthetic b:[Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;
.field private final mTypeEnabled:Lcom/spotify/mobile/android/spotlets/tinkerbell/b;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x0
new-instance v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;
const-string v1, "BROWSE_PLAYLIST_TOOLTIP"
new-instance v2, Lcom/spotify/mobile/android/spotlets/tinkerbell/a;
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/spotlets/tinkerbell/a;-><init>(B)V
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/tinkerbell/b;)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;
const/4 v0, 0x1
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;
sget-object v1, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;
aput-object v1, v0, v3
sput-object v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;->b:[Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/tinkerbell/b;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;->mTypeEnabled:Lcom/spotify/mobile/android/spotlets/tinkerbell/b;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;
.registers 2
const-class v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;->b:[Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;
return-object v0
.end method
.method public final a(Landroid/content/Context;Z)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/Onboarding$Type;->mTypeEnabled:Lcom/spotify/mobile/android/spotlets/tinkerbell/b;
invoke-interface {v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/b;->a(Landroid/content/Context;Z)V
return-void
.end method