.class public final enum Lcom/bbm/ui/activities/ahw;
.super Ljava/lang/Enum;
.source "SponsoredAdActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bbm/ui/activities/ahw;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bbm/ui/activities/ahw;

.field public static final enum b:Lcom/bbm/ui/activities/ahw;

.field public static final enum c:Lcom/bbm/ui/activities/ahw;

.field public static final enum d:Lcom/bbm/ui/activities/ahw;

.field private static final e:Ljava/lang/String;

.field private static final synthetic f:[Lcom/bbm/ui/activities/ahw;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/bbm/ui/activities/ahw;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/bbm/ui/activities/ahw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ui/activities/ahw;->a:Lcom/bbm/ui/activities/ahw;

    new-instance v0, Lcom/bbm/ui/activities/ahw;

    const-string v1, "INVITE"

    invoke-direct {v0, v1, v3}, Lcom/bbm/ui/activities/ahw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ui/activities/ahw;->b:Lcom/bbm/ui/activities/ahw;

    new-instance v0, Lcom/bbm/ui/activities/ahw;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/bbm/ui/activities/ahw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ui/activities/ahw;->c:Lcom/bbm/ui/activities/ahw;

    new-instance v0, Lcom/bbm/ui/activities/ahw;

    const-string v1, "CHAT"

    invoke-direct {v0, v1, v5}, Lcom/bbm/ui/activities/ahw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bbm/ui/activities/ahw;->d:Lcom/bbm/ui/activities/ahw;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/bbm/ui/activities/ahw;

    sget-object v1, Lcom/bbm/ui/activities/ahw;->a:Lcom/bbm/ui/activities/ahw;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bbm/ui/activities/ahw;->b:Lcom/bbm/ui/activities/ahw;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bbm/ui/activities/ahw;->c:Lcom/bbm/ui/activities/ahw;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bbm/ui/activities/ahw;->d:Lcom/bbm/ui/activities/ahw;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bbm/ui/activities/ahw;->f:[Lcom/bbm/ui/activities/ahw;

    const-class v0, Lcom/bbm/ui/activities/ahw;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ahw;->e:Ljava/lang/String;

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

.method public static b(Landroid/content/Intent;)Lcom/bbm/ui/activities/ahw;
    .registers 4

    invoke-static {}, Lcom/bbm/ui/activities/ahw;->values()[Lcom/bbm/ui/activities/ahw;

    move-result-object v0

    sget-object v1, Lcom/bbm/ui/activities/ahw;->e:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bbm/ui/activities/ahw;
    .registers 2

    const-class v0, Lcom/bbm/ui/activities/ahw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/ahw;

    return-object v0
.end method

.method public static values()[Lcom/bbm/ui/activities/ahw;
    .registers 1

    sget-object v0, Lcom/bbm/ui/activities/ahw;->f:[Lcom/bbm/ui/activities/ahw;

    invoke-virtual {v0}, [Lcom/bbm/ui/activities/ahw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bbm/ui/activities/ahw;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .registers 4

    sget-object v0, Lcom/bbm/ui/activities/ahw;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ahw;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method
