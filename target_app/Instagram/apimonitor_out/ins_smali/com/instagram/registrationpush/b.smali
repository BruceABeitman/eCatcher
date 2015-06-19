.class public final enum Lcom/instagram/registrationpush/b;
.super Ljava/lang/Enum;
.source "RegistrationPushVariation.java"
.field public static final enum a:Lcom/instagram/registrationpush/b;
.field public static final enum b:Lcom/instagram/registrationpush/b;
.field public static final enum c:Lcom/instagram/registrationpush/b;
.field private static final synthetic f:[Lcom/instagram/registrationpush/b;
.field private final d:Ljava/lang/String;
.field private final e:I
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/instagram/registrationpush/b;
const-string v1, "Friends"
const-string v2, "friends"
sget v3, Lcom/facebook/az;->local_push_friends:I
invoke-direct {v0, v1, v4, v2, v3}, Lcom/instagram/registrationpush/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V
sput-object v0, Lcom/instagram/registrationpush/b;->a:Lcom/instagram/registrationpush/b;
new-instance v0, Lcom/instagram/registrationpush/b;
const-string v1, "Photos"
const-string v2, "photos"
sget v3, Lcom/facebook/az;->local_push_photos:I
invoke-direct {v0, v1, v5, v2, v3}, Lcom/instagram/registrationpush/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V
sput-object v0, Lcom/instagram/registrationpush/b;->b:Lcom/instagram/registrationpush/b;
new-instance v0, Lcom/instagram/registrationpush/b;
const-string v1, "Finish"
const-string v2, "finish"
sget v3, Lcom/facebook/az;->local_push_finish:I
invoke-direct {v0, v1, v6, v2, v3}, Lcom/instagram/registrationpush/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V
sput-object v0, Lcom/instagram/registrationpush/b;->c:Lcom/instagram/registrationpush/b;
const/4 v0, 0x3
new-array v0, v0, [Lcom/instagram/registrationpush/b;
sget-object v1, Lcom/instagram/registrationpush/b;->a:Lcom/instagram/registrationpush/b;
aput-object v1, v0, v4
sget-object v1, Lcom/instagram/registrationpush/b;->b:Lcom/instagram/registrationpush/b;
aput-object v1, v0, v5
sget-object v1, Lcom/instagram/registrationpush/b;->c:Lcom/instagram/registrationpush/b;
aput-object v1, v0, v6
sput-object v0, Lcom/instagram/registrationpush/b;->f:[Lcom/instagram/registrationpush/b;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
.registers 5
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/instagram/registrationpush/b;->d:Ljava/lang/String;
iput p4, p0, Lcom/instagram/registrationpush/b;->e:I
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/instagram/registrationpush/b;
.registers 6
invoke-static {}, Lcom/instagram/registrationpush/b;->values()[Lcom/instagram/registrationpush/b;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
move v1, v0
:goto_7
if-ge v1, v3, :cond_1a
aget-object v0, v2, v1
invoke-virtual {v0}, Lcom/instagram/registrationpush/b;->a()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_16
:goto_15
return-object v0
:cond_16
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
:cond_1a
const/4 v0, 0x0
goto :goto_15
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/registrationpush/b;
.registers 2
const-class v0, Lcom/instagram/registrationpush/b;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/registrationpush/b;
return-object v0
.end method
.method public static values()[Lcom/instagram/registrationpush/b;
.registers 1
sget-object v0, Lcom/instagram/registrationpush/b;->f:[Lcom/instagram/registrationpush/b;
invoke-virtual {v0}, [Lcom/instagram/registrationpush/b;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/registrationpush/b;
return-object v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/registrationpush/b;->d:Ljava/lang/String;
return-object v0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/instagram/registrationpush/b;->e:I
return v0
.end method