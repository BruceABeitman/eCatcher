.class public final enum Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;
.super Ljava/lang/Enum;
.source "XpListenersCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/newxp/controller/XpListenersCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;

.field public static final enum FAIL:Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;

.field public static final enum SUCCESS:Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;->SUCCESS:Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;

    new-instance v0, Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;

    const-string/jumbo v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;->FAIL:Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;

    sget-object v1, Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;->SUCCESS:Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;->FAIL:Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;->ENUM$VALUES:[Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;
    .registers 2

    const-class v0, Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;

    return-object v0
.end method

.method public static values()[Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;->ENUM$VALUES:[Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;

    array-length v1, v0

    new-array v2, v1, [Lcom/umeng/newxp/controller/XpListenersCenter$STATUS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
