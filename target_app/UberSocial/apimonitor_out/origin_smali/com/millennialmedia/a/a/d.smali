.class public abstract enum Lcom/millennialmedia/a/a/d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/millennialmedia/a/a/e;


# static fields
.field public static final enum a:Lcom/millennialmedia/a/a/d;

.field public static final enum b:Lcom/millennialmedia/a/a/d;

.field public static final enum c:Lcom/millennialmedia/a/a/d;

.field public static final enum d:Lcom/millennialmedia/a/a/d;

.field public static final enum e:Lcom/millennialmedia/a/a/d;

.field private static final synthetic f:[Lcom/millennialmedia/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/millennialmedia/a/a/d$1;

    const-string v1, "IDENTITY"

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/a/a/d$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/a/a/d;->a:Lcom/millennialmedia/a/a/d;

    new-instance v0, Lcom/millennialmedia/a/a/d$2;

    const-string v1, "UPPER_CAMEL_CASE"

    invoke-direct {v0, v1, v3}, Lcom/millennialmedia/a/a/d$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/a/a/d;->b:Lcom/millennialmedia/a/a/d;

    new-instance v0, Lcom/millennialmedia/a/a/d$3;

    const-string v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    invoke-direct {v0, v1, v4}, Lcom/millennialmedia/a/a/d$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/a/a/d;->c:Lcom/millennialmedia/a/a/d;

    new-instance v0, Lcom/millennialmedia/a/a/d$4;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    invoke-direct {v0, v1, v5}, Lcom/millennialmedia/a/a/d$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/a/a/d;->d:Lcom/millennialmedia/a/a/d;

    new-instance v0, Lcom/millennialmedia/a/a/d$5;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    invoke-direct {v0, v1, v6}, Lcom/millennialmedia/a/a/d$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/millennialmedia/a/a/d;->e:Lcom/millennialmedia/a/a/d;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/millennialmedia/a/a/d;

    sget-object v1, Lcom/millennialmedia/a/a/d;->a:Lcom/millennialmedia/a/a/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/millennialmedia/a/a/d;->b:Lcom/millennialmedia/a/a/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/millennialmedia/a/a/d;->c:Lcom/millennialmedia/a/a/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/millennialmedia/a/a/d;->d:Lcom/millennialmedia/a/a/d;

    aput-object v1, v0, v5

    sget-object v1, Lcom/millennialmedia/a/a/d;->e:Lcom/millennialmedia/a/a/d;

    aput-object v1, v0, v6

    sput-object v0, Lcom/millennialmedia/a/a/d;->f:[Lcom/millennialmedia/a/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/millennialmedia/a/a/d$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/millennialmedia/a/a/d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a(CLjava/lang/String;I)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/millennialmedia/a/a/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/millennialmedia/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_18

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_2d

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_22
    :goto_22
    return-object p0

    :cond_23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_a

    :cond_2d
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_22

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/millennialmedia/a/a/d;->a(CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_22
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_25

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/a/a/d;
    .registers 2

    const-class v0, Lcom/millennialmedia/a/a/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/d;

    return-object v0
.end method

.method public static values()[Lcom/millennialmedia/a/a/d;
    .registers 1

    sget-object v0, Lcom/millennialmedia/a/a/d;->f:[Lcom/millennialmedia/a/a/d;

    invoke-virtual {v0}, [Lcom/millennialmedia/a/a/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/a/a/d;

    return-object v0
.end method
