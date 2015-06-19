.class final enum Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
.field public static final enum b:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
.field private static final synthetic c:[Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
.field private final mResourceId:I
.field private final mValue:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
const-string v1, "MALE"
const-string v2, "male"
const v3, 0x7f0f0106
invoke-direct {v0, v1, v4, v2, v3}, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->a:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
new-instance v0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
const-string v1, "FEMALE"
const-string v2, "female"
const v3, 0x7f0f0104
invoke-direct {v0, v1, v5, v2, v3}, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->b:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
const/4 v0, 0x2
new-array v0, v0, [Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
sget-object v1, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->a:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->b:Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
aput-object v1, v0, v5
sput-object v0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->c:[Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
.registers 7
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_14
const/4 v0, 0x1
:goto_a
const-string v1, "Gender value must not be empty"
invoke-static {v0, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
iput-object p3, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->mValue:Ljava/lang/String;
iput p4, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->mResourceId:I
return-void
:cond_14
const/4 v0, 0x0
goto :goto_a
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->mResourceId:I
return v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
.registers 2
const-class v0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
return-object v0
.end method
.method public static values()[Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->c:[Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
invoke-virtual {v0}, [Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;
return-object v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->mValue:Ljava/lang/String;
return-object v0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
iget v0, p0, Lcom/spotify/mobile/android/service/flow/login/GenderSelectionHelper$Gender;->mResourceId:I
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method