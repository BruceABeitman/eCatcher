.class public final enum Lco/vine/android/recorder/Processor$Rotation;
.super Ljava/lang/Enum;
.source "Processor.java"
.field private static final synthetic $VALUES:[Lco/vine/android/recorder/Processor$Rotation;
.field public static final enum NO_FLIP_90_CLOCKWISE:Lco/vine/android/recorder/Processor$Rotation;
.field public static final enum NO_FLIP_90_COUNTER_CLOCKWISE:Lco/vine/android/recorder/Processor$Rotation;
.field public static final enum VERTICAL_FLIP_AND_90_CLOCKWISE:Lco/vine/android/recorder/Processor$Rotation;
.field public static final enum VERTICAL_FLIP_AND_90_COUNTER_CLOCKWISE:Lco/vine/android/recorder/Processor$Rotation;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lco/vine/android/recorder/Processor$Rotation;
const-string v1, "VERTICAL_FLIP_AND_90_COUNTER_CLOCKWISE"
invoke-direct {v0, v1, v2}, Lco/vine/android/recorder/Processor$Rotation;-><init>(Ljava/lang/String;I)V
sput-object v0, Lco/vine/android/recorder/Processor$Rotation;->VERTICAL_FLIP_AND_90_COUNTER_CLOCKWISE:Lco/vine/android/recorder/Processor$Rotation;
new-instance v0, Lco/vine/android/recorder/Processor$Rotation;
const-string v1, "NO_FLIP_90_CLOCKWISE"
invoke-direct {v0, v1, v3}, Lco/vine/android/recorder/Processor$Rotation;-><init>(Ljava/lang/String;I)V
sput-object v0, Lco/vine/android/recorder/Processor$Rotation;->NO_FLIP_90_CLOCKWISE:Lco/vine/android/recorder/Processor$Rotation;
new-instance v0, Lco/vine/android/recorder/Processor$Rotation;
const-string v1, "NO_FLIP_90_COUNTER_CLOCKWISE"
invoke-direct {v0, v1, v4}, Lco/vine/android/recorder/Processor$Rotation;-><init>(Ljava/lang/String;I)V
sput-object v0, Lco/vine/android/recorder/Processor$Rotation;->NO_FLIP_90_COUNTER_CLOCKWISE:Lco/vine/android/recorder/Processor$Rotation;
new-instance v0, Lco/vine/android/recorder/Processor$Rotation;
const-string v1, "VERTICAL_FLIP_AND_90_CLOCKWISE"
invoke-direct {v0, v1, v5}, Lco/vine/android/recorder/Processor$Rotation;-><init>(Ljava/lang/String;I)V
sput-object v0, Lco/vine/android/recorder/Processor$Rotation;->VERTICAL_FLIP_AND_90_CLOCKWISE:Lco/vine/android/recorder/Processor$Rotation;
const/4 v0, 0x4
new-array v0, v0, [Lco/vine/android/recorder/Processor$Rotation;
sget-object v1, Lco/vine/android/recorder/Processor$Rotation;->VERTICAL_FLIP_AND_90_COUNTER_CLOCKWISE:Lco/vine/android/recorder/Processor$Rotation;
aput-object v1, v0, v2
sget-object v1, Lco/vine/android/recorder/Processor$Rotation;->NO_FLIP_90_CLOCKWISE:Lco/vine/android/recorder/Processor$Rotation;
aput-object v1, v0, v3
sget-object v1, Lco/vine/android/recorder/Processor$Rotation;->NO_FLIP_90_COUNTER_CLOCKWISE:Lco/vine/android/recorder/Processor$Rotation;
aput-object v1, v0, v4
sget-object v1, Lco/vine/android/recorder/Processor$Rotation;->VERTICAL_FLIP_AND_90_CLOCKWISE:Lco/vine/android/recorder/Processor$Rotation;
aput-object v1, v0, v5
sput-object v0, Lco/vine/android/recorder/Processor$Rotation;->$VALUES:[Lco/vine/android/recorder/Processor$Rotation;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lco/vine/android/recorder/Processor$Rotation;
.registers 2
const-class v0, Lco/vine/android/recorder/Processor$Rotation;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lco/vine/android/recorder/Processor$Rotation;
return-object v0
.end method
.method public static values()[Lco/vine/android/recorder/Processor$Rotation;
.registers 1
sget-object v0, Lco/vine/android/recorder/Processor$Rotation;->$VALUES:[Lco/vine/android/recorder/Processor$Rotation;
invoke-virtual {v0}, [Lco/vine/android/recorder/Processor$Rotation;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lco/vine/android/recorder/Processor$Rotation;
return-object v0
.end method