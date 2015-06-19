.class final enum Lqr/recognize/decoding/CaptureActivityHandler$State;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"
.field public static final enum DONE:Lqr/recognize/decoding/CaptureActivityHandler$State;
.field private static final synthetic ENUM$VALUES:[Lqr/recognize/decoding/CaptureActivityHandler$State;
.field public static final enum PREVIEW:Lqr/recognize/decoding/CaptureActivityHandler$State;
.field public static final enum SUCCESS:Lqr/recognize/decoding/CaptureActivityHandler$State;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lqr/recognize/decoding/CaptureActivityHandler$State;
const-string/jumbo v1, "PREVIEW"
invoke-direct {v0, v1, v2}, Lqr/recognize/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lqr/recognize/decoding/CaptureActivityHandler$State;->PREVIEW:Lqr/recognize/decoding/CaptureActivityHandler$State;
new-instance v0, Lqr/recognize/decoding/CaptureActivityHandler$State;
const-string/jumbo v1, "SUCCESS"
invoke-direct {v0, v1, v3}, Lqr/recognize/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lqr/recognize/decoding/CaptureActivityHandler$State;->SUCCESS:Lqr/recognize/decoding/CaptureActivityHandler$State;
new-instance v0, Lqr/recognize/decoding/CaptureActivityHandler$State;
const-string/jumbo v1, "DONE"
invoke-direct {v0, v1, v4}, Lqr/recognize/decoding/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V
sput-object v0, Lqr/recognize/decoding/CaptureActivityHandler$State;->DONE:Lqr/recognize/decoding/CaptureActivityHandler$State;
const/4 v0, 0x3
new-array v0, v0, [Lqr/recognize/decoding/CaptureActivityHandler$State;
sget-object v1, Lqr/recognize/decoding/CaptureActivityHandler$State;->PREVIEW:Lqr/recognize/decoding/CaptureActivityHandler$State;
aput-object v1, v0, v2
sget-object v1, Lqr/recognize/decoding/CaptureActivityHandler$State;->SUCCESS:Lqr/recognize/decoding/CaptureActivityHandler$State;
aput-object v1, v0, v3
sget-object v1, Lqr/recognize/decoding/CaptureActivityHandler$State;->DONE:Lqr/recognize/decoding/CaptureActivityHandler$State;
aput-object v1, v0, v4
sput-object v0, Lqr/recognize/decoding/CaptureActivityHandler$State;->ENUM$VALUES:[Lqr/recognize/decoding/CaptureActivityHandler$State;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lqr/recognize/decoding/CaptureActivityHandler$State;
.registers 2
const-class v0, Lqr/recognize/decoding/CaptureActivityHandler$State;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lqr/recognize/decoding/CaptureActivityHandler$State;
return-object v0
.end method
.method public static values()[Lqr/recognize/decoding/CaptureActivityHandler$State;
.registers 4
const/4 v3, 0x0
sget-object v0, Lqr/recognize/decoding/CaptureActivityHandler$State;->ENUM$VALUES:[Lqr/recognize/decoding/CaptureActivityHandler$State;
array-length v1, v0
new-array v2, v1, [Lqr/recognize/decoding/CaptureActivityHandler$State;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method