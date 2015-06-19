.class public abstract Lorg/scribe/services/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"
.field private static instance:Lorg/scribe/services/Base64Encoder;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static createEncoderInstance()Lorg/scribe/services/Base64Encoder;
.registers 1
invoke-static {}, Lorg/scribe/services/CommonsEncoder;->isPresent()Z
move-result v0
if-eqz v0, :cond_c
new-instance v0, Lorg/scribe/services/CommonsEncoder;
invoke-direct {v0}, Lorg/scribe/services/CommonsEncoder;-><init>()V
:goto_b
return-object v0
:cond_c
new-instance v0, Lorg/scribe/services/DatatypeConverterEncoder;
invoke-direct {v0}, Lorg/scribe/services/DatatypeConverterEncoder;-><init>()V
goto :goto_b
.end method
.method public static declared-synchronized getInstance()Lorg/scribe/services/Base64Encoder;
.registers 2
const-class v1, Lorg/scribe/services/Base64Encoder;
monitor-enter v1
:try_start_3
sget-object v0, Lorg/scribe/services/Base64Encoder;->instance:Lorg/scribe/services/Base64Encoder;
if-nez v0, :cond_d
invoke-static {}, Lorg/scribe/services/Base64Encoder;->createEncoderInstance()Lorg/scribe/services/Base64Encoder;
move-result-object v0
sput-object v0, Lorg/scribe/services/Base64Encoder;->instance:Lorg/scribe/services/Base64Encoder;
:cond_d
sget-object v0, Lorg/scribe/services/Base64Encoder;->instance:Lorg/scribe/services/Base64Encoder;
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_11
monitor-exit v1
return-object v0
:catchall_11
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static type()Ljava/lang/String;
.registers 1
invoke-static {}, Lorg/scribe/services/Base64Encoder;->getInstance()Lorg/scribe/services/Base64Encoder;
move-result-object v0
invoke-virtual {v0}, Lorg/scribe/services/Base64Encoder;->getType()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public abstract encode([B)Ljava/lang/String;
.end method
.method public abstract getType()Ljava/lang/String;
.end method