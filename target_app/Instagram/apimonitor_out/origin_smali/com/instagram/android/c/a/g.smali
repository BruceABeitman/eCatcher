.class public final enum Lcom/instagram/android/c/a/g;
.super Ljava/lang/Enum;
.source "MegaphoneActionRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/c/a/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/android/c/a/g;

.field public static final enum b:Lcom/instagram/android/c/a/g;

.field public static final enum c:Lcom/instagram/android/c/a/g;

.field public static final enum d:Lcom/instagram/android/c/a/g;

.field private static final synthetic f:[Lcom/instagram/android/c/a/g;


# instance fields
.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/instagram/android/c/a/g;

    const-string v1, "SEEN"

    const-string v2, "seen"

    invoke-direct {v0, v1, v3, v2}, Lcom/instagram/android/c/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/android/c/a/g;->a:Lcom/instagram/android/c/a/g;

    new-instance v0, Lcom/instagram/android/c/a/g;

    const-string v1, "CLICKED"

    const-string v2, "clicked"

    invoke-direct {v0, v1, v4, v2}, Lcom/instagram/android/c/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/android/c/a/g;->b:Lcom/instagram/android/c/a/g;

    new-instance v0, Lcom/instagram/android/c/a/g;

    const-string v1, "DISMISSED"

    const-string v2, "dismiss"

    invoke-direct {v0, v1, v5, v2}, Lcom/instagram/android/c/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/android/c/a/g;->c:Lcom/instagram/android/c/a/g;

    new-instance v0, Lcom/instagram/android/c/a/g;

    const-string v1, "NOT_SHOWN"

    const-string v2, "not_shown"

    invoke-direct {v0, v1, v6, v2}, Lcom/instagram/android/c/a/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/android/c/a/g;->d:Lcom/instagram/android/c/a/g;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/instagram/android/c/a/g;

    sget-object v1, Lcom/instagram/android/c/a/g;->a:Lcom/instagram/android/c/a/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/c/a/g;->b:Lcom/instagram/android/c/a/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/android/c/a/g;->c:Lcom/instagram/android/c/a/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instagram/android/c/a/g;->d:Lcom/instagram/android/c/a/g;

    aput-object v1, v0, v6

    sput-object v0, Lcom/instagram/android/c/a/g;->f:[Lcom/instagram/android/c/a/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/instagram/android/c/a/g;->e:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/c/a/g;
    .registers 2

    const-class v0, Lcom/instagram/android/c/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/c/a/g;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/c/a/g;
    .registers 1

    sget-object v0, Lcom/instagram/android/c/a/g;->f:[Lcom/instagram/android/c/a/g;

    invoke-virtual {v0}, [Lcom/instagram/android/c/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/c/a/g;

    return-object v0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/c/a/g;->e:Ljava/lang/String;

    return-object v0
.end method
