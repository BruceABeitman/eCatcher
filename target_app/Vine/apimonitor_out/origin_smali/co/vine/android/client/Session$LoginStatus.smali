.class public final enum Lco/vine/android/client/Session$LoginStatus;
.super Ljava/lang/Enum;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/client/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lco/vine/android/client/Session$LoginStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lco/vine/android/client/Session$LoginStatus;

.field public static final enum LOGGED_IN:Lco/vine/android/client/Session$LoginStatus;

.field public static final enum LOGGED_OUT:Lco/vine/android/client/Session$LoginStatus;

.field public static final enum LOGGING_IN:Lco/vine/android/client/Session$LoginStatus;

.field public static final enum LOGGING_OUT:Lco/vine/android/client/Session$LoginStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lco/vine/android/client/Session$LoginStatus;

    const-string v1, "LOGGED_OUT"

    invoke-direct {v0, v1, v2}, Lco/vine/android/client/Session$LoginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/client/Session$LoginStatus;->LOGGED_OUT:Lco/vine/android/client/Session$LoginStatus;

    new-instance v0, Lco/vine/android/client/Session$LoginStatus;

    const-string v1, "LOGGING_IN"

    invoke-direct {v0, v1, v3}, Lco/vine/android/client/Session$LoginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/client/Session$LoginStatus;->LOGGING_IN:Lco/vine/android/client/Session$LoginStatus;

    new-instance v0, Lco/vine/android/client/Session$LoginStatus;

    const-string v1, "LOGGED_IN"

    invoke-direct {v0, v1, v4}, Lco/vine/android/client/Session$LoginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/client/Session$LoginStatus;->LOGGED_IN:Lco/vine/android/client/Session$LoginStatus;

    new-instance v0, Lco/vine/android/client/Session$LoginStatus;

    const-string v1, "LOGGING_OUT"

    invoke-direct {v0, v1, v5}, Lco/vine/android/client/Session$LoginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/client/Session$LoginStatus;->LOGGING_OUT:Lco/vine/android/client/Session$LoginStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lco/vine/android/client/Session$LoginStatus;

    sget-object v1, Lco/vine/android/client/Session$LoginStatus;->LOGGED_OUT:Lco/vine/android/client/Session$LoginStatus;

    aput-object v1, v0, v2

    sget-object v1, Lco/vine/android/client/Session$LoginStatus;->LOGGING_IN:Lco/vine/android/client/Session$LoginStatus;

    aput-object v1, v0, v3

    sget-object v1, Lco/vine/android/client/Session$LoginStatus;->LOGGED_IN:Lco/vine/android/client/Session$LoginStatus;

    aput-object v1, v0, v4

    sget-object v1, Lco/vine/android/client/Session$LoginStatus;->LOGGING_OUT:Lco/vine/android/client/Session$LoginStatus;

    aput-object v1, v0, v5

    sput-object v0, Lco/vine/android/client/Session$LoginStatus;->$VALUES:[Lco/vine/android/client/Session$LoginStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lco/vine/android/client/Session$LoginStatus;
    .registers 2

    const-class v0, Lco/vine/android/client/Session$LoginStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/vine/android/client/Session$LoginStatus;

    return-object v0
.end method

.method public static values()[Lco/vine/android/client/Session$LoginStatus;
    .registers 1

    sget-object v0, Lco/vine/android/client/Session$LoginStatus;->$VALUES:[Lco/vine/android/client/Session$LoginStatus;

    invoke-virtual {v0}, [Lco/vine/android/client/Session$LoginStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/vine/android/client/Session$LoginStatus;

    return-object v0
.end method
