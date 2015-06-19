.class enum Lcom/instagram/cliffjumper/edit/photo/straightening/d;
.super Ljava/lang/Enum;
.source "StraighteningController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/cliffjumper/edit/photo/straightening/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

.field public static final enum b:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

.field public static final enum c:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

.field private static final synthetic d:[Lcom/instagram/cliffjumper/edit/photo/straightening/d;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    const-string v1, "THREE"

    invoke-direct {v0, v1, v2}, Lcom/instagram/cliffjumper/edit/photo/straightening/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    const-string v1, "SIX"

    invoke-direct {v0, v1, v3}, Lcom/instagram/cliffjumper/edit/photo/straightening/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->b:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    new-instance v0, Lcom/instagram/cliffjumper/edit/photo/straightening/e;

    const-string v1, "NONE"

    invoke-direct {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/straightening/e;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->c:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->a:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->b:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->c:Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    aput-object v2, v0, v1

    sput-object v0, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->d:[Lcom/instagram/cliffjumper/edit/photo/straightening/d;

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

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .registers 5

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/instagram/cliffjumper/edit/photo/straightening/d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/cliffjumper/edit/photo/straightening/d;
    .registers 2

    const-class v0, Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    return-object v0
.end method

.method public static values()[Lcom/instagram/cliffjumper/edit/photo/straightening/d;
    .registers 1

    sget-object v0, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->d:[Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    invoke-virtual {v0}, [Lcom/instagram/cliffjumper/edit/photo/straightening/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/instagram/cliffjumper/edit/photo/straightening/d;
    .registers 3

    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->values()[Lcom/instagram/cliffjumper/edit/photo/straightening/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/photo/straightening/d;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method
