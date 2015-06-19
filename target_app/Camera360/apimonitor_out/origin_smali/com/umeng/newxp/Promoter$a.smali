.class public enum Lcom/umeng/newxp/Promoter$a;
.super Ljava/lang/Enum;
.source "Promoter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/Promoter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/newxp/Promoter$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/newxp/Promoter$a;

.field public static final enum b:Lcom/umeng/newxp/Promoter$a;

.field public static final enum c:Lcom/umeng/newxp/Promoter$a;

.field private static final synthetic d:[Lcom/umeng/newxp/Promoter$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/umeng/newxp/c;

    const-string/jumbo v1, "SDK"

    invoke-direct {v0, v1, v2}, Lcom/umeng/newxp/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/newxp/Promoter$a;->a:Lcom/umeng/newxp/Promoter$a;

    new-instance v0, Lcom/umeng/newxp/d;

    const-string/jumbo v1, "TEL"

    invoke-direct {v0, v1, v3}, Lcom/umeng/newxp/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/newxp/Promoter$a;->b:Lcom/umeng/newxp/Promoter$a;

    new-instance v0, Lcom/umeng/newxp/e;

    const-string/jumbo v1, "CALLBACK"

    invoke-direct {v0, v1, v4}, Lcom/umeng/newxp/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/newxp/Promoter$a;->c:Lcom/umeng/newxp/Promoter$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/umeng/newxp/Promoter$a;

    sget-object v1, Lcom/umeng/newxp/Promoter$a;->a:Lcom/umeng/newxp/Promoter$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/newxp/Promoter$a;->b:Lcom/umeng/newxp/Promoter$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/newxp/Promoter$a;->c:Lcom/umeng/newxp/Promoter$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/umeng/newxp/Promoter$a;->d:[Lcom/umeng/newxp/Promoter$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/umeng/newxp/Promoter$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/umeng/newxp/Promoter$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/umeng/newxp/Promoter$a;->values()[Lcom/umeng/newxp/Promoter$a;

    move-result-object v1

    array-length v0, v1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_8
    array-length v3, v1

    if-lt v0, v3, :cond_c

    return-object v2

    :cond_c
    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/umeng/newxp/Promoter$a;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/newxp/Promoter$a;
    .registers 2

    const-class v0, Lcom/umeng/newxp/Promoter$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/Promoter$a;

    return-object v0
.end method

.method public static values()[Lcom/umeng/newxp/Promoter$a;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/umeng/newxp/Promoter$a;->d:[Lcom/umeng/newxp/Promoter$a;

    array-length v1, v0

    new-array v2, v1, [Lcom/umeng/newxp/Promoter$a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
