.class public final enum Lco/vine/android/util/SystemUtil$PrefBooleanState;
.super Ljava/lang/Enum;
.source "SystemUtil.java"
.field private static final synthetic $VALUES:[Lco/vine/android/util/SystemUtil$PrefBooleanState;
.field public static final enum FALSE:Lco/vine/android/util/SystemUtil$PrefBooleanState;
.field public static final enum TRUE:Lco/vine/android/util/SystemUtil$PrefBooleanState;
.field public static final enum UNKNOWN:Lco/vine/android/util/SystemUtil$PrefBooleanState;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lco/vine/android/util/SystemUtil$PrefBooleanState;
const-string v1, "UNKNOWN"
invoke-direct {v0, v1, v2}, Lco/vine/android/util/SystemUtil$PrefBooleanState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lco/vine/android/util/SystemUtil$PrefBooleanState;->UNKNOWN:Lco/vine/android/util/SystemUtil$PrefBooleanState;
new-instance v0, Lco/vine/android/util/SystemUtil$PrefBooleanState;
const-string v1, "TRUE"
invoke-direct {v0, v1, v3}, Lco/vine/android/util/SystemUtil$PrefBooleanState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lco/vine/android/util/SystemUtil$PrefBooleanState;->TRUE:Lco/vine/android/util/SystemUtil$PrefBooleanState;
new-instance v0, Lco/vine/android/util/SystemUtil$PrefBooleanState;
const-string v1, "FALSE"
invoke-direct {v0, v1, v4}, Lco/vine/android/util/SystemUtil$PrefBooleanState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lco/vine/android/util/SystemUtil$PrefBooleanState;->FALSE:Lco/vine/android/util/SystemUtil$PrefBooleanState;
const/4 v0, 0x3
new-array v0, v0, [Lco/vine/android/util/SystemUtil$PrefBooleanState;
sget-object v1, Lco/vine/android/util/SystemUtil$PrefBooleanState;->UNKNOWN:Lco/vine/android/util/SystemUtil$PrefBooleanState;
aput-object v1, v0, v2
sget-object v1, Lco/vine/android/util/SystemUtil$PrefBooleanState;->TRUE:Lco/vine/android/util/SystemUtil$PrefBooleanState;
aput-object v1, v0, v3
sget-object v1, Lco/vine/android/util/SystemUtil$PrefBooleanState;->FALSE:Lco/vine/android/util/SystemUtil$PrefBooleanState;
aput-object v1, v0, v4
sput-object v0, Lco/vine/android/util/SystemUtil$PrefBooleanState;->$VALUES:[Lco/vine/android/util/SystemUtil$PrefBooleanState;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lco/vine/android/util/SystemUtil$PrefBooleanState;
.registers 2
const-class v0, Lco/vine/android/util/SystemUtil$PrefBooleanState;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lco/vine/android/util/SystemUtil$PrefBooleanState;
return-object v0
.end method
.method public static values()[Lco/vine/android/util/SystemUtil$PrefBooleanState;
.registers 1
sget-object v0, Lco/vine/android/util/SystemUtil$PrefBooleanState;->$VALUES:[Lco/vine/android/util/SystemUtil$PrefBooleanState;
invoke-virtual {v0}, [Lco/vine/android/util/SystemUtil$PrefBooleanState;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lco/vine/android/util/SystemUtil$PrefBooleanState;
return-object v0
.end method