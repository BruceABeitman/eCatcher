.class public Lcom/google/android/gms/common/api/d;
.super Ljava/lang/Object;
.field public static final a:I = -0x1
.field public static final b:I = 0x0
.field public static final c:I = 0x1
.field public static final d:I = 0x2
.field public static final e:I = 0x3
.field public static final f:I = 0x4
.field public static final g:I = 0x5
.field public static final h:I = 0x6
.field public static final i:I = 0x7
.field public static final j:I = 0x8
.field public static final k:I = 0x9
.field public static final l:I = 0xa
.field public static final m:I = 0xb
.field public static final n:I = 0xc
.field public static final o:I = 0xd
.field public static final p:I = 0xe
.field public static final q:I = 0xf
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(I)Ljava/lang/String;
.registers 3
packed-switch p0, :pswitch_data_3e
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "unknown status code: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_16
return-object v0
:pswitch_17
const-string v0, "SUCCESS_CACHE"
goto :goto_16
:pswitch_1a
const-string v0, "SUCCESS"
goto :goto_16
:pswitch_1d
const-string v0, "SERVICE_MISSING"
goto :goto_16
:pswitch_20
const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"
goto :goto_16
:pswitch_23
const-string v0, "SERVICE_DISABLED"
goto :goto_16
:pswitch_26
const-string v0, "SIGN_IN_REQUIRED"
goto :goto_16
:pswitch_29
const-string v0, "INVALID_ACCOUNT"
goto :goto_16
:pswitch_2c
const-string v0, "RESOLUTION_REQUIRED"
goto :goto_16
:pswitch_2f
const-string v0, "NETWORK_ERROR"
goto :goto_16
:pswitch_32
const-string v0, "INTERNAL_ERROR"
goto :goto_16
:pswitch_35
const-string v0, "SERVICE_INVALID"
goto :goto_16
:pswitch_38
const-string v0, "DEVELOPER_ERROR"
goto :goto_16
:pswitch_3b
const-string v0, "LICENSE_CHECK_FAILED"
goto :goto_16
:pswitch_data_3e
.packed-switch -0x1
:pswitch_17
:pswitch_1a
:pswitch_1d
:pswitch_20
:pswitch_23
:pswitch_26
:pswitch_29
:pswitch_2c
:pswitch_2f
:pswitch_32
:pswitch_35
:pswitch_38
:pswitch_3b
.end packed-switch
.end method