.class public final Lcom/spotify/mobile/android/orbit/OrbitPushNotifications;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/orbit/OrbitPushNotificationsInterface;


# instance fields
.field private nOrbitPushNotificationsPtr:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native registerGcmDevice(Ljava/lang/String;)V
.end method

.method public final native setPreviousGcmRegistrationId(Ljava/lang/String;)V
.end method