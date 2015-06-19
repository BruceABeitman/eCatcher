.class final enum Lcom/facebook/katana/RequestsAdapter$RequestState;
.super Ljava/lang/Enum;
.source "RequestsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/RequestsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RequestState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/RequestsAdapter$RequestState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/facebook/katana/RequestsAdapter$RequestState;

.field public static final enum NOT_RESPONDED:Lcom/facebook/katana/RequestsAdapter$RequestState;

.field public static final enum RESPONSE_CONFIRMED:Lcom/facebook/katana/RequestsAdapter$RequestState;

.field public static final enum RESPONSE_CONFIRMING:Lcom/facebook/katana/RequestsAdapter$RequestState;

.field public static final enum RESPONSE_IGNORED:Lcom/facebook/katana/RequestsAdapter$RequestState;

.field public static final enum RESPONSE_IGNORING:Lcom/facebook/katana/RequestsAdapter$RequestState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/katana/RequestsAdapter$RequestState;

    const-string v1, "NOT_RESPONDED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/RequestsAdapter$RequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->NOT_RESPONDED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    new-instance v0, Lcom/facebook/katana/RequestsAdapter$RequestState;

    const-string v1, "RESPONSE_CONFIRMING"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/RequestsAdapter$RequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_CONFIRMING:Lcom/facebook/katana/RequestsAdapter$RequestState;

    new-instance v0, Lcom/facebook/katana/RequestsAdapter$RequestState;

    const-string v1, "RESPONSE_IGNORING"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/RequestsAdapter$RequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_IGNORING:Lcom/facebook/katana/RequestsAdapter$RequestState;

    new-instance v0, Lcom/facebook/katana/RequestsAdapter$RequestState;

    const-string v1, "RESPONSE_CONFIRMED"

    invoke-direct {v0, v1, v5}, Lcom/facebook/katana/RequestsAdapter$RequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_CONFIRMED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    new-instance v0, Lcom/facebook/katana/RequestsAdapter$RequestState;

    const-string v1, "RESPONSE_IGNORED"

    invoke-direct {v0, v1, v6}, Lcom/facebook/katana/RequestsAdapter$RequestState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_IGNORED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/katana/RequestsAdapter$RequestState;

    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->NOT_RESPONDED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_CONFIRMING:Lcom/facebook/katana/RequestsAdapter$RequestState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_IGNORING:Lcom/facebook/katana/RequestsAdapter$RequestState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_CONFIRMED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/katana/RequestsAdapter$RequestState;->RESPONSE_IGNORED:Lcom/facebook/katana/RequestsAdapter$RequestState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->ENUM$VALUES:[Lcom/facebook/katana/RequestsAdapter$RequestState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/RequestsAdapter$RequestState;
    .registers 2

    const-class v0, Lcom/facebook/katana/RequestsAdapter$RequestState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/katana/RequestsAdapter$RequestState;

    return-object p0
.end method

.method public static values()[Lcom/facebook/katana/RequestsAdapter$RequestState;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/facebook/katana/RequestsAdapter$RequestState;->ENUM$VALUES:[Lcom/facebook/katana/RequestsAdapter$RequestState;

    array-length v1, v0

    new-array v2, v1, [Lcom/facebook/katana/RequestsAdapter$RequestState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
