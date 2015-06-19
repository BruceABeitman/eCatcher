.class public final Lcom/amazon/device/messaging/ADMConstants$LowLevel;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_APP_REGISTRATION_EVENT:Ljava/lang/String; = "com.amazon.device.messaging.intent.REGISTRATION"

.field public static final ACTION_RECEIVE_ADM_MESSAGE:Ljava/lang/String; = "com.amazon.device.messaging.intent.RECEIVE"

.field public static final ACTION_REGISTER:Ljava/lang/String; = "com.amazon.device.messaging.intent.REGISTER"

.field public static final ACTION_UNREGISTER:Ljava/lang/String; = "com.amazon.device.messaging.intent.UNREGISTER"

.field public static final EXTRA_APPLICATION_PENDING_INTENT:Ljava/lang/String; = "app"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_REGISTRATION_ID:Ljava/lang/String; = "registration_id"

.field public static final EXTRA_UNREGISTERED:Ljava/lang/String; = "unregistered"


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
