.class public final enum Lcom/umeng/analytics/Gender;
.super Ljava/lang/Enum;
.source "Gender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/analytics/Gender;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Female:Lcom/umeng/analytics/Gender;

.field public static final enum Male:Lcom/umeng/analytics/Gender;

.field public static final enum Unknown:Lcom/umeng/analytics/Gender;

.field private static final synthetic a:[Lcom/umeng/analytics/Gender;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/umeng/analytics/Gender;

    const-string/jumbo v1, "Male"

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/Gender;->Male:Lcom/umeng/analytics/Gender;

    new-instance v0, Lcom/umeng/analytics/Gender;

    const-string/jumbo v1, "Female"

    invoke-direct {v0, v1, v3}, Lcom/umeng/analytics/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/Gender;->Female:Lcom/umeng/analytics/Gender;

    new-instance v0, Lcom/umeng/analytics/Gender;

    const-string/jumbo v1, "Unknown"

    invoke-direct {v0, v1, v4}, Lcom/umeng/analytics/Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/Gender;->Unknown:Lcom/umeng/analytics/Gender;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/umeng/analytics/Gender;

    sget-object v1, Lcom/umeng/analytics/Gender;->Male:Lcom/umeng/analytics/Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/analytics/Gender;->Female:Lcom/umeng/analytics/Gender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/analytics/Gender;->Unknown:Lcom/umeng/analytics/Gender;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/analytics/Gender;->a:[Lcom/umeng/analytics/Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/Gender;
    .registers 2

    const-class v0, Lcom/umeng/analytics/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/Gender;

    return-object v0
.end method

.method public static values()[Lcom/umeng/analytics/Gender;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/umeng/analytics/Gender;->a:[Lcom/umeng/analytics/Gender;

    array-length v1, v0

    new-array v2, v1, [Lcom/umeng/analytics/Gender;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
