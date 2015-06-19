.class public final enum Lco/vine/android/recorder/AudioArray$AudioArrayType;
.super Ljava/lang/Enum;
.source "AudioArray.java"
.field private static final synthetic $VALUES:[Lco/vine/android/recorder/AudioArray$AudioArrayType;
.field public static final enum BYTE:Lco/vine/android/recorder/AudioArray$AudioArrayType;
.field public static final enum SHORT:Lco/vine/android/recorder/AudioArray$AudioArrayType;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lco/vine/android/recorder/AudioArray$AudioArrayType;
const-string v1, "BYTE"
invoke-direct {v0, v1, v2}, Lco/vine/android/recorder/AudioArray$AudioArrayType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lco/vine/android/recorder/AudioArray$AudioArrayType;->BYTE:Lco/vine/android/recorder/AudioArray$AudioArrayType;
new-instance v0, Lco/vine/android/recorder/AudioArray$AudioArrayType;
const-string v1, "SHORT"
invoke-direct {v0, v1, v3}, Lco/vine/android/recorder/AudioArray$AudioArrayType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lco/vine/android/recorder/AudioArray$AudioArrayType;->SHORT:Lco/vine/android/recorder/AudioArray$AudioArrayType;
const/4 v0, 0x2
new-array v0, v0, [Lco/vine/android/recorder/AudioArray$AudioArrayType;
sget-object v1, Lco/vine/android/recorder/AudioArray$AudioArrayType;->BYTE:Lco/vine/android/recorder/AudioArray$AudioArrayType;
aput-object v1, v0, v2
sget-object v1, Lco/vine/android/recorder/AudioArray$AudioArrayType;->SHORT:Lco/vine/android/recorder/AudioArray$AudioArrayType;
aput-object v1, v0, v3
sput-object v0, Lco/vine/android/recorder/AudioArray$AudioArrayType;->$VALUES:[Lco/vine/android/recorder/AudioArray$AudioArrayType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lco/vine/android/recorder/AudioArray$AudioArrayType;
.registers 2
const-class v0, Lco/vine/android/recorder/AudioArray$AudioArrayType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lco/vine/android/recorder/AudioArray$AudioArrayType;
return-object v0
.end method
.method public static values()[Lco/vine/android/recorder/AudioArray$AudioArrayType;
.registers 1
sget-object v0, Lco/vine/android/recorder/AudioArray$AudioArrayType;->$VALUES:[Lco/vine/android/recorder/AudioArray$AudioArrayType;
invoke-virtual {v0}, [Lco/vine/android/recorder/AudioArray$AudioArrayType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lco/vine/android/recorder/AudioArray$AudioArrayType;
return-object v0
.end method