.class final enum Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
.super Ljava/lang/Enum;
.source "NTLMScheme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

.field public static final enum CHALLENGE_RECEIVED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

.field public static final enum FAILED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

.field public static final enum MSG_TYPE1_GENERATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

.field public static final enum MSG_TYPE2_RECEVIED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

.field public static final enum MSG_TYPE3_GENERATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

.field public static final enum UNINITIATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    const-string v1, "UNINITIATED"

    invoke-direct {v0, v1, v3}, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->UNINITIATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    const-string v1, "CHALLENGE_RECEIVED"

    invoke-direct {v0, v1, v4}, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    const-string v1, "MSG_TYPE1_GENERATED"

    invoke-direct {v0, v1, v5}, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    const-string v1, "MSG_TYPE2_RECEVIED"

    invoke-direct {v0, v1, v6}, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    const-string v1, "MSG_TYPE3_GENERATED"

    invoke-direct {v0, v1, v7}, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    new-instance v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->FAILED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    const/4 v0, 0x6

    new-array v0, v0, [Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->UNINITIATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    aput-object v1, v0, v3

    sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    aput-object v1, v0, v4

    sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    aput-object v1, v0, v5

    sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    aput-object v1, v0, v6

    sget-object v1, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->FAILED:Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    aput-object v2, v0, v1

    sput-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->$VALUES:[Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

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

.method public static valueOf(Ljava/lang/String;)Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
    .registers 2

    const-class v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    return-object v0
.end method

.method public static values()[Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;
    .registers 1

    sget-object v0, Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->$VALUES:[Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    invoke-virtual {v0}, [Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/impl/auth/NTLMScheme$State;

    return-object v0
.end method
