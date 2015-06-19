.class public abstract enum Lcom/millennialmedia/a/a/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/millennialmedia/a/a/x;

.field public static final enum b:Lcom/millennialmedia/a/a/x;

.field private static final synthetic c:[Lcom/millennialmedia/a/a/x;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/millennialmedia/a/a/x$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/a/a/x$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/a/a/x;->a:Lcom/millennialmedia/a/a/x;

    new-instance v0, Lcom/millennialmedia/a/a/x$2;

    const-string v1, "STRING"

    invoke-direct {v0, v1, v3}, Lcom/millennialmedia/a/a/x$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/a/a/x;->b:Lcom/millennialmedia/a/a/x;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/millennialmedia/a/a/x;

    sget-object v1, Lcom/millennialmedia/a/a/x;->a:Lcom/millennialmedia/a/a/x;

    aput-object v1, v0, v2

    sget-object v1, Lcom/millennialmedia/a/a/x;->b:Lcom/millennialmedia/a/a/x;

    aput-object v1, v0, v3

    sput-object v0, Lcom/millennialmedia/a/a/x;->c:[Lcom/millennialmedia/a/a/x;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/millennialmedia/a/a/x$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/a/a/x;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/a/a/x;
    .registers 2

    const-class v0, Lcom/millennialmedia/a/a/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/x;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/a/a/x;
    .registers 1

    sget-object v0, Lcom/millennialmedia/a/a/x;->c:[Lcom/millennialmedia/a/a/x;

    invoke-virtual {v0}, [Lcom/millennialmedia/a/a/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/a/a/x;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Long;)Lcom/millennialmedia/a/a/m;
.end method
