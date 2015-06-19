.class public final enum Lcom/facebook/katana/binding/AppSession$LoginStatus;
.super Ljava/lang/Enum;
.source "AppSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/binding/AppSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoginStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/katana/binding/AppSession$LoginStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/facebook/katana/binding/AppSession$LoginStatus;

.field public static final enum STATUS_LOGGED_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

.field public static final enum STATUS_LOGGED_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;

.field public static final enum STATUS_LOGGING_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

.field public static final enum STATUS_LOGGING_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;

    const-string v1, "STATUS_LOGGED_OUT"

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/binding/AppSession$LoginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    new-instance v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;

    const-string v1, "STATUS_LOGGING_IN"

    invoke-direct {v0, v1, v3}, Lcom/facebook/katana/binding/AppSession$LoginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    new-instance v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;

    const-string v1, "STATUS_LOGGED_IN"

    invoke-direct {v0, v1, v4}, Lcom/facebook/katana/binding/AppSession$LoginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    new-instance v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;

    const-string v1, "STATUS_LOGGING_OUT"

    invoke-direct {v0, v1, v5}, Lcom/facebook/katana/binding/AppSession$LoginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/katana/binding/AppSession$LoginStatus;

    sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;->ENUM$VALUES:[Lcom/facebook/katana/binding/AppSession$LoginStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/binding/AppSession$LoginStatus;
    .registers 2

    const-class v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/katana/binding/AppSession$LoginStatus;

    return-object p0
.end method

.method public static values()[Lcom/facebook/katana/binding/AppSession$LoginStatus;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;->ENUM$VALUES:[Lcom/facebook/katana/binding/AppSession$LoginStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/facebook/katana/binding/AppSession$LoginStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
