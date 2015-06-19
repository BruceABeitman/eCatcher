.class public final Lcom/amazon/device/messaging/ADMConstants;
.super Ljava/lang/Object;
.field public static final ERROR_AUTHENTICATION_FAILED:Ljava/lang/String; = "AUTHENTICATION_FAILED"
.field public static final ERROR_INVALID_SENDER:Ljava/lang/String; = "INVALID_SENDER"
.field public static final ERROR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"
.field public static final EXTRA_MD5:Ljava/lang/String; = "adm_message_md5"
.method constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Stub!"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
.end method