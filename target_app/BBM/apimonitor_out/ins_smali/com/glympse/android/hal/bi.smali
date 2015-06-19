.class  Lcom/glympse/android/hal/bi;
.super Ljava/lang/Object;
.source "ResourceGateway.java"
.implements Lcom/glympse/android/hal/GResourceGateway;
.field private static final ep:[I
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0xe
new-array v0, v0, [I
const/4 v1, 0x0
sget v2, Lcom/glympse/android/api/R$drawable;->notification_00:I
aput v2, v0, v1
const/4 v1, 0x1
sget v2, Lcom/glympse/android/api/R$drawable;->notification_01:I
aput v2, v0, v1
const/4 v1, 0x2
sget v2, Lcom/glympse/android/api/R$drawable;->notification_02:I
aput v2, v0, v1
const/4 v1, 0x3
sget v2, Lcom/glympse/android/api/R$drawable;->notification_03:I
aput v2, v0, v1
const/4 v1, 0x4
sget v2, Lcom/glympse/android/api/R$drawable;->notification_04:I
aput v2, v0, v1
const/4 v1, 0x5
sget v2, Lcom/glympse/android/api/R$drawable;->notification_05:I
aput v2, v0, v1
const/4 v1, 0x6
sget v2, Lcom/glympse/android/api/R$drawable;->notification_06:I
aput v2, v0, v1
const/4 v1, 0x7
sget v2, Lcom/glympse/android/api/R$drawable;->notification_07:I
aput v2, v0, v1
const/16 v1, 0x8
sget v2, Lcom/glympse/android/api/R$drawable;->notification_08:I
aput v2, v0, v1
const/16 v1, 0x9
sget v2, Lcom/glympse/android/api/R$drawable;->notification_09:I
aput v2, v0, v1
const/16 v1, 0xa
sget v2, Lcom/glympse/android/api/R$drawable;->notification_arrived:I
aput v2, v0, v1
const/16 v1, 0xb
sget v2, Lcom/glympse/android/api/R$drawable;->notification_low_battery:I
aput v2, v0, v1
const/16 v1, 0xc
sget v2, Lcom/glympse/android/api/R$drawable;->notification_received:I
aput v2, v0, v1
const/16 v1, 0xd
sget v2, Lcom/glympse/android/api/R$drawable;->notification_warning:I
aput v2, v0, v1
sput-object v0, Lcom/glympse/android/hal/bi;->ep:[I
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getDrawable(I)I
.registers 3
sget-object v0, Lcom/glympse/android/hal/bi;->ep:[I
aget v0, v0, p1
return v0
.end method
.method public getString(I)I
.registers 3
const/4 v0, -0x1
return v0
.end method