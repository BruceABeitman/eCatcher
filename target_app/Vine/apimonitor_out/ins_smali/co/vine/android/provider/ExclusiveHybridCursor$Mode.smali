.class public final enum Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
.super Ljava/lang/Enum;
.source "ExclusiveHybridCursor.java"
.field private static final synthetic $VALUES:[Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
.field public static final enum CURSOR:Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
.field public static final enum LIST:Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
const-string v1, "CURSOR"
invoke-direct {v0, v1, v2}, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;->CURSOR:Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
new-instance v0, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
const-string v1, "LIST"
invoke-direct {v0, v1, v3}, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;-><init>(Ljava/lang/String;I)V
sput-object v0, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;->LIST:Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
const/4 v0, 0x2
new-array v0, v0, [Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
sget-object v1, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;->CURSOR:Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
aput-object v1, v0, v2
sget-object v1, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;->LIST:Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
aput-object v1, v0, v3
sput-object v0, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;->$VALUES:[Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
.registers 2
const-class v0, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
return-object v0
.end method
.method public static values()[Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
.registers 1
sget-object v0, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;->$VALUES:[Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
invoke-virtual {v0}, [Lco/vine/android/provider/ExclusiveHybridCursor$Mode;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lco/vine/android/provider/ExclusiveHybridCursor$Mode;
return-object v0
.end method