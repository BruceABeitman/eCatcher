.class public final enum Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
.super Ljava/lang/Enum;
.source "HuaweiTvModel.java"
.field public static final enum AUTH_CANCEL:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
.field public static final enum AUTH_FAILED:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
.field public static final enum AUTH_SUCCESS:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
.field public static final enum AUTH_TOKEN_GETS:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
.field private static final synthetic ENUM$VALUES:[Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
.field public static final enum NETWORK_EXCEPTION:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
.field public static final enum STARTING_AUTH:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
const-string/jumbo v1, "AUTH_TOKEN_GETS"
invoke-direct {v0, v1, v3}, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_TOKEN_GETS:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
new-instance v0, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
const-string/jumbo v1, "STARTING_AUTH"
invoke-direct {v0, v1, v4}, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->STARTING_AUTH:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
new-instance v0, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
const-string/jumbo v1, "AUTH_SUCCESS"
invoke-direct {v0, v1, v5}, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_SUCCESS:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
new-instance v0, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
const-string/jumbo v1, "AUTH_FAILED"
invoke-direct {v0, v1, v6}, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_FAILED:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
new-instance v0, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
const-string/jumbo v1, "AUTH_CANCEL"
invoke-direct {v0, v1, v7}, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_CANCEL:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
new-instance v0, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
const-string/jumbo v1, "NETWORK_EXCEPTION"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;-><init>(Ljava/lang/String;I)V
sput-object v0, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->NETWORK_EXCEPTION:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
const/4 v0, 0x6
new-array v0, v0, [Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
sget-object v1, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_TOKEN_GETS:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
aput-object v1, v0, v3
sget-object v1, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->STARTING_AUTH:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
aput-object v1, v0, v4
sget-object v1, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_SUCCESS:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
aput-object v1, v0, v5
sget-object v1, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_FAILED:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
aput-object v1, v0, v6
sget-object v1, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_CANCEL:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->NETWORK_EXCEPTION:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
aput-object v2, v0, v1
sput-object v0, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->ENUM$VALUES:[Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
.registers 2
const-class v0, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
return-object v0
.end method
.method public static values()[Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
.registers 4
const/4 v3, 0x0
sget-object v0, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->ENUM$VALUES:[Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
array-length v1, v0
new-array v2, v1, [Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method