.class public final enum Lcom/blackberry/ids/UserAuthState$AuthState;
.super Ljava/lang/Enum;
.source "UserAuthState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/blackberry/ids/UserAuthState$AuthState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AUTHENTICATED:Lcom/blackberry/ids/UserAuthState$AuthState;

.field public static final enum NOT_AUTHENTICATED:Lcom/blackberry/ids/UserAuthState$AuthState;

.field public static final enum NO_LONGER_VALID:Lcom/blackberry/ids/UserAuthState$AuthState;

.field public static final enum NO_USER_ACC:Lcom/blackberry/ids/UserAuthState$AuthState;

.field private static final synthetic a:[Lcom/blackberry/ids/UserAuthState$AuthState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/blackberry/ids/UserAuthState$AuthState;

    const-string v1, "NO_USER_ACC"

    invoke-direct {v0, v1, v2}, Lcom/blackberry/ids/UserAuthState$AuthState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->NO_USER_ACC:Lcom/blackberry/ids/UserAuthState$AuthState;

    new-instance v0, Lcom/blackberry/ids/UserAuthState$AuthState;

    const-string v1, "AUTHENTICATED"

    invoke-direct {v0, v1, v3}, Lcom/blackberry/ids/UserAuthState$AuthState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->AUTHENTICATED:Lcom/blackberry/ids/UserAuthState$AuthState;

    new-instance v0, Lcom/blackberry/ids/UserAuthState$AuthState;

    const-string v1, "NOT_AUTHENTICATED"

    invoke-direct {v0, v1, v4}, Lcom/blackberry/ids/UserAuthState$AuthState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->NOT_AUTHENTICATED:Lcom/blackberry/ids/UserAuthState$AuthState;

    new-instance v0, Lcom/blackberry/ids/UserAuthState$AuthState;

    const-string v1, "NO_LONGER_VALID"

    invoke-direct {v0, v1, v5}, Lcom/blackberry/ids/UserAuthState$AuthState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->NO_LONGER_VALID:Lcom/blackberry/ids/UserAuthState$AuthState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/blackberry/ids/UserAuthState$AuthState;

    sget-object v1, Lcom/blackberry/ids/UserAuthState$AuthState;->NO_USER_ACC:Lcom/blackberry/ids/UserAuthState$AuthState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/blackberry/ids/UserAuthState$AuthState;->AUTHENTICATED:Lcom/blackberry/ids/UserAuthState$AuthState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/blackberry/ids/UserAuthState$AuthState;->NOT_AUTHENTICATED:Lcom/blackberry/ids/UserAuthState$AuthState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/blackberry/ids/UserAuthState$AuthState;->NO_LONGER_VALID:Lcom/blackberry/ids/UserAuthState$AuthState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->a:[Lcom/blackberry/ids/UserAuthState$AuthState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/blackberry/ids/UserAuthState$AuthState;
    .registers 2

    const-class v0, Lcom/blackberry/ids/UserAuthState$AuthState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/blackberry/ids/UserAuthState$AuthState;

    return-object v0
.end method

.method public static values()[Lcom/blackberry/ids/UserAuthState$AuthState;
    .registers 1

    sget-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->a:[Lcom/blackberry/ids/UserAuthState$AuthState;

    invoke-virtual {v0}, [Lcom/blackberry/ids/UserAuthState$AuthState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/blackberry/ids/UserAuthState$AuthState;

    return-object v0
.end method
