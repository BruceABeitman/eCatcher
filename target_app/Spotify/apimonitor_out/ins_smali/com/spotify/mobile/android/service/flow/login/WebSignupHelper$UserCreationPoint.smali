.class public final enum Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;
.field private static final synthetic b:[Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;
.field private final mCreationPoint:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;
const-string v1, "CLIENT_MOBILE"
const-string v2, "client_mobile"
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;-><init>(Ljava/lang/String;Ljava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;->a:Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;
const/4 v0, 0x1
new-array v0, v0, [Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;
const/4 v1, 0x0
sget-object v2, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;->a:Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;
aput-object v2, v0, v1
sput-object v0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;->b:[Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;->mCreationPoint:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;
.registers 2
const-class v0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;->b:[Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationPoint;->mCreationPoint:Ljava/lang/String;
return-object v0
.end method