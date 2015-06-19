.class public Lcom/glympse/android/hal/gms/common/Permission;
.super Ljava/lang/Object;
.source "Permission.java"


# static fields
.field public static ACTIVITY_RECOGNITION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "com.google.android.gms.permission.ACTIVITY_RECOGNITION"

    sput-object v0, Lcom/glympse/android/hal/gms/common/Permission;->ACTIVITY_RECOGNITION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
