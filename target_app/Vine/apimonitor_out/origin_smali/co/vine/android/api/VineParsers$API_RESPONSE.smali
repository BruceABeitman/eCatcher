.class public final enum Lco/vine/android/api/VineParsers$API_RESPONSE;
.super Ljava/lang/Enum;
.source "VineParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/api/VineParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "API_RESPONSE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lco/vine/android/api/VineParsers$API_RESPONSE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lco/vine/android/api/VineParsers$API_RESPONSE;

.field public static final enum FAILURE:Lco/vine/android/api/VineParsers$API_RESPONSE;

.field public static final enum SUCCESS:Lco/vine/android/api/VineParsers$API_RESPONSE;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lco/vine/android/api/VineParsers$API_RESPONSE;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lco/vine/android/api/VineParsers$API_RESPONSE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/api/VineParsers$API_RESPONSE;->SUCCESS:Lco/vine/android/api/VineParsers$API_RESPONSE;

    new-instance v0, Lco/vine/android/api/VineParsers$API_RESPONSE;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v3}, Lco/vine/android/api/VineParsers$API_RESPONSE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lco/vine/android/api/VineParsers$API_RESPONSE;->FAILURE:Lco/vine/android/api/VineParsers$API_RESPONSE;

    const/4 v0, 0x2

    new-array v0, v0, [Lco/vine/android/api/VineParsers$API_RESPONSE;

    sget-object v1, Lco/vine/android/api/VineParsers$API_RESPONSE;->SUCCESS:Lco/vine/android/api/VineParsers$API_RESPONSE;

    aput-object v1, v0, v2

    sget-object v1, Lco/vine/android/api/VineParsers$API_RESPONSE;->FAILURE:Lco/vine/android/api/VineParsers$API_RESPONSE;

    aput-object v1, v0, v3

    sput-object v0, Lco/vine/android/api/VineParsers$API_RESPONSE;->$VALUES:[Lco/vine/android/api/VineParsers$API_RESPONSE;

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

.method public static valueOf(Ljava/lang/String;)Lco/vine/android/api/VineParsers$API_RESPONSE;
    .registers 2

    const-class v0, Lco/vine/android/api/VineParsers$API_RESPONSE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineParsers$API_RESPONSE;

    return-object v0
.end method

.method public static values()[Lco/vine/android/api/VineParsers$API_RESPONSE;
    .registers 1

    sget-object v0, Lco/vine/android/api/VineParsers$API_RESPONSE;->$VALUES:[Lco/vine/android/api/VineParsers$API_RESPONSE;

    invoke-virtual {v0}, [Lco/vine/android/api/VineParsers$API_RESPONSE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/vine/android/api/VineParsers$API_RESPONSE;

    return-object v0
.end method
