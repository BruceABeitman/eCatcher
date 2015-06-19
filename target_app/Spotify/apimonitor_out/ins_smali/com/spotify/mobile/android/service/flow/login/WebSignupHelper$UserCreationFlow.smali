.class public final enum Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
.field public static final enum b:Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
.field private static final synthetic c:[Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
.field private final mSource:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
const-string v1, "CLIENT_MOBILE"
const-string v2, "client_mobile"
invoke-direct {v0, v1, v3, v2}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;->a:Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
const-string v1, "PRE_INSTALLED"
const-string v2, "pre_installed_client"
invoke-direct {v0, v1, v4, v2}, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;->b:Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
const/4 v0, 0x2
new-array v0, v0, [Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
sget-object v1, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;->a:Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;->b:Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
aput-object v1, v0, v4
sput-object v0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;->c:[Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iput-object p3, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;->mSource:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
.registers 2
const-class v0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;->c:[Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/WebSignupHelper$UserCreationFlow;->mSource:Ljava/lang/String;
return-object v0
.end method